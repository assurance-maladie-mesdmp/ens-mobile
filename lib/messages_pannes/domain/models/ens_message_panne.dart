/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:html_unescape/html_unescape_small.dart';

class EnsMessagePanne extends Equatable {
  final String title;
  final String? content;
  final EnsMessagePanneType type;

  const EnsMessagePanne({
    required this.title,
    required this.content,
    required this.type,
  });

  static EnsMessagePanne? fromJson(Map<String, dynamic> json) {
    final unescape = HtmlUnescape();
    final data = json['data'] as List<dynamic>;
    final firstData = data[0] as Map<String, dynamic>;
    final messages = firstData['messages'] as List<dynamic>;
    final activeMessage = messages.firstWhereOrNull((message) {
      message as Map<String, dynamic>;
      return message['field_paragraph_message_status'] as bool;
    }) as Map<String, dynamic>?;
    if (activeMessage == null) {
      return null;
    }
    final fieldMessageEmergencyNotifDescription = (activeMessage['field_emergency_notif_descriptio'] != null)
        ? activeMessage['field_emergency_notif_descriptio'] as Map<String, dynamic>
        : <String, dynamic>{};
    final fieldEmergencyNotifDisplay = (activeMessage['field_emergency_notif_display'] != null)
        ? activeMessage['field_emergency_notif_display'] as String?
        : <String, dynamic>{};
    if (fieldEmergencyNotifDisplay != null && fieldEmergencyNotifDisplay == 'desktop') {
      return null;
    }
    final fieldMessageEmergencyNotifDescriptionValue = fieldMessageEmergencyNotifDescription['value'] as String?;
    return EnsMessagePanne(
      title: activeMessage['field_emergency_notif_title'] as String,
      content: (fieldMessageEmergencyNotifDescriptionValue != null)
          ? unescape.convert(fieldMessageEmergencyNotifDescriptionValue)
          : null,
      type: messagePanneTypeFromString(activeMessage['field_paragraph_emergency_type'] as String),
    );
  }

  @override
  List<Object?> get props => [title, content, type];
}

enum EnsMessagePanneType {
  WARNING,
  ERROR,
  NOTIFICATION,
  SUCCESS,
  UNKNOWN;

  String get svgPath {
    switch (this) {
      case EnsMessagePanneType.WARNING:
        return EnsImages.ic_caution_with_background;
      case EnsMessagePanneType.ERROR:
        return EnsImages.ic_error_with_background;
      case EnsMessagePanneType.NOTIFICATION:
        return EnsImages.ic_info_with_background;
      case EnsMessagePanneType.SUCCESS:
        return EnsImages.ic_check_with_background;
      case EnsMessagePanneType.UNKNOWN:
        return '';
    }
  }
}

EnsMessagePanneType messagePanneTypeFromString(String value) {
  switch (value) {
    case 'warning':
      return EnsMessagePanneType.WARNING;
    case 'error':
      return EnsMessagePanneType.ERROR;
    case 'notification':
      return EnsMessagePanneType.NOTIFICATION;
    case 'success':
      return EnsMessagePanneType.SUCCESS;
    default:
      return EnsMessagePanneType.UNKNOWN;
  }
}
