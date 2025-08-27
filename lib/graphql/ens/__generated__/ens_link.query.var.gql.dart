// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_link.query.var.gql.g.dart';

abstract class Gdelete_linkVars
    implements Built<Gdelete_linkVars, Gdelete_linkVarsBuilder> {
  Gdelete_linkVars._();

  factory Gdelete_linkVars([void Function(Gdelete_linkVarsBuilder b) updates]) =
      _$Gdelete_linkVars;

  String get patientId;
  _i1.GDeleteLinkInput get deleteLinksInput;
  static Serializer<Gdelete_linkVars> get serializer =>
      _$gdeleteLinkVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gdelete_linkVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_linkVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gdelete_linkVars.serializer,
        json,
      );
}
