// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_questionnaire_ages_cles.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_questionnaire_get_questionnaire.query.data.gql.g.dart';

abstract class Gget_questionnaireData
    implements Built<Gget_questionnaireData, Gget_questionnaireDataBuilder> {
  Gget_questionnaireData._();

  factory Gget_questionnaireData(
          [void Function(Gget_questionnaireDataBuilder b) updates]) =
      _$Gget_questionnaireData;

  static void _initializeBuilder(Gget_questionnaireDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_questionnaireData_fetchHealthQuiz get fetchHealthQuiz;
  static Serializer<Gget_questionnaireData> get serializer =>
      _$ggetQuestionnaireDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnaireData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnaireData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_questionnaireData.serializer,
        json,
      );
}

abstract class Gget_questionnaireData_fetchHealthQuiz
    implements
        Built<Gget_questionnaireData_fetchHealthQuiz,
            Gget_questionnaireData_fetchHealthQuizBuilder>,
        _i2.GstartQuestionnaire,
        _i2.GendQuestionnaire {
  Gget_questionnaireData_fetchHealthQuiz._();

  factory Gget_questionnaireData_fetchHealthQuiz(
      [void Function(Gget_questionnaireData_fetchHealthQuizBuilder b)
          updates]) = _$Gget_questionnaireData_fetchHealthQuiz;

  static void _initializeBuilder(
          Gget_questionnaireData_fetchHealthQuizBuilder b) =>
      b..G__typename = 'HealthQuizModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  Gget_questionnaireData_fetchHealthQuiz_start get start;
  @override
  Gget_questionnaireData_fetchHealthQuiz_end get end;
  BuiltList<Gget_questionnaireData_fetchHealthQuiz_items> get items;
  String get code;
  String get version;
  static Serializer<Gget_questionnaireData_fetchHealthQuiz> get serializer =>
      _$ggetQuestionnaireDataFetchHealthQuizSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnaireData_fetchHealthQuiz.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnaireData_fetchHealthQuiz? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_questionnaireData_fetchHealthQuiz.serializer,
        json,
      );
}

abstract class Gget_questionnaireData_fetchHealthQuiz_start
    implements
        Built<Gget_questionnaireData_fetchHealthQuiz_start,
            Gget_questionnaireData_fetchHealthQuiz_startBuilder>,
        _i2.GstartQuestionnaire_start {
  Gget_questionnaireData_fetchHealthQuiz_start._();

  factory Gget_questionnaireData_fetchHealthQuiz_start(
      [void Function(Gget_questionnaireData_fetchHealthQuiz_startBuilder b)
          updates]) = _$Gget_questionnaireData_fetchHealthQuiz_start;

  static void _initializeBuilder(
          Gget_questionnaireData_fetchHealthQuiz_startBuilder b) =>
      b..G__typename = 'PageInformationModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get title;
  @override
  BuiltList<String> get description;
  @override
  Gget_questionnaireData_fetchHealthQuiz_start_information? get information;
  static Serializer<Gget_questionnaireData_fetchHealthQuiz_start>
      get serializer => _$ggetQuestionnaireDataFetchHealthQuizStartSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnaireData_fetchHealthQuiz_start.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnaireData_fetchHealthQuiz_start? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_questionnaireData_fetchHealthQuiz_start.serializer,
        json,
      );
}

abstract class Gget_questionnaireData_fetchHealthQuiz_start_information
    implements
        Built<Gget_questionnaireData_fetchHealthQuiz_start_information,
            Gget_questionnaireData_fetchHealthQuiz_start_informationBuilder>,
        _i2.GstartQuestionnaire_start_information {
  Gget_questionnaireData_fetchHealthQuiz_start_information._();

  factory Gget_questionnaireData_fetchHealthQuiz_start_information(
      [void Function(
              Gget_questionnaireData_fetchHealthQuiz_start_informationBuilder b)
          updates]) = _$Gget_questionnaireData_fetchHealthQuiz_start_information;

  static void _initializeBuilder(
          Gget_questionnaireData_fetchHealthQuiz_start_informationBuilder b) =>
      b..G__typename = 'InformationModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<Gget_questionnaireData_fetchHealthQuiz_start_information_cards>
      get cards;
  @override
  Gget_questionnaireData_fetchHealthQuiz_start_information_mention? get mention;
  static Serializer<Gget_questionnaireData_fetchHealthQuiz_start_information>
      get serializer =>
          _$ggetQuestionnaireDataFetchHealthQuizStartInformationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnaireData_fetchHealthQuiz_start_information.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnaireData_fetchHealthQuiz_start_information? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_questionnaireData_fetchHealthQuiz_start_information.serializer,
        json,
      );
}

