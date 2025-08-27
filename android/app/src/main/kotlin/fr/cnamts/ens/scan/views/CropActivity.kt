/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

package fr.cnamts.ens.scan.views

import android.Manifest
import android.app.Activity
import android.content.ActivityNotFoundException
import android.content.Intent
import android.content.pm.PackageManager
import android.graphics.Bitmap
import android.net.Uri
import android.os.Bundle
import android.os.Environment
import android.provider.MediaStore
import android.util.Log
import android.view.Gravity
import android.view.MenuItem
import android.view.View
import android.view.ViewTreeObserver
import android.widget.Button
import android.widget.FrameLayout
import android.widget.ImageView
import androidx.activity.result.contract.ActivityResultContracts
import androidx.activity.viewModels
import androidx.appcompat.app.AppCompatActivity
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat
import androidx.core.content.FileProvider
import androidx.lifecycle.coroutineScope
import com.octo.flutter.atinternet.AtInternetHandler
import fr.cnamts.ens.MainActivity
import fr.cnamts.ens.R
import fr.cnamts.ens.scan.presenters.CropActivityViewModel
import fr.cnamts.ens.scan.utils.FileUtils
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import org.opencv.android.OpenCVLoader
import java.io.*

class CropActivity : AppCompatActivity() {
    private lateinit var photoURI: Uri
    private var photoPath: String? = null

    private lateinit var polygonView: PolygonView
    private lateinit var imageView: ImageView
    private lateinit var errorSnackBar: View

    private val cropActivityViewModel: CropActivityViewModel by viewModels()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setContentView(R.layout.crop_activity)
        AtInternetHandler.instance?.tagWithTrackerName(
            trackerName = null,
            chapter1 = "documents",
            chapter2 = "documents_ajout",
            chapter3 = "camera",
            type = AtInternetHandler.TagType.SCREEN,
            result = null,
            tagName = "camera_recadrer"
        )

        polygonView = findViewById(R.id.polygon_view)
        imageView = findViewById(R.id.viewImageForBitmap)
        errorSnackBar = findViewById(R.id.errorSnackBar)

        setSupportActionBar(findViewById(R.id.chtl_toolbar))
        supportActionBar?.setDisplayHomeAsUpEnabled(true)

        errorSnackBar.setOnClickListener {
            errorSnackBar.visibility = View.GONE
        }

        findViewById<Button>(R.id.crop_button).setOnClickListener {
            if (polygonView.isError) {
                errorSnackBar.visibility = View.VISIBLE
                lifecycle.coroutineScope.launch {
                    delay(5000)
                    errorSnackBar.visibility = View.GONE
                }
            } else {
                cropActivityViewModel.cropBitmap(polygonView.points)
            }
        }

        findViewById<Button>(R.id.skip_button).setOnClickListener {
            cropActivityViewModel.skipCrop()
            AtInternetHandler.instance?.tagWithTrackerName(
                trackerName = null,
                chapter1 = "documents",
                chapter2 = "documents_ajout",
                chapter3 = "camera",
                type = AtInternetHandler.TagType.CLICK,
                result = null,
                tagName = "camera_recadrer_refus"
            )
        }

        cropActivityViewModel.bitmapToDisplay.observe(this) {
            imageView.setImageBitmap(it)
            polygonView.layoutParams = FrameLayout.LayoutParams(
                (cropActivityViewModel.scaledBitmapDimension.x).toInt(),
                (cropActivityViewModel.scaledBitmapDimension.y).toInt()
            ).apply {
                this.gravity = Gravity.CENTER
            }
        }

        cropActivityViewModel.edges.observe(this) {
            if (it.isNotEmpty()) {
                polygonView.points = it
                polygonView.visibility = View.VISIBLE
            }
        }

        cropActivityViewModel.finalBitmap.observe(this) {
            sendImageToMainActivity(it)
        }

