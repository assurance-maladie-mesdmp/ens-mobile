// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_messagerie_message_response.fragment.var.gql.g.dart';

abstract class GmessageResponseVars
    implements Built<GmessageResponseVars, GmessageResponseVarsBuilder> {
  GmessageResponseVars._();

  factory GmessageResponseVars(
          [void Function(GmessageResponseVarsBuilder b) updates]) =
      _$GmessageResponseVars;

  static Serializer<GmessageResponseVars> get serializer =>
      _$gmessageResponseVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmessageResponseVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmessageResponseVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmessageResponseVars.serializer,
        json,
      );
}

abstract class GContactDetailFragmentVars
    implements
        Built<GContactDetailFragmentVars, GContactDetailFragmentVarsBuilder> {
  GContactDetailFragmentVars._();

  factory GContactDetailFragmentVars(
          [void Function(GContactDetailFragmentVarsBuilder b) updates]) =
      _$GContactDetailFragmentVars;

  static Serializer<GContactDetailFragmentVars> get serializer =>
      _$gContactDetailFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GContactDetailFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GContactDetailFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GContactDetailFragmentVars.serializer,
        json,
      );
}