abstract class Gget_questionnaireData_fetchHealthQuiz_start_information_cards
    implements
        Built<Gget_questionnaireData_fetchHealthQuiz_start_information_cards,
            Gget_questionnaireData_fetchHealthQuiz_start_information_cardsBuilder>,
        _i2.GstartQuestionnaire_start_information_cards {
  Gget_questionnaireData_fetchHealthQuiz_start_information_cards._();

  factory Gget_questionnaireData_fetchHealthQuiz_start_information_cards(
          [void Function(
                  Gget_questionnaireData_fetchHealthQuiz_start_information_cardsBuilder
                      b)
              updates]) =
      _$Gget_questionnaireData_fetchHealthQuiz_start_information_cards;

  static void _initializeBuilder(
          Gget_questionnaireData_fetchHealthQuiz_start_information_cardsBuilder
              b) =>
      b..G__typename = 'CardInformationModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get image;
  @override
  String get text;
  static Serializer<
          Gget_questionnaireData_fetchHealthQuiz_start_information_cards>
      get serializer =>
          _$ggetQuestionnaireDataFetchHealthQuizStartInformationCardsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnaireData_fetchHealthQuiz_start_information_cards
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnaireData_fetchHealthQuiz_start_information_cards?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_questionnaireData_fetchHealthQuiz_start_information_cards
                .serializer,
            json,
          );
}

abstract class Gget_questionnaireData_fetchHealthQuiz_start_information_mention
    implements
        Built<Gget_questionnaireData_fetchHealthQuiz_start_information_mention,
            Gget_questionnaireData_fetchHealthQuiz_start_information_mentionBuilder>,
        _i2.GstartQuestionnaire_start_information_mention {
  Gget_questionnaireData_fetchHealthQuiz_start_information_mention._();

  factory Gget_questionnaireData_fetchHealthQuiz_start_information_mention(
          [void Function(
                  Gget_questionnaireData_fetchHealthQuiz_start_information_mentionBuilder
                      b)
              updates]) =
      _$Gget_questionnaireData_fetchHealthQuiz_start_information_mention;

  static void _initializeBuilder(
          Gget_questionnaireData_fetchHealthQuiz_start_information_mentionBuilder
              b) =>
      b..G__typename = 'MentionModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get text;
  static Serializer<
          Gget_questionnaireData_fetchHealthQuiz_start_information_mention>
      get serializer =>
          _$ggetQuestionnaireDataFetchHealthQuizStartInformationMentionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnaireData_fetchHealthQuiz_start_information_mention
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnaireData_fetchHealthQuiz_start_information_mention?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_questionnaireData_fetchHealthQuiz_start_information_mention
                .serializer,
            json,
          );
}

abstract class Gget_questionnaireData_fetchHealthQuiz_end
    implements
        Built<Gget_questionnaireData_fetchHealthQuiz_end,
            Gget_questionnaireData_fetchHealthQuiz_endBuilder>,
        _i2.GendQuestionnaire_end {
  Gget_questionnaireData_fetchHealthQuiz_end._();

  factory Gget_questionnaireData_fetchHealthQuiz_end(
      [void Function(Gget_questionnaireData_fetchHealthQuiz_endBuilder b)
          updates]) = _$Gget_questionnaireData_fetchHealthQuiz_end;

  static void _initializeBuilder(
          Gget_questionnaireData_fetchHealthQuiz_endBuilder b) =>
      b..G__typename = 'PageInformationModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment?
      get medicalAppointment;
  static Serializer<Gget_questionnaireData_fetchHealthQuiz_end>
      get serializer => _$ggetQuestionnaireDataFetchHealthQuizEndSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnaireData_fetchHealthQuiz_end.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnaireData_fetchHealthQuiz_end? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_questionnaireData_fetchHealthQuiz_end.serializer,
        json,
      );
}

