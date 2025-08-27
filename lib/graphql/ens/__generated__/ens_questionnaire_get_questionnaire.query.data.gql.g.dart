// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_questionnaire_get_questionnaire.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_questionnaireData> _$ggetQuestionnaireDataSerializer =
    new _$Gget_questionnaireDataSerializer();
Serializer<Gget_questionnaireData_fetchHealthQuiz>
    _$ggetQuestionnaireDataFetchHealthQuizSerializer =
    new _$Gget_questionnaireData_fetchHealthQuizSerializer();
Serializer<Gget_questionnaireData_fetchHealthQuiz_start>
    _$ggetQuestionnaireDataFetchHealthQuizStartSerializer =
    new _$Gget_questionnaireData_fetchHealthQuiz_startSerializer();
Serializer<Gget_questionnaireData_fetchHealthQuiz_start_information>
    _$ggetQuestionnaireDataFetchHealthQuizStartInformationSerializer =
    new _$Gget_questionnaireData_fetchHealthQuiz_start_informationSerializer();
Serializer<Gget_questionnaireData_fetchHealthQuiz_start_information_cards>
    _$ggetQuestionnaireDataFetchHealthQuizStartInformationCardsSerializer =
    new _$Gget_questionnaireData_fetchHealthQuiz_start_information_cardsSerializer();
Serializer<Gget_questionnaireData_fetchHealthQuiz_start_information_mention>
    _$ggetQuestionnaireDataFetchHealthQuizStartInformationMentionSerializer =
    new _$Gget_questionnaireData_fetchHealthQuiz_start_information_mentionSerializer();
Serializer<Gget_questionnaireData_fetchHealthQuiz_end>
    _$ggetQuestionnaireDataFetchHealthQuizEndSerializer =
    new _$Gget_questionnaireData_fetchHealthQuiz_endSerializer();
Serializer<Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment>
    _$ggetQuestionnaireDataFetchHealthQuizEndMedicalAppointmentSerializer =
    new _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointmentSerializer();
Serializer<Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card>
    _$ggetQuestionnaireDataFetchHealthQuizEndMedicalAppointmentCardSerializer =
    new _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_cardSerializer();
Serializer<
        Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link>
    _$ggetQuestionnaireDataFetchHealthQuizEndMedicalAppointmentCardLinkSerializer =
    new _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_linkSerializer();
Serializer<Gget_questionnaireData_fetchHealthQuiz_items>
    _$ggetQuestionnaireDataFetchHealthQuizItemsSerializer =
    new _$Gget_questionnaireData_fetchHealthQuiz_itemsSerializer();
Serializer<Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem>
    _$ggetQuestionnaireDataFetchHealthQuizItemsQuestionGroupItemSerializer =
    new _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItemSerializer();
Serializer<
        Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions>
    _$ggetQuestionnaireDataFetchHealthQuizItemsQuestionGroupItemQuestionsSerializer =
    new _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questionsSerializer();
Serializer<
        Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion>
    _$ggetQuestionnaireDataFetchHealthQuizItemsQuestionGroupItemQuestionsRowQuestionSerializer =
    new _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestionSerializer();
Serializer<
        Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion>
    _$ggetQuestionnaireDataFetchHealthQuizItemsQuestionGroupItemQuestionsTextQuestionSerializer =
    new _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestionSerializer();
Serializer<
        Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion>
    _$ggetQuestionnaireDataFetchHealthQuizItemsQuestionGroupItemQuestionsChoiceQuestionSerializer =
    new _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestionSerializer();
Serializer<
        Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options>
    _$ggetQuestionnaireDataFetchHealthQuizItemsQuestionGroupItemQuestionsChoiceQuestionOptionsSerializer =
    new _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_optionsSerializer();
Serializer<
        Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints>
    _$ggetQuestionnaireDataFetchHealthQuizItemsQuestionGroupItemQuestionsConstraintsSerializer =
    new _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraintsSerializer();
Serializer<
        Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range>
    _$ggetQuestionnaireDataFetchHealthQuizItemsQuestionGroupItemQuestionsConstraintsRangeSerializer =
    new _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_rangeSerializer();

