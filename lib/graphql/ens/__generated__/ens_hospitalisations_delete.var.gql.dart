// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_hospitalisations_delete.var.gql.g.dart';

abstract class Gdelete_hospitalisationVars
    implements
        Built<Gdelete_hospitalisationVars, Gdelete_hospitalisationVarsBuilder> {
  Gdelete_hospitalisationVars._();

  factory Gdelete_hospitalisationVars(
          [void Function(Gdelete_hospitalisationVarsBuilder b) updates]) =
      _$Gdelete_hospitalisationVars;

  String get patientId;
  String get id;
  static Serializer<Gdelete_hospitalisationVars> get serializer =>
      _$gdeleteHospitalisationVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_hospitalisationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_hospitalisationVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_hospitalisationVars.serializer,
        json,
      );
}
