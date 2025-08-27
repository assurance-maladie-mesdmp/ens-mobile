// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_questionnaire_ages_cles.fragment.data.gql.g.dart';

abstract class GstartQuestionnaire {
  String get G__typename;
  GstartQuestionnaire_start get start;
  Map<String, dynamic> toJson();
}

abstract class GstartQuestionnaire_start {
  String get G__typename;
  String get title;
  BuiltList<String> get description;
  GstartQuestionnaire_start_information? get information;
  Map<String, dynamic> toJson();
}

abstract class GstartQuestionnaire_start_information {
  String get G__typename;
  BuiltList<GstartQuestionnaire_start_information_cards> get cards;
  GstartQuestionnaire_start_information_mention? get mention;
  Map<String, dynamic> toJson();
}

abstract class GstartQuestionnaire_start_information_cards {
  String get G__typename;
  String get image;
  String get text;
  Map<String, dynamic> toJson();
}

abstract class GstartQuestionnaire_start_information_mention {
  String get G__typename;
  String get text;
  Map<String, dynamic> toJson();
}

abstract class GstartQuestionnaireData
    implements
        Built<GstartQuestionnaireData, GstartQuestionnaireDataBuilder>,
        GstartQuestionnaire {
  GstartQuestionnaireData._();

  factory GstartQuestionnaireData(
          [void Function(GstartQuestionnaireDataBuilder b) updates]) =
      _$GstartQuestionnaireData;

  static void _initializeBuilder(GstartQuestionnaireDataBuilder b) =>
      b..G__typename = 'HealthQuizModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GstartQuestionnaireData_start get start;
  static Serializer<GstartQuestionnaireData> get serializer =>
      _$gstartQuestionnaireDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GstartQuestionnaireData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GstartQuestionnaireData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GstartQuestionnaireData.serializer,
        json,
      );
}

abstract class GstartQuestionnaireData_start
    implements
        Built<GstartQuestionnaireData_start,
            GstartQuestionnaireData_startBuilder>,
        GstartQuestionnaire_start {
  GstartQuestionnaireData_start._();

  factory GstartQuestionnaireData_start(
          [void Function(GstartQuestionnaireData_startBuilder b) updates]) =
      _$GstartQuestionnaireData_start;

  static void _initializeBuilder(GstartQuestionnaireData_startBuilder b) =>
      b..G__typename = 'PageInformationModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get title;
  @override
  BuiltList<String> get description;
  @override
  GstartQuestionnaireData_start_information? get information;
  static Serializer<GstartQuestionnaireData_start> get serializer =>
      _$gstartQuestionnaireDataStartSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GstartQuestionnaireData_start.serializer,
        this,
      ) as Map<String, dynamic>);

  static GstartQuestionnaireData_start? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GstartQuestionnaireData_start.serializer,
        json,
      );
}

abstract class GstartQuestionnaireData_start_information
    implements
        Built<GstartQuestionnaireData_start_information,
            GstartQuestionnaireData_start_informationBuilder>,
        GstartQuestionnaire_start_information {
  GstartQuestionnaireData_start_information._();

  factory GstartQuestionnaireData_start_information(
      [void Function(GstartQuestionnaireData_start_informationBuilder b)
          updates]) = _$GstartQuestionnaireData_start_information;

  static void _initializeBuilder(
          GstartQuestionnaireData_start_informationBuilder b) =>
      b..G__typename = 'InformationModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GstartQuestionnaireData_start_information_cards> get cards;
  @override
  GstartQuestionnaireData_start_information_mention? get mention;
  static Serializer<GstartQuestionnaireData_start_information> get serializer =>
      _$gstartQuestionnaireDataStartInformationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GstartQuestionnaireData_start_information.serializer,
        this,
      ) as Map<String, dynamic>);

  static GstartQuestionnaireData_start_information? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GstartQuestionnaireData_start_information.serializer,
        json,
      );
}

