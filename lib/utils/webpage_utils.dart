/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/utils/navigation_utils.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchUrlOnBrowser(String url) async {
  final uri = Uri.parse(url);
  if (Platform.isAndroid && url.endsWith('.pdf')) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    await canLaunchUrl(uri) ? launchUrl(uri) : throw 'Could not launch $url';
  }
}

Future<void> launchUrlOrInternalLink(String url, [bool fromDetailArticle = false]) async {
  if (url.startsWith('http')) {
    launchUrlOnBrowser(url);
  } else {
    navigateInApp(url, fromDetailArticle: fromDetailArticle);
  }
}

Future<void> launchInternalLink(String url, BuildContext context) async {
  if (url.endsWith('/questions-frequentes')) {
    navigateInApp('/aide');
  } else if (url.endsWith('/documents')) {
    Navigator.popUntil(context, (route) => route.isFirst);
    navigateInApp('/documents');
  }
}

bool isUrlLinkToHome(String url) => url == '/documents' || url == '/messagerie';