class _$Gget_questionnaireDataSerializer
    implements StructuredSerializer<Gget_questionnaireData> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnaireData,
    _$Gget_questionnaireData
  ];
  @override
  final String wireName = 'Gget_questionnaireData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_questionnaireData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'fetchHealthQuiz',
      serializers.serialize(object.fetchHealthQuiz,
          specifiedType:
              const FullType(Gget_questionnaireData_fetchHealthQuiz)),
    ];

    return result;
  }

  @override
  Gget_questionnaireData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_questionnaireDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'fetchHealthQuiz':
          result.fetchHealthQuiz.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gget_questionnaireData_fetchHealthQuiz))!
              as Gget_questionnaireData_fetchHealthQuiz);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_questionnaireData_fetchHealthQuizSerializer
    implements StructuredSerializer<Gget_questionnaireData_fetchHealthQuiz> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnaireData_fetchHealthQuiz,
    _$Gget_questionnaireData_fetchHealthQuiz
  ];
  @override
  final String wireName = 'Gget_questionnaireData_fetchHealthQuiz';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_questionnaireData_fetchHealthQuiz object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'start',
      serializers.serialize(object.start,
          specifiedType:
              const FullType(Gget_questionnaireData_fetchHealthQuiz_start)),
      'end',
      serializers.serialize(object.end,
          specifiedType:
              const FullType(Gget_questionnaireData_fetchHealthQuiz_end)),
      'items',
      serializers.serialize(object.items,
          specifiedType: const FullType(BuiltList, const [
            const FullType(Gget_questionnaireData_fetchHealthQuiz_items)
          ])),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'version',
      serializers.serialize(object.version,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_questionnaireData_fetchHealthQuizBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'start':
          result.start.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_questionnaireData_fetchHealthQuiz_start))!
              as Gget_questionnaireData_fetchHealthQuiz_start);
          break;
        case 'end':
          result.end.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_questionnaireData_fetchHealthQuiz_end))!
              as Gget_questionnaireData_fetchHealthQuiz_end);
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gget_questionnaireData_fetchHealthQuiz_items)
              ]))! as BuiltList<Object?>);
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_startSerializer
    implements
        StructuredSerializer<Gget_questionnaireData_fetchHealthQuiz_start> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnaireData_fetchHealthQuiz_start,
    _$Gget_questionnaireData_fetchHealthQuiz_start
  ];
  @override
  final String wireName = 'Gget_questionnaireData_fetchHealthQuiz_start';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_questionnaireData_fetchHealthQuiz_start object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    Object? value;
    value = object.information;
    if (value != null) {
      result
        ..add('information')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_questionnaireData_fetchHealthQuiz_start_information)));
    }
    return result;
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_start deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_questionnaireData_fetchHealthQuiz_startBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'information':
          result.information.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_questionnaireData_fetchHealthQuiz_start_information))!
              as Gget_questionnaireData_fetchHealthQuiz_start_information);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_start_informationSerializer
    implements
        StructuredSerializer<
            Gget_questionnaireData_fetchHealthQuiz_start_information> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnaireData_fetchHealthQuiz_start_information,
    _$Gget_questionnaireData_fetchHealthQuiz_start_information
  ];
  @override
  final String wireName =
      'Gget_questionnaireData_fetchHealthQuiz_start_information';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_questionnaireData_fetchHealthQuiz_start_information object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'cards',
      serializers.serialize(object.cards,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_questionnaireData_fetchHealthQuiz_start_information_cards)
          ])),
    ];
    Object? value;
    value = object.mention;
    if (value != null) {
      result
        ..add('mention')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_questionnaireData_fetchHealthQuiz_start_information_mention)));
    }
    return result;
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_start_information deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_questionnaireData_fetchHealthQuiz_start_informationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'cards':
          result.cards.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_questionnaireData_fetchHealthQuiz_start_information_cards)
              ]))! as BuiltList<Object?>);
          break;
        case 'mention':
          result.mention.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_questionnaireData_fetchHealthQuiz_start_information_mention))!
              as Gget_questionnaireData_fetchHealthQuiz_start_information_mention);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_start_information_cardsSerializer
    implements
        StructuredSerializer<
            Gget_questionnaireData_fetchHealthQuiz_start_information_cards> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnaireData_fetchHealthQuiz_start_information_cards,
    _$Gget_questionnaireData_fetchHealthQuiz_start_information_cards
  ];
  @override
  final String wireName =
      'Gget_questionnaireData_fetchHealthQuiz_start_information_cards';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_questionnaireData_fetchHealthQuiz_start_information_cards object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'image',
      serializers.serialize(object.image,
          specifiedType: const FullType(String)),
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_start_information_cards deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_questionnaireData_fetchHealthQuiz_start_information_cardsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_start_information_mentionSerializer
    implements
        StructuredSerializer<
            Gget_questionnaireData_fetchHealthQuiz_start_information_mention> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnaireData_fetchHealthQuiz_start_information_mention,
    _$Gget_questionnaireData_fetchHealthQuiz_start_information_mention
  ];
  @override
  final String wireName =
      'Gget_questionnaireData_fetchHealthQuiz_start_information_mention';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_questionnaireData_fetchHealthQuiz_start_information_mention object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_start_information_mention deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_questionnaireData_fetchHealthQuiz_start_information_mentionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_endSerializer
    implements
        StructuredSerializer<Gget_questionnaireData_fetchHealthQuiz_end> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnaireData_fetchHealthQuiz_end,
    _$Gget_questionnaireData_fetchHealthQuiz_end
  ];
  @override
  final String wireName = 'Gget_questionnaireData_fetchHealthQuiz_end';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_questionnaireData_fetchHealthQuiz_end object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.medicalAppointment;
    if (value != null) {
      result
        ..add('medicalAppointment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment)));
    }
    return result;
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_end deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_questionnaireData_fetchHealthQuiz_endBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'medicalAppointment':
          result.medicalAppointment.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment))!
              as Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointmentSerializer
    implements
        StructuredSerializer<
            Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment,
    _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment
  ];
  @override
  final String wireName =
      'Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'card',
      serializers.serialize(object.card,
          specifiedType: const FullType(
              Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card)),
    ];

    return result;
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointmentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'card':
          result.card.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card))!
              as Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_cardSerializer
    implements
        StructuredSerializer<
            Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card,
    _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card
  ];
  @override
  final String wireName =
      'Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'titleButton',
      serializers.serialize(object.titleButton,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.link;
    if (value != null) {
      result
        ..add('link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link)));
    }
    return result;
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_cardBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'link':
          result.link.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link))!
              as Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link);
          break;
        case 'titleButton':
          result.titleButton = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_linkSerializer
    implements
        StructuredSerializer<
            Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link,
    _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link
  ];
  @override
  final String wireName =
      'Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
      'href',
      serializers.serialize(object.href, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_linkBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'href':
          result.href = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_itemsSerializer
    implements
        StructuredSerializer<Gget_questionnaireData_fetchHealthQuiz_items> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnaireData_fetchHealthQuiz_items,
    _$Gget_questionnaireData_fetchHealthQuiz_items
  ];
  @override
  final String wireName = 'Gget_questionnaireData_fetchHealthQuiz_items';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_questionnaireData_fetchHealthQuiz_items object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'questionGroupItem',
      serializers.serialize(object.questionGroupItem,
          specifiedType: const FullType(
              Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem)),
    ];

    return result;
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_items deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_questionnaireData_fetchHealthQuiz_itemsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'questionGroupItem':
          result.questionGroupItem.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem))!
              as Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItemSerializer
    implements
        StructuredSerializer<
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem,
    _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem
  ];
  @override
  final String wireName =
      'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'questions',
      serializers.serialize(object.questions,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions)
          ])),
    ];
    Object? value;
    value = object.goToNext;
    if (value != null) {
      result
        ..add('goToNext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.goToNextOn;
    if (value != null) {
      result
        ..add('goToNextOn')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.goToPrevious;
    if (value != null) {
      result
        ..add('goToPrevious')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.goToPreviousOn;
    if (value != null) {
      result
        ..add('goToPreviousOn')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'questions':
          result.questions.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions)
              ]))! as BuiltList<Object?>);
          break;
        case 'goToNext':
          result.goToNext = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'goToNextOn':
          result.goToNextOn.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'goToPrevious':
          result.goToPrevious = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'goToPreviousOn':
          result.goToPreviousOn.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questionsSerializer
    implements
        StructuredSerializer<
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions,
    _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions
  ];
  @override
  final String wireName =
      'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'required',
      serializers.serialize(object.required,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.rowQuestion;
    if (value != null) {
      result
        ..add('rowQuestion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion)));
    }
    value = object.textQuestion;
    if (value != null) {
      result
        ..add('textQuestion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion)));
    }
    value = object.choiceQuestion;
    if (value != null) {
      result
        ..add('choiceQuestion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion)));
    }
    value = object.maxLength;
    if (value != null) {
      result
        ..add('maxLength')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.constraints;
    if (value != null) {
      result
        ..add('constraints')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints)
            ])));
    }
    return result;
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'rowQuestion':
          result.rowQuestion.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion))!
              as Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion);
          break;
        case 'textQuestion':
          result.textQuestion.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion))!
              as Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion);
          break;
        case 'choiceQuestion':
          result.choiceQuestion.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion))!
              as Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion);
          break;
        case 'required':
          result.required = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'maxLength':
          result.maxLength = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'constraints':
          result.constraints.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestionSerializer
    implements
        StructuredSerializer<
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion,
    _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion
  ];
  @override
  final String wireName =
      'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestionSerializer
    implements
        StructuredSerializer<
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion,
    _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion
  ];
  @override
  final String wireName =
      'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestionSerializer
    implements
        StructuredSerializer<
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion,
    _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion
  ];
  @override
  final String wireName =
      'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(_i3.GChoiceQuestionType)),
      'options',
      serializers.serialize(object.options,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options)
          ])),
    ];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GChoiceQuestionType))!
              as _i3.GChoiceQuestionType;
          break;
        case 'options':
          result.options.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_optionsSerializer
    implements
        StructuredSerializer<
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options,
    _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options
  ];
  @override
  final String wireName =
      'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'value',
      serializers.serialize(object.value,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_optionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraintsSerializer
    implements
        StructuredSerializer<
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints,
    _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints
  ];
  @override
  final String wireName =
      'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.regexp;
    if (value != null) {
      result
        ..add('regexp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.range;
    if (value != null) {
      result
        ..add('range')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range)));
    }
    return result;
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraintsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'regexp':
          result.regexp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'range':
          result.range.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range))!
              as Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range);
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_rangeSerializer
    implements
        StructuredSerializer<
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range,
    _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range
  ];
  @override
  final String wireName =
      'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.min;
    if (value != null) {
      result
        ..add('min')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.max;
    if (value != null) {
      result
        ..add('max')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_rangeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'min':
          result.min = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'max':
          result.max = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_questionnaireData extends Gget_questionnaireData {
  @override
  final String G__typename;
  @override
  final Gget_questionnaireData_fetchHealthQuiz fetchHealthQuiz;

  factory _$Gget_questionnaireData(
          [void Function(Gget_questionnaireDataBuilder)? updates]) =>
      (new Gget_questionnaireDataBuilder()..update(updates))._build();

  _$Gget_questionnaireData._(
      {required this.G__typename, required this.fetchHealthQuiz})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_questionnaireData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        fetchHealthQuiz, r'Gget_questionnaireData', 'fetchHealthQuiz');
  }

  @override
  Gget_questionnaireData rebuild(
          void Function(Gget_questionnaireDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_questionnaireDataBuilder toBuilder() =>
      new Gget_questionnaireDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_questionnaireData &&
        G__typename == other.G__typename &&
        fetchHealthQuiz == other.fetchHealthQuiz;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, fetchHealthQuiz.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_questionnaireData')
          ..add('G__typename', G__typename)
          ..add('fetchHealthQuiz', fetchHealthQuiz))
        .toString();
  }
}

