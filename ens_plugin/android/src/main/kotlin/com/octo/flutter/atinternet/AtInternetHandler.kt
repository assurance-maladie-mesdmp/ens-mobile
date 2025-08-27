/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

package com.octo.flutter.atinternet

import android.app.Activity
import android.util.Log
import com.atinternet.tracker.ATInternet
import com.atinternet.tracker.Tracker
import com.atinternet.tracker.TrackerConfigurationKeys
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel


class AtInternetHandler : MethodChannel.MethodCallHandler {

    companion object {

        private val trackersMap: MutableMap<String, Tracker> = mutableMapOf()
        var instance: AtInternetHandler? = null

        private const val FUN_CREATE_TRACKER: String = "createTracker"
        private const val FUN_TAG_CLICK: String = "tagClick"
        private const val FUN_TAG_SCREEN: String = "tagScreen"

        private const val PARAM_TRACKER_NAME: String = "PARAM_TRACKER_NAME"
        private const val PARAM_SITE_ID: String = "PARAM_SITE_ID"
        private const val PARAM_STORAGE: String = "PARAM_STORAGE"
        private const val PARAM_COLLECT_URL: String = "PARAM_COLLECT_URL"
        private const val PARAM_SECURE_COLLECT_URL: String = "PARAM_SECURE_COLLECT_URL"
        private const val PARAM_DOMAIN: String = "PARAM_DOMAIN"
        private const val PARAM_TAG_NAME: String = "PARAM_TAG_NAME"
        private const val PARAM_CHAPTER_1: String = "PARAM_CHAPTER_1"
        private const val PARAM_CHAPTER_2: String = "PARAM_CHAPTER_2"
        private const val PARAM_CHAPTER_3: String = "PARAM_CHAPTER_3"

        private const val ERROR_TRACKER_NOT_FOUND: String = "ERROR_TRACKER_NOT_FOUND"
        private const val ERROR_MISSING_ARGS: String = "ERROR_MISSING_ARGS"
    }

    private var lastTrackerName: String? = null

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            FUN_CREATE_TRACKER -> {
                createTracker(call, result)
            }
            FUN_TAG_CLICK -> {
                tagClick(call, result)
            }
            FUN_TAG_SCREEN -> {
                tagScreen(call, result)
            }
            else -> {
                result.notImplemented()
            }
        }
    }

    private fun tagScreen(call: MethodCall, result: MethodChannel.Result) {
        tag(call, result, TagType.SCREEN)
    }

    private fun tagClick(call: MethodCall, result: MethodChannel.Result) {
        tag(call, result, TagType.CLICK)
    }

    private fun tag(call: MethodCall, result: MethodChannel.Result, type: TagType) {

        val trackerName = call.argument<String>(PARAM_TRACKER_NAME)
        this.lastTrackerName = trackerName
        val tagName = call.argument<String>(PARAM_TAG_NAME)
        val missingArgs = listOfNotNull(
            PARAM_TRACKER_NAME.takeIf { trackerName.isNullOrBlank() },
            PARAM_TAG_NAME.takeIf { tagName.isNullOrBlank() }
        )
        if (missingArgs.isNotEmpty()) {
            result.error(ERROR_MISSING_ARGS, missingArgs.joinToString(", "), null)
            return
        }

        val chapter1 = call.argument<String>(PARAM_CHAPTER_1)
        val chapter2 = call.argument<String>(PARAM_CHAPTER_2)
        val chapter3 = call.argument<String>(PARAM_CHAPTER_3)

        tagWithTrackerName(trackerName, chapter1, chapter2, chapter3, tagName, type, result)
    }

    fun tagWithTrackerName(
        trackerName: String?,
        chapter1: String?,
        chapter2: String?,
        chapter3: String?,
        tagName: String?,
        type: TagType,
        result: MethodChannel.Result?
    ) {
        val tracker = if (trackerName != null) {
            trackersMap[trackerName]
        } else {
            trackersMap[lastTrackerName]
        }

        if (tracker != null) {
            val chaptersAndName: String =
                mergeChaptersAndName(chapter1, chapter2, chapter3, tagName)
            when (type) {
                TagType.SCREEN -> tracker.Screens().add(chaptersAndName).sendView()
                TagType.CLICK -> tracker.Gestures().add(chaptersAndName).sendTouch()
            }
            result?.success(null)
        } else {
            result?.error(ERROR_TRACKER_NOT_FOUND, null, null)
        }
    }

    private fun mergeChaptersAndName(
        chapter1: String?,
        chapter2: String?,
        chapter3: String?,
        tagName: String?
    ): String = listOfNotNull(chapter1, chapter2, chapter3, tagName).joinToString(separator = "::")

    private fun createTracker(call: MethodCall, result: MethodChannel.Result) {
        instance = this
        val trackerName = call.argument<String>(PARAM_TRACKER_NAME)
        this.lastTrackerName = trackerName
        val siteId = call.argument<String>(PARAM_SITE_ID)
        val storage = call.argument<String>(PARAM_STORAGE)
        val collectUrl = call.argument<String>(PARAM_COLLECT_URL)
        val secureCollectUrl = call.argument<String>(PARAM_SECURE_COLLECT_URL)
        val domain = call.argument<String>(PARAM_DOMAIN)

        val missingArgs = listOfNotNull(
            PARAM_TRACKER_NAME.takeIf { trackerName.isNullOrBlank() },
            PARAM_SITE_ID.takeIf { siteId.isNullOrBlank() },
            PARAM_STORAGE.takeIf { storage.isNullOrBlank() },
            PARAM_COLLECT_URL.takeIf { collectUrl.isNullOrBlank() },
            PARAM_SECURE_COLLECT_URL.takeIf { secureCollectUrl.isNullOrBlank() },
            PARAM_DOMAIN.takeIf { domain.isNullOrBlank() }
        )
        if (missingArgs.isNotEmpty()) {
            result.error(ERROR_MISSING_ARGS, missingArgs.joinToString(", "), null)
            return
        }

        val tracker = ATInternet.getInstance().getTracker(
            trackerName,
            hashMapOf<String, Any>(
                TrackerConfigurationKeys.SITE to siteId!!,
                TrackerConfigurationKeys.DOMAIN to domain!!,
                TrackerConfigurationKeys.LOG to collectUrl!!,
                TrackerConfigurationKeys.LOG_SSL to secureCollectUrl!!,
                TrackerConfigurationKeys.STORAGE to storage!!,
                TrackerConfigurationKeys.SECURE to true,
                TrackerConfigurationKeys.IDENTIFIER to "androidId"
            )
        )
        trackersMap[trackerName!!] = tracker
        result.success(null)
    }

    enum class TagType { SCREEN, CLICK }
}