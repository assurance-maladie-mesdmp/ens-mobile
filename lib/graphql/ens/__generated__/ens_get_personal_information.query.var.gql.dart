// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_get_personal_information.query.var.gql.g.dart';

abstract class Gget_personal_informationVars
    implements
        Built<Gget_personal_informationVars,
            Gget_personal_informationVarsBuilder> {
  Gget_personal_informationVars._();

  factory Gget_personal_informationVars(
          [void Function(Gget_personal_informationVarsBuilder b) updates]) =
      _$Gget_personal_informationVars;

  String get patientId;
  static Serializer<Gget_personal_informationVars> get serializer =>
      _$ggetPersonalInformationVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_personal_informationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_personal_informationVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_personal_informationVars.serializer,
        json,
      );
}
