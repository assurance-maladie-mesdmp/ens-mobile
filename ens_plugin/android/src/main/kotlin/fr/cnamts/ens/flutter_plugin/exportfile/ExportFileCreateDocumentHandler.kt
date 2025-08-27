/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

package fr.cnamts.ens.flutter_plugin.exportfile

import android.content.ContentResolver
import android.util.Base64
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.PluginRegistry


class ExportContentCreateDocumentHandler {

    companion object {
        fun fileExportHandler(fileExportContentSource: ExportContentSource.FileExportContentSource, result: MethodChannel.Result, contentResolver: ContentResolver): PluginRegistry.ActivityResultListener =
                PluginRegistry.ActivityResultListener { _, _, data ->
                    val outputUri = data?.data

                    if (outputUri == null) {
                        result.success(null)
                    } else {
                        try {
                            val outputStream = contentResolver.openOutputStream(outputUri)
                            if (outputStream != null) {
                                fileExportContentSource.content.inputStream().use { fis ->
                                    outputStream.use { os ->
                                        fis.copyTo(os)
                                        result.success(outputUri.toString())
                                    }
                                }
                            }
                        } catch (e: Exception) {
                            result.success(null)
                        }
                    }

                    true
                }

        fun base64ExportHandler(base64ExportContentSource: ExportContentSource.Base64ExportContentSource, result: MethodChannel.Result, contentResolver: ContentResolver): PluginRegistry.ActivityResultListener =
                PluginRegistry.ActivityResultListener { _, _, data ->
                    val outputUri = data?.data

                    if (outputUri == null) {
                        result.success(null)
                    } else {
                        try {
                            val decodedContent = Base64.decode(base64ExportContentSource.content, Base64.DEFAULT)
                            contentResolver.openOutputStream(outputUri)?.use { os ->
                                os.write(decodedContent)
                                result.success(outputUri.toString())
                            }
                        } catch (e: Exception) {
                            result.success(null)
                        }
                    }

                    true
                }
    }
}