abstract class GstartQuestionnaireData_start_information_cards
    implements
        Built<GstartQuestionnaireData_start_information_cards,
            GstartQuestionnaireData_start_information_cardsBuilder>,
        GstartQuestionnaire_start_information_cards {
  GstartQuestionnaireData_start_information_cards._();

  factory GstartQuestionnaireData_start_information_cards(
      [void Function(GstartQuestionnaireData_start_information_cardsBuilder b)
          updates]) = _$GstartQuestionnaireData_start_information_cards;

  static void _initializeBuilder(
          GstartQuestionnaireData_start_information_cardsBuilder b) =>
      b..G__typename = 'CardInformationModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get image;
  @override
  String get text;
  static Serializer<GstartQuestionnaireData_start_information_cards>
      get serializer =>
          _$gstartQuestionnaireDataStartInformationCardsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GstartQuestionnaireData_start_information_cards.serializer,
        this,
      ) as Map<String, dynamic>);

  static GstartQuestionnaireData_start_information_cards? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GstartQuestionnaireData_start_information_cards.serializer,
        json,
      );
}

abstract class GstartQuestionnaireData_start_information_mention
    implements
        Built<GstartQuestionnaireData_start_information_mention,
            GstartQuestionnaireData_start_information_mentionBuilder>,
        GstartQuestionnaire_start_information_mention {
  GstartQuestionnaireData_start_information_mention._();

  factory GstartQuestionnaireData_start_information_mention(
      [void Function(GstartQuestionnaireData_start_information_mentionBuilder b)
          updates]) = _$GstartQuestionnaireData_start_information_mention;

  static void _initializeBuilder(
          GstartQuestionnaireData_start_information_mentionBuilder b) =>
      b..G__typename = 'MentionModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get text;
  static Serializer<GstartQuestionnaireData_start_information_mention>
      get serializer =>
          _$gstartQuestionnaireDataStartInformationMentionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GstartQuestionnaireData_start_information_mention.serializer,
        this,
      ) as Map<String, dynamic>);

  static GstartQuestionnaireData_start_information_mention? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GstartQuestionnaireData_start_information_mention.serializer,
        json,
      );
}

abstract class GendQuestionnaire {
  String get G__typename;
  GendQuestionnaire_end get end;
  Map<String, dynamic> toJson();
}

abstract class GendQuestionnaire_end {
  String get G__typename;
  GendQuestionnaire_end_medicalAppointment? get medicalAppointment;
  Map<String, dynamic> toJson();
}

abstract class GendQuestionnaire_end_medicalAppointment {
  String get G__typename;
  GendQuestionnaire_end_medicalAppointment_card get card;
  Map<String, dynamic> toJson();
}

abstract class GendQuestionnaire_end_medicalAppointment_card {
  String get G__typename;
  BuiltList<String> get description;
  GendQuestionnaire_end_medicalAppointment_card_link? get link;
  String get titleButton;
  Map<String, dynamic> toJson();
}

abstract class GendQuestionnaire_end_medicalAppointment_card_link {
  String get G__typename;
  String get text;
  String get href;
  Map<String, dynamic> toJson();
}

abstract class GendQuestionnaireData
    implements
        Built<GendQuestionnaireData, GendQuestionnaireDataBuilder>,
        GendQuestionnaire {
  GendQuestionnaireData._();

  factory GendQuestionnaireData(
          [void Function(GendQuestionnaireDataBuilder b) updates]) =
      _$GendQuestionnaireData;

  static void _initializeBuilder(GendQuestionnaireDataBuilder b) =>
      b..G__typename = 'HealthQuizModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GendQuestionnaireData_end get end;
  static Serializer<GendQuestionnaireData> get serializer =>
      _$gendQuestionnaireDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GendQuestionnaireData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GendQuestionnaireData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GendQuestionnaireData.serializer,
        json,
      );
}

abstract class GendQuestionnaireData_end
    implements
        Built<GendQuestionnaireData_end, GendQuestionnaireData_endBuilder>,
        GendQuestionnaire_end {
  GendQuestionnaireData_end._();

  factory GendQuestionnaireData_end(
          [void Function(GendQuestionnaireData_endBuilder b) updates]) =
      _$GendQuestionnaireData_end;

  static void _initializeBuilder(GendQuestionnaireData_endBuilder b) =>
      b..G__typename = 'PageInformationModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GendQuestionnaireData_end_medicalAppointment? get medicalAppointment;
  static Serializer<GendQuestionnaireData_end> get serializer =>
      _$gendQuestionnaireDataEndSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GendQuestionnaireData_end.serializer,
        this,
      ) as Map<String, dynamic>);

  static GendQuestionnaireData_end? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GendQuestionnaireData_end.serializer,
        json,
      );
}

