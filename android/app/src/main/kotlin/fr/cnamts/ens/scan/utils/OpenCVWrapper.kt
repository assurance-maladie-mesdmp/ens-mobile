/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

package fr.cnamts.ens.scan.utils

import android.graphics.Bitmap
import android.graphics.Matrix
import org.opencv.android.Utils
import org.opencv.core.*
import org.opencv.imgproc.Imgproc

class OpenCVWrapper {
    companion object {
        fun convertToBlackAndWhite(bitmap: Bitmap): Bitmap {
            val matOriginal: Mat = convertBitmapToMat(bitmap)
            val matConvertedGray = Mat()
            Imgproc.cvtColor(matOriginal, matConvertedGray, Imgproc.COLOR_BGR2GRAY)
            val result = Mat()
            Imgproc.adaptiveThreshold(
                matConvertedGray,
                result,
                255.0,
                Imgproc.ADAPTIVE_THRESH_GAUSSIAN_C,
                Imgproc.THRESH_BINARY,
                71,
                17.0
            )
            return convertMatToBitmap(result)
        }

        fun getContourEdgePoints(bitmap: Bitmap): List<Point> {
            var hasContour = false
            val matReceipt = convertBitmapToMat(bitmap)
            compressDown(matReceipt, matReceipt)
            compressDown(matReceipt, matReceipt)

            // Resize and convert to grayscale
            val matConvertedGray = Mat()
            Imgproc.cvtColor(matReceipt, matConvertedGray, Imgproc.COLOR_BGR2GRAY)

            // Get threshold for helping Canny method do more exactly
            val otsuThresold =
                Imgproc.threshold(matConvertedGray, Mat(), 0.0, 255.0, Imgproc.THRESH_OTSU)

            // Reduce noise
            val matMedianFilter = Mat()
            Imgproc.medianBlur(matConvertedGray, matMedianFilter, 11)

            // Draw receipt with only lines
            val matEdges = Mat()
            Imgproc.Canny(matConvertedGray, matEdges, otsuThresold * 0.05, otsuThresold)

            // Find contour of Object
            val contours = ArrayList<MatOfPoint>()
            Imgproc.findContours(
                matEdges,
                contours,
                Mat(),
                Imgproc.RETR_EXTERNAL,
                Imgproc.CHAIN_APPROX_SIMPLE
            )

            val height = matConvertedGray.height()
            val width = matConvertedGray.width()

            var maxAreaFound = ((width - 20) * (height - 20) / 20).toDouble()

            val myPoints = arrayOf(
                Point(5.0, 5.0),
                Point(5.0, (height - 5).toDouble()),
                Point((width - 5).toDouble(), (height - 5).toDouble()),
                Point((width - 5).toDouble(), 5.0)
            )
            var receiptContour = MatOfPoint(*myPoints)

            for (i in contours.indices) {
                // Simplify contour
                val contour = contours[i]

                val boxContour2F = MatOfPoint2f(*contour.toArray())
                val boxArea = Imgproc.minAreaRect(boxContour2F)


                if (contour.toArray().size >= 4 && maxAreaFound < boxArea.size.area()) {
                    maxAreaFound = boxArea.size.area()
                    receiptContour = contour

                    //Convex Hull to convert any shape of contour into convex Hull
                    val hull = MatOfInt()
                    Imgproc.convexHull(receiptContour, hull, false)
                    val mopOut = MatOfPoint()
                    mopOut.create(hull.size().height.toInt(), 1, CvType.CV_32SC2)
                    var j = 0
                    while (j < hull.size().height) {
                        val index = hull.get(j, 0)[0].toInt()
                        val point = doubleArrayOf(
                            receiptContour.get(index, 0)[0],
                            receiptContour.get(index, 0)[1]
                        )
                        mopOut.put(j, 0, *point)
                        j++
                    }
                    receiptContour = mopOut

                    hasContour = true
                }
            }

            // Use moments to find centroid of convex
            val centrePoint = getCentrePointOfContour(receiptContour)
            // These variable to help find corner of skew receipt more exactly
            val listPoints = receiptContour.toList()
            if (listPoints == null || listPoints.size < 4) {
                return listPoints
            }
            val pMaxX = getMaxX(listPoints)
            val pMinX = getMinX(listPoints)
            val espX = (pMaxX - pMinX) / 4

            val pMinY = getMinY(listPoints)
            val pMaxY = getMaxY(listPoints)
            val espY = (pMaxY - pMinY) / 4

            var pointTL = getPointTlWithMaxLength(listPoints, centrePoint!!, espX, espY)
            var pointTR = getPointTrWithMaxLength(listPoints, centrePoint, espX, espY)
            var pointBR = getPointBrWithMaxLength(listPoints, centrePoint, espX, espY)
            var pointBL = getPointBlWithMaxLength(listPoints, centrePoint, espX, espY)

            val cornerPoints = ArrayList<Point>()
            cornerPoints.add(pointTL!!)
            cornerPoints.add(pointTR!!)
            cornerPoints.add(pointBR!!)
            cornerPoints.add(pointBL!!)

            if (!isConvexShape(cornerPoints)) {
                val box = Imgproc.boundingRect(receiptContour)
                cornerPoints.clear()
                pointTL = box.tl()
                pointBR = box.br()
                pointTR = Point(pointBR.x, pointTL.y)
                pointBL = Point(pointTL.x, pointBR.y)
                cornerPoints.add(pointTL)
                cornerPoints.add(pointTR)
                cornerPoints.add(pointBR)
                cornerPoints.add(pointBL)
            }

            if (hasContour) {
                val pyrDownReceipt = convertMatToBitmap(matReceipt)
                val widthRatio = bitmap.getWidth().toDouble() / pyrDownReceipt.width.toDouble()
                val heightRatio = bitmap.getHeight().toDouble() / pyrDownReceipt.height.toDouble()

                val convertedCorners = ArrayList<Point>()
                for (corner in cornerPoints) {
                    convertedCorners.add(Point(corner.x * widthRatio, corner.y * heightRatio))
                }
                return convertedCorners
            } else {
                return listPoints
            }
        }

        private fun getMaxX(pointList: List<Point>?): Double {
            if (pointList == null || pointList.size == 0) {
                return 0.0
            }
            var pos = 0
            var maxX = pointList[0].x
            for (i in pointList.indices) {
                if (maxX < pointList[i].x) {
                    pos = i
                    maxX = pointList[i].x
                }
            }
            return pointList[pos].x
        }

        private fun getMinX(pointList: List<Point>?): Double {
            if (pointList == null || pointList.size == 0) {
                return 0.0
            }
            var pos = 0
            var minX = pointList[0].x
            for (i in pointList.indices) {
                if (minX >= pointList[i].x) {
                    pos = i
                    minX = pointList[i].x
                }
            }
            return pointList[pos].x
        }

        private fun getMinY(pointList: List<Point>?): Double {
            if (pointList == null || pointList.size == 0) {
                return 0.0
            }
            var pos = 0
            var minY = pointList[0].y
            for (i in pointList.indices) {
                if (minY >= pointList[i].y) {
                    pos = i
                    minY = pointList[i].y
                }
            }
            return pointList[pos].y
        }

        private fun getMaxY(pointList: List<Point>?): Double {
            if (pointList == null || pointList.size == 0) {
                return 0.0
            }
            var pos = 0
            var maxY = pointList[0].y
            for (i in pointList.indices) {
                if (maxY < pointList[i].y) {
                    pos = i
                    maxY = pointList[i].y
                }
            }
            return pointList[pos].y
        }

        private fun getPointTlWithMaxLength(
            listPointInContour: List<Point>?,
            centrePoint: Point,
            espX: Double,
            espY: Double
        ): Point? {
            if (listPointInContour == null || listPointInContour.size == 0)
                return null
            var maxLength = 0.0
            var pos = 0
            for (i in listPointInContour.indices) {
                val point = listPointInContour[i]
                val length = getDistanceBetweenPoints(point, centrePoint)
                if (point.x <= centrePoint.x + espX && point.y <= centrePoint.y - espY && maxLength < length) {
                    pos = i
                    maxLength = length
                }
            }
            return listPointInContour[pos]
        }

        private fun getPointTrWithMaxLength(
            listPointInContour: List<Point>?,
            centrePoint: Point,
            espX: Double,
            espY: Double
        ): Point? {
            if (listPointInContour == null || listPointInContour.size == 0)
                return null
            var maxLength = 0.0
            var pos = 0
            for (i in listPointInContour.indices) {
                val point = listPointInContour[i]
                val length = getDistanceBetweenPoints(point, centrePoint)
                if (point.x > centrePoint.x + espX && point.y <= centrePoint.y + espY && maxLength < length) {
                    pos = i
                    maxLength = length
                }
            }
            return listPointInContour[pos]
        }

        private fun getPointBrWithMaxLength(
            listPointInContour: List<Point>?,
            centrePoint: Point,
            espX: Double,
            espY: Double
        ): Point? {
            if (listPointInContour == null || listPointInContour.size == 0)
                return null
            var maxLength = 0.0
            var pos = 0
            for (i in listPointInContour.indices) {
                val point = listPointInContour[i]
                val length = getDistanceBetweenPoints(point, centrePoint)
                if (point.x > centrePoint.x - espX && point.y > centrePoint.y + espY && maxLength < length) {
                    pos = i
                    maxLength = length
                }
            }
            return listPointInContour[pos]
        }

        private fun getPointBlWithMaxLength(
            listPointInContour: List<Point>?,
            centrePoint: Point,
            espX: Double,
            espY: Double
        ): Point? {
            if (listPointInContour == null || listPointInContour.size == 0)
                return null
            var maxLength = 0.0
            var pos = 0
            for (i in listPointInContour.indices) {
                val point = listPointInContour[i]
                val length = getDistanceBetweenPoints(point, centrePoint)
                if (point.x <= centrePoint.x - espX && point.y > centrePoint.y - espY && maxLength < length) {
                    pos = i
                    maxLength = length
                }
            }
            return listPointInContour[pos]
        }

        private fun getDistanceBetweenPoints(point1: Point, point2: Point): Double {
            return Math.sqrt((point1.x - point2.x) * (point1.x - point2.x) + (point1.y - point2.y) * (point1.y - point2.y))
        }

        private fun isConvexShape(corners: List<Point>?): Boolean {
            val size: Int
            var result = false

            if (corners == null || corners.isEmpty()) {
                return false
            } else {
                size = corners.size
            }
            if (size > 0) {
                for (i in 0 until size) {
                    val dx1 = corners[(i + 2) % size].x - corners[(i + 1) % size].x
                    val dy1 = corners[(i + 2) % size].y - corners[(i + 1) % size].y
                    val dx2 = corners[i].x - corners[(i + 1) % size].x
                    val dy2 = corners[i].y - corners[(i + 1) % size].y
                    val crossProduct = dx1 * dy2 - dy1 * dx2
                    if (i == 0) {
                        result = crossProduct > 0
                    } else {
                        if (result != crossProduct > 0) {
                            return false
                        }
                    }
                }
                return true
            } else {
                return false
            }
        }

        private fun getCentrePointOfContour(contour: MatOfPoint): Point? {
            val moments = Imgproc.moments(contour)
            return if (moments != null) {
                Point(moments._m10 / moments._m00, moments._m01 / moments._m00)
            } else {
                null
            }
        }

        private fun compressDown(large: Mat, rgb: Mat) {
            Imgproc.pyrDown(large, rgb)
            Imgproc.pyrDown(rgb, rgb)
        }


        private fun convertBitmapToMat(bitmap: Bitmap): Mat {
            val mat = Mat(bitmap.width, bitmap.height, CvType.CV_8UC1)
            val bmp32 = bitmap.copy(Bitmap.Config.ARGB_8888, true)
            Utils.bitmapToMat(bmp32, mat)
            return mat
        }

        private fun convertMatToBitmap(m: Mat): Bitmap {
            val bm = Bitmap.createBitmap(m.cols(), m.rows(), Bitmap.Config.ARGB_8888)
            Utils.matToBitmap(m, bm)
            return bm
        }

        fun rotate(bitmap: Bitmap, degree: Int): Bitmap = try {
            val w = bitmap.width
            val h = bitmap.height
            val mtx = Matrix()
            mtx.postRotate(degree.toFloat())
            Bitmap.createBitmap(bitmap, 0, 0, w, h, mtx, false)
        } catch (e: Exception) {
            bitmap
        }

        fun getScannedBitmap(
            bitmap: Bitmap,
            point1: Point,
            point2: Point,
            point3: Point,
            point4: Point,
        ): Bitmap {
            val perspective =
                PerspectiveTransformationUtils()
            val rectangle = MatOfPoint2f()
            rectangle.fromArray(
                point1,
                point2,
                point3,
                point4
            )
            val dstMat: Mat = perspective.transform(bitmapToMat(bitmap), rectangle)

            return matToBitmap(dstMat)
        }

        private fun bitmapToMat(bitmap: Bitmap): Mat {
            val mat = Mat(bitmap.height, bitmap.width, CvType.CV_8U, Scalar(4.0))
            val bitmap32 = bitmap.copy(Bitmap.Config.ARGB_8888, true)
            Utils.bitmapToMat(bitmap32, mat)
            return mat
        }

        private fun matToBitmap(mat: Mat): Bitmap {
            val bitmap = Bitmap.createBitmap(mat.cols(), mat.rows(), Bitmap.Config.ARGB_8888)
            Utils.matToBitmap(mat, bitmap)
            return bitmap
        }
    }
}