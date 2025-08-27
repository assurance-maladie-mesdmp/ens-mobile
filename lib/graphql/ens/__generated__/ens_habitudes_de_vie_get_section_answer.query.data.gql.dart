// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_habitudes_de_vie.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_habitudes_de_vie_get_section_answer.query.data.gql.g.dart';

abstract class Gget_habitudes_de_vie_section_answerData
    implements
        Built<Gget_habitudes_de_vie_section_answerData,
            Gget_habitudes_de_vie_section_answerDataBuilder> {
  Gget_habitudes_de_vie_section_answerData._();

  factory Gget_habitudes_de_vie_section_answerData(
      [void Function(Gget_habitudes_de_vie_section_answerDataBuilder b)
          updates]) = _$Gget_habitudes_de_vie_section_answerData;

  static void _initializeBuilder(
          Gget_habitudes_de_vie_section_answerDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection
      get fetchLifestyleAnswersForGivenSection;
  static Serializer<Gget_habitudes_de_vie_section_answerData> get serializer =>
      _$ggetHabitudesDeVieSectionAnswerDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_habitudes_de_vie_section_answerData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_habitudes_de_vie_section_answerData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_habitudes_de_vie_section_answerData.serializer,
        json,
      );
}

abstract class Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection
    implements
        Built<
            Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection,
            Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSectionBuilder>,
        _i2.GhabitudesDeVie {
  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection._();

  factory Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection(
          [void Function(
                  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSectionBuilder
                      b)
              updates]) =
      _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection;

  static void _initializeBuilder(
          Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSectionBuilder
              b) =>
      b..G__typename = 'LifestyleSectionAnswersHistoryModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i3.GLifestyleSectionEnum get name;
  @override
  BuiltList<
          Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items>
      get items;
  static Serializer<
          Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection>
      get serializer =>
          _$ggetHabitudesDeVieSectionAnswerDataFetchLifestyleAnswersForGivenSectionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection
                .serializer,
            json,
          );
}

abstract class Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items
    implements
        Built<
            Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items,
            Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_itemsBuilder>,
        _i2.GhabitudesDeVie_items {
  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items._();

  factory Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items(
          [void Function(
                  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_itemsBuilder
                      b)
              updates]) =
      _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items;

  static void _initializeBuilder(
          Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_itemsBuilder
              b) =>
      b..G__typename = 'LifestyleItemHistoryModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get name;
  @override
  BuiltList<
          Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details>
      get details;
  static Serializer<
          Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items>
      get serializer =>
          _$ggetHabitudesDeVieSectionAnswerDataFetchLifestyleAnswersForGivenSectionItemsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items
                .serializer,
            json,
          );
}

abstract class Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details
    implements
        Built<
            Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details,
            Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_detailsBuilder>,
        _i2.GhabitudesDeVie_items_details {
  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details._();

  factory Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details(
          [void Function(
                  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_detailsBuilder
                      b)
              updates]) =
      _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details;

  static void _initializeBuilder(
          Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_detailsBuilder
              b) =>
      b..G__typename = 'LifestyleDetailModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  _i3.GLifestyleCreationTypeEnum get lastModifiedType;
  @override
  String get effectiveDate;
  @override
  BuiltList<
          Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers>
      get answers;
  static Serializer<
          Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details>
      get serializer =>
          _$ggetHabitudesDeVieSectionAnswerDataFetchLifestyleAnswersForGivenSectionItemsDetailsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details
                .serializer,
            json,
          );
}

abstract class Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers
    implements
        Built<
            Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers,
            Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answersBuilder>,
        _i2.GhabitudesDeVie_items_details_answers {
  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers._();

  factory Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers(
          [void Function(
                  Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answersBuilder
                      b)
              updates]) =
      _$Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers;

  static void _initializeBuilder(
          Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answersBuilder
              b) =>
      b..G__typename = 'LifestyleAnswerModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get name;
  @override
  String get label;
  @override
  String get value;
  static Serializer<
          Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers>
      get serializer =>
          _$ggetHabitudesDeVieSectionAnswerDataFetchLifestyleAnswersForGivenSectionItemsDetailsAnswersSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_habitudes_de_vie_section_answerData_fetchLifestyleAnswersForGivenSection_items_details_answers
                .serializer,
            json,
          );
}
