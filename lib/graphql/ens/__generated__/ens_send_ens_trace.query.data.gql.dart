// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_send_ens_trace.query.data.gql.g.dart';

abstract class Gsend_ens_traceData
    implements Built<Gsend_ens_traceData, Gsend_ens_traceDataBuilder> {
  Gsend_ens_traceData._();

  factory Gsend_ens_traceData(
          [void Function(Gsend_ens_traceDataBuilder b) updates]) =
      _$Gsend_ens_traceData;

  static void _initializeBuilder(Gsend_ens_traceDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gsend_ens_traceData_sendUserAction get sendUserAction;
  static Serializer<Gsend_ens_traceData> get serializer =>
      _$gsendEnsTraceDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsend_ens_traceData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_ens_traceData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsend_ens_traceData.serializer,
        json,
      );
}

abstract class Gsend_ens_traceData_sendUserAction
    implements
        Built<Gsend_ens_traceData_sendUserAction,
            Gsend_ens_traceData_sendUserActionBuilder> {
  Gsend_ens_traceData_sendUserAction._();

  factory Gsend_ens_traceData_sendUserAction(
      [void Function(Gsend_ens_traceData_sendUserActionBuilder b)
          updates]) = _$Gsend_ens_traceData_sendUserAction;

  static void _initializeBuilder(Gsend_ens_traceData_sendUserActionBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gsend_ens_traceData_sendUserAction> get serializer =>
      _$gsendEnsTraceDataSendUserActionSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsend_ens_traceData_sendUserAction.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_ens_traceData_sendUserAction? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsend_ens_traceData_sendUserAction.serializer,
        json,
      );
}
