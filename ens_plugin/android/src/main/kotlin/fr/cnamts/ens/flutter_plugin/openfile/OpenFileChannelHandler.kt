/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

package fr.cnamts.ens.flutter_plugin.openfile

import android.app.Activity
import android.content.Intent
import android.net.Uri
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel


class OpenFileChannelHandler(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) : MethodChannel.MethodCallHandler {

    companion object {
        const val METHOD_OPEN = "open"
        const val ARG_URI = "uri"
    }

    private var activity: Activity? = null
    private val channel: MethodChannel = MethodChannel(flutterPluginBinding.binaryMessenger, "fr.cnamts.ens.flutter_plugin/openFile")

    fun init(activity: Activity) {
        this.activity = activity
    }

    fun clear() {
        activity = null
    }

    fun start() {
        channel.setMethodCallHandler(this)
    }

    fun stop() {
        channel.setMethodCallHandler(null)
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            METHOD_OPEN -> {
                val uri = call.argument<String>(ARG_URI)
                if (uri.isNullOrBlank()) {
                    result.success(null)
                } else {
                    activity?.let {
                        val intent = Intent(Intent.ACTION_VIEW)
                        intent.data = Uri.parse(uri)
                        it.startActivity(intent)
                    }
                }
            }
            else -> {
                result.notImplemented()
            }
        }
    }
}
