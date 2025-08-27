/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

package fr.cnamts.ens.flutter_plugin.exportfile

import androidx.annotation.NonNull
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding


class ExportFilePlugin : FlutterPlugin, ActivityAware {

    private val exportFileActivityHelper = ExportFileActivityHelper()
    private lateinit var exportFileChannelHandler: ExportFileChannelHandler

    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        exportFileChannelHandler = ExportFileChannelHandler(exportFileActivityHelper, flutterPluginBinding)
        exportFileChannelHandler.init()
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        exportFileChannelHandler.clear()
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        exportFileActivityHelper.init(binding.activity)
        binding.addActivityResultListener(exportFileActivityHelper)
    }

    override fun onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity()
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        onAttachedToActivity(binding)
    }

    override fun onDetachedFromActivity() {
        exportFileActivityHelper.clear()
    }
}
