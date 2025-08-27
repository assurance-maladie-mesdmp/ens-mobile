// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_send_ens_trace.query.var.gql.g.dart';

abstract class Gsend_ens_traceVars
    implements Built<Gsend_ens_traceVars, Gsend_ens_traceVarsBuilder> {
  Gsend_ens_traceVars._();

  factory Gsend_ens_traceVars(
          [void Function(Gsend_ens_traceVarsBuilder b) updates]) =
      _$Gsend_ens_traceVars;

  _i1.GUserActionInput get userActionInput;
  static Serializer<Gsend_ens_traceVars> get serializer =>
      _$gsendEnsTraceVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gsend_ens_traceVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_ens_traceVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gsend_ens_traceVars.serializer,
        json,
      );
}
