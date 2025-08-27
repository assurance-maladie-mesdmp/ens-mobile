// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_create_contact.query.ast.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_create_contact.query.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_create_contact.query.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'ens_messagerie_create_contact.query.req.gql.g.dart';

abstract class Gcreate_contactReq
    implements
        Built<Gcreate_contactReq, Gcreate_contactReqBuilder>,
        _i1.OperationRequest<_i2.Gcreate_contactData, _i3.Gcreate_contactVars> {
  Gcreate_contactReq._();

  factory Gcreate_contactReq(
          [void Function(Gcreate_contactReqBuilder b) updates]) =
      _$Gcreate_contactReq;

  static void _initializeBuilder(Gcreate_contactReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'create_contact',
    )
    ..executeOnListen = true;

  @override
  _i3.Gcreate_contactVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.Gcreate_contactData? Function(
    _i2.Gcreate_contactData?,
    _i2.Gcreate_contactData?,
  )? get updateResult;
  @override
  _i2.Gcreate_contactData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.Gcreate_contactData? parseData(Map<String, dynamic> json) =>
      _i2.Gcreate_contactData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gcreate_contactData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.Gcreate_contactData, _i3.Gcreate_contactVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<Gcreate_contactReq> get serializer =>
      _$gcreateContactReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gcreate_contactReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_contactReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gcreate_contactReq.serializer,
        json,
      );
}
