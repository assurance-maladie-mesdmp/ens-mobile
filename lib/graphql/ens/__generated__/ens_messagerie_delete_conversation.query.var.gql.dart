// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_messagerie_delete_conversation.query.var.gql.g.dart';

abstract class Gdelete_conversationVars
    implements
        Built<Gdelete_conversationVars, Gdelete_conversationVarsBuilder> {
  Gdelete_conversationVars._();

  factory Gdelete_conversationVars(
          [void Function(Gdelete_conversationVarsBuilder b) updates]) =
      _$Gdelete_conversationVars;

  String get patientId;
  String get conversationId;
  static Serializer<Gdelete_conversationVars> get serializer =>
      _$gdeleteConversationVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_conversationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_conversationVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_conversationVars.serializer,
        json,
      );
}
