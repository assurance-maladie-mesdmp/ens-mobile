/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

package fr.cnamts.ens.scan.presenters

import android.graphics.*
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import fr.cnamts.ens.ImageUtil
import fr.cnamts.ens.scan.utils.OpenCVWrapper
import fr.cnamts.ens.scan.utils.PointsUtils
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import org.opencv.core.Point
import java.io.InputStream
import kotlin.math.sqrt

class CropActivityViewModel : ViewModel() {
    val bitmapToDisplay: MutableLiveData<Bitmap> = MutableLiveData()
    val edges: MutableLiveData<List<PointF>> = MutableLiveData()
    val finalBitmap: MutableLiveData<Bitmap> = MutableLiveData()

    lateinit var scaledBitmapDimension: PointF
    private var hdToScaledRatio: Double = 0.0

    fun setImageBitmap(inputStream: InputStream?, imageViewWidth: Int, imageViewHeight: Int) {
        viewModelScope.launch(context = Dispatchers.Default) {
            val decodedStream = BitmapFactory.decodeStream(inputStream)
            if (decodedStream != null) {
                val bitmap = OpenCVWrapper.rotate(decodedStream, 90)
                configureBitmapAndEdges(bitmap, imageViewWidth.toFloat(), imageViewHeight.toFloat())
            }
        }
    }

    fun setImageBitmap(base64Image: String, imageViewWidth: Int, imageViewHeight: Int) {
        viewModelScope.launch(context = Dispatchers.Default) {
            val bitmap = ImageUtil.convert(base64Image)
            configureBitmapAndEdges(bitmap, imageViewWidth.toFloat(), imageViewHeight.toFloat())
        }
    }

    private fun configureBitmapAndEdges(
        bitmap: Bitmap,
        imageViewWidth: Float,
        imageViewHeight: Float
    ) {
        val imageViewRatio = imageViewWidth / imageViewHeight
        val bitmapRatio = bitmap.width / bitmap.height.toFloat()

        scaledBitmapDimension = if (bitmapRatio < imageViewRatio) {
            // fit en height
            PointF((imageViewHeight * bitmap.width) / bitmap.height.toFloat(), imageViewHeight)
        } else {
            // fit en width
            PointF(imageViewWidth, (imageViewWidth * bitmap.height) / (bitmap.width.toFloat()))
        }
        bitmapToDisplay.postValue(bitmap)

        hdToScaledRatio = scaledBitmapDimension.x / bitmap.width.toDouble()

        val hdEdges = getEdgePointsOfBitmap(bitmap)
        val scaledEdges = hdEdges.map {
            PointF(it.x * hdToScaledRatio.toFloat(), it.y * hdToScaledRatio.toFloat())
        }

        edges.postValue(scaledEdges)
    }

    fun cropBitmap(scaledPoints: List<PointF>) {
        val originalBitmap = bitmapToDisplay.value ?: return

        val point1 =
            Point(scaledPoints[0].x / hdToScaledRatio, scaledPoints[0].y / hdToScaledRatio)
        val point2 = Point(scaledPoints[1].x / hdToScaledRatio, scaledPoints[1].y / hdToScaledRatio)
        // les points 3 et 4 sont inversés, car openCV ne fonctionne pas avec le même sens que polygonView
        val point3 = Point(scaledPoints[3].x / hdToScaledRatio, scaledPoints[3].y / hdToScaledRatio)
        val point4 = Point(scaledPoints[2].x / hdToScaledRatio, scaledPoints[2].y / hdToScaledRatio)

        viewModelScope.launch(Dispatchers.Default) {
            val croppedBitmap: Bitmap = originalBitmap.copy(originalBitmap.config, true)
            finalBitmap.postValue(
                OpenCVWrapper.getScannedBitmap(croppedBitmap, point1, point2, point3, point4)
            )
        }
    }

    fun skipCrop() {
        finalBitmap.value = bitmapToDisplay.value
    }

    private fun getEdgePointsOfBitmap(
        tempBitmap: Bitmap,
    ): List<PointF> {
        val pointFs: List<PointF> = getDocumentContour(tempBitmap)
        return orderedValidEdgePoints(tempBitmap, pointFs)
    }


    private fun getDocumentContour(tempBitmap: Bitmap): List<PointF> {
        return OpenCVWrapper.getContourEdgePoints(tempBitmap).map {
            PointF(it.x.toFloat(), it.y.toFloat())
        }
    }

    private fun orderedValidEdgePoints(
        tempBitmap: Bitmap,
        pointFs: List<PointF>
    ): List<PointF> {
        var orderedPoints = PointsUtils.getOrderedPoints(pointFs)
        if (!isValidShape(orderedPoints)) {
            orderedPoints = getOutlinePoints(tempBitmap)
        }
        return orderedPoints
    }

    private fun isValidShape(pointFMap: List<PointF>?): Boolean {
        return if (pointFMap?.size == 4) {
            val distanceBetweenCorner = calculDistanceBetweenTwoPoint(
                pointFMap[0], pointFMap[2]
            )
            distanceBetweenCorner > 60
        } else {
            false
        }
    }

    private fun calculDistanceBetweenTwoPoint(point1: PointF, point2: PointF): Float {
        val x1 = point1.x
        val y1 = point1.y
        val x2 = point2.x
        val y2 = point2.y
        return sqrt((y2 - y1) * (y2 - y1) + (x2 - x1) * (x2 - x1))
    }

    private fun getOutlinePoints(tempBitmap: Bitmap): List<PointF> {
        val outlinePoints: MutableList<PointF> = mutableListOf()
        outlinePoints.add(0, PointF(0f, 0f))
        outlinePoints.add(1, PointF(tempBitmap.width.toFloat(), 0f))
        outlinePoints.add(2, PointF(0f, tempBitmap.height.toFloat()))
        outlinePoints.add(3, PointF(tempBitmap.width.toFloat(), tempBitmap.height.toFloat()))
        return outlinePoints
    }
}