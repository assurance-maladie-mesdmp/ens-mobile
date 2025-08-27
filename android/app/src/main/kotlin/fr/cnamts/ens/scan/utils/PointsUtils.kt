/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

package fr.cnamts.ens.scan.utils

import android.graphics.PointF
import java.util.HashMap

class PointsUtils {
    companion object {
        fun getOrderedPoints(points: List<PointF>): List<PointF> {
            val centerPoint = PointF()
            val size = points.size
            for (pointF in points) {
                centerPoint.x += pointF.x / size
                centerPoint.y += pointF.y / size
            }
            val orderedPoints: MutableMap<Int, PointF> = HashMap()
            for (pointF in points) {
                var index = -1
                if (pointF.x < centerPoint.x && pointF.y < centerPoint.y) {
                    index = 0
                } else if (pointF.x > centerPoint.x && pointF.y < centerPoint.y) {
                    index = 1
                } else if (pointF.x < centerPoint.x && pointF.y > centerPoint.y) {
                    index = 2
                } else if (pointF.x > centerPoint.x && pointF.y > centerPoint.y) {
                    index = 3
                }
                orderedPoints[index] = pointF
            }
            return orderedPoints.map {
                PointF(it.value.x, it.value.y)
            }
        }
    }
}