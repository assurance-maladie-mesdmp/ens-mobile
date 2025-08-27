// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_partage_profil_send_partage_profil_form.query.data.gql.g.dart';

abstract class Gsend_partage_profil_formData
    implements
        Built<Gsend_partage_profil_formData,
            Gsend_partage_profil_formDataBuilder> {
  Gsend_partage_profil_formData._();

  factory Gsend_partage_profil_formData(
          [void Function(Gsend_partage_profil_formDataBuilder b) updates]) =
      _$Gsend_partage_profil_formData;

  static void _initializeBuilder(Gsend_partage_profil_formDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gsend_partage_profil_formData_sendInvitationSecondRL
      get sendInvitationSecondRL;
  static Serializer<Gsend_partage_profil_formData> get serializer =>
      _$gsendPartageProfilFormDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsend_partage_profil_formData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_partage_profil_formData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsend_partage_profil_formData.serializer,
        json,
      );
}

abstract class Gsend_partage_profil_formData_sendInvitationSecondRL
    implements
        Built<Gsend_partage_profil_formData_sendInvitationSecondRL,
            Gsend_partage_profil_formData_sendInvitationSecondRLBuilder> {
  Gsend_partage_profil_formData_sendInvitationSecondRL._();

  factory Gsend_partage_profil_formData_sendInvitationSecondRL(
      [void Function(
              Gsend_partage_profil_formData_sendInvitationSecondRLBuilder b)
          updates]) = _$Gsend_partage_profil_formData_sendInvitationSecondRL;

  static void _initializeBuilder(
          Gsend_partage_profil_formData_sendInvitationSecondRLBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gsend_partage_profil_formData_sendInvitationSecondRL>
      get serializer =>
          _$gsendPartageProfilFormDataSendInvitationSecondRLSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsend_partage_profil_formData_sendInvitationSecondRL.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_partage_profil_formData_sendInvitationSecondRL? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsend_partage_profil_formData_sendInvitationSecondRL.serializer,
        json,
      );
}
