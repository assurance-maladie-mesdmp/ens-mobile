// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_directives_anticipee_update.query.var.gql.g.dart';

abstract class Gpost_directives_anticipeesVars
    implements
        Built<Gpost_directives_anticipeesVars,
            Gpost_directives_anticipeesVarsBuilder> {
  Gpost_directives_anticipeesVars._();

  factory Gpost_directives_anticipeesVars(
          [void Function(Gpost_directives_anticipeesVarsBuilder b) updates]) =
      _$Gpost_directives_anticipeesVars;

  _i1.GAdvanceDirectiveInput get advanceDirectiveInput;
  static Serializer<Gpost_directives_anticipeesVars> get serializer =>
      _$gpostDirectivesAnticipeesVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gpost_directives_anticipeesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gpost_directives_anticipeesVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gpost_directives_anticipeesVars.serializer,
        json,
      );
}
