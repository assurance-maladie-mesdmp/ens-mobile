// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_delete_consent_reapproval_requirement.query.var.gql.g.dart';

abstract class Gupdate_consentement_after_majoriteVars
    implements
        Built<Gupdate_consentement_after_majoriteVars,
            Gupdate_consentement_after_majoriteVarsBuilder> {
  Gupdate_consentement_after_majoriteVars._();

  factory Gupdate_consentement_after_majoriteVars(
      [void Function(Gupdate_consentement_after_majoriteVarsBuilder b)
          updates]) = _$Gupdate_consentement_after_majoriteVars;

  String get serviceOid;
  String? get patientId;
  static Serializer<Gupdate_consentement_after_majoriteVars> get serializer =>
      _$gupdateConsentementAfterMajoriteVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_consentement_after_majoriteVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_consentement_after_majoriteVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_consentement_after_majoriteVars.serializer,
        json,
      );
}
