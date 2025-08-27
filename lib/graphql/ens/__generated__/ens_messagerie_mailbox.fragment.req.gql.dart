// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_mailbox.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_mailbox.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_mailbox.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_messagerie_mailbox.fragment.req.gql.g.dart';

abstract class GmailBoxReq
    implements
        Built<GmailBoxReq, GmailBoxReqBuilder>,
        _i1.FragmentRequest<_i2.GmailBoxData, _i3.GmailBoxVars> {
  GmailBoxReq._();

  factory GmailBoxReq([void Function(GmailBoxReqBuilder b) updates]) =
      _$GmailBoxReq;

  static void _initializeBuilder(GmailBoxReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'mailBox';

  @override
  _i3.GmailBoxVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GmailBoxData? parseData(Map<String, dynamic> json) =>
      _i2.GmailBoxData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GmailBoxData data) => data.toJson();

  static Serializer<GmailBoxReq> get serializer => _$gmailBoxReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GmailBoxReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmailBoxReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GmailBoxReq.serializer,
        json,
      );
}
