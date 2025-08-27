// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_hospitalisations_update.query.var.gql.g.dart';

abstract class Gupdate_hospitalisationVars
    implements
        Built<Gupdate_hospitalisationVars, Gupdate_hospitalisationVarsBuilder> {
  Gupdate_hospitalisationVars._();

  factory Gupdate_hospitalisationVars(
          [void Function(Gupdate_hospitalisationVarsBuilder b) updates]) =
      _$Gupdate_hospitalisationVars;

  _i1.GHospitalizationUpdateInput get hospitalization;
  BuiltList<_i1.GLinkInput> get linksInput;
  String get patientId;
  BuiltList<_i1.GDeleteLinkInput> get deleteLinksInput;
  static Serializer<Gupdate_hospitalisationVars> get serializer =>
      _$gupdateHospitalisationVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gupdate_hospitalisationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_hospitalisationVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gupdate_hospitalisationVars.serializer,
        json,
      );
}
