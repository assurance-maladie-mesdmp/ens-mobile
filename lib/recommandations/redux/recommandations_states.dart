/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'recommandations_redux.dart';

class RecommandationsState extends Equatable {
  final AllPurposesStatus status;
  final List<EnsRecommandation> recommandations;
  final RecommandationDifferee? recommandationDifferee;

  const RecommandationsState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.recommandations = const [],
    this.recommandationDifferee,
  });

  @override
  List<Object?> get props => [
        status,
        recommandations,
        recommandationDifferee,
      ];

  RecommandationsState clone({
    AllPurposesStatus? status,
    List<EnsRecommandation>? recommandations,
    Optional<RecommandationDifferee?>? recommandationDiffereeOptional,
  }) {
    return RecommandationsState(
      status: status ?? this.status,
      recommandations: recommandations ?? this.recommandations,
      recommandationDifferee: recommandationDiffereeOptional != null
          ? recommandationDiffereeOptional.orElseNullable(null)
          : recommandationDifferee,
    );
  }
}
