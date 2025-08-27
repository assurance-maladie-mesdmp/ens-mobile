// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_accept_or_refuse_partage_profil_invitation.query.data.gql.g.dart';

abstract class Gaccept_or_refuse_partage_profil_invitationData
    implements
        Built<Gaccept_or_refuse_partage_profil_invitationData,
            Gaccept_or_refuse_partage_profil_invitationDataBuilder> {
  Gaccept_or_refuse_partage_profil_invitationData._();

  factory Gaccept_or_refuse_partage_profil_invitationData(
      [void Function(Gaccept_or_refuse_partage_profil_invitationDataBuilder b)
          updates]) = _$Gaccept_or_refuse_partage_profil_invitationData;

  static void _initializeBuilder(
          Gaccept_or_refuse_partage_profil_invitationDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected
      get setAccessValidatedOrRejected;
  static Serializer<Gaccept_or_refuse_partage_profil_invitationData>
      get serializer => _$gacceptOrRefusePartageProfilInvitationDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gaccept_or_refuse_partage_profil_invitationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gaccept_or_refuse_partage_profil_invitationData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gaccept_or_refuse_partage_profil_invitationData.serializer,
        json,
      );
}

abstract class Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected
    implements
        Built<
            Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected,
            Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejectedBuilder> {
  Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected._();

  factory Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected(
          [void Function(
                  Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejectedBuilder
                      b)
              updates]) =
      _$Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected;

  static void _initializeBuilder(
          Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejectedBuilder
              b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<
          Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected>
      get serializer =>
          _$gacceptOrRefusePartageProfilInvitationDataSetAccessValidatedOrRejectedSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected
                .serializer,
            json,
          );
}
