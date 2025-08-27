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

part 'ens_maladies_update_maladie.query.var.gql.g.dart';

abstract class Gupdate_maladieVars
    implements Built<Gupdate_maladieVars, Gupdate_maladieVarsBuilder> {
  Gupdate_maladieVars._();

  factory Gupdate_maladieVars(
          [void Function(Gupdate_maladieVarsBuilder b) updates]) =
      _$Gupdate_maladieVars;

  _i1.GDiseaseUpdateInput get disease;
  String get patientId;
  BuiltList<_i1.GLinkInput> get linksInput;
  BuiltList<_i1.GDeleteLinkInput> get deleteLinksInput;
  static Serializer<Gupdate_maladieVars> get serializer =>
      _$gupdateMaladieVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gupdate_maladieVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_maladieVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gupdate_maladieVars.serializer,
        json,
      );
}
