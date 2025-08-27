/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

package fr.cnamts.ens.flutter_plugin.exportfile

import java.io.File

sealed class ExportContentSource {
    data class Base64ExportContentSource(val content: String) : ExportContentSource()
    data class FileExportContentSource(val content: File) : ExportContentSource();
}
