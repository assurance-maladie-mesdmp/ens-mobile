// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_aidants_aides_delete_delegation.query.data.gql.g.dart';

abstract class Gdelete_delegationData
    implements Built<Gdelete_delegationData, Gdelete_delegationDataBuilder> {
  Gdelete_delegationData._();

  factory Gdelete_delegationData(
          [void Function(Gdelete_delegationDataBuilder b) updates]) =
      _$Gdelete_delegationData;

  static void _initializeBuilder(Gdelete_delegationDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gdelete_delegationData_delegationRevoke get delegationRevoke;
  static Serializer<Gdelete_delegationData> get serializer =>
      _$gdeleteDelegationDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_delegationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_delegationData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_delegationData.serializer,
        json,
      );
}

abstract class Gdelete_delegationData_delegationRevoke
    implements
        Built<Gdelete_delegationData_delegationRevoke,
            Gdelete_delegationData_delegationRevokeBuilder> {
  Gdelete_delegationData_delegationRevoke._();

  factory Gdelete_delegationData_delegationRevoke(
      [void Function(Gdelete_delegationData_delegationRevokeBuilder b)
          updates]) = _$Gdelete_delegationData_delegationRevoke;

  static void _initializeBuilder(
          Gdelete_delegationData_delegationRevokeBuilder b) =>
      b..G__typename = 'DelegationRevokePayload';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get attestation;
  String? get documentId;
  bool? get isSavedInDmp;
  static Serializer<Gdelete_delegationData_delegationRevoke> get serializer =>
      _$gdeleteDelegationDataDelegationRevokeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_delegationData_delegationRevoke.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_delegationData_delegationRevoke? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_delegationData_delegationRevoke.serializer,
        json,
      );
}
