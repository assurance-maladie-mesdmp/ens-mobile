/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

package fr.cnamts.ens.scan.utils

import java.io.File
import java.io.IOException
import java.text.SimpleDateFormat
import java.util.*

class FileUtils {
    companion object {
        @Throws(IOException::class)
        fun createImageFile(filesDir: File?): File {
            val timeStamp: String =
                SimpleDateFormat("yyyyMMdd_HHmmss", Locale.FRANCE).format(Date())
            return File.createTempFile(
                "JPEG_${timeStamp}_",
                ".jpg",
                filesDir
            )
        }
    }
}