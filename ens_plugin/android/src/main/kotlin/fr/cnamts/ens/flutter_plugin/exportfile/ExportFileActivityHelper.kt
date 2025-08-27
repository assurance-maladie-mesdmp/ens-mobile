/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

package fr.cnamts.ens.flutter_plugin.exportfile

import android.app.Activity
import android.content.Intent
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.PluginRegistry


class ExportFileActivityHelper : PluginRegistry.ActivityResultListener {

    companion object {
        const val RC_CREATE_DOC = 1981
    }

    private val activityResultHandlersMap: MutableMap<Int, PluginRegistry.ActivityResultListener> = mutableMapOf()

    private var activity: Activity? = null

    fun init(activity: Activity) {
        this.activity = activity
    }

    fun clear() {
        activity = null
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?): Boolean {
        val handler = activityResultHandlersMap[requestCode]
        return handler?.onActivityResult(requestCode, resultCode, data) ?: false
    }

    fun launchContentExportation(result: MethodChannel.Result, contentSource: ExportContentSource, title: String?, type: String?) {
        activity?.let {
            @Suppress("IntroduceWhenSubject")
            val handler: PluginRegistry.ActivityResultListener? = when {
                contentSource is ExportContentSource.FileExportContentSource -> {
                    ExportContentCreateDocumentHandler.fileExportHandler(
                            fileExportContentSource = contentSource,
                            result = result,
                            contentResolver = it.contentResolver
                    )
                }
                contentSource is ExportContentSource.Base64ExportContentSource -> {
                    ExportContentCreateDocumentHandler.base64ExportHandler(
                            base64ExportContentSource = contentSource,
                            result = result,
                            contentResolver = it.contentResolver
                    )
                }
                else -> {
                    null
                }
            }
            if (handler != null) {
                activityResultHandlersMap[RC_CREATE_DOC] = handler
                val intent = Intent(Intent.ACTION_CREATE_DOCUMENT).apply {
                    addCategory(Intent.CATEGORY_OPENABLE)
                    this.type = type
                    putExtra(Intent.EXTRA_TITLE, title)
                }
                it.startActivityForResult(intent, RC_CREATE_DOC)
            }
        } ?: onActivityResult(RC_CREATE_DOC, Activity.RESULT_CANCELED, null)
    }
}
