/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

package fr.cnamts.ens.scan.views

import android.annotation.SuppressLint
import android.content.Context
import android.graphics.*
import android.os.Build
import android.util.AttributeSet
import android.view.MotionEvent
import android.view.View
import android.view.ViewGroup
import android.widget.FrameLayout
import android.widget.ImageView
import android.widget.Magnifier
import androidx.core.content.ContextCompat
import androidx.core.graphics.plus
import fr.cnamts.ens.R
import fr.cnamts.ens.scan.utils.PointsUtils
import kotlin.math.*

@SuppressLint("ClickableViewAccessibility")
class PolygonView : FrameLayout {
    val paint: Paint by lazy {
        Paint().apply {
            color = ContextCompat.getColor(context, R.color.blue)
            strokeWidth = 3f
            isAntiAlias = true
        }
    }

    var points: List<PointF>
        get() {
            return PointsUtils.getOrderedPoints(listOf(point1, point2, point3, point4))
        }
        set(allPoints) {
            if (allPoints.size == 4 && !arePointsOverlapping(allPoints)) {
                    point1 = allPoints[0]
                    point2 = allPoints[1]
                    point3 = allPoints[2]
                    point4 = allPoints[3]
            } else {
                point1 = PointF(0f, 0f)
                point2 = PointF(width.toFloat(), 0f)
                point3 = PointF(0f, height.toFloat())
                point4 = PointF(width.toFloat(), height.toFloat())
            }
        }

    private var point1 = PointF(0f, 0f)
        set(value) {
            field = constraintToViewBounds(value)
            pointer1.x = point1.x - pointer1.width / 2
            pointer1.y = point1.y - pointer1.height / 2
        }
    private var pointer1: ImageView = getImageView(0, 0, DRAGGABLE_POINT)

    private var point2 = PointF(width.toFloat(), 0f)
        set(value) {
            field = constraintToViewBounds(value)
            pointer2.x = point2.x - pointer2.width / 2
            pointer2.y = point2.y - pointer2.height / 2
        }
    private var pointer2: ImageView = getImageView(width, 0, DRAGGABLE_POINT)

    private var point3 = PointF(0f, height.toFloat())
        set(value) {
            field = constraintToViewBounds(value)
            pointer3.x = point3.x - pointer3.width / 2
            pointer3.y = point3.y - pointer3.height / 2
        }
    private var pointer3: ImageView = getImageView(0, height, DRAGGABLE_POINT)

    private var point4 = PointF(width.toFloat(), height.toFloat())
        set(value) {
            field = constraintToViewBounds(value)
            pointer4.x = point4.x - pointer4.width / 2
            pointer4.y = point4.y - pointer4.height / 2
        }
    private var pointer4: ImageView = getImageView(width, height, DRAGGABLE_POINT)

    private var midPointer13: ImageView = getImageView(0, height / 2, DRAGGABLE_DASH)
    private var midPointer12: ImageView = getImageView(0, width / 2, DRAGGABLE_DASH)
    private var midPointer34: ImageView = getImageView(0, height / 2, DRAGGABLE_DASH)
    private var midPointer24: ImageView = getImageView(0, height / 2, DRAGGABLE_DASH)

    private var magnifier: Magnifier? = null
    var isError: Boolean = false

    constructor(context: Context) : super(context) {
        init()
    }

    constructor(context: Context, attrs: AttributeSet?) : super(context, attrs) {
        init()
    }

    constructor(context: Context, attrs: AttributeSet?, defStyleAttr: Int) : super(
        context,
        attrs,
        defStyleAttr
    ) {
        init()
    }


