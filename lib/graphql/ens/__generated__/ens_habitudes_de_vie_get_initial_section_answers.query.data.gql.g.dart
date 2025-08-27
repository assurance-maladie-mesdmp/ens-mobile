// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_habitudes_de_vie_get_initial_section_answers.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_initial_habitudes_de_vie_section_answerData>
    _$ggetInitialHabitudesDeVieSectionAnswerDataSerializer =
    new _$Gget_initial_habitudes_de_vie_section_answerDataSerializer();
Serializer<Gget_initial_habitudes_de_vie_section_answerData_alimentaire>
    _$ggetInitialHabitudesDeVieSectionAnswerDataAlimentaireSerializer =
    new _$Gget_initial_habitudes_de_vie_section_answerData_alimentaireSerializer();
Serializer<Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items>
    _$ggetInitialHabitudesDeVieSectionAnswerDataAlimentaireItemsSerializer =
    new _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_itemsSerializer();
Serializer<
        Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details>
    _$ggetInitialHabitudesDeVieSectionAnswerDataAlimentaireItemsDetailsSerializer =
    new _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_detailsSerializer();
Serializer<
        Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers>
    _$ggetInitialHabitudesDeVieSectionAnswerDataAlimentaireItemsDetailsAnswersSerializer =
    new _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answersSerializer();
Serializer<Gget_initial_habitudes_de_vie_section_answerData_tabac>
    _$ggetInitialHabitudesDeVieSectionAnswerDataTabacSerializer =
    new _$Gget_initial_habitudes_de_vie_section_answerData_tabacSerializer();
Serializer<Gget_initial_habitudes_de_vie_section_answerData_tabac_items>
    _$ggetInitialHabitudesDeVieSectionAnswerDataTabacItemsSerializer =
    new _$Gget_initial_habitudes_de_vie_section_answerData_tabac_itemsSerializer();
Serializer<Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details>
    _$ggetInitialHabitudesDeVieSectionAnswerDataTabacItemsDetailsSerializer =
    new _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items_detailsSerializer();
Serializer<
        Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers>
    _$ggetInitialHabitudesDeVieSectionAnswerDataTabacItemsDetailsAnswersSerializer =
    new _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answersSerializer();
Serializer<Gget_initial_habitudes_de_vie_section_answerData_activitePhysique>
    _$ggetInitialHabitudesDeVieSectionAnswerDataActivitePhysiqueSerializer =
    new _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysiqueSerializer();
Serializer<
        Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items>
    _$ggetInitialHabitudesDeVieSectionAnswerDataActivitePhysiqueItemsSerializer =
    new _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_itemsSerializer();
Serializer<
        Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details>
    _$ggetInitialHabitudesDeVieSectionAnswerDataActivitePhysiqueItemsDetailsSerializer =
    new _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_detailsSerializer();
Serializer<
        Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers>
    _$ggetInitialHabitudesDeVieSectionAnswerDataActivitePhysiqueItemsDetailsAnswersSerializer =
    new _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answersSerializer();

