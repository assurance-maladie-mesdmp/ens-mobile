/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

package fr.cnamts.ens.flutter_plugin.openfile

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding


class OpenFilePlugin : FlutterPlugin, ActivityAware {

    private lateinit var openFileChannelHandler: OpenFileChannelHandler

    override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        openFileChannelHandler = OpenFileChannelHandler(binding)
        openFileChannelHandler.start()
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        openFileChannelHandler.stop()
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        openFileChannelHandler.init(binding.activity)
    }

    override fun onDetachedFromActivity() {
        openFileChannelHandler.clear()
    }

    override fun onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity()
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        onAttachedToActivity(binding)
    }
}
