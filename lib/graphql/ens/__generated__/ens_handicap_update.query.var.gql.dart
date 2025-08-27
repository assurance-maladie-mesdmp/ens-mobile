// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_handicap_update.query.var.gql.g.dart';

abstract class Gupdate_handicapVars
    implements Built<Gupdate_handicapVars, Gupdate_handicapVarsBuilder> {
  Gupdate_handicapVars._();

  factory Gupdate_handicapVars(
          [void Function(Gupdate_handicapVarsBuilder b) updates]) =
      _$Gupdate_handicapVars;

  _i1.GDisabilityUpdateInput get disabilityUpdateInput;
  static Serializer<Gupdate_handicapVars> get serializer =>
      _$gupdateHandicapVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gupdate_handicapVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_handicapVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gupdate_handicapVars.serializer,
        json,
      );
}
