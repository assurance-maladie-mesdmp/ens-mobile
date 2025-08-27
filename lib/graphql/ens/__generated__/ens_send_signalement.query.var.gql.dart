// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_send_signalement.query.var.gql.g.dart';

abstract class Gsend_signalementVars
    implements Built<Gsend_signalementVars, Gsend_signalementVarsBuilder> {
  Gsend_signalementVars._();

  factory Gsend_signalementVars(
          [void Function(Gsend_signalementVarsBuilder b) updates]) =
      _$Gsend_signalementVars;

  _i1.GReportRequestForm get demandeRequest;
  static Serializer<Gsend_signalementVars> get serializer =>
      _$gsendSignalementVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gsend_signalementVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_signalementVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gsend_signalementVars.serializer,
        json,
      );
}
