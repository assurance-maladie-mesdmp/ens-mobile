/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

// ignore_for_file: avoid_dynamic_calls

import 'package:equatable/equatable.dart';
import 'package:html_unescape/html_unescape_small.dart';

class ArticleDetail extends Equatable {
  final String title;
  final String? subTitle;
  final String content;
  final List<ArticleActionButton> actionButtons;

  const ArticleDetail({
    required this.title,
    this.subTitle,
    required this.content,
    required this.actionButtons,
  });

  factory ArticleDetail.fromJson(Map<String, dynamic> json) {
    final unescape = HtmlUnescape();
    final dynamic sidebarJson = json['data']['field_art_prv_page_detail']?['field_sidebar_block'] as dynamic;
    final List<ArticleActionButton> actionButtons = [];

    if (sidebarJson is List) {
      for (final element in sidebarJson) {
        final json = element as Map<String, dynamic>;
        final title = json['field_sidebar_bloc_title_alaune'] as String;
        final content = json['field_sidebar_bloc_desc_alaune'] as String;
        final fieldSidebarBlocLienAlaune = json['field_sidebar_bloc_lien_alaune'] as Map<String, dynamic>;
        final linkLabel = fieldSidebarBlocLienAlaune['title'] as String;
        String link = fieldSidebarBlocLienAlaune['uri'] as String;
        final isExternalLink = !link.startsWith('internal:');
        if (!isExternalLink) {
          link = link.replaceFirst('internal:', '');
        }
        final fieldSidebarLogoAlaune = json['field_sidebar_logo_alaune'] as Map<String, dynamic>;
        final image = fieldSidebarLogoAlaune['name'] as String?;
        actionButtons.add(
          ArticleActionButton(
            title: title,
            content: content,
            linkLabel: linkLabel,
            link: link,
            isExternalLink: isExternalLink,
            image: image,
          ),
        );
      }
    }

    return ArticleDetail(
      title: json['data']['field_art_prv_titre'] as String,
      subTitle: json['data']['field_art_prv_page_detail']['field_page_detail_sous_titre'] as String? ??
          'field_page_detail_sous_titre pas renseigné',
      content: unescape.convert(
        json['data']['field_art_prv_page_detail']['field_article_body_page_detail']['processed'] as String,
      ),
      actionButtons: actionButtons,
    );
  }

  factory ArticleDetail.fromJsonGenerique(Map<String, dynamic> json) {
    final unescape = HtmlUnescape();
    final dynamic sidebarJson = json['data']['field_page_detail']?['field_sidebar_block'] as dynamic;
    final List<ArticleActionButton> actionButtons = [];

    if (sidebarJson is List) {
      for (final element in sidebarJson) {
        final json = element as Map<String, dynamic>;
        final title = json['field_sidebar_bloc_title_alaune'] as String;
        final content = json['field_sidebar_bloc_desc_alaune'] as String;
        final fieldSidebarBlocLienAlaune = json['field_sidebar_bloc_lien_alaune'] as Map<String, dynamic>;
        final linkLabel = fieldSidebarBlocLienAlaune['title'] as String;
        String link = fieldSidebarBlocLienAlaune['uri'] as String;
        final isExternalLink = !link.startsWith('internal:');
        if (!isExternalLink) {
          link = link.replaceFirst('internal:', '');
        }
        final fieldSidebarLogoAlaune = json['field_sidebar_logo_alaune'] as Map<String, dynamic>;
        final image = fieldSidebarLogoAlaune['name'] as String?;
        actionButtons.add(
          ArticleActionButton(
            title: title,
            content: content,
            linkLabel: linkLabel,
            link: link,
            isExternalLink: isExternalLink,
            image: image,
          ),
        );
      }
    }

    return ArticleDetail(
      title: json['data']['field_titre'] as String,
      subTitle: json['data']['field_page_detail']['field_page_detail_sous_titre'] as String? ??
          'field_page_detail_sous_titre pas renseigné',
      content: unescape.convert(
        json['data']['field_page_detail']['field_article_body_page_detail']['processed'] as String,
      ),
      actionButtons: actionButtons,
    );
  }

  @override
  List<Object?> get props => [title, subTitle, content, actionButtons];
}

class ArticleActionButton extends Equatable {
  final String title;
  final String content;
  final String linkLabel;
  final String link;
  final bool isExternalLink;
  final String? image;

  const ArticleActionButton({
    required this.title,
    required this.content,
    required this.linkLabel,
    required this.link,
    required this.isExternalLink,
    this.image,
  });

  @override
  List<Object?> get props => [title, content, linkLabel, link, isExternalLink, image];
}