class _$Gget_initial_habitudes_de_vie_section_answerDataSerializer
    implements
        StructuredSerializer<Gget_initial_habitudes_de_vie_section_answerData> {
  @override
  final Iterable<Type> types = const [
    Gget_initial_habitudes_de_vie_section_answerData,
    _$Gget_initial_habitudes_de_vie_section_answerData
  ];
  @override
  final String wireName = 'Gget_initial_habitudes_de_vie_section_answerData';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_initial_habitudes_de_vie_section_answerData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'alimentaire',
      serializers.serialize(object.alimentaire,
          specifiedType: const FullType(
              Gget_initial_habitudes_de_vie_section_answerData_alimentaire)),
      'tabac',
      serializers.serialize(object.tabac,
          specifiedType: const FullType(
              Gget_initial_habitudes_de_vie_section_answerData_tabac)),
      'activitePhysique',
      serializers.serialize(object.activitePhysique,
          specifiedType: const FullType(
              Gget_initial_habitudes_de_vie_section_answerData_activitePhysique)),
    ];

    return result;
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_initial_habitudes_de_vie_section_answerDataBuilder();

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
        case 'alimentaire':
          result.alimentaire.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_initial_habitudes_de_vie_section_answerData_alimentaire))!
              as Gget_initial_habitudes_de_vie_section_answerData_alimentaire);
          break;
        case 'tabac':
          result.tabac.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_initial_habitudes_de_vie_section_answerData_tabac))!
              as Gget_initial_habitudes_de_vie_section_answerData_tabac);
          break;
        case 'activitePhysique':
          result.activitePhysique.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_initial_habitudes_de_vie_section_answerData_activitePhysique))!
              as Gget_initial_habitudes_de_vie_section_answerData_activitePhysique);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_initial_habitudes_de_vie_section_answerData_alimentaireSerializer
    implements
        StructuredSerializer<
            Gget_initial_habitudes_de_vie_section_answerData_alimentaire> {
  @override
  final Iterable<Type> types = const [
    Gget_initial_habitudes_de_vie_section_answerData_alimentaire,
    _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire
  ];
  @override
  final String wireName =
      'Gget_initial_habitudes_de_vie_section_answerData_alimentaire';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_initial_habitudes_de_vie_section_answerData_alimentaire object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name,
          specifiedType: const FullType(_i3.GLifestyleSectionEnum)),
      'items',
      serializers.serialize(object.items,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items)
          ])),
    ];

    return result;
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_alimentaire deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_initial_habitudes_de_vie_section_answerData_alimentaireBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GLifestyleSectionEnum))!
              as _i3.GLifestyleSectionEnum;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_itemsSerializer
    implements
        StructuredSerializer<
            Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items> {
  @override
  final Iterable<Type> types = const [
    Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items,
    _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items
  ];
  @override
  final String wireName =
      'Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'details',
      serializers.serialize(object.details,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details)
          ])),
    ];

    return result;
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_initial_habitudes_de_vie_section_answerData_alimentaire_itemsBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'details':
          result.details.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_detailsSerializer
    implements
        StructuredSerializer<
            Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details> {
  @override
  final Iterable<Type> types = const [
    Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details,
    _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details
  ];
  @override
  final String wireName =
      'Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'lastModifiedType',
      serializers.serialize(object.lastModifiedType,
          specifiedType: const FullType(_i3.GLifestyleCreationTypeEnum)),
      'effectiveDate',
      serializers.serialize(object.effectiveDate,
          specifiedType: const FullType(String)),
      'answers',
      serializers.serialize(object.answers,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers)
          ])),
    ];

    return result;
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_detailsBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastModifiedType':
          result.lastModifiedType = serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GLifestyleCreationTypeEnum))!
              as _i3.GLifestyleCreationTypeEnum;
          break;
        case 'effectiveDate':
          result.effectiveDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'answers':
          result.answers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answersSerializer
    implements
        StructuredSerializer<
            Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers> {
  @override
  final Iterable<Type> types = const [
    Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers,
    _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers
  ];
  @override
  final String wireName =
      'Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
      'value',
      serializers.serialize(object.value,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answersBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_initial_habitudes_de_vie_section_answerData_tabacSerializer
    implements
        StructuredSerializer<
            Gget_initial_habitudes_de_vie_section_answerData_tabac> {
  @override
  final Iterable<Type> types = const [
    Gget_initial_habitudes_de_vie_section_answerData_tabac,
    _$Gget_initial_habitudes_de_vie_section_answerData_tabac
  ];
  @override
  final String wireName =
      'Gget_initial_habitudes_de_vie_section_answerData_tabac';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_initial_habitudes_de_vie_section_answerData_tabac object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name,
          specifiedType: const FullType(_i3.GLifestyleSectionEnum)),
      'items',
      serializers.serialize(object.items,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_initial_habitudes_de_vie_section_answerData_tabac_items)
          ])),
    ];

    return result;
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_tabac deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_initial_habitudes_de_vie_section_answerData_tabacBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GLifestyleSectionEnum))!
              as _i3.GLifestyleSectionEnum;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_initial_habitudes_de_vie_section_answerData_tabac_items)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_initial_habitudes_de_vie_section_answerData_tabac_itemsSerializer
    implements
        StructuredSerializer<
            Gget_initial_habitudes_de_vie_section_answerData_tabac_items> {
  @override
  final Iterable<Type> types = const [
    Gget_initial_habitudes_de_vie_section_answerData_tabac_items,
    _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items
  ];
  @override
  final String wireName =
      'Gget_initial_habitudes_de_vie_section_answerData_tabac_items';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_initial_habitudes_de_vie_section_answerData_tabac_items object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'details',
      serializers.serialize(object.details,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details)
          ])),
    ];

    return result;
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_tabac_items deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_initial_habitudes_de_vie_section_answerData_tabac_itemsBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'details':
          result.details.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items_detailsSerializer
    implements
        StructuredSerializer<
            Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details> {
  @override
  final Iterable<Type> types = const [
    Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details,
    _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details
  ];
  @override
  final String wireName =
      'Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'lastModifiedType',
      serializers.serialize(object.lastModifiedType,
          specifiedType: const FullType(_i3.GLifestyleCreationTypeEnum)),
      'effectiveDate',
      serializers.serialize(object.effectiveDate,
          specifiedType: const FullType(String)),
      'answers',
      serializers.serialize(object.answers,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers)
          ])),
    ];

    return result;
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_initial_habitudes_de_vie_section_answerData_tabac_items_detailsBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastModifiedType':
          result.lastModifiedType = serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GLifestyleCreationTypeEnum))!
              as _i3.GLifestyleCreationTypeEnum;
          break;
        case 'effectiveDate':
          result.effectiveDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'answers':
          result.answers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answersSerializer
    implements
        StructuredSerializer<
            Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers> {
  @override
  final Iterable<Type> types = const [
    Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers,
    _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers
  ];
  @override
  final String wireName =
      'Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
      'value',
      serializers.serialize(object.value,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answersBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysiqueSerializer
    implements
        StructuredSerializer<
            Gget_initial_habitudes_de_vie_section_answerData_activitePhysique> {
  @override
  final Iterable<Type> types = const [
    Gget_initial_habitudes_de_vie_section_answerData_activitePhysique,
    _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique
  ];
  @override
  final String wireName =
      'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_initial_habitudes_de_vie_section_answerData_activitePhysique object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name,
          specifiedType: const FullType(_i3.GLifestyleSectionEnum)),
      'items',
      serializers.serialize(object.items,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items)
          ])),
    ];

    return result;
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_initial_habitudes_de_vie_section_answerData_activitePhysiqueBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GLifestyleSectionEnum))!
              as _i3.GLifestyleSectionEnum;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_itemsSerializer
    implements
        StructuredSerializer<
            Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items> {
  @override
  final Iterable<Type> types = const [
    Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items,
    _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items
  ];
  @override
  final String wireName =
      'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'details',
      serializers.serialize(object.details,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details)
          ])),
    ];

    return result;
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_itemsBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'details':
          result.details.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_detailsSerializer
    implements
        StructuredSerializer<
            Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details> {
  @override
  final Iterable<Type> types = const [
    Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details,
    _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details
  ];
  @override
  final String wireName =
      'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'lastModifiedType',
      serializers.serialize(object.lastModifiedType,
          specifiedType: const FullType(_i3.GLifestyleCreationTypeEnum)),
      'effectiveDate',
      serializers.serialize(object.effectiveDate,
          specifiedType: const FullType(String)),
      'answers',
      serializers.serialize(object.answers,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers)
          ])),
    ];

    return result;
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_detailsBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastModifiedType':
          result.lastModifiedType = serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GLifestyleCreationTypeEnum))!
              as _i3.GLifestyleCreationTypeEnum;
          break;
        case 'effectiveDate':
          result.effectiveDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'answers':
          result.answers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answersSerializer
    implements
        StructuredSerializer<
            Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers> {
  @override
  final Iterable<Type> types = const [
    Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers,
    _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers
  ];
  @override
  final String wireName =
      'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
      'value',
      serializers.serialize(object.value,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answersBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_initial_habitudes_de_vie_section_answerData
    extends Gget_initial_habitudes_de_vie_section_answerData {
  @override
  final String G__typename;
  @override
  final Gget_initial_habitudes_de_vie_section_answerData_alimentaire
      alimentaire;
  @override
  final Gget_initial_habitudes_de_vie_section_answerData_tabac tabac;
  @override
  final Gget_initial_habitudes_de_vie_section_answerData_activitePhysique
      activitePhysique;

  factory _$Gget_initial_habitudes_de_vie_section_answerData(
          [void Function(
                  Gget_initial_habitudes_de_vie_section_answerDataBuilder)?
              updates]) =>
      (new Gget_initial_habitudes_de_vie_section_answerDataBuilder()
            ..update(updates))
          ._build();

  _$Gget_initial_habitudes_de_vie_section_answerData._(
      {required this.G__typename,
      required this.alimentaire,
      required this.tabac,
      required this.activitePhysique})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_initial_habitudes_de_vie_section_answerData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(alimentaire,
        r'Gget_initial_habitudes_de_vie_section_answerData', 'alimentaire');
    BuiltValueNullFieldError.checkNotNull(
        tabac, r'Gget_initial_habitudes_de_vie_section_answerData', 'tabac');
    BuiltValueNullFieldError.checkNotNull(
        activitePhysique,
        r'Gget_initial_habitudes_de_vie_section_answerData',
        'activitePhysique');
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData rebuild(
          void Function(Gget_initial_habitudes_de_vie_section_answerDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_initial_habitudes_de_vie_section_answerDataBuilder toBuilder() =>
      new Gget_initial_habitudes_de_vie_section_answerDataBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_initial_habitudes_de_vie_section_answerData &&
        G__typename == other.G__typename &&
        alimentaire == other.alimentaire &&
        tabac == other.tabac &&
        activitePhysique == other.activitePhysique;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, alimentaire.hashCode);
    _$hash = $jc(_$hash, tabac.hashCode);
    _$hash = $jc(_$hash, activitePhysique.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_initial_habitudes_de_vie_section_answerData')
          ..add('G__typename', G__typename)
          ..add('alimentaire', alimentaire)
          ..add('tabac', tabac)
          ..add('activitePhysique', activitePhysique))
        .toString();
  }
}

class Gget_initial_habitudes_de_vie_section_answerDataBuilder
    implements
        Builder<Gget_initial_habitudes_de_vie_section_answerData,
            Gget_initial_habitudes_de_vie_section_answerDataBuilder> {
  _$Gget_initial_habitudes_de_vie_section_answerData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_initial_habitudes_de_vie_section_answerData_alimentaireBuilder?
      _alimentaire;
  Gget_initial_habitudes_de_vie_section_answerData_alimentaireBuilder
      get alimentaire => _$this._alimentaire ??=
          new Gget_initial_habitudes_de_vie_section_answerData_alimentaireBuilder();
  set alimentaire(
          Gget_initial_habitudes_de_vie_section_answerData_alimentaireBuilder?
              alimentaire) =>
      _$this._alimentaire = alimentaire;

  Gget_initial_habitudes_de_vie_section_answerData_tabacBuilder? _tabac;
  Gget_initial_habitudes_de_vie_section_answerData_tabacBuilder get tabac =>
      _$this._tabac ??=
          new Gget_initial_habitudes_de_vie_section_answerData_tabacBuilder();
  set tabac(
          Gget_initial_habitudes_de_vie_section_answerData_tabacBuilder?
              tabac) =>
      _$this._tabac = tabac;

  Gget_initial_habitudes_de_vie_section_answerData_activitePhysiqueBuilder?
      _activitePhysique;
  Gget_initial_habitudes_de_vie_section_answerData_activitePhysiqueBuilder
      get activitePhysique => _$this._activitePhysique ??=
          new Gget_initial_habitudes_de_vie_section_answerData_activitePhysiqueBuilder();
  set activitePhysique(
          Gget_initial_habitudes_de_vie_section_answerData_activitePhysiqueBuilder?
              activitePhysique) =>
      _$this._activitePhysique = activitePhysique;

  Gget_initial_habitudes_de_vie_section_answerDataBuilder() {
    Gget_initial_habitudes_de_vie_section_answerData._initializeBuilder(this);
  }

  Gget_initial_habitudes_de_vie_section_answerDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _alimentaire = $v.alimentaire.toBuilder();
      _tabac = $v.tabac.toBuilder();
      _activitePhysique = $v.activitePhysique.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_initial_habitudes_de_vie_section_answerData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_initial_habitudes_de_vie_section_answerData;
  }

  @override
  void update(
      void Function(Gget_initial_habitudes_de_vie_section_answerDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData build() => _build();

  _$Gget_initial_habitudes_de_vie_section_answerData _build() {
    _$Gget_initial_habitudes_de_vie_section_answerData _$result;
    try {
      _$result = _$v ??
          new _$Gget_initial_habitudes_de_vie_section_answerData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_initial_habitudes_de_vie_section_answerData',
                  'G__typename'),
              alimentaire: alimentaire.build(),
              tabac: tabac.build(),
              activitePhysique: activitePhysique.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'alimentaire';
        alimentaire.build();
        _$failedField = 'tabac';
        tabac.build();
        _$failedField = 'activitePhysique';
        activitePhysique.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_initial_habitudes_de_vie_section_answerData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire
    extends Gget_initial_habitudes_de_vie_section_answerData_alimentaire {
  @override
  final String G__typename;
  @override
  final _i3.GLifestyleSectionEnum name;
  @override
  final BuiltList<
      Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items> items;

  factory _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire(
          [void Function(
                  Gget_initial_habitudes_de_vie_section_answerData_alimentaireBuilder)?
              updates]) =>
      (new Gget_initial_habitudes_de_vie_section_answerData_alimentaireBuilder()
            ..update(updates))
          ._build();

  _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire._(
      {required this.G__typename, required this.name, required this.items})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire',
        'name');
    BuiltValueNullFieldError.checkNotNull(
        items,
        r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire',
        'items');
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_alimentaire rebuild(
          void Function(
                  Gget_initial_habitudes_de_vie_section_answerData_alimentaireBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_initial_habitudes_de_vie_section_answerData_alimentaireBuilder
      toBuilder() =>
          new Gget_initial_habitudes_de_vie_section_answerData_alimentaireBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_initial_habitudes_de_vie_section_answerData_alimentaire &&
        G__typename == other.G__typename &&
        name == other.name &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('items', items))
        .toString();
  }
}

class Gget_initial_habitudes_de_vie_section_answerData_alimentaireBuilder
    implements
        Builder<Gget_initial_habitudes_de_vie_section_answerData_alimentaire,
            Gget_initial_habitudes_de_vie_section_answerData_alimentaireBuilder> {
  _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i3.GLifestyleSectionEnum? _name;
  _i3.GLifestyleSectionEnum? get name => _$this._name;
  set name(_i3.GLifestyleSectionEnum? name) => _$this._name = name;

  ListBuilder<
          Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items>?
      _items;
  ListBuilder<
          Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items>
      get items => _$this._items ??= new ListBuilder<
          Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items>();
  set items(
          ListBuilder<
                  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items>?
              items) =>
      _$this._items = items;

  Gget_initial_habitudes_de_vie_section_answerData_alimentaireBuilder() {
    Gget_initial_habitudes_de_vie_section_answerData_alimentaire
        ._initializeBuilder(this);
  }

  Gget_initial_habitudes_de_vie_section_answerData_alimentaireBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_initial_habitudes_de_vie_section_answerData_alimentaire other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire;
  }

  @override
  void update(
      void Function(
              Gget_initial_habitudes_de_vie_section_answerData_alimentaireBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_alimentaire build() =>
      _build();

  _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire _build() {
    _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire _$result;
    try {
      _$result = _$v ??
          new _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire',
                  'G__typename'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name,
                  r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire',
                  'name'),
              items: items.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items
    extends Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final BuiltList<
          Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details>
      details;

  factory _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items(
          [void Function(
                  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_itemsBuilder)?
              updates]) =>
      (new Gget_initial_habitudes_de_vie_section_answerData_alimentaire_itemsBuilder()
            ..update(updates))
          ._build();

  _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items._(
      {required this.G__typename, required this.name, required this.details})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items',
        'name');
    BuiltValueNullFieldError.checkNotNull(
        details,
        r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items',
        'details');
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items rebuild(
          void Function(
                  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_itemsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_itemsBuilder
      toBuilder() =>
          new Gget_initial_habitudes_de_vie_section_answerData_alimentaire_itemsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items &&
        G__typename == other.G__typename &&
        name == other.name &&
        details == other.details;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('details', details))
        .toString();
  }
}

class Gget_initial_habitudes_de_vie_section_answerData_alimentaire_itemsBuilder
    implements
        Builder<
            Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items,
            Gget_initial_habitudes_de_vie_section_answerData_alimentaire_itemsBuilder> {
  _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<
          Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details>?
      _details;
  ListBuilder<
          Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details>
      get details => _$this._details ??= new ListBuilder<
          Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details>();
  set details(
          ListBuilder<
                  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details>?
              details) =>
      _$this._details = details;

  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_itemsBuilder() {
    Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items
        ._initializeBuilder(this);
  }

  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_itemsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _details = $v.details.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items;
  }

  @override
  void update(
      void Function(
              Gget_initial_habitudes_de_vie_section_answerData_alimentaire_itemsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items build() =>
      _build();

  _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items
      _build() {
    _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items',
                  'G__typename'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name,
                  r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items',
                  'name'),
              details: details.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        details.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details
    extends Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final _i3.GLifestyleCreationTypeEnum lastModifiedType;
  @override
  final String effectiveDate;
  @override
  final BuiltList<
          Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers>
      answers;

  factory _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details(
          [void Function(
                  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_detailsBuilder)?
              updates]) =>
      (new Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_detailsBuilder()
            ..update(updates))
          ._build();

  _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details._(
      {required this.G__typename,
      required this.id,
      required this.lastModifiedType,
      required this.effectiveDate,
      required this.answers})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        lastModifiedType,
        r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details',
        'lastModifiedType');
    BuiltValueNullFieldError.checkNotNull(
        effectiveDate,
        r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details',
        'effectiveDate');
    BuiltValueNullFieldError.checkNotNull(
        answers,
        r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details',
        'answers');
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details
      rebuild(
              void Function(
                      Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_detailsBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_detailsBuilder
      toBuilder() =>
          new Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_detailsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details &&
        G__typename == other.G__typename &&
        id == other.id &&
        lastModifiedType == other.lastModifiedType &&
        effectiveDate == other.effectiveDate &&
        answers == other.answers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, lastModifiedType.hashCode);
    _$hash = $jc(_$hash, effectiveDate.hashCode);
    _$hash = $jc(_$hash, answers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('lastModifiedType', lastModifiedType)
          ..add('effectiveDate', effectiveDate)
          ..add('answers', answers))
        .toString();
  }
}

class Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_detailsBuilder
    implements
        Builder<
            Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details,
            Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_detailsBuilder> {
  _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i3.GLifestyleCreationTypeEnum? _lastModifiedType;
  _i3.GLifestyleCreationTypeEnum? get lastModifiedType =>
      _$this._lastModifiedType;
  set lastModifiedType(_i3.GLifestyleCreationTypeEnum? lastModifiedType) =>
      _$this._lastModifiedType = lastModifiedType;

  String? _effectiveDate;
  String? get effectiveDate => _$this._effectiveDate;
  set effectiveDate(String? effectiveDate) =>
      _$this._effectiveDate = effectiveDate;

  ListBuilder<
          Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers>?
      _answers;
  ListBuilder<
          Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers>
      get answers => _$this._answers ??= new ListBuilder<
          Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers>();
  set answers(
          ListBuilder<
                  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers>?
              answers) =>
      _$this._answers = answers;

  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_detailsBuilder() {
    Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details
        ._initializeBuilder(this);
  }

  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_detailsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _lastModifiedType = $v.lastModifiedType;
      _effectiveDate = $v.effectiveDate;
      _answers = $v.answers.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details;
  }

  @override
  void update(
      void Function(
              Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_detailsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details
      build() => _build();

  _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details
      _build() {
    _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details',
                  'id'),
              lastModifiedType: BuiltValueNullFieldError.checkNotNull(
                  lastModifiedType,
                  r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details',
                  'lastModifiedType'),
              effectiveDate: BuiltValueNullFieldError.checkNotNull(
                  effectiveDate,
                  r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details',
                  'effectiveDate'),
              answers: answers.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'answers';
        answers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers
    extends Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String label;
  @override
  final String value;

  factory _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers(
          [void Function(
                  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answersBuilder)?
              updates]) =>
      (new Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answersBuilder()
            ..update(updates))
          ._build();

  _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers._(
      {required this.G__typename,
      required this.name,
      required this.label,
      required this.value})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers',
        'name');
    BuiltValueNullFieldError.checkNotNull(
        label,
        r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers',
        'label');
    BuiltValueNullFieldError.checkNotNull(
        value,
        r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers',
        'value');
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers
      rebuild(
              void Function(
                      Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answersBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answersBuilder
      toBuilder() =>
          new Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answersBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers &&
        G__typename == other.G__typename &&
        name == other.name &&
        label == other.label &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('label', label)
          ..add('value', value))
        .toString();
  }
}

class Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answersBuilder
    implements
        Builder<
            Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers,
            Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answersBuilder> {
  _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answersBuilder() {
    Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers
        ._initializeBuilder(this);
  }

  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answersBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _label = $v.label;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers;
  }

  @override
  void update(
      void Function(
              Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers
      build() => _build();

  _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers
      _build() {
    final _$result = _$v ??
        new _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers',
                'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers',
                'name'),
            label: BuiltValueNullFieldError.checkNotNull(
                label,
                r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers',
                'label'),
            value: BuiltValueNullFieldError.checkNotNull(
                value,
                r'Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers',
                'value'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_initial_habitudes_de_vie_section_answerData_tabac
    extends Gget_initial_habitudes_de_vie_section_answerData_tabac {
  @override
  final String G__typename;
  @override
  final _i3.GLifestyleSectionEnum name;
  @override
  final BuiltList<Gget_initial_habitudes_de_vie_section_answerData_tabac_items>
      items;

  factory _$Gget_initial_habitudes_de_vie_section_answerData_tabac(
          [void Function(
                  Gget_initial_habitudes_de_vie_section_answerData_tabacBuilder)?
              updates]) =>
      (new Gget_initial_habitudes_de_vie_section_answerData_tabacBuilder()
            ..update(updates))
          ._build();

  _$Gget_initial_habitudes_de_vie_section_answerData_tabac._(
      {required this.G__typename, required this.name, required this.items})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_initial_habitudes_de_vie_section_answerData_tabac',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(name,
        r'Gget_initial_habitudes_de_vie_section_answerData_tabac', 'name');
    BuiltValueNullFieldError.checkNotNull(items,
        r'Gget_initial_habitudes_de_vie_section_answerData_tabac', 'items');
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_tabac rebuild(
          void Function(
                  Gget_initial_habitudes_de_vie_section_answerData_tabacBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_initial_habitudes_de_vie_section_answerData_tabacBuilder toBuilder() =>
      new Gget_initial_habitudes_de_vie_section_answerData_tabacBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_initial_habitudes_de_vie_section_answerData_tabac &&
        G__typename == other.G__typename &&
        name == other.name &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_initial_habitudes_de_vie_section_answerData_tabac')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('items', items))
        .toString();
  }
}

class Gget_initial_habitudes_de_vie_section_answerData_tabacBuilder
    implements
        Builder<Gget_initial_habitudes_de_vie_section_answerData_tabac,
            Gget_initial_habitudes_de_vie_section_answerData_tabacBuilder> {
  _$Gget_initial_habitudes_de_vie_section_answerData_tabac? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i3.GLifestyleSectionEnum? _name;
  _i3.GLifestyleSectionEnum? get name => _$this._name;
  set name(_i3.GLifestyleSectionEnum? name) => _$this._name = name;

  ListBuilder<Gget_initial_habitudes_de_vie_section_answerData_tabac_items>?
      _items;
  ListBuilder<Gget_initial_habitudes_de_vie_section_answerData_tabac_items>
      get items => _$this._items ??= new ListBuilder<
          Gget_initial_habitudes_de_vie_section_answerData_tabac_items>();
  set items(
          ListBuilder<
                  Gget_initial_habitudes_de_vie_section_answerData_tabac_items>?
              items) =>
      _$this._items = items;

  Gget_initial_habitudes_de_vie_section_answerData_tabacBuilder() {
    Gget_initial_habitudes_de_vie_section_answerData_tabac._initializeBuilder(
        this);
  }

  Gget_initial_habitudes_de_vie_section_answerData_tabacBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_initial_habitudes_de_vie_section_answerData_tabac other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_initial_habitudes_de_vie_section_answerData_tabac;
  }

  @override
  void update(
      void Function(
              Gget_initial_habitudes_de_vie_section_answerData_tabacBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_tabac build() => _build();

  _$Gget_initial_habitudes_de_vie_section_answerData_tabac _build() {
    _$Gget_initial_habitudes_de_vie_section_answerData_tabac _$result;
    try {
      _$result = _$v ??
          new _$Gget_initial_habitudes_de_vie_section_answerData_tabac._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_initial_habitudes_de_vie_section_answerData_tabac',
                  'G__typename'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name,
                  r'Gget_initial_habitudes_de_vie_section_answerData_tabac',
                  'name'),
              items: items.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_initial_habitudes_de_vie_section_answerData_tabac',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items
    extends Gget_initial_habitudes_de_vie_section_answerData_tabac_items {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final BuiltList<
          Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details>
      details;

  factory _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items(
          [void Function(
                  Gget_initial_habitudes_de_vie_section_answerData_tabac_itemsBuilder)?
              updates]) =>
      (new Gget_initial_habitudes_de_vie_section_answerData_tabac_itemsBuilder()
            ..update(updates))
          ._build();

  _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items._(
      {required this.G__typename, required this.name, required this.details})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_initial_habitudes_de_vie_section_answerData_tabac_items',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'Gget_initial_habitudes_de_vie_section_answerData_tabac_items',
        'name');
    BuiltValueNullFieldError.checkNotNull(
        details,
        r'Gget_initial_habitudes_de_vie_section_answerData_tabac_items',
        'details');
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_tabac_items rebuild(
          void Function(
                  Gget_initial_habitudes_de_vie_section_answerData_tabac_itemsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_initial_habitudes_de_vie_section_answerData_tabac_itemsBuilder
      toBuilder() =>
          new Gget_initial_habitudes_de_vie_section_answerData_tabac_itemsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_initial_habitudes_de_vie_section_answerData_tabac_items &&
        G__typename == other.G__typename &&
        name == other.name &&
        details == other.details;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_initial_habitudes_de_vie_section_answerData_tabac_items')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('details', details))
        .toString();
  }
}

class Gget_initial_habitudes_de_vie_section_answerData_tabac_itemsBuilder
    implements
        Builder<Gget_initial_habitudes_de_vie_section_answerData_tabac_items,
            Gget_initial_habitudes_de_vie_section_answerData_tabac_itemsBuilder> {
  _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<
          Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details>?
      _details;
  ListBuilder<
          Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details>
      get details => _$this._details ??= new ListBuilder<
          Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details>();
  set details(
          ListBuilder<
                  Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details>?
              details) =>
      _$this._details = details;

  Gget_initial_habitudes_de_vie_section_answerData_tabac_itemsBuilder() {
    Gget_initial_habitudes_de_vie_section_answerData_tabac_items
        ._initializeBuilder(this);
  }

  Gget_initial_habitudes_de_vie_section_answerData_tabac_itemsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _details = $v.details.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_initial_habitudes_de_vie_section_answerData_tabac_items other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items;
  }

  @override
  void update(
      void Function(
              Gget_initial_habitudes_de_vie_section_answerData_tabac_itemsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_tabac_items build() =>
      _build();

  _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items _build() {
    _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items _$result;
    try {
      _$result = _$v ??
          new _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_initial_habitudes_de_vie_section_answerData_tabac_items',
                  'G__typename'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name,
                  r'Gget_initial_habitudes_de_vie_section_answerData_tabac_items',
                  'name'),
              details: details.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        details.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_initial_habitudes_de_vie_section_answerData_tabac_items',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details
    extends Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final _i3.GLifestyleCreationTypeEnum lastModifiedType;
  @override
  final String effectiveDate;
  @override
  final BuiltList<
          Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers>
      answers;

  factory _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details(
          [void Function(
                  Gget_initial_habitudes_de_vie_section_answerData_tabac_items_detailsBuilder)?
              updates]) =>
      (new Gget_initial_habitudes_de_vie_section_answerData_tabac_items_detailsBuilder()
            ..update(updates))
          ._build();

  _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details._(
      {required this.G__typename,
      required this.id,
      required this.lastModifiedType,
      required this.effectiveDate,
      required this.answers})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        lastModifiedType,
        r'Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details',
        'lastModifiedType');
    BuiltValueNullFieldError.checkNotNull(
        effectiveDate,
        r'Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details',
        'effectiveDate');
    BuiltValueNullFieldError.checkNotNull(
        answers,
        r'Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details',
        'answers');
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details rebuild(
          void Function(
                  Gget_initial_habitudes_de_vie_section_answerData_tabac_items_detailsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_initial_habitudes_de_vie_section_answerData_tabac_items_detailsBuilder
      toBuilder() =>
          new Gget_initial_habitudes_de_vie_section_answerData_tabac_items_detailsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details &&
        G__typename == other.G__typename &&
        id == other.id &&
        lastModifiedType == other.lastModifiedType &&
        effectiveDate == other.effectiveDate &&
        answers == other.answers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, lastModifiedType.hashCode);
    _$hash = $jc(_$hash, effectiveDate.hashCode);
    _$hash = $jc(_$hash, answers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('lastModifiedType', lastModifiedType)
          ..add('effectiveDate', effectiveDate)
          ..add('answers', answers))
        .toString();
  }
}

class Gget_initial_habitudes_de_vie_section_answerData_tabac_items_detailsBuilder
    implements
        Builder<
            Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details,
            Gget_initial_habitudes_de_vie_section_answerData_tabac_items_detailsBuilder> {
  _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i3.GLifestyleCreationTypeEnum? _lastModifiedType;
  _i3.GLifestyleCreationTypeEnum? get lastModifiedType =>
      _$this._lastModifiedType;
  set lastModifiedType(_i3.GLifestyleCreationTypeEnum? lastModifiedType) =>
      _$this._lastModifiedType = lastModifiedType;

  String? _effectiveDate;
  String? get effectiveDate => _$this._effectiveDate;
  set effectiveDate(String? effectiveDate) =>
      _$this._effectiveDate = effectiveDate;

  ListBuilder<
          Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers>?
      _answers;
  ListBuilder<
          Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers>
      get answers => _$this._answers ??= new ListBuilder<
          Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers>();
  set answers(
          ListBuilder<
                  Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers>?
              answers) =>
      _$this._answers = answers;

  Gget_initial_habitudes_de_vie_section_answerData_tabac_items_detailsBuilder() {
    Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details
        ._initializeBuilder(this);
  }

  Gget_initial_habitudes_de_vie_section_answerData_tabac_items_detailsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _lastModifiedType = $v.lastModifiedType;
      _effectiveDate = $v.effectiveDate;
      _answers = $v.answers.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details;
  }

  @override
  void update(
      void Function(
              Gget_initial_habitudes_de_vie_section_answerData_tabac_items_detailsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details
      build() => _build();

  _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details
      _build() {
    _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details',
                  'id'),
              lastModifiedType: BuiltValueNullFieldError.checkNotNull(
                  lastModifiedType,
                  r'Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details',
                  'lastModifiedType'),
              effectiveDate: BuiltValueNullFieldError.checkNotNull(
                  effectiveDate,
                  r'Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details',
                  'effectiveDate'),
              answers: answers.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'answers';
        answers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers
    extends Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String label;
  @override
  final String value;

  factory _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers(
          [void Function(
                  Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answersBuilder)?
              updates]) =>
      (new Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answersBuilder()
            ..update(updates))
          ._build();

  _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers._(
      {required this.G__typename,
      required this.name,
      required this.label,
      required this.value})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers',
        'name');
    BuiltValueNullFieldError.checkNotNull(
        label,
        r'Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers',
        'label');
    BuiltValueNullFieldError.checkNotNull(
        value,
        r'Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers',
        'value');
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers
      rebuild(
              void Function(
                      Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answersBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answersBuilder
      toBuilder() =>
          new Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answersBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers &&
        G__typename == other.G__typename &&
        name == other.name &&
        label == other.label &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('label', label)
          ..add('value', value))
        .toString();
  }
}

class Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answersBuilder
    implements
        Builder<
            Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers,
            Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answersBuilder> {
  _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answersBuilder() {
    Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers
        ._initializeBuilder(this);
  }

  Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answersBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _label = $v.label;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers;
  }

  @override
  void update(
      void Function(
              Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers
      build() => _build();

  _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers
      _build() {
    final _$result = _$v ??
        new _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers',
                'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers',
                'name'),
            label: BuiltValueNullFieldError.checkNotNull(
                label,
                r'Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers',
                'label'),
            value: BuiltValueNullFieldError.checkNotNull(
                value,
                r'Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers',
                'value'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique
    extends Gget_initial_habitudes_de_vie_section_answerData_activitePhysique {
  @override
  final String G__typename;
  @override
  final _i3.GLifestyleSectionEnum name;
  @override
  final BuiltList<
          Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items>
      items;

  factory _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique(
          [void Function(
                  Gget_initial_habitudes_de_vie_section_answerData_activitePhysiqueBuilder)?
              updates]) =>
      (new Gget_initial_habitudes_de_vie_section_answerData_activitePhysiqueBuilder()
            ..update(updates))
          ._build();

  _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique._(
      {required this.G__typename, required this.name, required this.items})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique',
        'name');
    BuiltValueNullFieldError.checkNotNull(
        items,
        r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique',
        'items');
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique rebuild(
          void Function(
                  Gget_initial_habitudes_de_vie_section_answerData_activitePhysiqueBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_initial_habitudes_de_vie_section_answerData_activitePhysiqueBuilder
      toBuilder() =>
          new Gget_initial_habitudes_de_vie_section_answerData_activitePhysiqueBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_initial_habitudes_de_vie_section_answerData_activitePhysique &&
        G__typename == other.G__typename &&
        name == other.name &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('items', items))
        .toString();
  }
}

class Gget_initial_habitudes_de_vie_section_answerData_activitePhysiqueBuilder
    implements
        Builder<
            Gget_initial_habitudes_de_vie_section_answerData_activitePhysique,
            Gget_initial_habitudes_de_vie_section_answerData_activitePhysiqueBuilder> {
  _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i3.GLifestyleSectionEnum? _name;
  _i3.GLifestyleSectionEnum? get name => _$this._name;
  set name(_i3.GLifestyleSectionEnum? name) => _$this._name = name;

  ListBuilder<
          Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items>?
      _items;
  ListBuilder<
          Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items>
      get items => _$this._items ??= new ListBuilder<
          Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items>();
  set items(
          ListBuilder<
                  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items>?
              items) =>
      _$this._items = items;

  Gget_initial_habitudes_de_vie_section_answerData_activitePhysiqueBuilder() {
    Gget_initial_habitudes_de_vie_section_answerData_activitePhysique
        ._initializeBuilder(this);
  }

  Gget_initial_habitudes_de_vie_section_answerData_activitePhysiqueBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_initial_habitudes_de_vie_section_answerData_activitePhysique other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique;
  }

  @override
  void update(
      void Function(
              Gget_initial_habitudes_de_vie_section_answerData_activitePhysiqueBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique build() =>
      _build();

  _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique _build() {
    _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique',
                  'G__typename'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name,
                  r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique',
                  'name'),
              items: items.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items
    extends Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final BuiltList<
          Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details>
      details;

  factory _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items(
          [void Function(
                  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_itemsBuilder)?
              updates]) =>
      (new Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_itemsBuilder()
            ..update(updates))
          ._build();

  _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items._(
      {required this.G__typename, required this.name, required this.details})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items',
        'name');
    BuiltValueNullFieldError.checkNotNull(
        details,
        r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items',
        'details');
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items rebuild(
          void Function(
                  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_itemsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_itemsBuilder
      toBuilder() =>
          new Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_itemsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items &&
        G__typename == other.G__typename &&
        name == other.name &&
        details == other.details;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('details', details))
        .toString();
  }
}

class Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_itemsBuilder
    implements
        Builder<
            Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items,
            Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_itemsBuilder> {
  _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<
          Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details>?
      _details;
  ListBuilder<
          Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details>
      get details => _$this._details ??= new ListBuilder<
          Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details>();
  set details(
          ListBuilder<
                  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details>?
              details) =>
      _$this._details = details;

  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_itemsBuilder() {
    Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items
        ._initializeBuilder(this);
  }

  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_itemsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _details = $v.details.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items;
  }

  @override
  void update(
      void Function(
              Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_itemsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items
      build() => _build();

  _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items
      _build() {
    _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items',
                  'G__typename'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name,
                  r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items',
                  'name'),
              details: details.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        details.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details
    extends Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final _i3.GLifestyleCreationTypeEnum lastModifiedType;
  @override
  final String effectiveDate;
  @override
  final BuiltList<
          Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers>
      answers;

  factory _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details(
          [void Function(
                  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_detailsBuilder)?
              updates]) =>
      (new Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_detailsBuilder()
            ..update(updates))
          ._build();

  _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details._(
      {required this.G__typename,
      required this.id,
      required this.lastModifiedType,
      required this.effectiveDate,
      required this.answers})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        lastModifiedType,
        r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details',
        'lastModifiedType');
    BuiltValueNullFieldError.checkNotNull(
        effectiveDate,
        r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details',
        'effectiveDate');
    BuiltValueNullFieldError.checkNotNull(
        answers,
        r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details',
        'answers');
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details
      rebuild(
              void Function(
                      Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_detailsBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_detailsBuilder
      toBuilder() =>
          new Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_detailsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details &&
        G__typename == other.G__typename &&
        id == other.id &&
        lastModifiedType == other.lastModifiedType &&
        effectiveDate == other.effectiveDate &&
        answers == other.answers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, lastModifiedType.hashCode);
    _$hash = $jc(_$hash, effectiveDate.hashCode);
    _$hash = $jc(_$hash, answers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('lastModifiedType', lastModifiedType)
          ..add('effectiveDate', effectiveDate)
          ..add('answers', answers))
        .toString();
  }
}

class Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_detailsBuilder
    implements
        Builder<
            Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details,
            Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_detailsBuilder> {
  _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i3.GLifestyleCreationTypeEnum? _lastModifiedType;
  _i3.GLifestyleCreationTypeEnum? get lastModifiedType =>
      _$this._lastModifiedType;
  set lastModifiedType(_i3.GLifestyleCreationTypeEnum? lastModifiedType) =>
      _$this._lastModifiedType = lastModifiedType;

  String? _effectiveDate;
  String? get effectiveDate => _$this._effectiveDate;
  set effectiveDate(String? effectiveDate) =>
      _$this._effectiveDate = effectiveDate;

  ListBuilder<
          Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers>?
      _answers;
  ListBuilder<
          Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers>
      get answers => _$this._answers ??= new ListBuilder<
          Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers>();
  set answers(
          ListBuilder<
                  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers>?
              answers) =>
      _$this._answers = answers;

  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_detailsBuilder() {
    Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details
        ._initializeBuilder(this);
  }

  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_detailsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _lastModifiedType = $v.lastModifiedType;
      _effectiveDate = $v.effectiveDate;
      _answers = $v.answers.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details;
  }

  @override
  void update(
      void Function(
              Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_detailsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details
      build() => _build();

  _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details
      _build() {
    _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details',
                  'id'),
              lastModifiedType: BuiltValueNullFieldError.checkNotNull(
                  lastModifiedType,
                  r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details',
                  'lastModifiedType'),
              effectiveDate: BuiltValueNullFieldError.checkNotNull(
                  effectiveDate,
                  r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details',
                  'effectiveDate'),
              answers: answers.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'answers';
        answers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers
    extends Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String label;
  @override
  final String value;

  factory _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers(
          [void Function(
                  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answersBuilder)?
              updates]) =>
      (new Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answersBuilder()
            ..update(updates))
          ._build();

  _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers._(
      {required this.G__typename,
      required this.name,
      required this.label,
      required this.value})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers',
        'name');
    BuiltValueNullFieldError.checkNotNull(
        label,
        r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers',
        'label');
    BuiltValueNullFieldError.checkNotNull(
        value,
        r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers',
        'value');
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers
      rebuild(
              void Function(
                      Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answersBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answersBuilder
      toBuilder() =>
          new Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answersBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers &&
        G__typename == other.G__typename &&
        name == other.name &&
        label == other.label &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('label', label)
          ..add('value', value))
        .toString();
  }
}

class Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answersBuilder
    implements
        Builder<
            Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers,
            Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answersBuilder> {
  _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answersBuilder() {
    Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers
        ._initializeBuilder(this);
  }

  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answersBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _label = $v.label;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers;
  }

  @override
  void update(
      void Function(
              Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers
      build() => _build();

  _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers
      _build() {
    final _$result = _$v ??
        new _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers',
                'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers',
                'name'),
            label: BuiltValueNullFieldError.checkNotNull(
                label,
                r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers',
                'label'),
            value: BuiltValueNullFieldError.checkNotNull(
                value,
                r'Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers',
                'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
