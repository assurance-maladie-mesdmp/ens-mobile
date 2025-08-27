/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

abstract class IEnsAnalytics {
  void sendTag(EnsTag tag);
}

abstract interface class IAnalyticsHook {
  void onSendTag(EnsTag tag);
}

enum EnsAnalyticsCategory { CLICK, PAGE }

class EnsTag extends Equatable {
  final EnsAnalyticsCategory category;
  final String name;
  final String? level1;
  final String? level2;
  final String? level3;

  const EnsTag({
    required this.category,
    required this.name,
    this.level1,
    this.level2,
    this.level3,
  });

  @override
  List<Object?> get props => [category, name, level1, level2, level3];
}

class TagHistory extends Equatable {
  final DateTime submissionDate;
  final EnsTag tag;

  const TagHistory({required this.submissionDate, required this.tag});

  @override
  List<Object?> get props => [submissionDate, tag];
}