abstract class GendQuestionnaireData_end_medicalAppointment
    implements
        Built<GendQuestionnaireData_end_medicalAppointment,
            GendQuestionnaireData_end_medicalAppointmentBuilder>,
        GendQuestionnaire_end_medicalAppointment {
  GendQuestionnaireData_end_medicalAppointment._();

  factory GendQuestionnaireData_end_medicalAppointment(
      [void Function(GendQuestionnaireData_end_medicalAppointmentBuilder b)
          updates]) = _$GendQuestionnaireData_end_medicalAppointment;

  static void _initializeBuilder(
          GendQuestionnaireData_end_medicalAppointmentBuilder b) =>
      b..G__typename = 'MedicalAppointmentModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GendQuestionnaireData_end_medicalAppointment_card get card;
  static Serializer<GendQuestionnaireData_end_medicalAppointment>
      get serializer => _$gendQuestionnaireDataEndMedicalAppointmentSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GendQuestionnaireData_end_medicalAppointment.serializer,
        this,
      ) as Map<String, dynamic>);

  static GendQuestionnaireData_end_medicalAppointment? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GendQuestionnaireData_end_medicalAppointment.serializer,
        json,
      );
}

abstract class GendQuestionnaireData_end_medicalAppointment_card
    implements
        Built<GendQuestionnaireData_end_medicalAppointment_card,
            GendQuestionnaireData_end_medicalAppointment_cardBuilder>,
        GendQuestionnaire_end_medicalAppointment_card {
  GendQuestionnaireData_end_medicalAppointment_card._();

  factory GendQuestionnaireData_end_medicalAppointment_card(
      [void Function(GendQuestionnaireData_end_medicalAppointment_cardBuilder b)
          updates]) = _$GendQuestionnaireData_end_medicalAppointment_card;

  static void _initializeBuilder(
          GendQuestionnaireData_end_medicalAppointment_cardBuilder b) =>
      b..G__typename = 'MedicalAppointmentCardModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<String> get description;
  @override
  GendQuestionnaireData_end_medicalAppointment_card_link? get link;
  @override
  String get titleButton;
  static Serializer<GendQuestionnaireData_end_medicalAppointment_card>
      get serializer =>
          _$gendQuestionnaireDataEndMedicalAppointmentCardSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GendQuestionnaireData_end_medicalAppointment_card.serializer,
        this,
      ) as Map<String, dynamic>);

  static GendQuestionnaireData_end_medicalAppointment_card? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GendQuestionnaireData_end_medicalAppointment_card.serializer,
        json,
      );
}

abstract class GendQuestionnaireData_end_medicalAppointment_card_link
    implements
        Built<GendQuestionnaireData_end_medicalAppointment_card_link,
            GendQuestionnaireData_end_medicalAppointment_card_linkBuilder>,
        GendQuestionnaire_end_medicalAppointment_card_link {
  GendQuestionnaireData_end_medicalAppointment_card_link._();

  factory GendQuestionnaireData_end_medicalAppointment_card_link(
      [void Function(
              GendQuestionnaireData_end_medicalAppointment_card_linkBuilder b)
          updates]) = _$GendQuestionnaireData_end_medicalAppointment_card_link;

  static void _initializeBuilder(
          GendQuestionnaireData_end_medicalAppointment_card_linkBuilder b) =>
      b..G__typename = 'DescriptionLinkModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get text;
  @override
  String get href;
  static Serializer<GendQuestionnaireData_end_medicalAppointment_card_link>
      get serializer =>
          _$gendQuestionnaireDataEndMedicalAppointmentCardLinkSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GendQuestionnaireData_end_medicalAppointment_card_link.serializer,
        this,
      ) as Map<String, dynamic>);

  static GendQuestionnaireData_end_medicalAppointment_card_link? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GendQuestionnaireData_end_medicalAppointment_card_link.serializer,
        json,
      );
}