        if (OpenCVLoader.initDebug()) {
            val sourceImagePath = intent.extras?.getString(MainActivity.KEY_IMAGE_PATH, "")
            val sourceBase64 = intent.extras?.getString(MainActivity.KEY_IMAGE_BASE64, "")
            if (!sourceBase64.isNullOrEmpty()) {
                val file = File(sourceBase64)
                val base64 = file.readText()
                imageView.viewTreeObserver.addOnGlobalLayoutListener(object :
                    ViewTreeObserver.OnGlobalLayoutListener {
                    override fun onGlobalLayout() {
                        imageView.viewTreeObserver.removeOnGlobalLayoutListener(this)
                        cropActivityViewModel.setImageBitmap(
                            base64,
                            imageView.width,
                            imageView.height
                        )
                    }
                })
            } else if (sourceImagePath.isNullOrEmpty()) {
                dispatchTakePictureIntent()
            } else {
                imageView.viewTreeObserver.addOnGlobalLayoutListener(object :
                    ViewTreeObserver.OnGlobalLayoutListener {
                    override fun onGlobalLayout() {
                        imageView.viewTreeObserver.removeOnGlobalLayoutListener(this)
                        val inputStream: InputStream = FileInputStream(sourceImagePath)
                        cropActivityViewModel.setImageBitmap(
                            inputStream,
                            imageView.width,
                            imageView.height,
                        )
                    }
                })
            }
        } else {
            Log.i("OpenCV", "OpenCV not loaded")
        }
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        if (requestCode == CAMERA_REQUEST_CODE) {
            if (resultCode != Activity.RESULT_OK) {
                finish()
            }
            setCapturedImage()
        }
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        super.onOptionsItemSelected(item)
        finish()
        return true
    }

    private fun setCapturedImage() {
        val inputStream: InputStream? = contentResolver.openInputStream(photoURI)
        cropActivityViewModel.setImageBitmap(inputStream, imageView.width, imageView.height)
    }

    private fun dispatchTakePictureIntent() {
        photoURI = FileProvider.getUriForFile(
            this,
            this.applicationContext.packageName.toString() + ".provider",
            FileUtils.createImageFile(getExternalFilesDir(Environment.DIRECTORY_PICTURES)).apply {
                photoPath = this.absolutePath
            }
        )

        try {
            val checkSelfPermission = ContextCompat.checkSelfPermission(
                this.applicationContext,
                Manifest.permission.CAMERA
            )
            when (checkSelfPermission) {
                PackageManager.PERMISSION_GRANTED -> {
                    val intent = Intent(MediaStore.ACTION_IMAGE_CAPTURE)
                    intent.putExtra(MediaStore.EXTRA_OUTPUT, photoURI)
                    startActivityForResult(intent, CAMERA_REQUEST_CODE)
                }
                else -> {
                    val value: Array<String> = Array(1) { Manifest.permission.CAMERA }
                    ActivityCompat.requestPermissions(this, value, PERMISSION_REQUEST_CODE)
                }
            }
        } catch (e: ActivityNotFoundException) {
            Log.i("OpenCV", "Activity camera not found")
        }
    }

    override fun onRequestPermissionsResult(
        requestCode: Int,
        permissions: Array<out String>,
        grantResults: IntArray
    ) {
        if (requestCode == PERMISSION_REQUEST_CODE && grantResults.contains(android.content.pm.PackageManager.PERMISSION_GRANTED)) {
            val intent = Intent(MediaStore.ACTION_IMAGE_CAPTURE)
            intent.putExtra(MediaStore.EXTRA_OUTPUT, photoURI)
            startActivityForResult(intent, CAMERA_REQUEST_CODE)
        } else if (requestCode == PERMISSION_REQUEST_CODE) {
            onBackPressed()
        }
        super.onRequestPermissionsResult(requestCode, permissions, grantResults)
    }

    private fun sendImageToMainActivity(croppedBitmap: Bitmap) {
        val photoCropFile: File = FileUtils.createImageFile(
            getExternalFilesDir(Environment.DIRECTORY_PICTURES)
        )
        //Convert bitmap to byte array
        val bos = ByteArrayOutputStream()
        croppedBitmap.compress(Bitmap.CompressFormat.JPEG, 100 /*ignored for PNG*/, bos)
        val bitmapdata = bos.toByteArray()

        //write the bytes in file
        val fos = FileOutputStream(photoCropFile)
        fos.write(bitmapdata)
        fos.flush()
        fos.close()

        val returnIntent = Intent()
        returnIntent.putExtra("croppedPath", photoCropFile.absolutePath)

        if (!photoPath.isNullOrEmpty()) {
            returnIntent.putExtra("originalPath", photoPath)
        } else {
            returnIntent.putExtra(
                "originalPath",
                intent.extras?.getString(MainActivity.KEY_IMAGE_PATH, photoCropFile.absolutePath)
            )
        }
        setResult(RESULT_OK, returnIntent)
        finish()
    }

    companion object {
        private const val CAMERA_REQUEST_CODE = 300
        private const val PERMISSION_REQUEST_CODE = 320
    }
}
