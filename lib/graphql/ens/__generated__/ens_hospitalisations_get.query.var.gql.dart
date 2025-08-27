// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_hospitalisations_get.query.var.gql.g.dart';

abstract class Gget_hospitalisationsVars
    implements
        Built<Gget_hospitalisationsVars, Gget_hospitalisationsVarsBuilder> {
  Gget_hospitalisationsVars._();

  factory Gget_hospitalisationsVars(
          [void Function(Gget_hospitalisationsVarsBuilder b) updates]) =
      _$Gget_hospitalisationsVars;

  String get patientId;
  static Serializer<Gget_hospitalisationsVars> get serializer =>
      _$ggetHospitalisationsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_hospitalisationsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_hospitalisationsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_hospitalisationsVars.serializer,
        json,
      );
}
