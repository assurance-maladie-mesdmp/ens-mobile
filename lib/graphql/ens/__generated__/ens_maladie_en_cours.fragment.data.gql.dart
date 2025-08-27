// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_maladie_en_cours.fragment.data.gql.g.dart';

abstract class GmaladieEnCours {
  String get G__typename;
  String get date;
  _i1.GEpisodeCategory get category;
  String get categoryLabel;
  bool get isListOfActs;
  String get startDate;
  String get name;
  _i1.GDiseaseEpisodeType get eventType;
  String? get comment;
  String? get endDate;
  String get diseaseId;
  bool get hasOnlyYearInStartDate;
  bool get hasOnlyMonthAndYearInStartDate;
  bool get hasOnlyYearInEndDate;
  bool get hasOnlyMonthAndYearInEndDate;
  Map<String, dynamic> toJson();
}

abstract class GmaladieEnCoursData
    implements
        Built<GmaladieEnCoursData, GmaladieEnCoursDataBuilder>,
        GmaladieEnCours {
  GmaladieEnCoursData._();

  factory GmaladieEnCoursData(
          [void Function(GmaladieEnCoursDataBuilder b) updates]) =
      _$GmaladieEnCoursData;

  static void _initializeBuilder(GmaladieEnCoursDataBuilder b) =>
      b..G__typename = 'DiseaseEpisodeViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get date;
  @override
  _i1.GEpisodeCategory get category;
  @override
  String get categoryLabel;
  @override
  bool get isListOfActs;
  @override
  String get startDate;
  @override
  String get name;
  @override
  _i1.GDiseaseEpisodeType get eventType;
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
  static Serializer<GmaladieEnCoursData> get serializer =>
      _$gmaladieEnCoursDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GmaladieEnCoursData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmaladieEnCoursData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GmaladieEnCoursData.serializer,
        json,
      );
}
