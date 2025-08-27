// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_messagerie_get_inbox.query.var.gql.g.dart';

abstract class Gget_inboxVars
    implements Built<Gget_inboxVars, Gget_inboxVarsBuilder> {
  Gget_inboxVars._();

  factory Gget_inboxVars([void Function(Gget_inboxVarsBuilder b) updates]) =
      _$Gget_inboxVars;

  _i1.GMessagingPageableInput get input;
  static Serializer<Gget_inboxVars> get serializer => _$ggetInboxVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gget_inboxVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_inboxVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gget_inboxVars.serializer,
        json,
      );
}
