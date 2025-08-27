/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/catalogue_services/domain/models/service_image.dart';
import 'package:optional/optional.dart';

class CatalogueService extends Equatable {
  final String id;
  final String? description;
  final String editor;
  final String name;
  final EnsServiceImage? logo;
  final bool isSynchronised;
  final String? oid;
  final bool? isAcknowledged;
  final List<String> regionsId;
  final List<String> thematicsId;
  final bool isAvailable;
  final DateTime? dateLimiteAutorisation;
  final String? cguUrl;

  const CatalogueService({
    required this.id,
    required this.description,
    required this.editor,
    required this.name,
    required this.isSynchronised,
    this.logo,
    this.oid,
    this.isAcknowledged,
    this.regionsId = const [],
    this.thematicsId = const [],
    required this.isAvailable,
    this.dateLimiteAutorisation,
    required this.cguUrl,
  });

  bool get shouldUpdateAutorisation => shouldUpdateAutorisationAfterMajorite || shouldUpdateAutorisationAfterVersioning;

  bool get shouldUpdateAutorisationAfterVersioning => isSynchronised && isAvailable && isAcknowledged == false;

  bool get shouldUpdateAutorisationAfterMajorite => isSynchronised && isAvailable && dateLimiteAutorisation != null;

  @override
  List<Object?> get props => [
        id,
        description,
        editor,
        name,
        logo,
        isSynchronised,
        oid,
        isAcknowledged,
        regionsId,
        thematicsId,
        isAvailable,
        dateLimiteAutorisation,
        cguUrl,
      ];

  CatalogueService clone({
    bool? isAcknowledged,
    Optional<DateTime?>? dateLimiteAutorisationOptional,
  }) {
    return CatalogueService(
      id: id,
      description: description,
      editor: editor,
      name: name,
      logo: logo,
      isSynchronised: isSynchronised,
      oid: oid,
      isAcknowledged: isAcknowledged ?? this.isAcknowledged,
      regionsId: regionsId,
      thematicsId: thematicsId,
      isAvailable: isAvailable,
      dateLimiteAutorisation: dateLimiteAutorisationOptional != null
          ? dateLimiteAutorisationOptional.orElseNullable(null)
          : dateLimiteAutorisation,
      cguUrl: cguUrl,
    );
  }
}

class Region extends Equatable {
  final String id;
  final String label;

  const Region(this.id, this.label);

  @override
  List<Object?> get props => [id, label];
}

class Thematic extends Equatable {
  final String id;
  final String label;

  const Thematic(this.id, this.label);

  @override
  List<Object?> get props => [id, label];
}
