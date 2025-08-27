// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_questionnaire_ages_cles.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GstartQuestionnaireData> _$gstartQuestionnaireDataSerializer =
    new _$GstartQuestionnaireDataSerializer();
Serializer<GstartQuestionnaireData_start>
    _$gstartQuestionnaireDataStartSerializer =
    new _$GstartQuestionnaireData_startSerializer();
Serializer<GstartQuestionnaireData_start_information>
    _$gstartQuestionnaireDataStartInformationSerializer =
    new _$GstartQuestionnaireData_start_informationSerializer();
Serializer<GstartQuestionnaireData_start_information_cards>
    _$gstartQuestionnaireDataStartInformationCardsSerializer =
    new _$GstartQuestionnaireData_start_information_cardsSerializer();
Serializer<GstartQuestionnaireData_start_information_mention>
    _$gstartQuestionnaireDataStartInformationMentionSerializer =
    new _$GstartQuestionnaireData_start_information_mentionSerializer();
Serializer<GendQuestionnaireData> _$gendQuestionnaireDataSerializer =
    new _$GendQuestionnaireDataSerializer();
Serializer<GendQuestionnaireData_end> _$gendQuestionnaireDataEndSerializer =
    new _$GendQuestionnaireData_endSerializer();
Serializer<GendQuestionnaireData_end_medicalAppointment>
    _$gendQuestionnaireDataEndMedicalAppointmentSerializer =
    new _$GendQuestionnaireData_end_medicalAppointmentSerializer();
Serializer<GendQuestionnaireData_end_medicalAppointment_card>
    _$gendQuestionnaireDataEndMedicalAppointmentCardSerializer =
    new _$GendQuestionnaireData_end_medicalAppointment_cardSerializer();
Serializer<GendQuestionnaireData_end_medicalAppointment_card_link>
    _$gendQuestionnaireDataEndMedicalAppointmentCardLinkSerializer =
    new _$GendQuestionnaireData_end_medicalAppointment_card_linkSerializer();
Serializer<GquestionData> _$gquestionDataSerializer =
    new _$GquestionDataSerializer();
Serializer<GquestionData_rowQuestion> _$gquestionDataRowQuestionSerializer =
    new _$GquestionData_rowQuestionSerializer();
Serializer<GquestionData_textQuestion> _$gquestionDataTextQuestionSerializer =
    new _$GquestionData_textQuestionSerializer();
Serializer<GquestionData_choiceQuestion>
    _$gquestionDataChoiceQuestionSerializer =
    new _$GquestionData_choiceQuestionSerializer();
Serializer<GquestionData_choiceQuestion_options>
    _$gquestionDataChoiceQuestionOptionsSerializer =
    new _$GquestionData_choiceQuestion_optionsSerializer();
Serializer<GquestionData_constraints> _$gquestionDataConstraintsSerializer =
    new _$GquestionData_constraintsSerializer();
Serializer<GquestionData_constraints_range>
    _$gquestionDataConstraintsRangeSerializer =
    new _$GquestionData_constraints_rangeSerializer();
Serializer<GchoiceQuestionData> _$gchoiceQuestionDataSerializer =
    new _$GchoiceQuestionDataSerializer();
Serializer<GchoiceQuestionData_options> _$gchoiceQuestionDataOptionsSerializer =
    new _$GchoiceQuestionData_optionsSerializer();
Serializer<GconstraintsQuestionData> _$gconstraintsQuestionDataSerializer =
    new _$GconstraintsQuestionDataSerializer();
Serializer<GconstraintsQuestionData_range>
    _$gconstraintsQuestionDataRangeSerializer =
    new _$GconstraintsQuestionData_rangeSerializer();

class _$GstartQuestionnaireDataSerializer
    implements StructuredSerializer<GstartQuestionnaireData> {
  @override
  final Iterable<Type> types = const [
    GstartQuestionnaireData,
    _$GstartQuestionnaireData
  ];
  @override
  final String wireName = 'GstartQuestionnaireData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GstartQuestionnaireData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'start',
      serializers.serialize(object.start,
          specifiedType: const FullType(GstartQuestionnaireData_start)),
    ];

    return result;
  }

  @override
  GstartQuestionnaireData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GstartQuestionnaireDataBuilder();

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
                  specifiedType: const FullType(GstartQuestionnaireData_start))!
              as GstartQuestionnaireData_start);
          break;
      }
    }

    return result.build();
  }
}

class _$GstartQuestionnaireData_startSerializer
    implements StructuredSerializer<GstartQuestionnaireData_start> {
  @override
  final Iterable<Type> types = const [
    GstartQuestionnaireData_start,
    _$GstartQuestionnaireData_start
  ];
  @override
  final String wireName = 'GstartQuestionnaireData_start';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GstartQuestionnaireData_start object,
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
            specifiedType:
                const FullType(GstartQuestionnaireData_start_information)));
    }
    return result;
  }

  @override
  GstartQuestionnaireData_start deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GstartQuestionnaireData_startBuilder();

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
                      GstartQuestionnaireData_start_information))!
              as GstartQuestionnaireData_start_information);
          break;
      }
    }

    return result.build();
  }
}

class _$GstartQuestionnaireData_start_informationSerializer
    implements StructuredSerializer<GstartQuestionnaireData_start_information> {
  @override
  final Iterable<Type> types = const [
    GstartQuestionnaireData_start_information,
    _$GstartQuestionnaireData_start_information
  ];
  @override
  final String wireName = 'GstartQuestionnaireData_start_information';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GstartQuestionnaireData_start_information object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'cards',
      serializers.serialize(object.cards,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GstartQuestionnaireData_start_information_cards)
          ])),
    ];
    Object? value;
    value = object.mention;
    if (value != null) {
      result
        ..add('mention')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GstartQuestionnaireData_start_information_mention)));
    }
    return result;
  }

  @override
  GstartQuestionnaireData_start_information deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GstartQuestionnaireData_start_informationBuilder();

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
                const FullType(GstartQuestionnaireData_start_information_cards)
              ]))! as BuiltList<Object?>);
          break;
        case 'mention':
          result.mention.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GstartQuestionnaireData_start_information_mention))!
              as GstartQuestionnaireData_start_information_mention);
          break;
      }
    }

    return result.build();
  }
}

class _$GstartQuestionnaireData_start_information_cardsSerializer
    implements
        StructuredSerializer<GstartQuestionnaireData_start_information_cards> {
  @override
  final Iterable<Type> types = const [
    GstartQuestionnaireData_start_information_cards,
    _$GstartQuestionnaireData_start_information_cards
  ];
  @override
  final String wireName = 'GstartQuestionnaireData_start_information_cards';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GstartQuestionnaireData_start_information_cards object,
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
  GstartQuestionnaireData_start_information_cards deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GstartQuestionnaireData_start_information_cardsBuilder();

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

class _$GstartQuestionnaireData_start_information_mentionSerializer
    implements
        StructuredSerializer<
            GstartQuestionnaireData_start_information_mention> {
  @override
  final Iterable<Type> types = const [
    GstartQuestionnaireData_start_information_mention,
    _$GstartQuestionnaireData_start_information_mention
  ];
  @override
  final String wireName = 'GstartQuestionnaireData_start_information_mention';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GstartQuestionnaireData_start_information_mention object,
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
  GstartQuestionnaireData_start_information_mention deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GstartQuestionnaireData_start_information_mentionBuilder();

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

class _$GendQuestionnaireDataSerializer
    implements StructuredSerializer<GendQuestionnaireData> {
  @override
  final Iterable<Type> types = const [
    GendQuestionnaireData,
    _$GendQuestionnaireData
  ];
  @override
  final String wireName = 'GendQuestionnaireData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GendQuestionnaireData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'end',
      serializers.serialize(object.end,
          specifiedType: const FullType(GendQuestionnaireData_end)),
    ];

    return result;
  }

  @override
  GendQuestionnaireData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GendQuestionnaireDataBuilder();

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
        case 'end':
          result.end.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GendQuestionnaireData_end))!
              as GendQuestionnaireData_end);
          break;
      }
    }

    return result.build();
  }
}

class _$GendQuestionnaireData_endSerializer
    implements StructuredSerializer<GendQuestionnaireData_end> {
  @override
  final Iterable<Type> types = const [
    GendQuestionnaireData_end,
    _$GendQuestionnaireData_end
  ];
  @override
  final String wireName = 'GendQuestionnaireData_end';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GendQuestionnaireData_end object,
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
            specifiedType:
                const FullType(GendQuestionnaireData_end_medicalAppointment)));
    }
    return result;
  }

  @override
  GendQuestionnaireData_end deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GendQuestionnaireData_endBuilder();

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
                      GendQuestionnaireData_end_medicalAppointment))!
              as GendQuestionnaireData_end_medicalAppointment);
          break;
      }
    }

    return result.build();
  }
}

