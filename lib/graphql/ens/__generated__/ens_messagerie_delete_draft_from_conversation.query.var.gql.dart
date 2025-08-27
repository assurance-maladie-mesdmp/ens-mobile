// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_messagerie_delete_draft_from_conversation.query.var.gql.g.dart';

abstract class Gdelete_draft_from_conversationVars
    implements
        Built<Gdelete_draft_from_conversationVars,
            Gdelete_draft_from_conversationVarsBuilder> {
  Gdelete_draft_from_conversationVars._();

  factory Gdelete_draft_from_conversationVars(
      [void Function(Gdelete_draft_from_conversationVarsBuilder b)
          updates]) = _$Gdelete_draft_from_conversationVars;

  _i1.GDeleteDraftFromConversationInput get deleteDraftFromConversationInput;
  static Serializer<Gdelete_draft_from_conversationVars> get serializer =>
      _$gdeleteDraftFromConversationVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gdelete_draft_from_conversationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_draft_from_conversationVars? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gdelete_draft_from_conversationVars.serializer,
        json,
      );
}
