/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

package com.octo.flutter.trustcommander

import android.content.Context
import android.content.Intent
import com.tagcommander.lib.privacy.TCPrivacy
import com.tagcommander.lib.privacy.TCPrivacyAPI
import com.tagcommander.lib.privacy.TCPrivacyCallbacks
import com.tagcommander.lib.privacy.TCPrivacyCenter
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel


class TrustCommanderHandler(private val methodChannel: MethodChannel, private val appContext: Context) : MethodChannel.MethodCallHandler, TCPrivacyCallbacks {

    companion object {
        private const val FUN_INIT: String = "init"
        private const val FUN_ACCEPT_ALL: String = "acceptAll"
        private const val FUN_DECLINE_ALL: String = "declineAll"
        private const val FUN_SET_CALLBACK = "setCallback"
        private const val FUN_OPEN_PRIVACY_CENTER = "openPrivacyCenter"
        private const val FUN_SHOULD_DISPLAY_PRIVACY_CENTER = "shouldDisplayPrivacyCenter"
        private const val FUN_IS_CATEGORY_ACCEPTED = "isCategoryAccepted"
        private const val FUN_CONSENT_UPDATED: String = "consentUpdated"
        private const val FUN_CONSENT_OUTDATED: String = "consentOutdated"
        private const val FUN_CONSENT_CATEGORY_CHANGED: String = "consentCategoryChanged"
        private const val FUN_SIGNIFICANT_CHANGES_IN_PRIVACY: String = "significantChangesInPrivacy"

        private const val PARAM_SITE_ID: String = "SITE_ID"
        private const val PARAM_PRIVACY_ID: String = "PRIVACY_ID"
        private const val PARAM_CAT_ID = "CAT_ID"

        private const val ERROR_MISSING_PARAMS: String = "ERROR_MISSING_PARAMS"
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            FUN_INIT -> {
                val siteId = call.argument<Int>(PARAM_SITE_ID)
                val privacyId = call.argument<Int>(PARAM_PRIVACY_ID)

                val missingParams = listOfNotNull(
                        PARAM_SITE_ID.takeIf { siteId == null },
                        PARAM_PRIVACY_ID.takeIf { privacyId == null }
                ).joinToString(", ")
                if (missingParams.isNotEmpty()) {
                    result.error(ERROR_MISSING_PARAMS, "missing params : $missingParams", null)
                    return
                }

                init(siteId!!, privacyId!!)
                result.success(null)
            }
            FUN_SET_CALLBACK -> {
                TCPrivacy.getInstance().registerCallback(this)
            }
            FUN_ACCEPT_ALL -> {
                TCPrivacy.getInstance().acceptAllConsent()
                result.success(null)
            }
            FUN_OPEN_PRIVACY_CENTER -> {
                val privacyCenterIntent = Intent(appContext, TCPrivacyCenter::class.java)
                privacyCenterIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                appContext.startActivity(privacyCenterIntent)
                result.success(null)
            }
            FUN_DECLINE_ALL -> {
                TCPrivacy.getInstance().refuseAllConsent()
                result.success(null)
            }
            FUN_SHOULD_DISPLAY_PRIVACY_CENTER -> {
                result.success(TCPrivacyAPI.shouldDisplayPrivacyCenter(appContext))
            }
            FUN_IS_CATEGORY_ACCEPTED -> {
                val cat = call.argument<Int>(PARAM_CAT_ID)
                if (cat == null) {
                    result.error(ERROR_MISSING_PARAMS, PARAM_CAT_ID, null)
                    return
                } else {
                    result.success(TCPrivacyAPI.isCategoryAccepted(cat, appContext))
                }
            }
            else -> {
                result.notImplemented()
            }
        }
    }

    private fun init(siteId: Int, privacyId: Int) {
        with(TCPrivacy.getInstance()) {
            deactivateBackButton = true
            setSiteIDPrivacyIDAppContext(siteId, privacyId, appContext)
        }
    }

    fun stop() {
        TCPrivacy.getInstance().registerCallback(null)
    }

    override fun consentUpdated(categories: Map<String, String>?) {
        methodChannel.invokeMethod(FUN_CONSENT_UPDATED, categories)
    }

    override fun consentOutdated() {
        methodChannel.invokeMethod(FUN_CONSENT_OUTDATED, null)
    }

    override fun consentCategoryChanged() {
        methodChannel.invokeMethod(FUN_CONSENT_CATEGORY_CHANGED, null)
    }

    override fun significantChangesInPrivacy() {
        methodChannel.invokeMethod(FUN_SIGNIFICANT_CHANGES_IN_PRIVACY, null)
    }
}