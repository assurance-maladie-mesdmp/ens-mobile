// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_fetch_last_reports_information.query.var.gql.g.dart';

abstract class Gfetch_last_reports_informationVars
    implements
        Built<Gfetch_last_reports_informationVars,
            Gfetch_last_reports_informationVarsBuilder> {
  Gfetch_last_reports_informationVars._();

  factory Gfetch_last_reports_informationVars(
      [void Function(Gfetch_last_reports_informationVarsBuilder b)
          updates]) = _$Gfetch_last_reports_informationVars;

  String get patientId;
  _i1.GTypeDemande? get typeDemande;
  String? get idSignale;
  static Serializer<Gfetch_last_reports_informationVars> get serializer =>
      _$gfetchLastReportsInformationVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gfetch_last_reports_informationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gfetch_last_reports_informationVars? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gfetch_last_reports_informationVars.serializer,
        json,
      );
}
