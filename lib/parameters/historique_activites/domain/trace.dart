/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class Trace extends Equatable {
  final DateTime date;
  final String label;
  final TraceAuthor author;

  const Trace({required this.date, required this.label, required this.author});

  @override
  List<Object?> get props => [date, label, author];
}

class TraceAuthor extends Equatable {
  final String name;
  final EnsHistoryTraceType type;

  const TraceAuthor({required this.name, required this.type});

  @override
  List<Object?> get props => [name, type];
}

enum EnsHistoryTraceType {
  USER,
  SYSTEME,
  SUPPORT,
  ENROLEMENT,
  PS,
  ES,
  SERVICE_SYNCHRO;
}
