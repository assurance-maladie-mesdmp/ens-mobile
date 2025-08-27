/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

package fr.cnamts.ens.flutter_plugin

import androidx.annotation.NonNull
import com.octo.flutter.atinternet.AtInternetWrapperPlugin
import com.octo.flutter.trustcommander.TrustCommanderWrapperPlugin
import fr.cnamts.ens.flutter_plugin.exportfile.ExportFilePlugin
import fr.cnamts.ens.flutter_plugin.openfile.OpenFilePlugin
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding

/** EnsPlugin */
class EnsPlugin : FlutterPlugin, ActivityAware {

    /**
     * File export related stuff
     */
    private val exportFilePlugin = ExportFilePlugin()

    /**
     * File opening related stuff
     */
    private val openFilePlugin = OpenFilePlugin()

    /**
     * AtInternet related stuff
     */
    private val atInternetWrapperPlugin = AtInternetWrapperPlugin()

    /**
     * Trust Commander related stuff
     */
    private val trustCommanderWrapperPlugin = TrustCommanderWrapperPlugin()

    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        exportFilePlugin.onAttachedToEngine(flutterPluginBinding)
        openFilePlugin.onAttachedToEngine(flutterPluginBinding)
        atInternetWrapperPlugin.onAttachedToEngine(flutterPluginBinding)
        trustCommanderWrapperPlugin.onAttachedToEngine(flutterPluginBinding)
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        exportFilePlugin.onDetachedFromEngine(binding)
        openFilePlugin.onDetachedFromEngine(binding)
        atInternetWrapperPlugin.onDetachedFromEngine(binding)
        trustCommanderWrapperPlugin.onDetachedFromEngine(binding)
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        exportFilePlugin.onAttachedToActivity(binding)
        openFilePlugin.onAttachedToActivity(binding)
        atInternetWrapperPlugin.onAttachedToActivity(binding)
    }

    override fun onDetachedFromActivityForConfigChanges() {
        exportFilePlugin.onDetachedFromActivityForConfigChanges()
        openFilePlugin.onDetachedFromActivityForConfigChanges()
        atInternetWrapperPlugin.onDetachedFromActivityForConfigChanges()
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        exportFilePlugin.onReattachedToActivityForConfigChanges(binding)
        openFilePlugin.onReattachedToActivityForConfigChanges(binding)
        atInternetWrapperPlugin.onReattachedToActivityForConfigChanges(binding)
    }

    override fun onDetachedFromActivity() {
        exportFilePlugin.onDetachedFromActivity()
        openFilePlugin.onDetachedFromActivity()
        atInternetWrapperPlugin.onDetachedFromActivity()
    }
}
