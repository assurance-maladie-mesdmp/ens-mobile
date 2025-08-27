/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:math';

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:logger/logger.dart';

class EnsDataMatrix extends Equatable {
  static const _MIN_RAW_DATA_SIZE = 27;
  static const _AI_SIZE = 2;
  static const _CHAR_GS = '\u001D'; // <Group Separator>

  final String cip;
  final String? lot;

  const EnsDataMatrix({required this.cip, this.lot});

  factory EnsDataMatrix.from({required String rawData}) {
    final Logger log = Logger(
      printer: PrettyPrinter(
        methodCount: 0,
      ),
    );
    try {
      log.i('Trying to parse the following datamatrix : $rawData');
      if (rawData.length < _MIN_RAW_DATA_SIZE) {
        throw const FormatException('Raw data string is too short');
      }

      final Map<_TypeOfGS1Data, String> parsedData = rawData.split(_CHAR_GS).fold(
        {},
        (previousValue, element) => _gs1Parser(
          element,
          previousValue,
        ),
      );
      final cip = parsedData[_TypeOfGS1Data.CIP];
      final lot = parsedData[_TypeOfGS1Data.NUMERO_LOT];

      if (cip == null) {
        throw const FormatException('No CIP found');
      }
      if (lot == null) {
        throw const FormatException('No NUMERO_LOT found');
      }

      return EnsDataMatrix(cip: cip.substring(1), lot: lot);
    } catch (e) {
      log.e('Parsing error', error: e);
      rethrow;
    }
  }

  static Map<_TypeOfGS1Data, String> _gs1Parser(String data, Map<_TypeOfGS1Data, String> result) {
    if (data.length < _AI_SIZE) return result;

    final ai = data.substring(0, _AI_SIZE);
    final dataType = _TypeOfGS1Data.values.firstWhereOrNull((type) => type.aiCode == ai);

    if (dataType == null) return _gs1Parser(data.substring(1), result);

    final dataSize = min(dataType.maxSize, data.length - _AI_SIZE);
    result[dataType] = data.substring(_AI_SIZE, _AI_SIZE + dataSize);
    return _gs1Parser(data.substring(_AI_SIZE + dataSize), result);
  }

  @override
  List<Object?> get props => [cip, lot];
}

enum _TypeOfGS1Data {
  CIP('01', 14),
  EXPIRATION_DATE('17', 6),
  NUMERO_LOT('10', 20),
  SERIAL_NUMBER('21', 20),
  FABRICATION_DATE('11', 6);

  final String aiCode;
  final int maxSize;

  const _TypeOfGS1Data(this.aiCode, this.maxSize);
}
