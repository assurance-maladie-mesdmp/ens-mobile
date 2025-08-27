// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_dmp_consentement.fragment.var.gql.g.dart';

abstract class GdmpConsentementVars
    implements Built<GdmpConsentementVars, GdmpConsentementVarsBuilder> {
  GdmpConsentementVars._();

  factory GdmpConsentementVars(
          [void Function(GdmpConsentementVarsBuilder b) updates]) =
      _$GdmpConsentementVars;

  static Serializer<GdmpConsentementVars> get serializer =>
      _$gdmpConsentementVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GdmpConsentementVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdmpConsentementVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GdmpConsentementVars.serializer,
        json,
      );
}
