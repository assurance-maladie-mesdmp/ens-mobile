/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/raccourcis/domain/raccourcis_categorie.dart';

class RaccourcisItem extends Equatable {
  final String titre;
  final String imagePath;
  final Categorie categorie;
  final void Function(BuildContext)? onTap;

  const RaccourcisItem({
    required this.titre,
    required this.imagePath,
    this.onTap,
    required this.categorie,
  });

  @override
  List<Object?> get props => [titre, imagePath, categorie];
}

class RaccourcisMesuresItem extends RaccourcisItem {
  final String formattedMetricValue;
  final String unit;
  final String formattedDate;

  const RaccourcisMesuresItem({
    required super.titre,
    required super.imagePath,
    required super.categorie,
    super.onTap,
    required this.formattedMetricValue,
    required this.unit,
    required this.formattedDate,
  });

  @override
  List<Object?> get props => [...super.props, formattedMetricValue, unit, formattedDate];
}