abstract class Gquestion {
  String get G__typename;
  String get code;
  Gquestion_rowQuestion? get rowQuestion;
  Gquestion_textQuestion? get textQuestion;
  Gquestion_choiceQuestion? get choiceQuestion;
  bool get required;
  double? get maxLength;
  BuiltList<Gquestion_constraints>? get constraints;
  Map<String, dynamic> toJson();
}

abstract class Gquestion_rowQuestion {
  String get G__typename;
  String get title;
  String? get description;
  Map<String, dynamic> toJson();
}

abstract class Gquestion_textQuestion {
  String get G__typename;
  String get title;
  Map<String, dynamic> toJson();
}

abstract class Gquestion_choiceQuestion implements GchoiceQuestion {
  @override
  String get G__typename;
  @override
  String? get title;
  @override
  _i2.GChoiceQuestionType get type;
  @override
  BuiltList<Gquestion_choiceQuestion_options> get options;
  @override
  Map<String, dynamic> toJson();
}

abstract class Gquestion_choiceQuestion_options
    implements GchoiceQuestion_options {
  @override
  String get G__typename;
  @override
  String get value;
  @override
  String get code;
  @override
  Map<String, dynamic> toJson();
}

abstract class Gquestion_constraints implements GconstraintsQuestion {
  @override
  String get G__typename;
  @override
  String? get regexp;
  @override
  Gquestion_constraints_range? get range;
  @override
  String get message;
  @override
  Map<String, dynamic> toJson();
}

abstract class Gquestion_constraints_range
    implements GconstraintsQuestion_range {
  @override
  String get G__typename;
  @override
  double? get min;
  @override
  double? get max;
  @override
  Map<String, dynamic> toJson();
}

abstract class GquestionData
    implements Built<GquestionData, GquestionDataBuilder>, Gquestion {
  GquestionData._();

  factory GquestionData([void Function(GquestionDataBuilder b) updates]) =
      _$GquestionData;

  static void _initializeBuilder(GquestionDataBuilder b) =>
      b..G__typename = 'QuestionModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get code;
  @override
  GquestionData_rowQuestion? get rowQuestion;
  @override
  GquestionData_textQuestion? get textQuestion;
  @override
  GquestionData_choiceQuestion? get choiceQuestion;
  @override
  bool get required;
  @override
  double? get maxLength;
  @override
  BuiltList<GquestionData_constraints>? get constraints;
  static Serializer<GquestionData> get serializer => _$gquestionDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GquestionData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GquestionData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GquestionData.serializer,
        json,
      );
}

abstract class GquestionData_rowQuestion
    implements
        Built<GquestionData_rowQuestion, GquestionData_rowQuestionBuilder>,
        Gquestion_rowQuestion {
  GquestionData_rowQuestion._();

  factory GquestionData_rowQuestion(
          [void Function(GquestionData_rowQuestionBuilder b) updates]) =
      _$GquestionData_rowQuestion;

  static void _initializeBuilder(GquestionData_rowQuestionBuilder b) =>
      b..G__typename = 'RowQuestionModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get title;
  @override
  String? get description;
  static Serializer<GquestionData_rowQuestion> get serializer =>
      _$gquestionDataRowQuestionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GquestionData_rowQuestion.serializer,
        this,
      ) as Map<String, dynamic>);

  static GquestionData_rowQuestion? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GquestionData_rowQuestion.serializer,
        json,
      );
}

abstract class GquestionData_textQuestion
    implements
        Built<GquestionData_textQuestion, GquestionData_textQuestionBuilder>,
        Gquestion_textQuestion {
  GquestionData_textQuestion._();

  factory GquestionData_textQuestion(
          [void Function(GquestionData_textQuestionBuilder b) updates]) =
      _$GquestionData_textQuestion;

  static void _initializeBuilder(GquestionData_textQuestionBuilder b) =>
      b..G__typename = 'TextQuestionModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get title;
  static Serializer<GquestionData_textQuestion> get serializer =>
      _$gquestionDataTextQuestionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GquestionData_textQuestion.serializer,
        this,
      ) as Map<String, dynamic>);

  static GquestionData_textQuestion? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GquestionData_textQuestion.serializer,
        json,
      );
}

