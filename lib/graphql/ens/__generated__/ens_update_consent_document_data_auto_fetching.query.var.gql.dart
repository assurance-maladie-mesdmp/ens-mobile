// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_update_consent_document_data_auto_fetching.query.var.gql.g.dart';

abstract class Gupdate_finality_consent_statusVars
    implements
        Built<Gupdate_finality_consent_statusVars,
            Gupdate_finality_consent_statusVarsBuilder> {
  Gupdate_finality_consent_statusVars._();

  factory Gupdate_finality_consent_statusVars(
      [void Function(Gupdate_finality_consent_statusVarsBuilder b)
          updates]) = _$Gupdate_finality_consent_statusVars;

  _i1.GFinalityConsentToUpdateInput get finalityToUpdate;
  static Serializer<Gupdate_finality_consent_statusVars> get serializer =>
      _$gupdateFinalityConsentStatusVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gupdate_finality_consent_statusVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_finality_consent_statusVars? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gupdate_finality_consent_statusVars.serializer,
        json,
      );
}