class _$GendQuestionnaireData_end_medicalAppointmentSerializer
    implements
        StructuredSerializer<GendQuestionnaireData_end_medicalAppointment> {
  @override
  final Iterable<Type> types = const [
    GendQuestionnaireData_end_medicalAppointment,
    _$GendQuestionnaireData_end_medicalAppointment
  ];
  @override
  final String wireName = 'GendQuestionnaireData_end_medicalAppointment';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GendQuestionnaireData_end_medicalAppointment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'card',
      serializers.serialize(object.card,
          specifiedType: const FullType(
              GendQuestionnaireData_end_medicalAppointment_card)),
    ];

    return result;
  }

  @override
  GendQuestionnaireData_end_medicalAppointment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GendQuestionnaireData_end_medicalAppointmentBuilder();

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
                      GendQuestionnaireData_end_medicalAppointment_card))!
              as GendQuestionnaireData_end_medicalAppointment_card);
          break;
      }
    }

    return result.build();
  }
}

class _$GendQuestionnaireData_end_medicalAppointment_cardSerializer
    implements
        StructuredSerializer<
            GendQuestionnaireData_end_medicalAppointment_card> {
  @override
  final Iterable<Type> types = const [
    GendQuestionnaireData_end_medicalAppointment_card,
    _$GendQuestionnaireData_end_medicalAppointment_card
  ];
  @override
  final String wireName = 'GendQuestionnaireData_end_medicalAppointment_card';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GendQuestionnaireData_end_medicalAppointment_card object,
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
                GendQuestionnaireData_end_medicalAppointment_card_link)));
    }
    return result;
  }

  @override
  GendQuestionnaireData_end_medicalAppointment_card deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GendQuestionnaireData_end_medicalAppointment_cardBuilder();

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
                      GendQuestionnaireData_end_medicalAppointment_card_link))!
              as GendQuestionnaireData_end_medicalAppointment_card_link);
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

class _$GendQuestionnaireData_end_medicalAppointment_card_linkSerializer
    implements
        StructuredSerializer<
            GendQuestionnaireData_end_medicalAppointment_card_link> {
  @override
  final Iterable<Type> types = const [
    GendQuestionnaireData_end_medicalAppointment_card_link,
    _$GendQuestionnaireData_end_medicalAppointment_card_link
  ];
  @override
  final String wireName =
      'GendQuestionnaireData_end_medicalAppointment_card_link';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GendQuestionnaireData_end_medicalAppointment_card_link object,
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
  GendQuestionnaireData_end_medicalAppointment_card_link deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GendQuestionnaireData_end_medicalAppointment_card_linkBuilder();

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

class _$GquestionDataSerializer implements StructuredSerializer<GquestionData> {
  @override
  final Iterable<Type> types = const [GquestionData, _$GquestionData];
  @override
  final String wireName = 'GquestionData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GquestionData object,
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
            specifiedType: const FullType(GquestionData_rowQuestion)));
    }
    value = object.textQuestion;
    if (value != null) {
      result
        ..add('textQuestion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GquestionData_textQuestion)));
    }
    value = object.choiceQuestion;
    if (value != null) {
      result
        ..add('choiceQuestion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GquestionData_choiceQuestion)));
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
            specifiedType: const FullType(
                BuiltList, const [const FullType(GquestionData_constraints)])));
    }
    return result;
  }

  @override
  GquestionData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GquestionDataBuilder();

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
                  specifiedType: const FullType(GquestionData_rowQuestion))!
              as GquestionData_rowQuestion);
          break;
        case 'textQuestion':
          result.textQuestion.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GquestionData_textQuestion))!
              as GquestionData_textQuestion);
          break;
        case 'choiceQuestion':
          result.choiceQuestion.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GquestionData_choiceQuestion))!
              as GquestionData_choiceQuestion);
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
                const FullType(GquestionData_constraints)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GquestionData_rowQuestionSerializer
    implements StructuredSerializer<GquestionData_rowQuestion> {
  @override
  final Iterable<Type> types = const [
    GquestionData_rowQuestion,
    _$GquestionData_rowQuestion
  ];
  @override
  final String wireName = 'GquestionData_rowQuestion';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GquestionData_rowQuestion object,
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
  GquestionData_rowQuestion deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GquestionData_rowQuestionBuilder();

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

class _$GquestionData_textQuestionSerializer
    implements StructuredSerializer<GquestionData_textQuestion> {
  @override
  final Iterable<Type> types = const [
    GquestionData_textQuestion,
    _$GquestionData_textQuestion
  ];
  @override
  final String wireName = 'GquestionData_textQuestion';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GquestionData_textQuestion object,
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
  GquestionData_textQuestion deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GquestionData_textQuestionBuilder();

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

class _$GquestionData_choiceQuestionSerializer
    implements StructuredSerializer<GquestionData_choiceQuestion> {
  @override
  final Iterable<Type> types = const [
    GquestionData_choiceQuestion,
    _$GquestionData_choiceQuestion
  ];
  @override
  final String wireName = 'GquestionData_choiceQuestion';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GquestionData_choiceQuestion object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(_i2.GChoiceQuestionType)),
      'options',
      serializers.serialize(object.options,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GquestionData_choiceQuestion_options)])),
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
  GquestionData_choiceQuestion deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GquestionData_choiceQuestionBuilder();

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
                  specifiedType: const FullType(_i2.GChoiceQuestionType))!
              as _i2.GChoiceQuestionType;
          break;
        case 'options':
          result.options.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GquestionData_choiceQuestion_options)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GquestionData_choiceQuestion_optionsSerializer
    implements StructuredSerializer<GquestionData_choiceQuestion_options> {
  @override
  final Iterable<Type> types = const [
    GquestionData_choiceQuestion_options,
    _$GquestionData_choiceQuestion_options
  ];
  @override
  final String wireName = 'GquestionData_choiceQuestion_options';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GquestionData_choiceQuestion_options object,
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
  GquestionData_choiceQuestion_options deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GquestionData_choiceQuestion_optionsBuilder();

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

class _$GquestionData_constraintsSerializer
    implements StructuredSerializer<GquestionData_constraints> {
  @override
  final Iterable<Type> types = const [
    GquestionData_constraints,
    _$GquestionData_constraints
  ];
  @override
  final String wireName = 'GquestionData_constraints';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GquestionData_constraints object,
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
            specifiedType: const FullType(GquestionData_constraints_range)));
    }
    return result;
  }

  @override
  GquestionData_constraints deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GquestionData_constraintsBuilder();

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
                  specifiedType:
                      const FullType(GquestionData_constraints_range))!
              as GquestionData_constraints_range);
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

class _$GquestionData_constraints_rangeSerializer
    implements StructuredSerializer<GquestionData_constraints_range> {
  @override
  final Iterable<Type> types = const [
    GquestionData_constraints_range,
    _$GquestionData_constraints_range
  ];
  @override
  final String wireName = 'GquestionData_constraints_range';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GquestionData_constraints_range object,
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
  GquestionData_constraints_range deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GquestionData_constraints_rangeBuilder();

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

class _$GchoiceQuestionDataSerializer
    implements StructuredSerializer<GchoiceQuestionData> {
  @override
  final Iterable<Type> types = const [
    GchoiceQuestionData,
    _$GchoiceQuestionData
  ];
  @override
  final String wireName = 'GchoiceQuestionData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GchoiceQuestionData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(_i2.GChoiceQuestionType)),
      'options',
      serializers.serialize(object.options,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GchoiceQuestionData_options)])),
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
  GchoiceQuestionData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GchoiceQuestionDataBuilder();

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
                  specifiedType: const FullType(_i2.GChoiceQuestionType))!
              as _i2.GChoiceQuestionType;
          break;
        case 'options':
          result.options.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GchoiceQuestionData_options)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GchoiceQuestionData_optionsSerializer
    implements StructuredSerializer<GchoiceQuestionData_options> {
  @override
  final Iterable<Type> types = const [
    GchoiceQuestionData_options,
    _$GchoiceQuestionData_options
  ];
  @override
  final String wireName = 'GchoiceQuestionData_options';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GchoiceQuestionData_options object,
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
  GchoiceQuestionData_options deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GchoiceQuestionData_optionsBuilder();

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

class _$GconstraintsQuestionDataSerializer
    implements StructuredSerializer<GconstraintsQuestionData> {
  @override
  final Iterable<Type> types = const [
    GconstraintsQuestionData,
    _$GconstraintsQuestionData
  ];
  @override
  final String wireName = 'GconstraintsQuestionData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GconstraintsQuestionData object,
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
            specifiedType: const FullType(GconstraintsQuestionData_range)));
    }
    return result;
  }

  @override
  GconstraintsQuestionData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GconstraintsQuestionDataBuilder();

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
                  specifiedType:
                      const FullType(GconstraintsQuestionData_range))!
              as GconstraintsQuestionData_range);
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

