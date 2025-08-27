// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_entourage_update_organ_consent.query.data.gql.g.dart';

abstract class Gupdate_organ_consentData
    implements
        Built<Gupdate_organ_consentData, Gupdate_organ_consentDataBuilder> {
  Gupdate_organ_consentData._();

  factory Gupdate_organ_consentData(
          [void Function(Gupdate_organ_consentDataBuilder b) updates]) =
      _$Gupdate_organ_consentData;

  static void _initializeBuilder(Gupdate_organ_consentDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gupdate_organ_consentData_putOrganDonation get putOrganDonation;
  static Serializer<Gupdate_organ_consentData> get serializer =>
      _$gupdateOrganConsentDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_organ_consentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_organ_consentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_organ_consentData.serializer,
        json,
      );
}

abstract class Gupdate_organ_consentData_putOrganDonation
    implements
        Built<Gupdate_organ_consentData_putOrganDonation,
            Gupdate_organ_consentData_putOrganDonationBuilder> {
  Gupdate_organ_consentData_putOrganDonation._();

  factory Gupdate_organ_consentData_putOrganDonation(
      [void Function(Gupdate_organ_consentData_putOrganDonationBuilder b)
          updates]) = _$Gupdate_organ_consentData_putOrganDonation;

  static void _initializeBuilder(
          Gupdate_organ_consentData_putOrganDonationBuilder b) =>
      b..G__typename = 'WishesModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get effectiveDate;
  static Serializer<Gupdate_organ_consentData_putOrganDonation>
      get serializer => _$gupdateOrganConsentDataPutOrganDonationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_organ_consentData_putOrganDonation.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_organ_consentData_putOrganDonation? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_organ_consentData_putOrganDonation.serializer,
        json,
      );
}