abstract class Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment
    implements
        Built<Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment,
            Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointmentBuilder>,
        _i2.GendQuestionnaire_end_medicalAppointment {
  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment._();

  factory Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment(
          [void Function(
                  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointmentBuilder
                      b)
              updates]) =
      _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment;

  static void _initializeBuilder(
          Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointmentBuilder
              b) =>
      b..G__typename = 'MedicalAppointmentModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card get card;
  static Serializer<
          Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment>
      get serializer =>
          _$ggetQuestionnaireDataFetchHealthQuizEndMedicalAppointmentSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment
                .serializer,
            json,
          );
}

abstract class Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card
    implements
        Built<
            Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card,
            Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_cardBuilder>,
        _i2.GendQuestionnaire_end_medicalAppointment_card {
  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card._();

  factory Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card(
          [void Function(
                  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_cardBuilder
                      b)
              updates]) =
      _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card;

  static void _initializeBuilder(
          Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_cardBuilder
              b) =>
      b..G__typename = 'MedicalAppointmentCardModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<String> get description;
  @override
  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link?
      get link;
  @override
  String get titleButton;
  static Serializer<
          Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card>
      get serializer =>
          _$ggetQuestionnaireDataFetchHealthQuizEndMedicalAppointmentCardSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card
                .serializer,
            json,
          );
}

abstract class Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link
    implements
        Built<
            Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link,
            Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_linkBuilder>,
        _i2.GendQuestionnaire_end_medicalAppointment_card_link {
  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link._();

  factory Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link(
          [void Function(
                  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_linkBuilder
                      b)
              updates]) =
      _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link;

  static void _initializeBuilder(
          Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_linkBuilder
              b) =>
      b..G__typename = 'DescriptionLinkModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get text;
  @override
  String get href;
  static Serializer<
          Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link>
      get serializer =>
          _$ggetQuestionnaireDataFetchHealthQuizEndMedicalAppointmentCardLinkSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link
                .serializer,
            json,
          );
}

abstract class Gget_questionnaireData_fetchHealthQuiz_items
    implements
        Built<Gget_questionnaireData_fetchHealthQuiz_items,
            Gget_questionnaireData_fetchHealthQuiz_itemsBuilder> {
  Gget_questionnaireData_fetchHealthQuiz_items._();

  factory Gget_questionnaireData_fetchHealthQuiz_items(
      [void Function(Gget_questionnaireData_fetchHealthQuiz_itemsBuilder b)
          updates]) = _$Gget_questionnaireData_fetchHealthQuiz_items;

  static void _initializeBuilder(
          Gget_questionnaireData_fetchHealthQuiz_itemsBuilder b) =>
      b..G__typename = 'ItemModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem
      get questionGroupItem;
  static Serializer<Gget_questionnaireData_fetchHealthQuiz_items>
      get serializer => _$ggetQuestionnaireDataFetchHealthQuizItemsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnaireData_fetchHealthQuiz_items.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnaireData_fetchHealthQuiz_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_questionnaireData_fetchHealthQuiz_items.serializer,
        json,
      );
}

abstract class Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem
    implements
        Built<Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem,
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItemBuilder> {
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem._();

  factory Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem(
          [void Function(
                  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItemBuilder
                      b)
              updates]) =
      _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem;

  static void _initializeBuilder(
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItemBuilder
              b) =>
      b..G__typename = 'QuestionGroupItemModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get title;
  BuiltList<
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions>
      get questions;
  double? get goToNext;
  BuiltList<String>? get goToNextOn;
  double? get goToPrevious;
  BuiltList<String>? get goToPreviousOn;
  static Serializer<
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem>
      get serializer =>
          _$ggetQuestionnaireDataFetchHealthQuizItemsQuestionGroupItemSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem
                .serializer,
            json,
          );
}

abstract class Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions
    implements
        Built<
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions,
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questionsBuilder>,
        _i2.Gquestion {
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions._();

  factory Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions(
          [void Function(
                  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questionsBuilder
                      b)
              updates]) =
      _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions;

  static void _initializeBuilder(
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questionsBuilder
              b) =>
      b..G__typename = 'QuestionModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get code;
  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion?
      get rowQuestion;
  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion?
      get textQuestion;
  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion?
      get choiceQuestion;
  @override
  bool get required;
  @override
  double? get maxLength;
  @override
  BuiltList<
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints>?
      get constraints;
  static Serializer<
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions>
      get serializer =>
          _$ggetQuestionnaireDataFetchHealthQuizItemsQuestionGroupItemQuestionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions
                .serializer,
            json,
          );
}

