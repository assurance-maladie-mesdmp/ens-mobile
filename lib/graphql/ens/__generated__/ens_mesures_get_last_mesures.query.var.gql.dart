// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_mesures_get_last_mesures.query.var.gql.g.dart';

abstract class Gget_last_mesuresVars
    implements Built<Gget_last_mesuresVars, Gget_last_mesuresVarsBuilder> {
  Gget_last_mesuresVars._();

  factory Gget_last_mesuresVars(
          [void Function(Gget_last_mesuresVarsBuilder b) updates]) =
      _$Gget_last_mesuresVars;

  String get patientId;
  static Serializer<Gget_last_mesuresVars> get serializer =>
      _$ggetLastMesuresVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_last_mesuresVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_last_mesuresVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_last_mesuresVars.serializer,
        json,
      );
}