class Gget_questionnaireDataBuilder
    implements Builder<Gget_questionnaireData, Gget_questionnaireDataBuilder> {
  _$Gget_questionnaireData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_questionnaireData_fetchHealthQuizBuilder? _fetchHealthQuiz;
  Gget_questionnaireData_fetchHealthQuizBuilder get fetchHealthQuiz =>
      _$this._fetchHealthQuiz ??=
          new Gget_questionnaireData_fetchHealthQuizBuilder();
  set fetchHealthQuiz(
          Gget_questionnaireData_fetchHealthQuizBuilder? fetchHealthQuiz) =>
      _$this._fetchHealthQuiz = fetchHealthQuiz;

  Gget_questionnaireDataBuilder() {
    Gget_questionnaireData._initializeBuilder(this);
  }

  Gget_questionnaireDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _fetchHealthQuiz = $v.fetchHealthQuiz.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_questionnaireData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_questionnaireData;
  }

  @override
  void update(void Function(Gget_questionnaireDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnaireData build() => _build();

  _$Gget_questionnaireData _build() {
    _$Gget_questionnaireData _$result;
    try {
      _$result = _$v ??
          new _$Gget_questionnaireData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_questionnaireData', 'G__typename'),
              fetchHealthQuiz: fetchHealthQuiz.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fetchHealthQuiz';
        fetchHealthQuiz.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_questionnaireData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz
    extends Gget_questionnaireData_fetchHealthQuiz {
  @override
  final String G__typename;
  @override
  final Gget_questionnaireData_fetchHealthQuiz_start start;
  @override
  final Gget_questionnaireData_fetchHealthQuiz_end end;
  @override
  final BuiltList<Gget_questionnaireData_fetchHealthQuiz_items> items;
  @override
  final String code;
  @override
  final String version;

  factory _$Gget_questionnaireData_fetchHealthQuiz(
          [void Function(Gget_questionnaireData_fetchHealthQuizBuilder)?
              updates]) =>
      (new Gget_questionnaireData_fetchHealthQuizBuilder()..update(updates))
          ._build();

  _$Gget_questionnaireData_fetchHealthQuiz._(
      {required this.G__typename,
      required this.start,
      required this.end,
      required this.items,
      required this.code,
      required this.version})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_questionnaireData_fetchHealthQuiz', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        start, r'Gget_questionnaireData_fetchHealthQuiz', 'start');
    BuiltValueNullFieldError.checkNotNull(
        end, r'Gget_questionnaireData_fetchHealthQuiz', 'end');
    BuiltValueNullFieldError.checkNotNull(
        items, r'Gget_questionnaireData_fetchHealthQuiz', 'items');
    BuiltValueNullFieldError.checkNotNull(
        code, r'Gget_questionnaireData_fetchHealthQuiz', 'code');
    BuiltValueNullFieldError.checkNotNull(
        version, r'Gget_questionnaireData_fetchHealthQuiz', 'version');
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz rebuild(
          void Function(Gget_questionnaireData_fetchHealthQuizBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_questionnaireData_fetchHealthQuizBuilder toBuilder() =>
      new Gget_questionnaireData_fetchHealthQuizBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_questionnaireData_fetchHealthQuiz &&
        G__typename == other.G__typename &&
        start == other.start &&
        end == other.end &&
        items == other.items &&
        code == other.code &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, start.hashCode);
    _$hash = $jc(_$hash, end.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_questionnaireData_fetchHealthQuiz')
          ..add('G__typename', G__typename)
          ..add('start', start)
          ..add('end', end)
          ..add('items', items)
          ..add('code', code)
          ..add('version', version))
        .toString();
  }
}

class Gget_questionnaireData_fetchHealthQuizBuilder
    implements
        Builder<Gget_questionnaireData_fetchHealthQuiz,
            Gget_questionnaireData_fetchHealthQuizBuilder> {
  _$Gget_questionnaireData_fetchHealthQuiz? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_questionnaireData_fetchHealthQuiz_startBuilder? _start;
  Gget_questionnaireData_fetchHealthQuiz_startBuilder get start =>
      _$this._start ??=
          new Gget_questionnaireData_fetchHealthQuiz_startBuilder();
  set start(Gget_questionnaireData_fetchHealthQuiz_startBuilder? start) =>
      _$this._start = start;

  Gget_questionnaireData_fetchHealthQuiz_endBuilder? _end;
  Gget_questionnaireData_fetchHealthQuiz_endBuilder get end =>
      _$this._end ??= new Gget_questionnaireData_fetchHealthQuiz_endBuilder();
  set end(Gget_questionnaireData_fetchHealthQuiz_endBuilder? end) =>
      _$this._end = end;

  ListBuilder<Gget_questionnaireData_fetchHealthQuiz_items>? _items;
  ListBuilder<Gget_questionnaireData_fetchHealthQuiz_items> get items =>
      _$this._items ??=
          new ListBuilder<Gget_questionnaireData_fetchHealthQuiz_items>();
  set items(ListBuilder<Gget_questionnaireData_fetchHealthQuiz_items>? items) =>
      _$this._items = items;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  Gget_questionnaireData_fetchHealthQuizBuilder() {
    Gget_questionnaireData_fetchHealthQuiz._initializeBuilder(this);
  }

  Gget_questionnaireData_fetchHealthQuizBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _start = $v.start.toBuilder();
      _end = $v.end.toBuilder();
      _items = $v.items.toBuilder();
      _code = $v.code;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_questionnaireData_fetchHealthQuiz other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_questionnaireData_fetchHealthQuiz;
  }

  @override
  void update(
      void Function(Gget_questionnaireData_fetchHealthQuizBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz build() => _build();

  _$Gget_questionnaireData_fetchHealthQuiz _build() {
    _$Gget_questionnaireData_fetchHealthQuiz _$result;
    try {
      _$result = _$v ??
          new _$Gget_questionnaireData_fetchHealthQuiz._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_questionnaireData_fetchHealthQuiz', 'G__typename'),
              start: start.build(),
              end: end.build(),
              items: items.build(),
              code: BuiltValueNullFieldError.checkNotNull(
                  code, r'Gget_questionnaireData_fetchHealthQuiz', 'code'),
              version: BuiltValueNullFieldError.checkNotNull(version,
                  r'Gget_questionnaireData_fetchHealthQuiz', 'version'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'start';
        start.build();
        _$failedField = 'end';
        end.build();
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_questionnaireData_fetchHealthQuiz',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_start
    extends Gget_questionnaireData_fetchHealthQuiz_start {
  @override
  final String G__typename;
  @override
  final String title;
  @override
  final BuiltList<String> description;
  @override
  final Gget_questionnaireData_fetchHealthQuiz_start_information? information;

  factory _$Gget_questionnaireData_fetchHealthQuiz_start(
          [void Function(Gget_questionnaireData_fetchHealthQuiz_startBuilder)?
              updates]) =>
      (new Gget_questionnaireData_fetchHealthQuiz_startBuilder()
            ..update(updates))
          ._build();

  _$Gget_questionnaireData_fetchHealthQuiz_start._(
      {required this.G__typename,
      required this.title,
      required this.description,
      this.information})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_questionnaireData_fetchHealthQuiz_start', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        title, r'Gget_questionnaireData_fetchHealthQuiz_start', 'title');
    BuiltValueNullFieldError.checkNotNull(description,
        r'Gget_questionnaireData_fetchHealthQuiz_start', 'description');
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_start rebuild(
          void Function(Gget_questionnaireData_fetchHealthQuiz_startBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_questionnaireData_fetchHealthQuiz_startBuilder toBuilder() =>
      new Gget_questionnaireData_fetchHealthQuiz_startBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_questionnaireData_fetchHealthQuiz_start &&
        G__typename == other.G__typename &&
        title == other.title &&
        description == other.description &&
        information == other.information;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, information.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_questionnaireData_fetchHealthQuiz_start')
          ..add('G__typename', G__typename)
          ..add('title', title)
          ..add('description', description)
          ..add('information', information))
        .toString();
  }
}

class Gget_questionnaireData_fetchHealthQuiz_startBuilder
    implements
        Builder<Gget_questionnaireData_fetchHealthQuiz_start,
            Gget_questionnaireData_fetchHealthQuiz_startBuilder> {
  _$Gget_questionnaireData_fetchHealthQuiz_start? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ListBuilder<String>? _description;
  ListBuilder<String> get description =>
      _$this._description ??= new ListBuilder<String>();
  set description(ListBuilder<String>? description) =>
      _$this._description = description;

  Gget_questionnaireData_fetchHealthQuiz_start_informationBuilder? _information;
  Gget_questionnaireData_fetchHealthQuiz_start_informationBuilder
      get information => _$this._information ??=
          new Gget_questionnaireData_fetchHealthQuiz_start_informationBuilder();
  set information(
          Gget_questionnaireData_fetchHealthQuiz_start_informationBuilder?
              information) =>
      _$this._information = information;

  Gget_questionnaireData_fetchHealthQuiz_startBuilder() {
    Gget_questionnaireData_fetchHealthQuiz_start._initializeBuilder(this);
  }

  Gget_questionnaireData_fetchHealthQuiz_startBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _title = $v.title;
      _description = $v.description.toBuilder();
      _information = $v.information?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_questionnaireData_fetchHealthQuiz_start other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_questionnaireData_fetchHealthQuiz_start;
  }

  @override
  void update(
      void Function(Gget_questionnaireData_fetchHealthQuiz_startBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_start build() => _build();

  _$Gget_questionnaireData_fetchHealthQuiz_start _build() {
    _$Gget_questionnaireData_fetchHealthQuiz_start _$result;
    try {
      _$result = _$v ??
          new _$Gget_questionnaireData_fetchHealthQuiz_start._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_questionnaireData_fetchHealthQuiz_start',
                  'G__typename'),
              title: BuiltValueNullFieldError.checkNotNull(title,
                  r'Gget_questionnaireData_fetchHealthQuiz_start', 'title'),
              description: description.build(),
              information: _information?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'description';
        description.build();
        _$failedField = 'information';
        _information?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_questionnaireData_fetchHealthQuiz_start',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_start_information
    extends Gget_questionnaireData_fetchHealthQuiz_start_information {
  @override
  final String G__typename;
  @override
  final BuiltList<
      Gget_questionnaireData_fetchHealthQuiz_start_information_cards> cards;
  @override
  final Gget_questionnaireData_fetchHealthQuiz_start_information_mention?
      mention;

  factory _$Gget_questionnaireData_fetchHealthQuiz_start_information(
          [void Function(
                  Gget_questionnaireData_fetchHealthQuiz_start_informationBuilder)?
              updates]) =>
      (new Gget_questionnaireData_fetchHealthQuiz_start_informationBuilder()
            ..update(updates))
          ._build();

  _$Gget_questionnaireData_fetchHealthQuiz_start_information._(
      {required this.G__typename, required this.cards, this.mention})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_questionnaireData_fetchHealthQuiz_start_information',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(cards,
        r'Gget_questionnaireData_fetchHealthQuiz_start_information', 'cards');
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_start_information rebuild(
          void Function(
                  Gget_questionnaireData_fetchHealthQuiz_start_informationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_questionnaireData_fetchHealthQuiz_start_informationBuilder toBuilder() =>
      new Gget_questionnaireData_fetchHealthQuiz_start_informationBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_questionnaireData_fetchHealthQuiz_start_information &&
        G__typename == other.G__typename &&
        cards == other.cards &&
        mention == other.mention;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, cards.hashCode);
    _$hash = $jc(_$hash, mention.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_questionnaireData_fetchHealthQuiz_start_information')
          ..add('G__typename', G__typename)
          ..add('cards', cards)
          ..add('mention', mention))
        .toString();
  }
}

class Gget_questionnaireData_fetchHealthQuiz_start_informationBuilder
    implements
        Builder<Gget_questionnaireData_fetchHealthQuiz_start_information,
            Gget_questionnaireData_fetchHealthQuiz_start_informationBuilder> {
  _$Gget_questionnaireData_fetchHealthQuiz_start_information? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_questionnaireData_fetchHealthQuiz_start_information_cards>?
      _cards;
  ListBuilder<Gget_questionnaireData_fetchHealthQuiz_start_information_cards>
      get cards => _$this._cards ??= new ListBuilder<
          Gget_questionnaireData_fetchHealthQuiz_start_information_cards>();
  set cards(
          ListBuilder<
                  Gget_questionnaireData_fetchHealthQuiz_start_information_cards>?
              cards) =>
      _$this._cards = cards;

  Gget_questionnaireData_fetchHealthQuiz_start_information_mentionBuilder?
      _mention;
  Gget_questionnaireData_fetchHealthQuiz_start_information_mentionBuilder
      get mention => _$this._mention ??=
          new Gget_questionnaireData_fetchHealthQuiz_start_information_mentionBuilder();
  set mention(
          Gget_questionnaireData_fetchHealthQuiz_start_information_mentionBuilder?
              mention) =>
      _$this._mention = mention;

  Gget_questionnaireData_fetchHealthQuiz_start_informationBuilder() {
    Gget_questionnaireData_fetchHealthQuiz_start_information._initializeBuilder(
        this);
  }

  Gget_questionnaireData_fetchHealthQuiz_start_informationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _cards = $v.cards.toBuilder();
      _mention = $v.mention?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_questionnaireData_fetchHealthQuiz_start_information other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_questionnaireData_fetchHealthQuiz_start_information;
  }

  @override
  void update(
      void Function(
              Gget_questionnaireData_fetchHealthQuiz_start_informationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_start_information build() => _build();

  _$Gget_questionnaireData_fetchHealthQuiz_start_information _build() {
    _$Gget_questionnaireData_fetchHealthQuiz_start_information _$result;
    try {
      _$result = _$v ??
          new _$Gget_questionnaireData_fetchHealthQuiz_start_information._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_questionnaireData_fetchHealthQuiz_start_information',
                  'G__typename'),
              cards: cards.build(),
              mention: _mention?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cards';
        cards.build();
        _$failedField = 'mention';
        _mention?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_questionnaireData_fetchHealthQuiz_start_information',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_start_information_cards
    extends Gget_questionnaireData_fetchHealthQuiz_start_information_cards {
  @override
  final String G__typename;
  @override
  final String image;
  @override
  final String text;

  factory _$Gget_questionnaireData_fetchHealthQuiz_start_information_cards(
          [void Function(
                  Gget_questionnaireData_fetchHealthQuiz_start_information_cardsBuilder)?
              updates]) =>
      (new Gget_questionnaireData_fetchHealthQuiz_start_information_cardsBuilder()
            ..update(updates))
          ._build();

  _$Gget_questionnaireData_fetchHealthQuiz_start_information_cards._(
      {required this.G__typename, required this.image, required this.text})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_questionnaireData_fetchHealthQuiz_start_information_cards',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        image,
        r'Gget_questionnaireData_fetchHealthQuiz_start_information_cards',
        'image');
    BuiltValueNullFieldError.checkNotNull(
        text,
        r'Gget_questionnaireData_fetchHealthQuiz_start_information_cards',
        'text');
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_start_information_cards rebuild(
          void Function(
                  Gget_questionnaireData_fetchHealthQuiz_start_information_cardsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_questionnaireData_fetchHealthQuiz_start_information_cardsBuilder
      toBuilder() =>
          new Gget_questionnaireData_fetchHealthQuiz_start_information_cardsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_questionnaireData_fetchHealthQuiz_start_information_cards &&
        G__typename == other.G__typename &&
        image == other.image &&
        text == other.text;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_questionnaireData_fetchHealthQuiz_start_information_cards')
          ..add('G__typename', G__typename)
          ..add('image', image)
          ..add('text', text))
        .toString();
  }
}

class Gget_questionnaireData_fetchHealthQuiz_start_information_cardsBuilder
    implements
        Builder<Gget_questionnaireData_fetchHealthQuiz_start_information_cards,
            Gget_questionnaireData_fetchHealthQuiz_start_information_cardsBuilder> {
  _$Gget_questionnaireData_fetchHealthQuiz_start_information_cards? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  Gget_questionnaireData_fetchHealthQuiz_start_information_cardsBuilder() {
    Gget_questionnaireData_fetchHealthQuiz_start_information_cards
        ._initializeBuilder(this);
  }

  Gget_questionnaireData_fetchHealthQuiz_start_information_cardsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _image = $v.image;
      _text = $v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_questionnaireData_fetchHealthQuiz_start_information_cards other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_questionnaireData_fetchHealthQuiz_start_information_cards;
  }

  @override
  void update(
      void Function(
              Gget_questionnaireData_fetchHealthQuiz_start_information_cardsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_start_information_cards build() =>
      _build();

  _$Gget_questionnaireData_fetchHealthQuiz_start_information_cards _build() {
    final _$result = _$v ??
        new _$Gget_questionnaireData_fetchHealthQuiz_start_information_cards._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_questionnaireData_fetchHealthQuiz_start_information_cards',
                'G__typename'),
            image: BuiltValueNullFieldError.checkNotNull(
                image,
                r'Gget_questionnaireData_fetchHealthQuiz_start_information_cards',
                'image'),
            text: BuiltValueNullFieldError.checkNotNull(
                text,
                r'Gget_questionnaireData_fetchHealthQuiz_start_information_cards',
                'text'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_start_information_mention
    extends Gget_questionnaireData_fetchHealthQuiz_start_information_mention {
  @override
  final String G__typename;
  @override
  final String text;

  factory _$Gget_questionnaireData_fetchHealthQuiz_start_information_mention(
          [void Function(
                  Gget_questionnaireData_fetchHealthQuiz_start_information_mentionBuilder)?
              updates]) =>
      (new Gget_questionnaireData_fetchHealthQuiz_start_information_mentionBuilder()
            ..update(updates))
          ._build();

  _$Gget_questionnaireData_fetchHealthQuiz_start_information_mention._(
      {required this.G__typename, required this.text})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_questionnaireData_fetchHealthQuiz_start_information_mention',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        text,
        r'Gget_questionnaireData_fetchHealthQuiz_start_information_mention',
        'text');
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_start_information_mention rebuild(
          void Function(
                  Gget_questionnaireData_fetchHealthQuiz_start_information_mentionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_questionnaireData_fetchHealthQuiz_start_information_mentionBuilder
      toBuilder() =>
          new Gget_questionnaireData_fetchHealthQuiz_start_information_mentionBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_questionnaireData_fetchHealthQuiz_start_information_mention &&
        G__typename == other.G__typename &&
        text == other.text;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_questionnaireData_fetchHealthQuiz_start_information_mention')
          ..add('G__typename', G__typename)
          ..add('text', text))
        .toString();
  }
}

class Gget_questionnaireData_fetchHealthQuiz_start_information_mentionBuilder
    implements
        Builder<
            Gget_questionnaireData_fetchHealthQuiz_start_information_mention,
            Gget_questionnaireData_fetchHealthQuiz_start_information_mentionBuilder> {
  _$Gget_questionnaireData_fetchHealthQuiz_start_information_mention? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  Gget_questionnaireData_fetchHealthQuiz_start_information_mentionBuilder() {
    Gget_questionnaireData_fetchHealthQuiz_start_information_mention
        ._initializeBuilder(this);
  }

  Gget_questionnaireData_fetchHealthQuiz_start_information_mentionBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _text = $v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_questionnaireData_fetchHealthQuiz_start_information_mention other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_questionnaireData_fetchHealthQuiz_start_information_mention;
  }

  @override
  void update(
      void Function(
              Gget_questionnaireData_fetchHealthQuiz_start_information_mentionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_start_information_mention build() =>
      _build();

  _$Gget_questionnaireData_fetchHealthQuiz_start_information_mention _build() {
    final _$result = _$v ??
        new _$Gget_questionnaireData_fetchHealthQuiz_start_information_mention
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_questionnaireData_fetchHealthQuiz_start_information_mention',
                'G__typename'),
            text: BuiltValueNullFieldError.checkNotNull(
                text,
                r'Gget_questionnaireData_fetchHealthQuiz_start_information_mention',
                'text'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_end
    extends Gget_questionnaireData_fetchHealthQuiz_end {
  @override
  final String G__typename;
  @override
  final Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment?
      medicalAppointment;

  factory _$Gget_questionnaireData_fetchHealthQuiz_end(
          [void Function(Gget_questionnaireData_fetchHealthQuiz_endBuilder)?
              updates]) =>
      (new Gget_questionnaireData_fetchHealthQuiz_endBuilder()..update(updates))
          ._build();

  _$Gget_questionnaireData_fetchHealthQuiz_end._(
      {required this.G__typename, this.medicalAppointment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_questionnaireData_fetchHealthQuiz_end', 'G__typename');
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_end rebuild(
          void Function(Gget_questionnaireData_fetchHealthQuiz_endBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_questionnaireData_fetchHealthQuiz_endBuilder toBuilder() =>
      new Gget_questionnaireData_fetchHealthQuiz_endBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_questionnaireData_fetchHealthQuiz_end &&
        G__typename == other.G__typename &&
        medicalAppointment == other.medicalAppointment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, medicalAppointment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_questionnaireData_fetchHealthQuiz_end')
          ..add('G__typename', G__typename)
          ..add('medicalAppointment', medicalAppointment))
        .toString();
  }
}

class Gget_questionnaireData_fetchHealthQuiz_endBuilder
    implements
        Builder<Gget_questionnaireData_fetchHealthQuiz_end,
            Gget_questionnaireData_fetchHealthQuiz_endBuilder> {
  _$Gget_questionnaireData_fetchHealthQuiz_end? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointmentBuilder?
      _medicalAppointment;
  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointmentBuilder
      get medicalAppointment => _$this._medicalAppointment ??=
          new Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointmentBuilder();
  set medicalAppointment(
          Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointmentBuilder?
              medicalAppointment) =>
      _$this._medicalAppointment = medicalAppointment;

  Gget_questionnaireData_fetchHealthQuiz_endBuilder() {
    Gget_questionnaireData_fetchHealthQuiz_end._initializeBuilder(this);
  }

  Gget_questionnaireData_fetchHealthQuiz_endBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _medicalAppointment = $v.medicalAppointment?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_questionnaireData_fetchHealthQuiz_end other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_questionnaireData_fetchHealthQuiz_end;
  }

  @override
  void update(
      void Function(Gget_questionnaireData_fetchHealthQuiz_endBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_end build() => _build();

  _$Gget_questionnaireData_fetchHealthQuiz_end _build() {
    _$Gget_questionnaireData_fetchHealthQuiz_end _$result;
    try {
      _$result = _$v ??
          new _$Gget_questionnaireData_fetchHealthQuiz_end._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_questionnaireData_fetchHealthQuiz_end', 'G__typename'),
              medicalAppointment: _medicalAppointment?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'medicalAppointment';
        _medicalAppointment?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_questionnaireData_fetchHealthQuiz_end',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment
    extends Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment {
  @override
  final String G__typename;
  @override
  final Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card card;

  factory _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment(
          [void Function(
                  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointmentBuilder)?
              updates]) =>
      (new Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointmentBuilder()
            ..update(updates))
          ._build();

  _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment._(
      {required this.G__typename, required this.card})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        card,
        r'Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment',
        'card');
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment rebuild(
          void Function(
                  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointmentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointmentBuilder
      toBuilder() =>
          new Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointmentBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment &&
        G__typename == other.G__typename &&
        card == other.card;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, card.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment')
          ..add('G__typename', G__typename)
          ..add('card', card))
        .toString();
  }
}

class Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointmentBuilder
    implements
        Builder<Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment,
            Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointmentBuilder> {
  _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_cardBuilder?
      _card;
  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_cardBuilder
      get card => _$this._card ??=
          new Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_cardBuilder();
  set card(
          Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_cardBuilder?
              card) =>
      _$this._card = card;

  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointmentBuilder() {
    Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment
        ._initializeBuilder(this);
  }

  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointmentBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _card = $v.card.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment;
  }

  @override
  void update(
      void Function(
              Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointmentBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment build() =>
      _build();

  _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment _build() {
    _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment _$result;
    try {
      _$result = _$v ??
          new _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment',
                  'G__typename'),
              card: card.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'card';
        card.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card
    extends Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card {
  @override
  final String G__typename;
  @override
  final BuiltList<String> description;
  @override
  final Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link?
      link;
  @override
  final String titleButton;

  factory _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card(
          [void Function(
                  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_cardBuilder)?
              updates]) =>
      (new Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_cardBuilder()
            ..update(updates))
          ._build();

  _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card._(
      {required this.G__typename,
      required this.description,
      this.link,
      required this.titleButton})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        description,
        r'Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card',
        'description');
    BuiltValueNullFieldError.checkNotNull(
        titleButton,
        r'Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card',
        'titleButton');
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card rebuild(
          void Function(
                  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_cardBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_cardBuilder
      toBuilder() =>
          new Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_cardBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card &&
        G__typename == other.G__typename &&
        description == other.description &&
        link == other.link &&
        titleButton == other.titleButton;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, link.hashCode);
    _$hash = $jc(_$hash, titleButton.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card')
          ..add('G__typename', G__typename)
          ..add('description', description)
          ..add('link', link)
          ..add('titleButton', titleButton))
        .toString();
  }
}

class Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_cardBuilder
    implements
        Builder<
            Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card,
            Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_cardBuilder> {
  _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<String>? _description;
  ListBuilder<String> get description =>
      _$this._description ??= new ListBuilder<String>();
  set description(ListBuilder<String>? description) =>
      _$this._description = description;

  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_linkBuilder?
      _link;
  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_linkBuilder
      get link => _$this._link ??=
          new Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_linkBuilder();
  set link(
          Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_linkBuilder?
              link) =>
      _$this._link = link;

  String? _titleButton;
  String? get titleButton => _$this._titleButton;
  set titleButton(String? titleButton) => _$this._titleButton = titleButton;

  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_cardBuilder() {
    Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card
        ._initializeBuilder(this);
  }

  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_cardBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _description = $v.description.toBuilder();
      _link = $v.link?.toBuilder();
      _titleButton = $v.titleButton;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card;
  }

  @override
  void update(
      void Function(
              Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_cardBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card build() =>
      _build();

  _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card
      _build() {
    _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card',
                  'G__typename'),
              description: description.build(),
              link: _link?.build(),
              titleButton: BuiltValueNullFieldError.checkNotNull(
                  titleButton,
                  r'Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card',
                  'titleButton'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'description';
        description.build();
        _$failedField = 'link';
        _link?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link
    extends Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link {
  @override
  final String G__typename;
  @override
  final String text;
  @override
  final String href;

  factory _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link(
          [void Function(
                  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_linkBuilder)?
              updates]) =>
      (new Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_linkBuilder()
            ..update(updates))
          ._build();

  _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link._(
      {required this.G__typename, required this.text, required this.href})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        text,
        r'Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link',
        'text');
    BuiltValueNullFieldError.checkNotNull(
        href,
        r'Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link',
        'href');
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link rebuild(
          void Function(
                  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_linkBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_linkBuilder
      toBuilder() =>
          new Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_linkBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link &&
        G__typename == other.G__typename &&
        text == other.text &&
        href == other.href;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, href.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link')
          ..add('G__typename', G__typename)
          ..add('text', text)
          ..add('href', href))
        .toString();
  }
}

class Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_linkBuilder
    implements
        Builder<
            Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link,
            Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_linkBuilder> {
  _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _href;
  String? get href => _$this._href;
  set href(String? href) => _$this._href = href;

  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_linkBuilder() {
    Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link
        ._initializeBuilder(this);
  }

  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_linkBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _text = $v.text;
      _href = $v.href;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link;
  }

  @override
  void update(
      void Function(
              Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_linkBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link
      build() => _build();

  _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link
      _build() {
    final _$result = _$v ??
        new _$Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link',
                'G__typename'),
            text: BuiltValueNullFieldError.checkNotNull(
                text,
                r'Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link',
                'text'),
            href: BuiltValueNullFieldError.checkNotNull(
                href,
                r'Gget_questionnaireData_fetchHealthQuiz_end_medicalAppointment_card_link',
                'href'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_items
    extends Gget_questionnaireData_fetchHealthQuiz_items {
  @override
  final String G__typename;
  @override
  final Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem
      questionGroupItem;

  factory _$Gget_questionnaireData_fetchHealthQuiz_items(
          [void Function(Gget_questionnaireData_fetchHealthQuiz_itemsBuilder)?
              updates]) =>
      (new Gget_questionnaireData_fetchHealthQuiz_itemsBuilder()
            ..update(updates))
          ._build();

  _$Gget_questionnaireData_fetchHealthQuiz_items._(
      {required this.G__typename, required this.questionGroupItem})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_questionnaireData_fetchHealthQuiz_items', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(questionGroupItem,
        r'Gget_questionnaireData_fetchHealthQuiz_items', 'questionGroupItem');
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_items rebuild(
          void Function(Gget_questionnaireData_fetchHealthQuiz_itemsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_questionnaireData_fetchHealthQuiz_itemsBuilder toBuilder() =>
      new Gget_questionnaireData_fetchHealthQuiz_itemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_questionnaireData_fetchHealthQuiz_items &&
        G__typename == other.G__typename &&
        questionGroupItem == other.questionGroupItem;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, questionGroupItem.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_questionnaireData_fetchHealthQuiz_items')
          ..add('G__typename', G__typename)
          ..add('questionGroupItem', questionGroupItem))
        .toString();
  }
}

class Gget_questionnaireData_fetchHealthQuiz_itemsBuilder
    implements
        Builder<Gget_questionnaireData_fetchHealthQuiz_items,
            Gget_questionnaireData_fetchHealthQuiz_itemsBuilder> {
  _$Gget_questionnaireData_fetchHealthQuiz_items? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItemBuilder?
      _questionGroupItem;
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItemBuilder
      get questionGroupItem => _$this._questionGroupItem ??=
          new Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItemBuilder();
  set questionGroupItem(
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItemBuilder?
              questionGroupItem) =>
      _$this._questionGroupItem = questionGroupItem;

  Gget_questionnaireData_fetchHealthQuiz_itemsBuilder() {
    Gget_questionnaireData_fetchHealthQuiz_items._initializeBuilder(this);
  }

  Gget_questionnaireData_fetchHealthQuiz_itemsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _questionGroupItem = $v.questionGroupItem.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_questionnaireData_fetchHealthQuiz_items other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_questionnaireData_fetchHealthQuiz_items;
  }

  @override
  void update(
      void Function(Gget_questionnaireData_fetchHealthQuiz_itemsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_items build() => _build();

  _$Gget_questionnaireData_fetchHealthQuiz_items _build() {
    _$Gget_questionnaireData_fetchHealthQuiz_items _$result;
    try {
      _$result = _$v ??
          new _$Gget_questionnaireData_fetchHealthQuiz_items._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_questionnaireData_fetchHealthQuiz_items',
                  'G__typename'),
              questionGroupItem: questionGroupItem.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'questionGroupItem';
        questionGroupItem.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_questionnaireData_fetchHealthQuiz_items',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem
    extends Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem {
  @override
  final String G__typename;
  @override
  final String title;
  @override
  final BuiltList<
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions>
      questions;
  @override
  final double? goToNext;
  @override
  final BuiltList<String>? goToNextOn;
  @override
  final double? goToPrevious;
  @override
  final BuiltList<String>? goToPreviousOn;

  factory _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem(
          [void Function(
                  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItemBuilder)?
              updates]) =>
      (new Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItemBuilder()
            ..update(updates))
          ._build();

  _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem._(
      {required this.G__typename,
      required this.title,
      required this.questions,
      this.goToNext,
      this.goToNextOn,
      this.goToPrevious,
      this.goToPreviousOn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        title,
        r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem',
        'title');
    BuiltValueNullFieldError.checkNotNull(
        questions,
        r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem',
        'questions');
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem rebuild(
          void Function(
                  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItemBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItemBuilder
      toBuilder() =>
          new Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItemBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem &&
        G__typename == other.G__typename &&
        title == other.title &&
        questions == other.questions &&
        goToNext == other.goToNext &&
        goToNextOn == other.goToNextOn &&
        goToPrevious == other.goToPrevious &&
        goToPreviousOn == other.goToPreviousOn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, questions.hashCode);
    _$hash = $jc(_$hash, goToNext.hashCode);
    _$hash = $jc(_$hash, goToNextOn.hashCode);
    _$hash = $jc(_$hash, goToPrevious.hashCode);
    _$hash = $jc(_$hash, goToPreviousOn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem')
          ..add('G__typename', G__typename)
          ..add('title', title)
          ..add('questions', questions)
          ..add('goToNext', goToNext)
          ..add('goToNextOn', goToNextOn)
          ..add('goToPrevious', goToPrevious)
          ..add('goToPreviousOn', goToPreviousOn))
        .toString();
  }
}

class Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItemBuilder
    implements
        Builder<Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem,
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItemBuilder> {
  _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ListBuilder<
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions>?
      _questions;
  ListBuilder<
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions>
      get questions => _$this._questions ??= new ListBuilder<
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions>();
  set questions(
          ListBuilder<
                  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions>?
              questions) =>
      _$this._questions = questions;

  double? _goToNext;
  double? get goToNext => _$this._goToNext;
  set goToNext(double? goToNext) => _$this._goToNext = goToNext;

  ListBuilder<String>? _goToNextOn;
  ListBuilder<String> get goToNextOn =>
      _$this._goToNextOn ??= new ListBuilder<String>();
  set goToNextOn(ListBuilder<String>? goToNextOn) =>
      _$this._goToNextOn = goToNextOn;

  double? _goToPrevious;
  double? get goToPrevious => _$this._goToPrevious;
  set goToPrevious(double? goToPrevious) => _$this._goToPrevious = goToPrevious;

  ListBuilder<String>? _goToPreviousOn;
  ListBuilder<String> get goToPreviousOn =>
      _$this._goToPreviousOn ??= new ListBuilder<String>();
  set goToPreviousOn(ListBuilder<String>? goToPreviousOn) =>
      _$this._goToPreviousOn = goToPreviousOn;

  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItemBuilder() {
    Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem
        ._initializeBuilder(this);
  }

  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItemBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _title = $v.title;
      _questions = $v.questions.toBuilder();
      _goToNext = $v.goToNext;
      _goToNextOn = $v.goToNextOn?.toBuilder();
      _goToPrevious = $v.goToPrevious;
      _goToPreviousOn = $v.goToPreviousOn?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem;
  }

  @override
  void update(
      void Function(
              Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItemBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem build() =>
      _build();

  _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem _build() {
    _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem _$result;
    try {
      _$result = _$v ??
          new _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem',
                  'G__typename'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title,
                  r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem',
                  'title'),
              questions: questions.build(),
              goToNext: goToNext,
              goToNextOn: _goToNextOn?.build(),
              goToPrevious: goToPrevious,
              goToPreviousOn: _goToPreviousOn?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'questions';
        questions.build();

        _$failedField = 'goToNextOn';
        _goToNextOn?.build();

        _$failedField = 'goToPreviousOn';
        _goToPreviousOn?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions
    extends Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions {
  @override
  final String G__typename;
  @override
  final String code;
  @override
  final Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion?
      rowQuestion;
  @override
  final Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion?
      textQuestion;
  @override
  final Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion?
      choiceQuestion;
  @override
  final bool required;
  @override
  final double? maxLength;
  @override
  final BuiltList<
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints>?
      constraints;

  factory _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions(
          [void Function(
                  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questionsBuilder)?
              updates]) =>
      (new Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questionsBuilder()
            ..update(updates))
          ._build();

  _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions._(
      {required this.G__typename,
      required this.code,
      this.rowQuestion,
      this.textQuestion,
      this.choiceQuestion,
      required this.required,
      this.maxLength,
      this.constraints})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        code,
        r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions',
        'code');
    BuiltValueNullFieldError.checkNotNull(
        required,
        r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions',
        'required');
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions rebuild(
          void Function(
                  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questionsBuilder
      toBuilder() =>
          new Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questionsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions &&
        G__typename == other.G__typename &&
        code == other.code &&
        rowQuestion == other.rowQuestion &&
        textQuestion == other.textQuestion &&
        choiceQuestion == other.choiceQuestion &&
        required == other.required &&
        maxLength == other.maxLength &&
        constraints == other.constraints;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, rowQuestion.hashCode);
    _$hash = $jc(_$hash, textQuestion.hashCode);
    _$hash = $jc(_$hash, choiceQuestion.hashCode);
    _$hash = $jc(_$hash, required.hashCode);
    _$hash = $jc(_$hash, maxLength.hashCode);
    _$hash = $jc(_$hash, constraints.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('rowQuestion', rowQuestion)
          ..add('textQuestion', textQuestion)
          ..add('choiceQuestion', choiceQuestion)
          ..add('required', required)
          ..add('maxLength', maxLength)
          ..add('constraints', constraints))
        .toString();
  }
}

class Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questionsBuilder
    implements
        Builder<
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions,
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questionsBuilder> {
  _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestionBuilder?
      _rowQuestion;
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestionBuilder
      get rowQuestion => _$this._rowQuestion ??=
          new Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestionBuilder();
  set rowQuestion(
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestionBuilder?
              rowQuestion) =>
      _$this._rowQuestion = rowQuestion;

  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestionBuilder?
      _textQuestion;
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestionBuilder
      get textQuestion => _$this._textQuestion ??=
          new Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestionBuilder();
  set textQuestion(
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestionBuilder?
              textQuestion) =>
      _$this._textQuestion = textQuestion;

  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestionBuilder?
      _choiceQuestion;
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestionBuilder
      get choiceQuestion => _$this._choiceQuestion ??=
          new Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestionBuilder();
  set choiceQuestion(
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestionBuilder?
              choiceQuestion) =>
      _$this._choiceQuestion = choiceQuestion;

  bool? _required;
  bool? get required => _$this._required;
  set required(bool? required) => _$this._required = required;

  double? _maxLength;
  double? get maxLength => _$this._maxLength;
  set maxLength(double? maxLength) => _$this._maxLength = maxLength;

  ListBuilder<
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints>?
      _constraints;
  ListBuilder<
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints>
      get constraints => _$this._constraints ??= new ListBuilder<
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints>();
  set constraints(
          ListBuilder<
                  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints>?
              constraints) =>
      _$this._constraints = constraints;

  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questionsBuilder() {
    Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions
        ._initializeBuilder(this);
  }

  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questionsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _code = $v.code;
      _rowQuestion = $v.rowQuestion?.toBuilder();
      _textQuestion = $v.textQuestion?.toBuilder();
      _choiceQuestion = $v.choiceQuestion?.toBuilder();
      _required = $v.required;
      _maxLength = $v.maxLength;
      _constraints = $v.constraints?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions;
  }

  @override
  void update(
      void Function(
              Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions
      build() => _build();

  _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions
      _build() {
    _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions',
                  'G__typename'),
              code: BuiltValueNullFieldError.checkNotNull(code,
                  r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions', 'code'),
              rowQuestion: _rowQuestion?.build(),
              textQuestion: _textQuestion?.build(),
              choiceQuestion: _choiceQuestion?.build(),
              required: BuiltValueNullFieldError.checkNotNull(
                  required,
                  r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions',
                  'required'),
              maxLength: maxLength,
              constraints: _constraints?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rowQuestion';
        _rowQuestion?.build();
        _$failedField = 'textQuestion';
        _textQuestion?.build();
        _$failedField = 'choiceQuestion';
        _choiceQuestion?.build();

        _$failedField = 'constraints';
        _constraints?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion
    extends Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion {
  @override
  final String G__typename;
  @override
  final String title;
  @override
  final String? description;

  factory _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion(
          [void Function(
                  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestionBuilder)?
              updates]) =>
      (new Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestionBuilder()
            ..update(updates))
          ._build();

  _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion._(
      {required this.G__typename, required this.title, this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        title,
        r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion',
        'title');
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion
      rebuild(
              void Function(
                      Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestionBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestionBuilder
      toBuilder() =>
          new Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestionBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion &&
        G__typename == other.G__typename &&
        title == other.title &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion')
          ..add('G__typename', G__typename)
          ..add('title', title)
          ..add('description', description))
        .toString();
  }
}

class Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestionBuilder
    implements
        Builder<
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion,
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestionBuilder> {
  _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestionBuilder() {
    Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion
        ._initializeBuilder(this);
  }

  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestionBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _title = $v.title;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion;
  }

  @override
  void update(
      void Function(
              Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion
      build() => _build();

  _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion
      _build() {
    final _$result = _$v ??
        new _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion',
                'G__typename'),
            title: BuiltValueNullFieldError.checkNotNull(
                title,
                r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_rowQuestion',
                'title'),
            description: description);
    replace(_$result);
    return _$result;
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion
    extends Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion {
  @override
  final String G__typename;
  @override
  final String title;

  factory _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion(
          [void Function(
                  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestionBuilder)?
              updates]) =>
      (new Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestionBuilder()
            ..update(updates))
          ._build();

  _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion._(
      {required this.G__typename, required this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        title,
        r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion',
        'title');
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion
      rebuild(
              void Function(
                      Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestionBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestionBuilder
      toBuilder() =>
          new Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestionBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion &&
        G__typename == other.G__typename &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion')
          ..add('G__typename', G__typename)
          ..add('title', title))
        .toString();
  }
}

class Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestionBuilder
    implements
        Builder<
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion,
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestionBuilder> {
  _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestionBuilder() {
    Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion
        ._initializeBuilder(this);
  }

  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestionBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion;
  }

  @override
  void update(
      void Function(
              Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion
      build() => _build();

  _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion
      _build() {
    final _$result = _$v ??
        new _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion',
                'G__typename'),
            title: BuiltValueNullFieldError.checkNotNull(
                title,
                r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_textQuestion',
                'title'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion
    extends Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion {
  @override
  final String G__typename;
  @override
  final String? title;
  @override
  final _i3.GChoiceQuestionType type;
  @override
  final BuiltList<
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options>
      options;

  factory _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion(
          [void Function(
                  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestionBuilder)?
              updates]) =>
      (new Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestionBuilder()
            ..update(updates))
          ._build();

  _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion._(
      {required this.G__typename,
      this.title,
      required this.type,
      required this.options})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        type,
        r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion',
        'type');
    BuiltValueNullFieldError.checkNotNull(
        options,
        r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion',
        'options');
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion
      rebuild(
              void Function(
                      Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestionBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestionBuilder
      toBuilder() =>
          new Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestionBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion &&
        G__typename == other.G__typename &&
        title == other.title &&
        type == other.type &&
        options == other.options;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion')
          ..add('G__typename', G__typename)
          ..add('title', title)
          ..add('type', type)
          ..add('options', options))
        .toString();
  }
}

class Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestionBuilder
    implements
        Builder<
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion,
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestionBuilder> {
  _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  _i3.GChoiceQuestionType? _type;
  _i3.GChoiceQuestionType? get type => _$this._type;
  set type(_i3.GChoiceQuestionType? type) => _$this._type = type;

  ListBuilder<
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options>?
      _options;
  ListBuilder<
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options>
      get options => _$this._options ??= new ListBuilder<
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options>();
  set options(
          ListBuilder<
                  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options>?
              options) =>
      _$this._options = options;

  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestionBuilder() {
    Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion
        ._initializeBuilder(this);
  }

  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestionBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _title = $v.title;
      _type = $v.type;
      _options = $v.options.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion;
  }

  @override
  void update(
      void Function(
              Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion
      build() => _build();

  _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion
      _build() {
    _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion',
                  'G__typename'),
              title: title,
              type: BuiltValueNullFieldError.checkNotNull(
                  type,
                  r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion',
                  'type'),
              options: options.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        options.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options
    extends Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options {
  @override
  final String G__typename;
  @override
  final String value;
  @override
  final String code;

  factory _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options(
          [void Function(
                  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_optionsBuilder)?
              updates]) =>
      (new Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_optionsBuilder()
            ..update(updates))
          ._build();

  _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options._(
      {required this.G__typename, required this.value, required this.code})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        value,
        r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options',
        'value');
    BuiltValueNullFieldError.checkNotNull(
        code,
        r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options',
        'code');
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options
      rebuild(
              void Function(
                      Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_optionsBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_optionsBuilder
      toBuilder() =>
          new Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_optionsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options &&
        G__typename == other.G__typename &&
        value == other.value &&
        code == other.code;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options')
          ..add('G__typename', G__typename)
          ..add('value', value)
          ..add('code', code))
        .toString();
  }
}

class Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_optionsBuilder
    implements
        Builder<
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options,
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_optionsBuilder> {
  _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_optionsBuilder() {
    Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options
        ._initializeBuilder(this);
  }

  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_optionsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _value = $v.value;
      _code = $v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options;
  }

  @override
  void update(
      void Function(
              Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_optionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options
      build() => _build();

  _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options
      _build() {
    final _$result = _$v ??
        new _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options',
                'G__typename'),
            value: BuiltValueNullFieldError.checkNotNull(
                value,
                r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options',
                'value'),
            code: BuiltValueNullFieldError.checkNotNull(
                code,
                r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_choiceQuestion_options',
                'code'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints
    extends Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints {
  @override
  final String G__typename;
  @override
  final String? regexp;
  @override
  final Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range?
      range;
  @override
  final String message;

  factory _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints(
          [void Function(
                  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraintsBuilder)?
              updates]) =>
      (new Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraintsBuilder()
            ..update(updates))
          ._build();

  _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints._(
      {required this.G__typename,
      this.regexp,
      this.range,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message,
        r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints',
        'message');
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints
      rebuild(
              void Function(
                      Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraintsBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraintsBuilder
      toBuilder() =>
          new Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraintsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints &&
        G__typename == other.G__typename &&
        regexp == other.regexp &&
        range == other.range &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, regexp.hashCode);
    _$hash = $jc(_$hash, range.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints')
          ..add('G__typename', G__typename)
          ..add('regexp', regexp)
          ..add('range', range)
          ..add('message', message))
        .toString();
  }
}

class Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraintsBuilder
    implements
        Builder<
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints,
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraintsBuilder> {
  _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _regexp;
  String? get regexp => _$this._regexp;
  set regexp(String? regexp) => _$this._regexp = regexp;

  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_rangeBuilder?
      _range;
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_rangeBuilder
      get range => _$this._range ??=
          new Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_rangeBuilder();
  set range(
          Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_rangeBuilder?
              range) =>
      _$this._range = range;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraintsBuilder() {
    Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints
        ._initializeBuilder(this);
  }

  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraintsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _regexp = $v.regexp;
      _range = $v.range?.toBuilder();
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints;
  }

  @override
  void update(
      void Function(
              Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraintsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints
      build() => _build();

  _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints
      _build() {
    _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints',
                  'G__typename'),
              regexp: regexp,
              range: _range?.build(),
              message: BuiltValueNullFieldError.checkNotNull(
                  message,
                  r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints',
                  'message'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'range';
        _range?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range
    extends Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range {
  @override
  final String G__typename;
  @override
  final double? min;
  @override
  final double? max;

  factory _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range(
          [void Function(
                  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_rangeBuilder)?
              updates]) =>
      (new Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_rangeBuilder()
            ..update(updates))
          ._build();

  _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range._(
      {required this.G__typename, this.min, this.max})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range',
        'G__typename');
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range
      rebuild(
              void Function(
                      Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_rangeBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_rangeBuilder
      toBuilder() =>
          new Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_rangeBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range &&
        G__typename == other.G__typename &&
        min == other.min &&
        max == other.max;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, min.hashCode);
    _$hash = $jc(_$hash, max.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range')
          ..add('G__typename', G__typename)
          ..add('min', min)
          ..add('max', max))
        .toString();
  }
}

class Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_rangeBuilder
    implements
        Builder<
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range,
            Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_rangeBuilder> {
  _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _min;
  double? get min => _$this._min;
  set min(double? min) => _$this._min = min;

  double? _max;
  double? get max => _$this._max;
  set max(double? max) => _$this._max = max;

  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_rangeBuilder() {
    Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range
        ._initializeBuilder(this);
  }

  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_rangeBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _min = $v.min;
      _max = $v.max;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range;
  }

  @override
  void update(
      void Function(
              Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_rangeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range
      build() => _build();

  _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range
      _build() {
    final _$result = _$v ??
        new _$Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_questionnaireData_fetchHealthQuiz_items_questionGroupItem_questions_constraints_range',
                'G__typename'),
            min: min,
            max: max);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
