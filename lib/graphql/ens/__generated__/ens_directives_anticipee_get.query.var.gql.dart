// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_directives_anticipee_get.query.var.gql.g.dart';

abstract class Gget_directives_anticipeesVars
    implements
        Built<Gget_directives_anticipeesVars,
            Gget_directives_anticipeesVarsBuilder> {
  Gget_directives_anticipeesVars._();

  factory Gget_directives_anticipeesVars(
          [void Function(Gget_directives_anticipeesVarsBuilder b) updates]) =
      _$Gget_directives_anticipeesVars;

  String get patientId;
  static Serializer<Gget_directives_anticipeesVars> get serializer =>
      _$ggetDirectivesAnticipeesVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_directives_anticipeesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_directives_anticipeesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_directives_anticipeesVars.serializer,
        json,
      );
}