abstract class Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion
    implements
        Built<
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion,
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestionBuilder>,
        _i2.Gquestion_rowQuestion {
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion._();

  factory Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion(
          [void Function(
                  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestionBuilder
                      b)
              updates]) =
      _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion;

  static void _initializeBuilder(
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestionBuilder
              b) =>
      b..G__typename = 'RowQuestionModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get title;
  @override
  String? get description;
  static Serializer<
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion>
      get serializer =>
          _$ggetQuestionnaireDataFetchHealthQuizItemsQuestionGroupItemQuestionsRowQuestionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion
                .serializer,
            json,
          );
}

abstract class Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion
    implements
        Built<
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion,
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestionBuilder>,
        _i2.Gquestion_textQuestion {
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion._();

  factory Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion(
          [void Function(
                  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestionBuilder
                      b)
              updates]) =
      _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion;

  static void _initializeBuilder(
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestionBuilder
              b) =>
      b..G__typename = 'TextQuestionModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get title;
  static Serializer<
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion>
      get serializer =>
          _$ggetQuestionnaireDataFetchHealthQuizItemsQuestionGroupItemQuestionsTextQuestionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion
                .serializer,
            json,
          );
}

abstract class Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion
    implements
        Built<
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion,
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestionBuilder>,
        _i2.Gquestion_choiceQuestion,
        _i2.GchoiceQuestion {
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion._();

  factory Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion(
          [void Function(
                  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestionBuilder
                      b)
              updates]) =
      _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion;

  static void _initializeBuilder(
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestionBuilder
              b) =>
      b..G__typename = 'ChoiceQuestionModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get title;
  @override
  _i3.GChoiceQuestionType get type;
  @override
  BuiltList<
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options>
      get options;
  static Serializer<
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion>
      get serializer =>
          _$ggetQuestionnaireDataFetchHealthQuizItemsQuestionGroupItemQuestionsChoiceQuestionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion
                .serializer,
            json,
          );
}

abstract class Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options
    implements
        Built<
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options,
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_optionsBuilder>,
        _i2.Gquestion_choiceQuestion_options,
        _i2.GchoiceQuestion_options {
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options._();

  factory Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options(
          [void Function(
                  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_optionsBuilder
                      b)
              updates]) =
      _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options;

  static void _initializeBuilder(
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_optionsBuilder
              b) =>
      b..G__typename = 'OptionModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get value;
  @override
  String get code;
  static Serializer<
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options>
      get serializer =>
          _$ggetQuestionnaireDataFetchHealthQuizItemsQuestionGroupItemQuestionsChoiceQuestionOptionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options
                .serializer,
            json,
          );
}

abstract class Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints
    implements
        Built<
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints,
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraintsBuilder>,
        _i2.Gquestion_constraints,
        _i2.GconstraintsQuestion {
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints._();

  factory Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints(
          [void Function(
                  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraintsBuilder
                      b)
              updates]) =
      _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints;

  static void _initializeBuilder(
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraintsBuilder
              b) =>
      b..G__typename = 'ConstraintModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get regexp;
  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range?
      get range;
  @override
  String get message;
  static Serializer<
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints>
      get serializer =>
          _$ggetQuestionnaireDataFetchHealthQuizItemsQuestionGroupItemQuestionsConstraintsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints
                .serializer,
            json,
          );
}

abstract class Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range
    implements
        Built<
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range,
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_rangeBuilder>,
        _i2.Gquestion_constraints_range,
        _i2.GconstraintsQuestion_range {
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range._();

  factory Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range(
          [void Function(
                  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_rangeBuilder
                      b)
              updates]) =
      _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range;

  static void _initializeBuilder(
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_rangeBuilder
              b) =>
      b..G__typename = 'ConstraintRangeModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double? get min;
  @override
  double? get max;
  static Serializer<
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range>
      get serializer =>
          _$ggetQuestionnaireDataFetchHealthQuizItemsQuestionGroupItemQuestionsConstraintsRangeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range
                .serializer,
            json,
          );
}