class _$GconstraintsQuestionData_rangeSerializer
    implements StructuredSerializer<GconstraintsQuestionData_range> {
  @override
  final Iterable<Type> types = const [
    GconstraintsQuestionData_range,
    _$GconstraintsQuestionData_range
  ];
  @override
  final String wireName = 'GconstraintsQuestionData_range';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GconstraintsQuestionData_range object,
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
  GconstraintsQuestionData_range deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GconstraintsQuestionData_rangeBuilder();

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

class _$GstartQuestionnaireData extends GstartQuestionnaireData {
  @override
  final String G__typename;
  @override
  final GstartQuestionnaireData_start start;

  factory _$GstartQuestionnaireData(
          [void Function(GstartQuestionnaireDataBuilder)? updates]) =>
      (new GstartQuestionnaireDataBuilder()..update(updates))._build();

  _$GstartQuestionnaireData._({required this.G__typename, required this.start})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GstartQuestionnaireData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        start, r'GstartQuestionnaireData', 'start');
  }

  @override
  GstartQuestionnaireData rebuild(
          void Function(GstartQuestionnaireDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GstartQuestionnaireDataBuilder toBuilder() =>
      new GstartQuestionnaireDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GstartQuestionnaireData &&
        G__typename == other.G__typename &&
        start == other.start;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, start.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GstartQuestionnaireData')
          ..add('G__typename', G__typename)
          ..add('start', start))
        .toString();
  }
}

