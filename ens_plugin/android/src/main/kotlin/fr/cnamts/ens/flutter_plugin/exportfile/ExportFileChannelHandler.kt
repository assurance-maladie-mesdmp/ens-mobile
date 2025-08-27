/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

package fr.cnamts.ens.flutter_plugin.exportfile

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import java.io.File


class ExportFileChannelHandler(
    private val activityHelper: ExportFileActivityHelper,
    flutterPluginBinding: FlutterPlugin.FlutterPluginBinding
) : MethodChannel.MethodCallHandler {

    companion object {
        const val METHOD_EXPORT_BASE64_CONTENT = "exportBase64Content"
        const val ARG_BASE64_CONTENT = "base64Content"
        const val ARG_FILENAME_WITH_EXTENSION = "fileNameWithExtension"
        const val ARG_MIMETYPE = "mimetype"
    }

    private val channel: MethodChannel = MethodChannel(flutterPluginBinding.binaryMessenger, "fr.cnamts.ens.flutter_plugin/exportFile")

    fun init() {
        channel.setMethodCallHandler(this)
    }

    fun clear() {
        channel.setMethodCallHandler(null)
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            METHOD_EXPORT_BASE64_CONTENT -> {
                val base64Content = call.argument<String>(ARG_BASE64_CONTENT)
                val title = call.argument<String>(ARG_FILENAME_WITH_EXTENSION)
                val type = call.argument<String>(ARG_MIMETYPE)
                if (base64Content.isNullOrBlank()) {
                    result.success(null)
                } else {
                    activityHelper.launchContentExportation(result, ExportContentSource.Base64ExportContentSource(base64Content), title, type)
                }
            }
            else -> {
                result.notImplemented()
            }
        }
    }
}