abstract class GquestionData_choiceQuestion
    implements
        Built<GquestionData_choiceQuestion,
            GquestionData_choiceQuestionBuilder>,
        Gquestion_choiceQuestion,
        GchoiceQuestion {
  GquestionData_choiceQuestion._();

  factory GquestionData_choiceQuestion(
          [void Function(GquestionData_choiceQuestionBuilder b) updates]) =
      _$GquestionData_choiceQuestion;

  static void _initializeBuilder(GquestionData_choiceQuestionBuilder b) =>
      b..G__typename = 'ChoiceQuestionModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get title;
  @override
  _i2.GChoiceQuestionType get type;
  @override
  BuiltList<GquestionData_choiceQuestion_options> get options;
  static Serializer<GquestionData_choiceQuestion> get serializer =>
      _$gquestionDataChoiceQuestionSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GquestionData_choiceQuestion.serializer,
        this,
      ) as Map<String, dynamic>);

  static GquestionData_choiceQuestion? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GquestionData_choiceQuestion.serializer,
        json,
      );
}

abstract class GquestionData_choiceQuestion_options
    implements
        Built<GquestionData_choiceQuestion_options,
            GquestionData_choiceQuestion_optionsBuilder>,
        Gquestion_choiceQuestion_options,
        GchoiceQuestion_options {
  GquestionData_choiceQuestion_options._();

  factory GquestionData_choiceQuestion_options(
      [void Function(GquestionData_choiceQuestion_optionsBuilder b)
          updates]) = _$GquestionData_choiceQuestion_options;

  static void _initializeBuilder(
          GquestionData_choiceQuestion_optionsBuilder b) =>
      b..G__typename = 'OptionModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get value;
  @override
  String get code;
  static Serializer<GquestionData_choiceQuestion_options> get serializer =>
      _$gquestionDataChoiceQuestionOptionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GquestionData_choiceQuestion_options.serializer,
        this,
      ) as Map<String, dynamic>);

  static GquestionData_choiceQuestion_options? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GquestionData_choiceQuestion_options.serializer,
        json,
      );
}

abstract class GquestionData_constraints
    implements
        Built<GquestionData_constraints, GquestionData_constraintsBuilder>,
        Gquestion_constraints,
        GconstraintsQuestion {
  GquestionData_constraints._();

  factory GquestionData_constraints(
          [void Function(GquestionData_constraintsBuilder b) updates]) =
      _$GquestionData_constraints;

  static void _initializeBuilder(GquestionData_constraintsBuilder b) =>
      b..G__typename = 'ConstraintModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get regexp;
  @override
  GquestionData_constraints_range? get range;
  @override
  String get message;
  static Serializer<GquestionData_constraints> get serializer =>
      _$gquestionDataConstraintsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GquestionData_constraints.serializer,
        this,
      ) as Map<String, dynamic>);

  static GquestionData_constraints? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GquestionData_constraints.serializer,
        json,
      );
}

abstract class GquestionData_constraints_range
    implements
        Built<GquestionData_constraints_range,
            GquestionData_constraints_rangeBuilder>,
        Gquestion_constraints_range,
        GconstraintsQuestion_range {
  GquestionData_constraints_range._();

  factory GquestionData_constraints_range(
          [void Function(GquestionData_constraints_rangeBuilder b) updates]) =
      _$GquestionData_constraints_range;

  static void _initializeBuilder(GquestionData_constraints_rangeBuilder b) =>
      b..G__typename = 'ConstraintRangeModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double? get min;
  @override
  double? get max;
  static Serializer<GquestionData_constraints_range> get serializer =>
      _$gquestionDataConstraintsRangeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GquestionData_constraints_range.serializer,
        this,
      ) as Map<String, dynamic>);

  static GquestionData_constraints_range? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GquestionData_constraints_range.serializer,
        json,
      );
}

