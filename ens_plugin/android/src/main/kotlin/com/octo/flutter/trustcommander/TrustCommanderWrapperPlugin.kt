/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

package com.octo.flutter.trustcommander

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodChannel


class TrustCommanderWrapperPlugin : FlutterPlugin {

    private var channel: MethodChannel? = null
    private var trustCommanderHandler: TrustCommanderHandler? = null

    override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        with(MethodChannel(binding.binaryMessenger, "com.octo.flutter/trustcommander_wrapper")){
            channel = this
            trustCommanderHandler = TrustCommanderHandler(this, binding.applicationContext)
            setMethodCallHandler(trustCommanderHandler)
        }
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel?.setMethodCallHandler(null)
        trustCommanderHandler?.stop()
        channel = null
    }
}