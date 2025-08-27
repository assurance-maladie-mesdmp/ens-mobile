// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_urgence_set_consentement_urgence.query.var.gql.g.dart';

abstract class Gset_consentement_urgenceVars
    implements
        Built<Gset_consentement_urgenceVars,
            Gset_consentement_urgenceVarsBuilder> {
  Gset_consentement_urgenceVars._();

  factory Gset_consentement_urgenceVars(
          [void Function(Gset_consentement_urgenceVarsBuilder b) updates]) =
      _$Gset_consentement_urgenceVars;

  bool get newValueETREAT;
  String get consentementIdETREAT;
  bool get newValueBTG;
  String get consentementIdBTG;
  bool get newValueMASKED;
  String get consentementIdMASKED;
  String get patientId;
  static Serializer<Gset_consentement_urgenceVars> get serializer =>
      _$gsetConsentementUrgenceVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gset_consentement_urgenceVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gset_consentement_urgenceVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gset_consentement_urgenceVars.serializer,
        json,
      );
}
