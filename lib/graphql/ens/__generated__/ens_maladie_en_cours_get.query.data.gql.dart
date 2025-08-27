// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_maladie_en_cours.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_maladie_en_cours_get.query.data.gql.g.dart';

abstract class Gget_maladies_in_progressData
    implements
        Built<Gget_maladies_in_progressData,
            Gget_maladies_in_progressDataBuilder> {
  Gget_maladies_in_progressData._();

  factory Gget_maladies_in_progressData(
          [void Function(Gget_maladies_in_progressDataBuilder b) updates]) =
      _$Gget_maladies_in_progressData;

  static void _initializeBuilder(Gget_maladies_in_progressDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_maladies_in_progressData_getDiseaseEpisodeInProgress>?
      get getDiseaseEpisodeInProgress;
  static Serializer<Gget_maladies_in_progressData> get serializer =>
      _$ggetMaladiesInProgressDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_maladies_in_progressData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_maladies_in_progressData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_maladies_in_progressData.serializer,
        json,
      );
}

abstract class Gget_maladies_in_progressData_getDiseaseEpisodeInProgress
    implements
        Built<Gget_maladies_in_progressData_getDiseaseEpisodeInProgress,
            Gget_maladies_in_progressData_getDiseaseEpisodeInProgressBuilder>,
        _i2.GmaladieEnCours {
  Gget_maladies_in_progressData_getDiseaseEpisodeInProgress._();

  factory Gget_maladies_in_progressData_getDiseaseEpisodeInProgress(
      [void Function(
              Gget_maladies_in_progressData_getDiseaseEpisodeInProgressBuilder
                  b)
          updates]) = _$Gget_maladies_in_progressData_getDiseaseEpisodeInProgress;

  static void _initializeBuilder(
          Gget_maladies_in_progressData_getDiseaseEpisodeInProgressBuilder b) =>
      b..G__typename = 'DiseaseEpisodeViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get date;
  @override
  _i3.GEpisodeCategory get category;
  @override
  String get categoryLabel;
  @override
  bool get isListOfActs;
  @override
  String get startDate;
  @override
  String get name;
  @override
  _i3.GDiseaseEpisodeType get eventType;
  @override
  String? get comment;
  @override
  String? get endDate;
  @override
  String get diseaseId;
  @override
  bool get hasOnlyYearInStartDate;
  @override
  bool get hasOnlyMonthAndYearInStartDate;
  @override
  bool get hasOnlyYearInEndDate;
  @override
  bool get hasOnlyMonthAndYearInEndDate;
  static Serializer<Gget_maladies_in_progressData_getDiseaseEpisodeInProgress>
      get serializer =>
          _$ggetMaladiesInProgressDataGetDiseaseEpisodeInProgressSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_maladies_in_progressData_getDiseaseEpisodeInProgress.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_maladies_in_progressData_getDiseaseEpisodeInProgress? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_maladies_in_progressData_getDiseaseEpisodeInProgress.serializer,
        json,
      );
}
