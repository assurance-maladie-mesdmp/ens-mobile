// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_aidants_aides_send_invitation_to_potentiel_aidant.query.data.gql.g.dart';

abstract class Gsend_invitation_to_potentiel_aidantData
    implements
        Built<Gsend_invitation_to_potentiel_aidantData,
            Gsend_invitation_to_potentiel_aidantDataBuilder> {
  Gsend_invitation_to_potentiel_aidantData._();

  factory Gsend_invitation_to_potentiel_aidantData(
      [void Function(Gsend_invitation_to_potentiel_aidantDataBuilder b)
          updates]) = _$Gsend_invitation_to_potentiel_aidantData;

  static void _initializeBuilder(
          Gsend_invitation_to_potentiel_aidantDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving
      get delegationInviteToCaregiving;
  static Serializer<Gsend_invitation_to_potentiel_aidantData> get serializer =>
      _$gsendInvitationToPotentielAidantDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsend_invitation_to_potentiel_aidantData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_invitation_to_potentiel_aidantData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsend_invitation_to_potentiel_aidantData.serializer,
        json,
      );
}

abstract class Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving
    implements
        Built<
            Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving,
            Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregivingBuilder> {
  Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving._();

  factory Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving(
          [void Function(
                  Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregivingBuilder
                      b)
              updates]) =
      _$Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving;

  static void _initializeBuilder(
          Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregivingBuilder
              b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<
          Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving>
      get serializer =>
          _$gsendInvitationToPotentielAidantDataDelegationInviteToCaregivingSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving
                .serializer,
            json,
          );
}
