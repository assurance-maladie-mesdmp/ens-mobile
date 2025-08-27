/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

enum MimeType { TIFF, JPEG, JPG, PNG, TXT, PDF, RTF, DOC, GENERIC }

extension MimeTypeExtension on MimeType {
  String get label {
    switch (this) {
      case MimeType.TIFF:
        return MimeTypeUtils.TIFF_LABEL;
      case MimeType.JPEG:
        return MimeTypeUtils.JPEG_LABEL;
      case MimeType.JPG:
        return MimeTypeUtils.JPG_LABEL;
      case MimeType.PNG:
        return MimeTypeUtils.PNG_LABEL;
      case MimeType.TXT:
        return MimeTypeUtils.TXT_LABEL;
      case MimeType.PDF:
        return MimeTypeUtils.PDF_LABEL;
      case MimeType.RTF:
        return MimeTypeUtils.RTF_LABEL;
      case MimeType.DOC:
        return MimeTypeUtils.DOC_LABEL;
      case MimeType.GENERIC:
        return MimeTypeUtils.GENERIC_LABEL;
    }
  }

  String get fileExtension {
    switch (this) {
      case MimeType.TIFF:
        return 'tiff';
      case MimeType.JPEG:
        return 'jpeg';
      case MimeType.JPG:
        return 'jpg';
      case MimeType.PNG:
        return 'png';
      case MimeType.TXT:
        return 'txt';
      case MimeType.PDF:
        return 'pdf';
      case MimeType.RTF:
        return 'rtf';
      case MimeType.DOC:
        return 'doc';
      case MimeType.GENERIC:
        return '';
    }
  }

  bool get isAccepted {
    if (this == MimeType.GENERIC) {
      return false;
    }
    return true;
  }
}

class MimeTypeUtils {
  static const TIFF_LABEL = 'image/tiff';
  static const JPEG_LABEL = 'image/jpeg';
  static const JPG_LABEL = 'image/jpg';
  static const PNG_LABEL = 'image/png';
  static const TXT_LABEL = 'text/plain';
  static const PDF_LABEL = 'application/pdf';
  static const RTF_LABEL = 'application/rtf';
  static const DOC_LABEL = 'application/msword';
  static const GENERIC_LABEL = 'application/octet-stream';

  static MimeType fromLabel(String? label) {
    MimeType result = MimeType.GENERIC;
    for (final element in MimeType.values) {
      if (element.label == label?.toLowerCase()) {
        result = element;
      }
    }
    return result;
  }

  static MimeType fromFileExtension(String fileExtension) {
    MimeType result = MimeType.GENERIC;
    for (final element in MimeType.values) {
      if (element.fileExtension == fileExtension.toLowerCase()) {
        result = element;
      }
    }
    return result;
  }

  static const DISPLAYABLE_MIMETYPES = [MimeType.JPEG, MimeType.JPG, MimeType.PNG, MimeType.PDF];

  static const IMAGE_MIMETYPES = [MimeType.JPEG, MimeType.JPG, MimeType.PNG];
}
