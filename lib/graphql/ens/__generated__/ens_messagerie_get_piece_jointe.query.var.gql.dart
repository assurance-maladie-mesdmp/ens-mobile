// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_messagerie_get_piece_jointe.query.var.gql.g.dart';

abstract class Gget_piece_jointeVars
    implements Built<Gget_piece_jointeVars, Gget_piece_jointeVarsBuilder> {
  Gget_piece_jointeVars._();

  factory Gget_piece_jointeVars(
          [void Function(Gget_piece_jointeVarsBuilder b) updates]) =
      _$Gget_piece_jointeVars;

  _i1.GFileGetInput get input;
  static Serializer<Gget_piece_jointeVars> get serializer =>
      _$ggetPieceJointeVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gget_piece_jointeVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_piece_jointeVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gget_piece_jointeVars.serializer,
        json,
      );
}
