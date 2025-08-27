/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

package fr.cnamts.ens

import android.content.Intent
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.os.Environment
import android.os.Build
import android.os.Bundle
import android.util.Base64
import androidx.core.view.WindowCompat
import com.joutvhu.openfile.FileProvider
import fr.cnamts.ens.scan.utils.OpenCVWrapper
import fr.cnamts.ens.scan.views.CropActivity
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import org.opencv.android.OpenCVLoader
import java.io.ByteArrayOutputStream
import java.io.File

class MainActivity : FlutterActivity() {
    lateinit var channelScan: MethodChannel

    companion object {
        private const val CHANNEL = "fr.cnamts.ens.flutter/homeScreenWidget"
        private const val CHANNEL_SCAN = "com.octo.flutter/scanner_wrapper"
        private const val REQUEST_RESULT_SCAN_WITH_CAMERA = 200
        private const val REQUEST_RESULT_SCAN_FROM_PICTURE = 300
        const val KEY_IMAGE_PATH = "ImageSourcePath"
        const val KEY_IMAGE_BASE64 = "ImageSourceBase64"
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        WindowCompat.setDecorFitsSystemWindows(window, false)
        super.onCreate(savedInstanceState)
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        channelScan = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL_SCAN)
        channelScan.setMethodCallHandler { call, result ->
            when (call.method) {
                "getNativeScanner" -> {
                    val arguments = call.arguments as List<*>?
                    if (arguments == null) {
                        val i = Intent(this, CropActivity::class.java)
                        startActivityForResult(i, REQUEST_RESULT_SCAN_WITH_CAMERA)
                        result.success(null)
                    } else {
                        val i = Intent(this, CropActivity::class.java)
                        i.putExtra(KEY_IMAGE_PATH, arguments[0] as String)

                        startActivityForResult(i, REQUEST_RESULT_SCAN_FROM_PICTURE)
                        result.success(null)
                    }
                }
                "getCroppedImage" -> {
                    val base64Source = call.arguments as String?
                    if (base64Source != null) {
                        val originalPhoto: File = File.createTempFile(
                            "base64_image",
                            ".txt",
                            getExternalFilesDir(Environment.DIRECTORY_PICTURES)
                        )

                        originalPhoto.writeBytes(base64Source.toByteArray())
                        val i = Intent(this, CropActivity::class.java)
                        i.putExtra(KEY_IMAGE_BASE64, originalPhoto.absolutePath)

                        startActivityForResult(i, REQUEST_RESULT_SCAN_FROM_PICTURE)
                        result.success(null)
                    }
                }
                "getBlackAndWhiteImage" -> {
                    val base64Source = call.arguments as String
                    if (OpenCVLoader.initDebug()) {
                        val blackAndWhiteBitmap = OpenCVWrapper.convertToBlackAndWhite(
                            ImageUtil.convert(base64Source)
                        )
                        result.success(
                            ImageUtil.convert(blackAndWhiteBitmap)
                        )
                    } else {
                        result.error("OpenCVError", "OpenCV not loaded", null)
                    }
                }
            }
        }
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        if (requestCode == REQUEST_RESULT_SCAN_WITH_CAMERA && data != null) {
            val originalPath: String? = data.getStringExtra("originalPath")
            val croppedPath: String? = data.getStringExtra("croppedPath")

            if (originalPath != null && croppedPath != null) {
                val arguments = listOf<String>(originalPath, croppedPath)
                channelScan.invokeMethod("fromAndroid", arguments)
            }
        } else if (requestCode == REQUEST_RESULT_SCAN_FROM_PICTURE && data != null) {
            val originalPath: String? = data.getStringExtra("originalPath")
            val croppedPath: String? = data.getStringExtra("croppedPath")

            if (originalPath != null && croppedPath != null) {
                val arguments = listOf<String>(originalPath, croppedPath)
                channelScan.invokeMethod("fromAndroidAfterRecropping", arguments)
            }
        }
    }
}

object ImageUtil {
    fun convert(bitmap: Bitmap): String {
        val outputStream = ByteArrayOutputStream()
        val maxQuality = 100
        bitmap.compress(Bitmap.CompressFormat.JPEG, maxQuality, outputStream)
        return Base64.encodeToString(outputStream.toByteArray(), Base64.NO_WRAP)
    }

    fun convert(base64: String): Bitmap {
        val decodedString: ByteArray = Base64.decode(base64, Base64.DEFAULT)
        return BitmapFactory.decodeByteArray(decodedString, 0, decodedString.size)
    }
}