abstract class GchoiceQuestion {
  String get G__typename;
  String? get title;
  _i2.GChoiceQuestionType get type;
  BuiltList<GchoiceQuestion_options> get options;
  Map<String, dynamic> toJson();
}

abstract class GchoiceQuestion_options {
  String get G__typename;
  String get value;
  String get code;
  Map<String, dynamic> toJson();
}

abstract class GchoiceQuestionData
    implements
        Built<GchoiceQuestionData, GchoiceQuestionDataBuilder>,
        GchoiceQuestion {
  GchoiceQuestionData._();

  factory GchoiceQuestionData(
          [void Function(GchoiceQuestionDataBuilder b) updates]) =
      _$GchoiceQuestionData;

  static void _initializeBuilder(GchoiceQuestionDataBuilder b) =>
      b..G__typename = 'ChoiceQuestionModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get title;
  @override
  _i2.GChoiceQuestionType get type;
  @override
  BuiltList<GchoiceQuestionData_options> get options;
  static Serializer<GchoiceQuestionData> get serializer =>
      _$gchoiceQuestionDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GchoiceQuestionData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GchoiceQuestionData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GchoiceQuestionData.serializer,
        json,
      );
}

abstract class GchoiceQuestionData_options
    implements
        Built<GchoiceQuestionData_options, GchoiceQuestionData_optionsBuilder>,
        GchoiceQuestion_options {
  GchoiceQuestionData_options._();

  factory GchoiceQuestionData_options(
          [void Function(GchoiceQuestionData_optionsBuilder b) updates]) =
      _$GchoiceQuestionData_options;

  static void _initializeBuilder(GchoiceQuestionData_optionsBuilder b) =>
      b..G__typename = 'OptionModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get value;
  @override
  String get code;
  static Serializer<GchoiceQuestionData_options> get serializer =>
      _$gchoiceQuestionDataOptionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GchoiceQuestionData_options.serializer,
        this,
      ) as Map<String, dynamic>);

  static GchoiceQuestionData_options? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GchoiceQuestionData_options.serializer,
        json,
      );
}

abstract class GconstraintsQuestion {
  String get G__typename;
  String? get regexp;
  GconstraintsQuestion_range? get range;
  String get message;
  Map<String, dynamic> toJson();
}

abstract class GconstraintsQuestion_range {
  String get G__typename;
  double? get min;
  double? get max;
  Map<String, dynamic> toJson();
}

abstract class GconstraintsQuestionData
    implements
        Built<GconstraintsQuestionData, GconstraintsQuestionDataBuilder>,
        GconstraintsQuestion {
  GconstraintsQuestionData._();

  factory GconstraintsQuestionData(
          [void Function(GconstraintsQuestionDataBuilder b) updates]) =
      _$GconstraintsQuestionData;

  static void _initializeBuilder(GconstraintsQuestionDataBuilder b) =>
      b..G__typename = 'ConstraintModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get regexp;
  @override
  GconstraintsQuestionData_range? get range;
  @override
  String get message;
  static Serializer<GconstraintsQuestionData> get serializer =>
      _$gconstraintsQuestionDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GconstraintsQuestionData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GconstraintsQuestionData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GconstraintsQuestionData.serializer,
        json,
      );
}

abstract class GconstraintsQuestionData_range
    implements
        Built<GconstraintsQuestionData_range,
            GconstraintsQuestionData_rangeBuilder>,
        GconstraintsQuestion_range {
  GconstraintsQuestionData_range._();

  factory GconstraintsQuestionData_range(
          [void Function(GconstraintsQuestionData_rangeBuilder b) updates]) =
      _$GconstraintsQuestionData_range;

  static void _initializeBuilder(GconstraintsQuestionData_rangeBuilder b) =>
      b..G__typename = 'ConstraintRangeModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double? get min;
  @override
  double? get max;
  static Serializer<GconstraintsQuestionData_range> get serializer =>
      _$gconstraintsQuestionDataRangeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GconstraintsQuestionData_range.serializer,
        this,
      ) as Map<String, dynamic>);

  static GconstraintsQuestionData_range? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GconstraintsQuestionData_range.serializer,
        json,
      );
}
