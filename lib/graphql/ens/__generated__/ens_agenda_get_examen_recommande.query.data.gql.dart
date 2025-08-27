// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_examen_recommande.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_agenda_get_examen_recommande.query.data.gql.g.dart';

abstract class Gget_examen_recommandeData
    implements
        Built<Gget_examen_recommandeData, Gget_examen_recommandeDataBuilder> {
  Gget_examen_recommandeData._();

  factory Gget_examen_recommandeData(
          [void Function(Gget_examen_recommandeDataBuilder b) updates]) =
      _$Gget_examen_recommandeData;

  static void _initializeBuilder(Gget_examen_recommandeDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate?
      get fetchPreventionByPatientIdAndCodeAndDate;
  static Serializer<Gget_examen_recommandeData> get serializer =>
      _$ggetExamenRecommandeDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_examen_recommandeData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_examen_recommandeData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_examen_recommandeData.serializer,
        json,
      );
}

abstract class Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate
    implements
        Built<
            Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate,
            Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDateBuilder>,
        _i2.GexamenRecommande {
  Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate._();

  factory Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate(
          [void Function(
                  Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDateBuilder
                      b)
              updates]) =
      _$Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate;

  static void _initializeBuilder(
          Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDateBuilder
              b) =>
      b..G__typename = 'PreventionViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get code;
  @override
  String get type;
  @override
  String get title;
  @override
  String get dateDebutCampagne;
  @override
  String? get dateFinCampagne;
  @override
  String get dateDebutPrevention;
  @override
  String get dateFinPrevention;
  @override
  _i3.GPreventionTypeEnum get statut;
  @override
  String? get executionDate;
  @override
  String? get requirementLevel;
  static Serializer<
          Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate>
      get serializer =>
          _$ggetExamenRecommandeDataFetchPreventionByPatientIdAndCodeAndDateSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_examen_recommandeData_fetchPreventionByPatientIdAndCodeAndDate
                .serializer,
            json,
          );
}