class GstartQuestionnaireDataBuilder
    implements
        Builder<GstartQuestionnaireData, GstartQuestionnaireDataBuilder> {
  _$GstartQuestionnaireData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GstartQuestionnaireData_startBuilder? _start;
  GstartQuestionnaireData_startBuilder get start =>
      _$this._start ??= new GstartQuestionnaireData_startBuilder();
  set start(GstartQuestionnaireData_startBuilder? start) =>
      _$this._start = start;

  GstartQuestionnaireDataBuilder() {
    GstartQuestionnaireData._initializeBuilder(this);
  }

  GstartQuestionnaireDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _start = $v.start.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GstartQuestionnaireData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GstartQuestionnaireData;
  }

  @override
  void update(void Function(GstartQuestionnaireDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GstartQuestionnaireData build() => _build();

  _$GstartQuestionnaireData _build() {
    _$GstartQuestionnaireData _$result;
    try {
      _$result = _$v ??
          new _$GstartQuestionnaireData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GstartQuestionnaireData', 'G__typename'),
              start: start.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'start';
        start.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GstartQuestionnaireData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GstartQuestionnaireData_start extends GstartQuestionnaireData_start {
  @override
  final String G__typename;
  @override
  final String title;
  @override
  final BuiltList<String> description;
  @override
  final GstartQuestionnaireData_start_information? information;

  factory _$GstartQuestionnaireData_start(
          [void Function(GstartQuestionnaireData_startBuilder)? updates]) =>
      (new GstartQuestionnaireData_startBuilder()..update(updates))._build();

  _$GstartQuestionnaireData_start._(
      {required this.G__typename,
      required this.title,
      required this.description,
      this.information})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GstartQuestionnaireData_start', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        title, r'GstartQuestionnaireData_start', 'title');
    BuiltValueNullFieldError.checkNotNull(
        description, r'GstartQuestionnaireData_start', 'description');
  }

  @override
  GstartQuestionnaireData_start rebuild(
          void Function(GstartQuestionnaireData_startBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GstartQuestionnaireData_startBuilder toBuilder() =>
      new GstartQuestionnaireData_startBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GstartQuestionnaireData_start &&
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
    return (newBuiltValueToStringHelper(r'GstartQuestionnaireData_start')
          ..add('G__typename', G__typename)
          ..add('title', title)
          ..add('description', description)
          ..add('information', information))
        .toString();
  }
}

class GstartQuestionnaireData_startBuilder
    implements
        Builder<GstartQuestionnaireData_start,
            GstartQuestionnaireData_startBuilder> {
  _$GstartQuestionnaireData_start? _$v;

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

  GstartQuestionnaireData_start_informationBuilder? _information;
  GstartQuestionnaireData_start_informationBuilder get information =>
      _$this._information ??=
          new GstartQuestionnaireData_start_informationBuilder();
  set information(
          GstartQuestionnaireData_start_informationBuilder? information) =>
      _$this._information = information;

  GstartQuestionnaireData_startBuilder() {
    GstartQuestionnaireData_start._initializeBuilder(this);
  }

  GstartQuestionnaireData_startBuilder get _$this {
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
  void replace(GstartQuestionnaireData_start other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GstartQuestionnaireData_start;
  }

  @override
  void update(void Function(GstartQuestionnaireData_startBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GstartQuestionnaireData_start build() => _build();

  _$GstartQuestionnaireData_start _build() {
    _$GstartQuestionnaireData_start _$result;
    try {
      _$result = _$v ??
          new _$GstartQuestionnaireData_start._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GstartQuestionnaireData_start', 'G__typename'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'GstartQuestionnaireData_start', 'title'),
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
            r'GstartQuestionnaireData_start', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GstartQuestionnaireData_start_information
    extends GstartQuestionnaireData_start_information {
  @override
  final String G__typename;
  @override
  final BuiltList<GstartQuestionnaireData_start_information_cards> cards;
  @override
  final GstartQuestionnaireData_start_information_mention? mention;

  factory _$GstartQuestionnaireData_start_information(
          [void Function(GstartQuestionnaireData_start_informationBuilder)?
              updates]) =>
      (new GstartQuestionnaireData_start_informationBuilder()..update(updates))
          ._build();

  _$GstartQuestionnaireData_start_information._(
      {required this.G__typename, required this.cards, this.mention})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GstartQuestionnaireData_start_information', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        cards, r'GstartQuestionnaireData_start_information', 'cards');
  }

  @override
  GstartQuestionnaireData_start_information rebuild(
          void Function(GstartQuestionnaireData_start_informationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GstartQuestionnaireData_start_informationBuilder toBuilder() =>
      new GstartQuestionnaireData_start_informationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GstartQuestionnaireData_start_information &&
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
            r'GstartQuestionnaireData_start_information')
          ..add('G__typename', G__typename)
          ..add('cards', cards)
          ..add('mention', mention))
        .toString();
  }
}

class GstartQuestionnaireData_start_informationBuilder
    implements
        Builder<GstartQuestionnaireData_start_information,
            GstartQuestionnaireData_start_informationBuilder> {
  _$GstartQuestionnaireData_start_information? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GstartQuestionnaireData_start_information_cards>? _cards;
  ListBuilder<GstartQuestionnaireData_start_information_cards> get cards =>
      _$this._cards ??=
          new ListBuilder<GstartQuestionnaireData_start_information_cards>();
  set cards(
          ListBuilder<GstartQuestionnaireData_start_information_cards>?
              cards) =>
      _$this._cards = cards;

  GstartQuestionnaireData_start_information_mentionBuilder? _mention;
  GstartQuestionnaireData_start_information_mentionBuilder get mention =>
      _$this._mention ??=
          new GstartQuestionnaireData_start_information_mentionBuilder();
  set mention(
          GstartQuestionnaireData_start_information_mentionBuilder? mention) =>
      _$this._mention = mention;

  GstartQuestionnaireData_start_informationBuilder() {
    GstartQuestionnaireData_start_information._initializeBuilder(this);
  }

  GstartQuestionnaireData_start_informationBuilder get _$this {
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
  void replace(GstartQuestionnaireData_start_information other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GstartQuestionnaireData_start_information;
  }

  @override
  void update(
      void Function(GstartQuestionnaireData_start_informationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GstartQuestionnaireData_start_information build() => _build();

  _$GstartQuestionnaireData_start_information _build() {
    _$GstartQuestionnaireData_start_information _$result;
    try {
      _$result = _$v ??
          new _$GstartQuestionnaireData_start_information._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GstartQuestionnaireData_start_information', 'G__typename'),
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
            r'GstartQuestionnaireData_start_information',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GstartQuestionnaireData_start_information_cards
    extends GstartQuestionnaireData_start_information_cards {
  @override
  final String G__typename;
  @override
  final String image;
  @override
  final String text;

  factory _$GstartQuestionnaireData_start_information_cards(
          [void Function(
                  GstartQuestionnaireData_start_information_cardsBuilder)?
              updates]) =>
      (new GstartQuestionnaireData_start_information_cardsBuilder()
            ..update(updates))
          ._build();

  _$GstartQuestionnaireData_start_information_cards._(
      {required this.G__typename, required this.image, required this.text})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GstartQuestionnaireData_start_information_cards', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        image, r'GstartQuestionnaireData_start_information_cards', 'image');
    BuiltValueNullFieldError.checkNotNull(
        text, r'GstartQuestionnaireData_start_information_cards', 'text');
  }

  @override
  GstartQuestionnaireData_start_information_cards rebuild(
          void Function(GstartQuestionnaireData_start_information_cardsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GstartQuestionnaireData_start_information_cardsBuilder toBuilder() =>
      new GstartQuestionnaireData_start_information_cardsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GstartQuestionnaireData_start_information_cards &&
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
            r'GstartQuestionnaireData_start_information_cards')
          ..add('G__typename', G__typename)
          ..add('image', image)
          ..add('text', text))
        .toString();
  }
}

class GstartQuestionnaireData_start_information_cardsBuilder
    implements
        Builder<GstartQuestionnaireData_start_information_cards,
            GstartQuestionnaireData_start_information_cardsBuilder> {
  _$GstartQuestionnaireData_start_information_cards? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  GstartQuestionnaireData_start_information_cardsBuilder() {
    GstartQuestionnaireData_start_information_cards._initializeBuilder(this);
  }

  GstartQuestionnaireData_start_information_cardsBuilder get _$this {
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
  void replace(GstartQuestionnaireData_start_information_cards other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GstartQuestionnaireData_start_information_cards;
  }

  @override
  void update(
      void Function(GstartQuestionnaireData_start_information_cardsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GstartQuestionnaireData_start_information_cards build() => _build();

  _$GstartQuestionnaireData_start_information_cards _build() {
    final _$result = _$v ??
        new _$GstartQuestionnaireData_start_information_cards._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GstartQuestionnaireData_start_information_cards',
                'G__typename'),
            image: BuiltValueNullFieldError.checkNotNull(image,
                r'GstartQuestionnaireData_start_information_cards', 'image'),
            text: BuiltValueNullFieldError.checkNotNull(text,
                r'GstartQuestionnaireData_start_information_cards', 'text'));
    replace(_$result);
    return _$result;
  }
}

class _$GstartQuestionnaireData_start_information_mention
    extends GstartQuestionnaireData_start_information_mention {
  @override
  final String G__typename;
  @override
  final String text;

  factory _$GstartQuestionnaireData_start_information_mention(
          [void Function(
                  GstartQuestionnaireData_start_information_mentionBuilder)?
              updates]) =>
      (new GstartQuestionnaireData_start_information_mentionBuilder()
            ..update(updates))
          ._build();

  _$GstartQuestionnaireData_start_information_mention._(
      {required this.G__typename, required this.text})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GstartQuestionnaireData_start_information_mention', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        text, r'GstartQuestionnaireData_start_information_mention', 'text');
  }

  @override
  GstartQuestionnaireData_start_information_mention rebuild(
          void Function(
                  GstartQuestionnaireData_start_information_mentionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GstartQuestionnaireData_start_information_mentionBuilder toBuilder() =>
      new GstartQuestionnaireData_start_information_mentionBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GstartQuestionnaireData_start_information_mention &&
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
            r'GstartQuestionnaireData_start_information_mention')
          ..add('G__typename', G__typename)
          ..add('text', text))
        .toString();
  }
}

class GstartQuestionnaireData_start_information_mentionBuilder
    implements
        Builder<GstartQuestionnaireData_start_information_mention,
            GstartQuestionnaireData_start_information_mentionBuilder> {
  _$GstartQuestionnaireData_start_information_mention? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  GstartQuestionnaireData_start_information_mentionBuilder() {
    GstartQuestionnaireData_start_information_mention._initializeBuilder(this);
  }

  GstartQuestionnaireData_start_information_mentionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _text = $v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GstartQuestionnaireData_start_information_mention other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GstartQuestionnaireData_start_information_mention;
  }

  @override
  void update(
      void Function(GstartQuestionnaireData_start_information_mentionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GstartQuestionnaireData_start_information_mention build() => _build();

  _$GstartQuestionnaireData_start_information_mention _build() {
    final _$result = _$v ??
        new _$GstartQuestionnaireData_start_information_mention._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GstartQuestionnaireData_start_information_mention',
                'G__typename'),
            text: BuiltValueNullFieldError.checkNotNull(text,
                r'GstartQuestionnaireData_start_information_mention', 'text'));
    replace(_$result);
    return _$result;
  }
}

class _$GendQuestionnaireData extends GendQuestionnaireData {
  @override
  final String G__typename;
  @override
  final GendQuestionnaireData_end end;

  factory _$GendQuestionnaireData(
          [void Function(GendQuestionnaireDataBuilder)? updates]) =>
      (new GendQuestionnaireDataBuilder()..update(updates))._build();

  _$GendQuestionnaireData._({required this.G__typename, required this.end})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GendQuestionnaireData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(end, r'GendQuestionnaireData', 'end');
  }

  @override
  GendQuestionnaireData rebuild(
          void Function(GendQuestionnaireDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GendQuestionnaireDataBuilder toBuilder() =>
      new GendQuestionnaireDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GendQuestionnaireData &&
        G__typename == other.G__typename &&
        end == other.end;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, end.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GendQuestionnaireData')
          ..add('G__typename', G__typename)
          ..add('end', end))
        .toString();
  }
}

class GendQuestionnaireDataBuilder
    implements Builder<GendQuestionnaireData, GendQuestionnaireDataBuilder> {
  _$GendQuestionnaireData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GendQuestionnaireData_endBuilder? _end;
  GendQuestionnaireData_endBuilder get end =>
      _$this._end ??= new GendQuestionnaireData_endBuilder();
  set end(GendQuestionnaireData_endBuilder? end) => _$this._end = end;

  GendQuestionnaireDataBuilder() {
    GendQuestionnaireData._initializeBuilder(this);
  }

  GendQuestionnaireDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _end = $v.end.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GendQuestionnaireData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GendQuestionnaireData;
  }

  @override
  void update(void Function(GendQuestionnaireDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GendQuestionnaireData build() => _build();

  _$GendQuestionnaireData _build() {
    _$GendQuestionnaireData _$result;
    try {
      _$result = _$v ??
          new _$GendQuestionnaireData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GendQuestionnaireData', 'G__typename'),
              end: end.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'end';
        end.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GendQuestionnaireData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GendQuestionnaireData_end extends GendQuestionnaireData_end {
  @override
  final String G__typename;
  @override
  final GendQuestionnaireData_end_medicalAppointment? medicalAppointment;

  factory _$GendQuestionnaireData_end(
          [void Function(GendQuestionnaireData_endBuilder)? updates]) =>
      (new GendQuestionnaireData_endBuilder()..update(updates))._build();

  _$GendQuestionnaireData_end._(
      {required this.G__typename, this.medicalAppointment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GendQuestionnaireData_end', 'G__typename');
  }

  @override
  GendQuestionnaireData_end rebuild(
          void Function(GendQuestionnaireData_endBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GendQuestionnaireData_endBuilder toBuilder() =>
      new GendQuestionnaireData_endBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GendQuestionnaireData_end &&
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
    return (newBuiltValueToStringHelper(r'GendQuestionnaireData_end')
          ..add('G__typename', G__typename)
          ..add('medicalAppointment', medicalAppointment))
        .toString();
  }
}

class GendQuestionnaireData_endBuilder
    implements
        Builder<GendQuestionnaireData_end, GendQuestionnaireData_endBuilder> {
  _$GendQuestionnaireData_end? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GendQuestionnaireData_end_medicalAppointmentBuilder? _medicalAppointment;
  GendQuestionnaireData_end_medicalAppointmentBuilder get medicalAppointment =>
      _$this._medicalAppointment ??=
          new GendQuestionnaireData_end_medicalAppointmentBuilder();
  set medicalAppointment(
          GendQuestionnaireData_end_medicalAppointmentBuilder?
              medicalAppointment) =>
      _$this._medicalAppointment = medicalAppointment;

  GendQuestionnaireData_endBuilder() {
    GendQuestionnaireData_end._initializeBuilder(this);
  }

  GendQuestionnaireData_endBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _medicalAppointment = $v.medicalAppointment?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GendQuestionnaireData_end other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GendQuestionnaireData_end;
  }

  @override
  void update(void Function(GendQuestionnaireData_endBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GendQuestionnaireData_end build() => _build();

  _$GendQuestionnaireData_end _build() {
    _$GendQuestionnaireData_end _$result;
    try {
      _$result = _$v ??
          new _$GendQuestionnaireData_end._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GendQuestionnaireData_end', 'G__typename'),
              medicalAppointment: _medicalAppointment?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'medicalAppointment';
        _medicalAppointment?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GendQuestionnaireData_end', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GendQuestionnaireData_end_medicalAppointment
    extends GendQuestionnaireData_end_medicalAppointment {
  @override
  final String G__typename;
  @override
  final GendQuestionnaireData_end_medicalAppointment_card card;

  factory _$GendQuestionnaireData_end_medicalAppointment(
          [void Function(GendQuestionnaireData_end_medicalAppointmentBuilder)?
              updates]) =>
      (new GendQuestionnaireData_end_medicalAppointmentBuilder()
            ..update(updates))
          ._build();

  _$GendQuestionnaireData_end_medicalAppointment._(
      {required this.G__typename, required this.card})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GendQuestionnaireData_end_medicalAppointment', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        card, r'GendQuestionnaireData_end_medicalAppointment', 'card');
  }

  @override
  GendQuestionnaireData_end_medicalAppointment rebuild(
          void Function(GendQuestionnaireData_end_medicalAppointmentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GendQuestionnaireData_end_medicalAppointmentBuilder toBuilder() =>
      new GendQuestionnaireData_end_medicalAppointmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GendQuestionnaireData_end_medicalAppointment &&
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
            r'GendQuestionnaireData_end_medicalAppointment')
          ..add('G__typename', G__typename)
          ..add('card', card))
        .toString();
  }
}

class GendQuestionnaireData_end_medicalAppointmentBuilder
    implements
        Builder<GendQuestionnaireData_end_medicalAppointment,
            GendQuestionnaireData_end_medicalAppointmentBuilder> {
  _$GendQuestionnaireData_end_medicalAppointment? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GendQuestionnaireData_end_medicalAppointment_cardBuilder? _card;
  GendQuestionnaireData_end_medicalAppointment_cardBuilder get card =>
      _$this._card ??=
          new GendQuestionnaireData_end_medicalAppointment_cardBuilder();
  set card(GendQuestionnaireData_end_medicalAppointment_cardBuilder? card) =>
      _$this._card = card;

  GendQuestionnaireData_end_medicalAppointmentBuilder() {
    GendQuestionnaireData_end_medicalAppointment._initializeBuilder(this);
  }

  GendQuestionnaireData_end_medicalAppointmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _card = $v.card.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GendQuestionnaireData_end_medicalAppointment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GendQuestionnaireData_end_medicalAppointment;
  }

  @override
  void update(
      void Function(GendQuestionnaireData_end_medicalAppointmentBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GendQuestionnaireData_end_medicalAppointment build() => _build();

  _$GendQuestionnaireData_end_medicalAppointment _build() {
    _$GendQuestionnaireData_end_medicalAppointment _$result;
    try {
      _$result = _$v ??
          new _$GendQuestionnaireData_end_medicalAppointment._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GendQuestionnaireData_end_medicalAppointment',
                  'G__typename'),
              card: card.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'card';
        card.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GendQuestionnaireData_end_medicalAppointment',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GendQuestionnaireData_end_medicalAppointment_card
    extends GendQuestionnaireData_end_medicalAppointment_card {
  @override
  final String G__typename;
  @override
  final BuiltList<String> description;
  @override
  final GendQuestionnaireData_end_medicalAppointment_card_link? link;
  @override
  final String titleButton;

  factory _$GendQuestionnaireData_end_medicalAppointment_card(
          [void Function(
                  GendQuestionnaireData_end_medicalAppointment_cardBuilder)?
              updates]) =>
      (new GendQuestionnaireData_end_medicalAppointment_cardBuilder()
            ..update(updates))
          ._build();

  _$GendQuestionnaireData_end_medicalAppointment_card._(
      {required this.G__typename,
      required this.description,
      this.link,
      required this.titleButton})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GendQuestionnaireData_end_medicalAppointment_card', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(description,
        r'GendQuestionnaireData_end_medicalAppointment_card', 'description');
    BuiltValueNullFieldError.checkNotNull(titleButton,
        r'GendQuestionnaireData_end_medicalAppointment_card', 'titleButton');
  }

  @override
  GendQuestionnaireData_end_medicalAppointment_card rebuild(
          void Function(
                  GendQuestionnaireData_end_medicalAppointment_cardBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GendQuestionnaireData_end_medicalAppointment_cardBuilder toBuilder() =>
      new GendQuestionnaireData_end_medicalAppointment_cardBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GendQuestionnaireData_end_medicalAppointment_card &&
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
            r'GendQuestionnaireData_end_medicalAppointment_card')
          ..add('G__typename', G__typename)
          ..add('description', description)
          ..add('link', link)
          ..add('titleButton', titleButton))
        .toString();
  }
}

class GendQuestionnaireData_end_medicalAppointment_cardBuilder
    implements
        Builder<GendQuestionnaireData_end_medicalAppointment_card,
            GendQuestionnaireData_end_medicalAppointment_cardBuilder> {
  _$GendQuestionnaireData_end_medicalAppointment_card? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<String>? _description;
  ListBuilder<String> get description =>
      _$this._description ??= new ListBuilder<String>();
  set description(ListBuilder<String>? description) =>
      _$this._description = description;

  GendQuestionnaireData_end_medicalAppointment_card_linkBuilder? _link;
  GendQuestionnaireData_end_medicalAppointment_card_linkBuilder get link =>
      _$this._link ??=
          new GendQuestionnaireData_end_medicalAppointment_card_linkBuilder();
  set link(
          GendQuestionnaireData_end_medicalAppointment_card_linkBuilder?
              link) =>
      _$this._link = link;

  String? _titleButton;
  String? get titleButton => _$this._titleButton;
  set titleButton(String? titleButton) => _$this._titleButton = titleButton;

  GendQuestionnaireData_end_medicalAppointment_cardBuilder() {
    GendQuestionnaireData_end_medicalAppointment_card._initializeBuilder(this);
  }

  GendQuestionnaireData_end_medicalAppointment_cardBuilder get _$this {
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
  void replace(GendQuestionnaireData_end_medicalAppointment_card other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GendQuestionnaireData_end_medicalAppointment_card;
  }

  @override
  void update(
      void Function(GendQuestionnaireData_end_medicalAppointment_cardBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GendQuestionnaireData_end_medicalAppointment_card build() => _build();

  _$GendQuestionnaireData_end_medicalAppointment_card _build() {
    _$GendQuestionnaireData_end_medicalAppointment_card _$result;
    try {
      _$result = _$v ??
          new _$GendQuestionnaireData_end_medicalAppointment_card._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GendQuestionnaireData_end_medicalAppointment_card',
                  'G__typename'),
              description: description.build(),
              link: _link?.build(),
              titleButton: BuiltValueNullFieldError.checkNotNull(
                  titleButton,
                  r'GendQuestionnaireData_end_medicalAppointment_card',
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
            r'GendQuestionnaireData_end_medicalAppointment_card',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GendQuestionnaireData_end_medicalAppointment_card_link
    extends GendQuestionnaireData_end_medicalAppointment_card_link {
  @override
  final String G__typename;
  @override
  final String text;
  @override
  final String href;

  factory _$GendQuestionnaireData_end_medicalAppointment_card_link(
          [void Function(
                  GendQuestionnaireData_end_medicalAppointment_card_linkBuilder)?
              updates]) =>
      (new GendQuestionnaireData_end_medicalAppointment_card_linkBuilder()
            ..update(updates))
          ._build();

  _$GendQuestionnaireData_end_medicalAppointment_card_link._(
      {required this.G__typename, required this.text, required this.href})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GendQuestionnaireData_end_medicalAppointment_card_link',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(text,
        r'GendQuestionnaireData_end_medicalAppointment_card_link', 'text');
    BuiltValueNullFieldError.checkNotNull(href,
        r'GendQuestionnaireData_end_medicalAppointment_card_link', 'href');
  }

  @override
  GendQuestionnaireData_end_medicalAppointment_card_link rebuild(
          void Function(
                  GendQuestionnaireData_end_medicalAppointment_card_linkBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GendQuestionnaireData_end_medicalAppointment_card_linkBuilder toBuilder() =>
      new GendQuestionnaireData_end_medicalAppointment_card_linkBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GendQuestionnaireData_end_medicalAppointment_card_link &&
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
            r'GendQuestionnaireData_end_medicalAppointment_card_link')
          ..add('G__typename', G__typename)
          ..add('text', text)
          ..add('href', href))
        .toString();
  }
}

class GendQuestionnaireData_end_medicalAppointment_card_linkBuilder
    implements
        Builder<GendQuestionnaireData_end_medicalAppointment_card_link,
            GendQuestionnaireData_end_medicalAppointment_card_linkBuilder> {
  _$GendQuestionnaireData_end_medicalAppointment_card_link? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _href;
  String? get href => _$this._href;
  set href(String? href) => _$this._href = href;

  GendQuestionnaireData_end_medicalAppointment_card_linkBuilder() {
    GendQuestionnaireData_end_medicalAppointment_card_link._initializeBuilder(
        this);
  }

  GendQuestionnaireData_end_medicalAppointment_card_linkBuilder get _$this {
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
  void replace(GendQuestionnaireData_end_medicalAppointment_card_link other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GendQuestionnaireData_end_medicalAppointment_card_link;
  }

  @override
  void update(
      void Function(
              GendQuestionnaireData_end_medicalAppointment_card_linkBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GendQuestionnaireData_end_medicalAppointment_card_link build() => _build();

  _$GendQuestionnaireData_end_medicalAppointment_card_link _build() {
    final _$result = _$v ??
        new _$GendQuestionnaireData_end_medicalAppointment_card_link._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GendQuestionnaireData_end_medicalAppointment_card_link',
                'G__typename'),
            text: BuiltValueNullFieldError.checkNotNull(
                text,
                r'GendQuestionnaireData_end_medicalAppointment_card_link',
                'text'),
            href: BuiltValueNullFieldError.checkNotNull(
                href,
                r'GendQuestionnaireData_end_medicalAppointment_card_link',
                'href'));
    replace(_$result);
    return _$result;
  }
}

class _$GquestionData extends GquestionData {
  @override
  final String G__typename;
  @override
  final String code;
  @override
  final GquestionData_rowQuestion? rowQuestion;
  @override
  final GquestionData_textQuestion? textQuestion;
  @override
  final GquestionData_choiceQuestion? choiceQuestion;
  @override
  final bool required;
  @override
  final double? maxLength;
  @override
  final BuiltList<GquestionData_constraints>? constraints;

  factory _$GquestionData([void Function(GquestionDataBuilder)? updates]) =>
      (new GquestionDataBuilder()..update(updates))._build();

  _$GquestionData._(
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
        G__typename, r'GquestionData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(code, r'GquestionData', 'code');
    BuiltValueNullFieldError.checkNotNull(
        required, r'GquestionData', 'required');
  }

  @override
  GquestionData rebuild(void Function(GquestionDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GquestionDataBuilder toBuilder() => new GquestionDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GquestionData &&
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
    return (newBuiltValueToStringHelper(r'GquestionData')
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

class GquestionDataBuilder
    implements Builder<GquestionData, GquestionDataBuilder> {
  _$GquestionData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  GquestionData_rowQuestionBuilder? _rowQuestion;
  GquestionData_rowQuestionBuilder get rowQuestion =>
      _$this._rowQuestion ??= new GquestionData_rowQuestionBuilder();
  set rowQuestion(GquestionData_rowQuestionBuilder? rowQuestion) =>
      _$this._rowQuestion = rowQuestion;

  GquestionData_textQuestionBuilder? _textQuestion;
  GquestionData_textQuestionBuilder get textQuestion =>
      _$this._textQuestion ??= new GquestionData_textQuestionBuilder();
  set textQuestion(GquestionData_textQuestionBuilder? textQuestion) =>
      _$this._textQuestion = textQuestion;

  GquestionData_choiceQuestionBuilder? _choiceQuestion;
  GquestionData_choiceQuestionBuilder get choiceQuestion =>
      _$this._choiceQuestion ??= new GquestionData_choiceQuestionBuilder();
  set choiceQuestion(GquestionData_choiceQuestionBuilder? choiceQuestion) =>
      _$this._choiceQuestion = choiceQuestion;

  bool? _required;
  bool? get required => _$this._required;
  set required(bool? required) => _$this._required = required;

  double? _maxLength;
  double? get maxLength => _$this._maxLength;
  set maxLength(double? maxLength) => _$this._maxLength = maxLength;

  ListBuilder<GquestionData_constraints>? _constraints;
  ListBuilder<GquestionData_constraints> get constraints =>
      _$this._constraints ??= new ListBuilder<GquestionData_constraints>();
  set constraints(ListBuilder<GquestionData_constraints>? constraints) =>
      _$this._constraints = constraints;

  GquestionDataBuilder() {
    GquestionData._initializeBuilder(this);
  }

  GquestionDataBuilder get _$this {
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
  void replace(GquestionData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GquestionData;
  }

  @override
  void update(void Function(GquestionDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GquestionData build() => _build();

  _$GquestionData _build() {
    _$GquestionData _$result;
    try {
      _$result = _$v ??
          new _$GquestionData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GquestionData', 'G__typename'),
              code: BuiltValueNullFieldError.checkNotNull(
                  code, r'GquestionData', 'code'),
              rowQuestion: _rowQuestion?.build(),
              textQuestion: _textQuestion?.build(),
              choiceQuestion: _choiceQuestion?.build(),
              required: BuiltValueNullFieldError.checkNotNull(
                  required, r'GquestionData', 'required'),
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
            r'GquestionData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GquestionData_rowQuestion extends GquestionData_rowQuestion {
  @override
  final String G__typename;
  @override
  final String title;
  @override
  final String? description;

  factory _$GquestionData_rowQuestion(
          [void Function(GquestionData_rowQuestionBuilder)? updates]) =>
      (new GquestionData_rowQuestionBuilder()..update(updates))._build();

  _$GquestionData_rowQuestion._(
      {required this.G__typename, required this.title, this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GquestionData_rowQuestion', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        title, r'GquestionData_rowQuestion', 'title');
  }

  @override
  GquestionData_rowQuestion rebuild(
          void Function(GquestionData_rowQuestionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GquestionData_rowQuestionBuilder toBuilder() =>
      new GquestionData_rowQuestionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GquestionData_rowQuestion &&
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
    return (newBuiltValueToStringHelper(r'GquestionData_rowQuestion')
          ..add('G__typename', G__typename)
          ..add('title', title)
          ..add('description', description))
        .toString();
  }
}

class GquestionData_rowQuestionBuilder
    implements
        Builder<GquestionData_rowQuestion, GquestionData_rowQuestionBuilder> {
  _$GquestionData_rowQuestion? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GquestionData_rowQuestionBuilder() {
    GquestionData_rowQuestion._initializeBuilder(this);
  }

  GquestionData_rowQuestionBuilder get _$this {
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
  void replace(GquestionData_rowQuestion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GquestionData_rowQuestion;
  }

  @override
  void update(void Function(GquestionData_rowQuestionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GquestionData_rowQuestion build() => _build();

  _$GquestionData_rowQuestion _build() {
    final _$result = _$v ??
        new _$GquestionData_rowQuestion._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GquestionData_rowQuestion', 'G__typename'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'GquestionData_rowQuestion', 'title'),
            description: description);
    replace(_$result);
    return _$result;
  }
}

class _$GquestionData_textQuestion extends GquestionData_textQuestion {
  @override
  final String G__typename;
  @override
  final String title;

  factory _$GquestionData_textQuestion(
          [void Function(GquestionData_textQuestionBuilder)? updates]) =>
      (new GquestionData_textQuestionBuilder()..update(updates))._build();

  _$GquestionData_textQuestion._(
      {required this.G__typename, required this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GquestionData_textQuestion', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        title, r'GquestionData_textQuestion', 'title');
  }

  @override
  GquestionData_textQuestion rebuild(
          void Function(GquestionData_textQuestionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GquestionData_textQuestionBuilder toBuilder() =>
      new GquestionData_textQuestionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GquestionData_textQuestion &&
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
    return (newBuiltValueToStringHelper(r'GquestionData_textQuestion')
          ..add('G__typename', G__typename)
          ..add('title', title))
        .toString();
  }
}

class GquestionData_textQuestionBuilder
    implements
        Builder<GquestionData_textQuestion, GquestionData_textQuestionBuilder> {
  _$GquestionData_textQuestion? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  GquestionData_textQuestionBuilder() {
    GquestionData_textQuestion._initializeBuilder(this);
  }

  GquestionData_textQuestionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GquestionData_textQuestion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GquestionData_textQuestion;
  }

  @override
  void update(void Function(GquestionData_textQuestionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GquestionData_textQuestion build() => _build();

  _$GquestionData_textQuestion _build() {
    final _$result = _$v ??
        new _$GquestionData_textQuestion._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GquestionData_textQuestion', 'G__typename'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'GquestionData_textQuestion', 'title'));
    replace(_$result);
    return _$result;
  }
}

class _$GquestionData_choiceQuestion extends GquestionData_choiceQuestion {
  @override
  final String G__typename;
  @override
  final String? title;
  @override
  final _i2.GChoiceQuestionType type;
  @override
  final BuiltList<GquestionData_choiceQuestion_options> options;

  factory _$GquestionData_choiceQuestion(
          [void Function(GquestionData_choiceQuestionBuilder)? updates]) =>
      (new GquestionData_choiceQuestionBuilder()..update(updates))._build();

  _$GquestionData_choiceQuestion._(
      {required this.G__typename,
      this.title,
      required this.type,
      required this.options})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GquestionData_choiceQuestion', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        type, r'GquestionData_choiceQuestion', 'type');
    BuiltValueNullFieldError.checkNotNull(
        options, r'GquestionData_choiceQuestion', 'options');
  }

  @override
  GquestionData_choiceQuestion rebuild(
          void Function(GquestionData_choiceQuestionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GquestionData_choiceQuestionBuilder toBuilder() =>
      new GquestionData_choiceQuestionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GquestionData_choiceQuestion &&
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
    return (newBuiltValueToStringHelper(r'GquestionData_choiceQuestion')
          ..add('G__typename', G__typename)
          ..add('title', title)
          ..add('type', type)
          ..add('options', options))
        .toString();
  }
}

class GquestionData_choiceQuestionBuilder
    implements
        Builder<GquestionData_choiceQuestion,
            GquestionData_choiceQuestionBuilder> {
  _$GquestionData_choiceQuestion? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  _i2.GChoiceQuestionType? _type;
  _i2.GChoiceQuestionType? get type => _$this._type;
  set type(_i2.GChoiceQuestionType? type) => _$this._type = type;

  ListBuilder<GquestionData_choiceQuestion_options>? _options;
  ListBuilder<GquestionData_choiceQuestion_options> get options =>
      _$this._options ??=
          new ListBuilder<GquestionData_choiceQuestion_options>();
  set options(ListBuilder<GquestionData_choiceQuestion_options>? options) =>
      _$this._options = options;

  GquestionData_choiceQuestionBuilder() {
    GquestionData_choiceQuestion._initializeBuilder(this);
  }

  GquestionData_choiceQuestionBuilder get _$this {
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
  void replace(GquestionData_choiceQuestion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GquestionData_choiceQuestion;
  }

  @override
  void update(void Function(GquestionData_choiceQuestionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GquestionData_choiceQuestion build() => _build();

  _$GquestionData_choiceQuestion _build() {
    _$GquestionData_choiceQuestion _$result;
    try {
      _$result = _$v ??
          new _$GquestionData_choiceQuestion._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GquestionData_choiceQuestion', 'G__typename'),
              title: title,
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'GquestionData_choiceQuestion', 'type'),
              options: options.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        options.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GquestionData_choiceQuestion', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GquestionData_choiceQuestion_options
    extends GquestionData_choiceQuestion_options {
  @override
  final String G__typename;
  @override
  final String value;
  @override
  final String code;

  factory _$GquestionData_choiceQuestion_options(
          [void Function(GquestionData_choiceQuestion_optionsBuilder)?
              updates]) =>
      (new GquestionData_choiceQuestion_optionsBuilder()..update(updates))
          ._build();

  _$GquestionData_choiceQuestion_options._(
      {required this.G__typename, required this.value, required this.code})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GquestionData_choiceQuestion_options', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        value, r'GquestionData_choiceQuestion_options', 'value');
    BuiltValueNullFieldError.checkNotNull(
        code, r'GquestionData_choiceQuestion_options', 'code');
  }

  @override
  GquestionData_choiceQuestion_options rebuild(
          void Function(GquestionData_choiceQuestion_optionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GquestionData_choiceQuestion_optionsBuilder toBuilder() =>
      new GquestionData_choiceQuestion_optionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GquestionData_choiceQuestion_options &&
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
    return (newBuiltValueToStringHelper(r'GquestionData_choiceQuestion_options')
          ..add('G__typename', G__typename)
          ..add('value', value)
          ..add('code', code))
        .toString();
  }
}

class GquestionData_choiceQuestion_optionsBuilder
    implements
        Builder<GquestionData_choiceQuestion_options,
            GquestionData_choiceQuestion_optionsBuilder> {
  _$GquestionData_choiceQuestion_options? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  GquestionData_choiceQuestion_optionsBuilder() {
    GquestionData_choiceQuestion_options._initializeBuilder(this);
  }

  GquestionData_choiceQuestion_optionsBuilder get _$this {
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
  void replace(GquestionData_choiceQuestion_options other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GquestionData_choiceQuestion_options;
  }

  @override
  void update(
      void Function(GquestionData_choiceQuestion_optionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GquestionData_choiceQuestion_options build() => _build();

  _$GquestionData_choiceQuestion_options _build() {
    final _$result = _$v ??
        new _$GquestionData_choiceQuestion_options._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GquestionData_choiceQuestion_options', 'G__typename'),
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'GquestionData_choiceQuestion_options', 'value'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'GquestionData_choiceQuestion_options', 'code'));
    replace(_$result);
    return _$result;
  }
}

class _$GquestionData_constraints extends GquestionData_constraints {
  @override
  final String G__typename;
  @override
  final String? regexp;
  @override
  final GquestionData_constraints_range? range;
  @override
  final String message;

  factory _$GquestionData_constraints(
          [void Function(GquestionData_constraintsBuilder)? updates]) =>
      (new GquestionData_constraintsBuilder()..update(updates))._build();

  _$GquestionData_constraints._(
      {required this.G__typename,
      this.regexp,
      this.range,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GquestionData_constraints', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GquestionData_constraints', 'message');
  }

  @override
  GquestionData_constraints rebuild(
          void Function(GquestionData_constraintsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GquestionData_constraintsBuilder toBuilder() =>
      new GquestionData_constraintsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GquestionData_constraints &&
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
    return (newBuiltValueToStringHelper(r'GquestionData_constraints')
          ..add('G__typename', G__typename)
          ..add('regexp', regexp)
          ..add('range', range)
          ..add('message', message))
        .toString();
  }
}

class GquestionData_constraintsBuilder
    implements
        Builder<GquestionData_constraints, GquestionData_constraintsBuilder> {
  _$GquestionData_constraints? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _regexp;
  String? get regexp => _$this._regexp;
  set regexp(String? regexp) => _$this._regexp = regexp;

  GquestionData_constraints_rangeBuilder? _range;
  GquestionData_constraints_rangeBuilder get range =>
      _$this._range ??= new GquestionData_constraints_rangeBuilder();
  set range(GquestionData_constraints_rangeBuilder? range) =>
      _$this._range = range;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GquestionData_constraintsBuilder() {
    GquestionData_constraints._initializeBuilder(this);
  }

  GquestionData_constraintsBuilder get _$this {
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
  void replace(GquestionData_constraints other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GquestionData_constraints;
  }

  @override
  void update(void Function(GquestionData_constraintsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GquestionData_constraints build() => _build();

  _$GquestionData_constraints _build() {
    _$GquestionData_constraints _$result;
    try {
      _$result = _$v ??
          new _$GquestionData_constraints._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GquestionData_constraints', 'G__typename'),
              regexp: regexp,
              range: _range?.build(),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'GquestionData_constraints', 'message'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'range';
        _range?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GquestionData_constraints', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GquestionData_constraints_range
    extends GquestionData_constraints_range {
  @override
  final String G__typename;
  @override
  final double? min;
  @override
  final double? max;

  factory _$GquestionData_constraints_range(
          [void Function(GquestionData_constraints_rangeBuilder)? updates]) =>
      (new GquestionData_constraints_rangeBuilder()..update(updates))._build();

  _$GquestionData_constraints_range._(
      {required this.G__typename, this.min, this.max})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GquestionData_constraints_range', 'G__typename');
  }

  @override
  GquestionData_constraints_range rebuild(
          void Function(GquestionData_constraints_rangeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GquestionData_constraints_rangeBuilder toBuilder() =>
      new GquestionData_constraints_rangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GquestionData_constraints_range &&
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
    return (newBuiltValueToStringHelper(r'GquestionData_constraints_range')
          ..add('G__typename', G__typename)
          ..add('min', min)
          ..add('max', max))
        .toString();
  }
}

class GquestionData_constraints_rangeBuilder
    implements
        Builder<GquestionData_constraints_range,
            GquestionData_constraints_rangeBuilder> {
  _$GquestionData_constraints_range? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _min;
  double? get min => _$this._min;
  set min(double? min) => _$this._min = min;

  double? _max;
  double? get max => _$this._max;
  set max(double? max) => _$this._max = max;

  GquestionData_constraints_rangeBuilder() {
    GquestionData_constraints_range._initializeBuilder(this);
  }

  GquestionData_constraints_rangeBuilder get _$this {
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
  void replace(GquestionData_constraints_range other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GquestionData_constraints_range;
  }

  @override
  void update(void Function(GquestionData_constraints_rangeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GquestionData_constraints_range build() => _build();

  _$GquestionData_constraints_range _build() {
    final _$result = _$v ??
        new _$GquestionData_constraints_range._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GquestionData_constraints_range', 'G__typename'),
            min: min,
            max: max);
    replace(_$result);
    return _$result;
  }
}

class _$GchoiceQuestionData extends GchoiceQuestionData {
  @override
  final String G__typename;
  @override
  final String? title;
  @override
  final _i2.GChoiceQuestionType type;
  @override
  final BuiltList<GchoiceQuestionData_options> options;

  factory _$GchoiceQuestionData(
          [void Function(GchoiceQuestionDataBuilder)? updates]) =>
      (new GchoiceQuestionDataBuilder()..update(updates))._build();

  _$GchoiceQuestionData._(
      {required this.G__typename,
      this.title,
      required this.type,
      required this.options})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GchoiceQuestionData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(type, r'GchoiceQuestionData', 'type');
    BuiltValueNullFieldError.checkNotNull(
        options, r'GchoiceQuestionData', 'options');
  }

  @override
  GchoiceQuestionData rebuild(
          void Function(GchoiceQuestionDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GchoiceQuestionDataBuilder toBuilder() =>
      new GchoiceQuestionDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GchoiceQuestionData &&
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
    return (newBuiltValueToStringHelper(r'GchoiceQuestionData')
          ..add('G__typename', G__typename)
          ..add('title', title)
          ..add('type', type)
          ..add('options', options))
        .toString();
  }
}

class GchoiceQuestionDataBuilder
    implements Builder<GchoiceQuestionData, GchoiceQuestionDataBuilder> {
  _$GchoiceQuestionData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  _i2.GChoiceQuestionType? _type;
  _i2.GChoiceQuestionType? get type => _$this._type;
  set type(_i2.GChoiceQuestionType? type) => _$this._type = type;

  ListBuilder<GchoiceQuestionData_options>? _options;
  ListBuilder<GchoiceQuestionData_options> get options =>
      _$this._options ??= new ListBuilder<GchoiceQuestionData_options>();
  set options(ListBuilder<GchoiceQuestionData_options>? options) =>
      _$this._options = options;

  GchoiceQuestionDataBuilder() {
    GchoiceQuestionData._initializeBuilder(this);
  }

  GchoiceQuestionDataBuilder get _$this {
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
  void replace(GchoiceQuestionData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GchoiceQuestionData;
  }

  @override
  void update(void Function(GchoiceQuestionDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GchoiceQuestionData build() => _build();

  _$GchoiceQuestionData _build() {
    _$GchoiceQuestionData _$result;
    try {
      _$result = _$v ??
          new _$GchoiceQuestionData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GchoiceQuestionData', 'G__typename'),
              title: title,
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'GchoiceQuestionData', 'type'),
              options: options.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        options.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GchoiceQuestionData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GchoiceQuestionData_options extends GchoiceQuestionData_options {
  @override
  final String G__typename;
  @override
  final String value;
  @override
  final String code;

  factory _$GchoiceQuestionData_options(
          [void Function(GchoiceQuestionData_optionsBuilder)? updates]) =>
      (new GchoiceQuestionData_optionsBuilder()..update(updates))._build();

  _$GchoiceQuestionData_options._(
      {required this.G__typename, required this.value, required this.code})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GchoiceQuestionData_options', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        value, r'GchoiceQuestionData_options', 'value');
    BuiltValueNullFieldError.checkNotNull(
        code, r'GchoiceQuestionData_options', 'code');
  }

  @override
  GchoiceQuestionData_options rebuild(
          void Function(GchoiceQuestionData_optionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GchoiceQuestionData_optionsBuilder toBuilder() =>
      new GchoiceQuestionData_optionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GchoiceQuestionData_options &&
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
    return (newBuiltValueToStringHelper(r'GchoiceQuestionData_options')
          ..add('G__typename', G__typename)
          ..add('value', value)
          ..add('code', code))
        .toString();
  }
}

class GchoiceQuestionData_optionsBuilder
    implements
        Builder<GchoiceQuestionData_options,
            GchoiceQuestionData_optionsBuilder> {
  _$GchoiceQuestionData_options? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  GchoiceQuestionData_optionsBuilder() {
    GchoiceQuestionData_options._initializeBuilder(this);
  }

  GchoiceQuestionData_optionsBuilder get _$this {
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
  void replace(GchoiceQuestionData_options other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GchoiceQuestionData_options;
  }

  @override
  void update(void Function(GchoiceQuestionData_optionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GchoiceQuestionData_options build() => _build();

  _$GchoiceQuestionData_options _build() {
    final _$result = _$v ??
        new _$GchoiceQuestionData_options._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GchoiceQuestionData_options', 'G__typename'),
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'GchoiceQuestionData_options', 'value'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'GchoiceQuestionData_options', 'code'));
    replace(_$result);
    return _$result;
  }
}

class _$GconstraintsQuestionData extends GconstraintsQuestionData {
  @override
  final String G__typename;
  @override
  final String? regexp;
  @override
  final GconstraintsQuestionData_range? range;
  @override
  final String message;

  factory _$GconstraintsQuestionData(
          [void Function(GconstraintsQuestionDataBuilder)? updates]) =>
      (new GconstraintsQuestionDataBuilder()..update(updates))._build();

  _$GconstraintsQuestionData._(
      {required this.G__typename,
      this.regexp,
      this.range,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GconstraintsQuestionData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GconstraintsQuestionData', 'message');
  }

  @override
  GconstraintsQuestionData rebuild(
          void Function(GconstraintsQuestionDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GconstraintsQuestionDataBuilder toBuilder() =>
      new GconstraintsQuestionDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GconstraintsQuestionData &&
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
    return (newBuiltValueToStringHelper(r'GconstraintsQuestionData')
          ..add('G__typename', G__typename)
          ..add('regexp', regexp)
          ..add('range', range)
          ..add('message', message))
        .toString();
  }
}

class GconstraintsQuestionDataBuilder
    implements
        Builder<GconstraintsQuestionData, GconstraintsQuestionDataBuilder> {
  _$GconstraintsQuestionData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _regexp;
  String? get regexp => _$this._regexp;
  set regexp(String? regexp) => _$this._regexp = regexp;

  GconstraintsQuestionData_rangeBuilder? _range;
  GconstraintsQuestionData_rangeBuilder get range =>
      _$this._range ??= new GconstraintsQuestionData_rangeBuilder();
  set range(GconstraintsQuestionData_rangeBuilder? range) =>
      _$this._range = range;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GconstraintsQuestionDataBuilder() {
    GconstraintsQuestionData._initializeBuilder(this);
  }

  GconstraintsQuestionDataBuilder get _$this {
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
  void replace(GconstraintsQuestionData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GconstraintsQuestionData;
  }

  @override
  void update(void Function(GconstraintsQuestionDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GconstraintsQuestionData build() => _build();

  _$GconstraintsQuestionData _build() {
    _$GconstraintsQuestionData _$result;
    try {
      _$result = _$v ??
          new _$GconstraintsQuestionData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GconstraintsQuestionData', 'G__typename'),
              regexp: regexp,
              range: _range?.build(),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'GconstraintsQuestionData', 'message'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'range';
        _range?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GconstraintsQuestionData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GconstraintsQuestionData_range extends GconstraintsQuestionData_range {
  @override
  final String G__typename;
  @override
  final double? min;
  @override
  final double? max;

  factory _$GconstraintsQuestionData_range(
          [void Function(GconstraintsQuestionData_rangeBuilder)? updates]) =>
      (new GconstraintsQuestionData_rangeBuilder()..update(updates))._build();

  _$GconstraintsQuestionData_range._(
      {required this.G__typename, this.min, this.max})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GconstraintsQuestionData_range', 'G__typename');
  }

  @override
  GconstraintsQuestionData_range rebuild(
          void Function(GconstraintsQuestionData_rangeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GconstraintsQuestionData_rangeBuilder toBuilder() =>
      new GconstraintsQuestionData_rangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GconstraintsQuestionData_range &&
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
    return (newBuiltValueToStringHelper(r'GconstraintsQuestionData_range')
          ..add('G__typename', G__typename)
          ..add('min', min)
          ..add('max', max))
        .toString();
  }
}

class GconstraintsQuestionData_rangeBuilder
    implements
        Builder<GconstraintsQuestionData_range,
            GconstraintsQuestionData_rangeBuilder> {
  _$GconstraintsQuestionData_range? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _min;
  double? get min => _$this._min;
  set min(double? min) => _$this._min = min;

  double? _max;
  double? get max => _$this._max;
  set max(double? max) => _$this._max = max;

  GconstraintsQuestionData_rangeBuilder() {
    GconstraintsQuestionData_range._initializeBuilder(this);
  }

  GconstraintsQuestionData_rangeBuilder get _$this {
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
  void replace(GconstraintsQuestionData_range other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GconstraintsQuestionData_range;
  }

  @override
  void update(void Function(GconstraintsQuestionData_rangeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GconstraintsQuestionData_range build() => _build();

  _$GconstraintsQuestionData_range _build() {
    final _$result = _$v ??
        new _$GconstraintsQuestionData_range._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GconstraintsQuestionData_range', 'G__typename'),
            min: min,
            max: max);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
