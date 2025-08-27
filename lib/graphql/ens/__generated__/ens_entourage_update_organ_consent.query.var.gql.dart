// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_entourage_update_organ_consent.query.var.gql.g.dart';

abstract class Gupdate_organ_consentVars
    implements
        Built<Gupdate_organ_consentVars, Gupdate_organ_consentVarsBuilder> {
  Gupdate_organ_consentVars._();

  factory Gupdate_organ_consentVars(
          [void Function(Gupdate_organ_consentVarsBuilder b) updates]) =
      _$Gupdate_organ_consentVars;

  String get patientId;
  bool get informedAboutOrganDonation;
  static Serializer<Gupdate_organ_consentVars> get serializer =>
      _$gupdateOrganConsentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_organ_consentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_organ_consentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_organ_consentVars.serializer,
        json,
      );
}
