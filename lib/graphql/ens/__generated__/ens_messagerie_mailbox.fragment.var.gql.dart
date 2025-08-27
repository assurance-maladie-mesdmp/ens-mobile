// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_messagerie_mailbox.fragment.var.gql.g.dart';

abstract class GmailBoxVars
    implements Built<GmailBoxVars, GmailBoxVarsBuilder> {
  GmailBoxVars._();

  factory GmailBoxVars([void Function(GmailBoxVarsBuilder b) updates]) =
      _$GmailBoxVars;

  static Serializer<GmailBoxVars> get serializer => _$gmailBoxVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmailBoxVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmailBoxVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmailBoxVars.serializer,
        json,
      );
}
