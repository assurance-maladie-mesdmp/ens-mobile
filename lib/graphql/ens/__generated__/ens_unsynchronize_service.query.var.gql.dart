// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_unsynchronize_service.query.var.gql.g.dart';

abstract class Gunsynchronize_serviceVars
    implements
        Built<Gunsynchronize_serviceVars, Gunsynchronize_serviceVarsBuilder> {
  Gunsynchronize_serviceVars._();

  factory Gunsynchronize_serviceVars(
          [void Function(Gunsynchronize_serviceVarsBuilder b) updates]) =
      _$Gunsynchronize_serviceVars;

  String get oid;
  static Serializer<Gunsynchronize_serviceVars> get serializer =>
      _$gunsynchronizeServiceVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gunsynchronize_serviceVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gunsynchronize_serviceVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gunsynchronize_serviceVars.serializer,
        json,
      );
}
