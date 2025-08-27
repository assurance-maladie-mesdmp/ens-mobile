// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_personal_information.fragment.var.gql.g.dart';

abstract class GpersonalInformationVars
    implements
        Built<GpersonalInformationVars, GpersonalInformationVarsBuilder> {
  GpersonalInformationVars._();

  factory GpersonalInformationVars(
          [void Function(GpersonalInformationVarsBuilder b) updates]) =
      _$GpersonalInformationVars;

  static Serializer<GpersonalInformationVars> get serializer =>
      _$gpersonalInformationVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GpersonalInformationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GpersonalInformationVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GpersonalInformationVars.serializer,
        json,
      );
}
