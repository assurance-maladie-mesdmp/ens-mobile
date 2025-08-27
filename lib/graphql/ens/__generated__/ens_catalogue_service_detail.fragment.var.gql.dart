// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_catalogue_service_detail.fragment.var.gql.g.dart';

abstract class GdetailServiceVars
    implements Built<GdetailServiceVars, GdetailServiceVarsBuilder> {
  GdetailServiceVars._();

  factory GdetailServiceVars(
          [void Function(GdetailServiceVarsBuilder b) updates]) =
      _$GdetailServiceVars;

  static Serializer<GdetailServiceVars> get serializer =>
      _$gdetailServiceVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GdetailServiceVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdetailServiceVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GdetailServiceVars.serializer,
        json,
      );
}