    private fun init() {
        setDashRotation(midPointer13, 90F)
        setDashRotation(midPointer24, 90F)

        pointer1.setOnTouchListener(
            TouchListenerImpl(
                this,
                getCurrentPoint = { point1 },
                onMove = { mv -> point1 = point1.plus(mv) }
            )
        )

        pointer2.setOnTouchListener(
            TouchListenerImpl(
                this,
                getCurrentPoint = { point2 },
                onMove = { mv -> point2 = point2.plus(mv) }
            )
        )

        pointer3.setOnTouchListener(
            TouchListenerImpl(
                this,
                getCurrentPoint = { point3 },
                onMove = { mv -> point3 = point3.plus(mv) }
            )
        )

        pointer4.setOnTouchListener(
            TouchListenerImpl(
                this,
                getCurrentPoint = { point4 },
                onMove = { mv -> point4 = point4.plus(mv) }
            )
        )

        midPointer13.setOnTouchListener(
            MidPointTouchListenerImpl(
                this,
                getCurrentPoint1 = { point1 },
                getCurrentPoint2 = { point3 },
                onMove = { mv ->
                    point1 = point1.plus(mv)
                    point3 = point3.plus(mv)
                }
            )
        )

        midPointer12.setOnTouchListener(
            MidPointTouchListenerImpl(
                this,
                getCurrentPoint1 = { point1 },
                getCurrentPoint2 = { point2 },
                onMove = { mv ->
                    point1 = point1.plus(mv)
                    point2 = point2.plus(mv)
                }
            )
        )

        midPointer34.setOnTouchListener(
            MidPointTouchListenerImpl(
                this,
                getCurrentPoint1 = { point3 },
                getCurrentPoint2 = { point4 },
                onMove = { mv ->
                    point3 = point3.plus(mv)
                    point4 = point4.plus(mv)
                }
            )
        )

        midPointer24.setOnTouchListener(
            MidPointTouchListenerImpl(
                this,
                getCurrentPoint1 = { point2 },
                getCurrentPoint2 = { point4 },
                onMove = { mv ->
                    point2 = point2.plus(mv)
                    point4 = point4.plus(mv)
                }
            )
        )

        addView(pointer1)
        addView(pointer2)
        addView(midPointer13)
        addView(midPointer12)
        addView(midPointer34)
        addView(midPointer24)
        addView(pointer3)
        addView(pointer4)

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) magnifier = Magnifier(
            this
        )
    }

    override fun dispatchDraw(canvas: Canvas) {
        super.dispatchDraw(canvas)

        updateMidPointsRotation(null)

        canvas.drawLine(
            point1.x,
            point1.y,
            point3.x,
            point3.y,
            paint
        )
        canvas.drawLine(
            point1.x,
            point1.y,
            point2.x,
            point2.y,
            paint
        )
        canvas.drawLine(
            point2.x,
            point2.y,
            point4.x,
            point4.y,
            paint
        )
        canvas.drawLine(
            point3.x,
            point3.y,
            point4.x,
            point4.y,
            paint
        )
        midPointer13.x = point3.x - (point3.x - point1.x) / 2 - (midPointer13.width / 2)
        midPointer13.y = point3.y - (point3.y - point1.y) / 2 - (midPointer13.height / 2)
        midPointer24.x = point4.x - (point4.x - point2.x) / 2 - (midPointer24.width / 2)
        midPointer24.y = point4.y - (point4.y - point2.y) / 2 - (midPointer24.height / 2)
        midPointer34.x = point4.x - (point4.x - point3.x) / 2 - (midPointer34.width / 2)
        midPointer34.y = point4.y - (point4.y - point3.y) / 2 - (midPointer34.height / 2)
        midPointer12.x = point2.x - (point2.x - point1.x) / 2 - (midPointer12.width / 2)
        midPointer12.y = point2.y - (point2.y - point1.y) / 2 - (midPointer12.height / 2)
    }

    private fun drawMag(x: Float, y: Float) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P && magnifier != null) {
            magnifier!!.show(x, y)
        }
    }

    private fun dismissMag() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P && magnifier != null) {
            magnifier!!.dismiss()
        }
    }

    private fun setDashRotation(dashView: ImageView, rotationValue: Float) {
        dashView.rotation = rotationValue
    }


    private fun updateMidPointRotation(midPoint: ImageView, point1: ImageView, point2: ImageView) {
        val midPointVector = PointF(point2.x - point1.x, point2.y - point1.y).normalize()
        val rotationAngle = VECTOR_UP.angleWith(midPointVector)
        setDashRotation(midPoint, rotationAngle)
    }

    private fun updateMidPointsRotation(pointView: View?) {
        if (pointView == null || pointView == pointer1 || pointView == pointer3) {
            updateMidPointRotation(midPointer13, pointer3, pointer1)
        }
        if (pointView == null || pointView == pointer1 || pointView == pointer2) {
            updateMidPointRotation(midPointer12, pointer1, pointer2)
        }
        if (pointView == null || pointView == pointer3 || pointView == pointer4) {
            updateMidPointRotation(midPointer34, pointer3, pointer4)
        }
        if (pointView == null || pointView == pointer2 || pointView == pointer4) {
            updateMidPointRotation(midPointer24, pointer4, pointer2)
        }
    }

    private fun getImageView(x: Int, y: Int, drawable: Int) = ImageView(context).apply {
        this.layoutParams = LayoutParams(
            ViewGroup.LayoutParams.WRAP_CONTENT,
            ViewGroup.LayoutParams.WRAP_CONTENT
        )
        this.setImageResource(drawable)
        this.x = x.toFloat()
        this.y = y.toFloat()
    }

    private fun isValidShape(pointFMap: List<PointF>?) = pointFMap?.size == 4

    private fun constraintToViewBounds(point: PointF) = PointF(
        max(0f + (pointer1.width / 2f), min(width.toFloat() - (pointer1.width / 2f), point.x)),
        max(0f + (pointer1.height / 2f), min(height.toFloat() - (pointer1.height / 2f), point.y)),
    )

    private fun arePointsOverlapping(points: List<PointF>): Boolean {
        val isPointsOverlapping = { p1: PointF, p2: PointF ->
            (sqrt((p1.x - p2.x).pow(2) + (p1.y - p2.y).pow(2)) < pointer1.width)
        }
        points.windowed(size = 2, partialWindows = false).forEach {
            val p1 = it[0]
            val p2 = it[1]
            if (isPointsOverlapping(p1, p2)) return true
        }
        if (isPointsOverlapping(points.last(), points.first())) return true
        return false
    }

    private inner class TouchListenerImpl(
        private val polygonView: PolygonView,
        private val getCurrentPoint: () -> PointF,
        private val onMove: (mv: PointF) -> Unit
    ) : OnTouchListener {
        var downPT = PointF() // Record Mouse Position When Pressed Down
        var startPT = PointF() // Record Start Position of 'img'
        override fun onTouch(v: View, event: MotionEvent): Boolean {
            when (event.action) {
                MotionEvent.ACTION_MOVE -> {
                    val mv = PointF(event.x - downPT.x, event.y - downPT.y)
                    onMove(mv)
                    startPT = getCurrentPoint()
                    drawMag(startPT.x, startPT.y)
                    polygonView.updateMidPointsRotation(v)
                }
                MotionEvent.ACTION_DOWN -> {
                    downPT.x = event.x
                    downPT.y = event.y
                    startPT = getCurrentPoint()
                }
                MotionEvent.ACTION_UP -> {
                    val color = if (isValidShape(points)) {
                        isError = false
                        ContextCompat.getColor(context, R.color.blue)
                    } else {
                        isError = true
                        ContextCompat.getColor(context, R.color.error)
                    }
                    paint.color = color
                    dismissMag()
                }
                else -> {}
            }
            polygonView.invalidate()
            return true
        }
    }

    private inner class MidPointTouchListenerImpl(
        private val polygonView: PolygonView,
        private val getCurrentPoint1: () -> PointF,
        private val getCurrentPoint2: () -> PointF,
        private val onMove: (mv: PointF) -> Unit
    ) : OnTouchListener {
        var downPT = PointF() // Record Mouse Position When Pressed Down
        override fun onTouch(v: View, event: MotionEvent): Boolean {
            when (event.action) {
                MotionEvent.ACTION_MOVE -> {
                    val mv = PointF(event.x - downPT.x, event.y - downPT.y)
                    if (abs(getCurrentPoint1().x - getCurrentPoint2().x) > abs(
                            getCurrentPoint1().y - getCurrentPoint2().y
                        )
                    ) {
                        onMove(PointF(0f, mv.y))
                    } else {
                        onMove(PointF(mv.y, 0f))
                    }
                    val centerPoint = getCenterPoint()
                    drawMag(centerPoint.x, centerPoint.y)
                }
                MotionEvent.ACTION_DOWN -> {
                    downPT.x = event.x
                    downPT.y = event.y
                }
                MotionEvent.ACTION_UP -> {
                    val color = if (isValidShape(points)) {
                        isError = false
                        ContextCompat.getColor(context, R.color.blue)
                    } else {
                        isError = true
                        ContextCompat.getColor(context, R.color.error)
                    }
                    paint.color = color
                    dismissMag()
                }
                else -> {}
            }
            polygonView.invalidate()
            return true
        }

        private fun getCenterPoint() = PointF(
            getCurrentPoint1().x + (getCurrentPoint2().x - getCurrentPoint1().x) / 2f,
            getCurrentPoint1().y + (getCurrentPoint2().y - getCurrentPoint1().y) / 2f,
        )
    }


    companion object {
        private const val DRAGGABLE_POINT = R.drawable.scan_circle
        private const val DRAGGABLE_DASH = R.drawable.scan_dash
    }
}

private val VECTOR_UP = PointF(1f, 0f)
private fun PointF.normalize(): PointF = with(length()) {
    PointF(x / this, y / this)
}

private fun PointF.angleWith(other: PointF): Float {
    var angle = atan2(other.y, other.x) - atan2(this.y, this.x)
    if (angle < 0F) {
        angle += (2F * PI).toFloat()
    }
    return ((angle * 180F) / PI).toFloat()
}