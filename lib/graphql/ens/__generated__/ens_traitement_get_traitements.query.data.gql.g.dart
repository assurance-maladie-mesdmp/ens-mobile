// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_traitement_get_traitements.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_traitementsData> _$ggetTraitementsDataSerializer =
    new _$Gget_traitementsDataSerializer();
Serializer<Gget_traitementsData_treatments>
    _$ggetTraitementsDataTreatmentsSerializer =
    new _$Gget_traitementsData_treatmentsSerializer();
Serializer<Gget_traitementsData_treatments_treatments>
    _$ggetTraitementsDataTreatmentsTreatmentsSerializer =
    new _$Gget_traitementsData_treatments_treatmentsSerializer();
Serializer<Gget_traitementsData_treatments_treatments_linkedDiseases>
    _$ggetTraitementsDataTreatmentsTreatmentsLinkedDiseasesSerializer =
    new _$Gget_traitementsData_treatments_treatments_linkedDiseasesSerializer();
Serializer<Gget_traitementsData_treatments_treatments_linkedDiseases_disease>
    _$ggetTraitementsDataTreatmentsTreatmentsLinkedDiseasesDiseaseSerializer =
    new _$Gget_traitementsData_treatments_treatments_linkedDiseases_diseaseSerializer();
Serializer<
        Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments>
    _$ggetTraitementsDataTreatmentsTreatmentsLinkedDiseasesDiseaseLinkedDocumentsSerializer =
    new _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocumentsSerializer();
Serializer<
        Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document>
    _$ggetTraitementsDataTreatmentsTreatmentsLinkedDiseasesDiseaseLinkedDocumentsDocumentSerializer =
    new _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_documentSerializer();
Serializer<Gget_traitementsData_treatments_treatments_linkedAllergies>
    _$ggetTraitementsDataTreatmentsTreatmentsLinkedAllergiesSerializer =
    new _$Gget_traitementsData_treatments_treatments_linkedAllergiesSerializer();
Serializer<Gget_traitementsData_treatments_treatments_linkedAllergies_allergy>
    _$ggetTraitementsDataTreatmentsTreatmentsLinkedAllergiesAllergySerializer =
    new _$Gget_traitementsData_treatments_treatments_linkedAllergies_allergySerializer();

class _$Gget_traitementsDataSerializer
    implements StructuredSerializer<Gget_traitementsData> {
  @override
  final Iterable<Type> types = const [
    Gget_traitementsData,
    _$Gget_traitementsData
  ];
  @override
  final String wireName = 'Gget_traitementsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_traitementsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.treatments;
    if (value != null) {
      result
        ..add('treatments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Gget_traitementsData_treatments)));
    }
    return result;
  }

  @override
  Gget_traitementsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_traitementsDataBuilder();

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
        case 'treatments':
          result.treatments.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gget_traitementsData_treatments))!
              as Gget_traitementsData_treatments);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_traitementsData_treatmentsSerializer
    implements StructuredSerializer<Gget_traitementsData_treatments> {
  @override
  final Iterable<Type> types = const [
    Gget_traitementsData_treatments,
    _$Gget_traitementsData_treatments
  ];
  @override
  final String wireName = 'Gget_traitementsData_treatments';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_traitementsData_treatments object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'treatments',
      serializers.serialize(object.treatments,
          specifiedType: const FullType(BuiltList, const [
            const FullType(Gget_traitementsData_treatments_treatments)
          ])),
    ];
    Object? value;
    value = object.unconcernedDeclarationDate;
    if (value != null) {
      result
        ..add('unconcernedDeclarationDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_traitementsData_treatments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_traitementsData_treatmentsBuilder();

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
        case 'treatments':
          result.treatments.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gget_traitementsData_treatments_treatments)
              ]))! as BuiltList<Object?>);
          break;
        case 'unconcernedDeclarationDate':
          result.unconcernedDeclarationDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_traitementsData_treatments_treatmentsSerializer
    implements
        StructuredSerializer<Gget_traitementsData_treatments_treatments> {
  @override
  final Iterable<Type> types = const [
    Gget_traitementsData_treatments_treatments,
    _$Gget_traitementsData_treatments_treatments
  ];
  @override
  final String wireName = 'Gget_traitementsData_treatments_treatments';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_traitementsData_treatments_treatments object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'startYear',
      serializers.serialize(object.startYear,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.startDay;
    if (value != null) {
      result
        ..add('startDay')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.startMonth;
    if (value != null) {
      result
        ..add('startMonth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.endDay;
    if (value != null) {
      result
        ..add('endDay')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.endMonth;
    if (value != null) {
      result
        ..add('endMonth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.endYear;
    if (value != null) {
      result
        ..add('endYear')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dosage;
    if (value != null) {
      result
        ..add('dosage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.linkedDiseases;
    if (value != null) {
      result
        ..add('linkedDiseases')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_traitementsData_treatments_treatments_linkedDiseases)
            ])));
    }
    value = object.linkedAllergies;
    if (value != null) {
      result
        ..add('linkedAllergies')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_traitementsData_treatments_treatments_linkedAllergies)
            ])));
    }
    return result;
  }

  @override
  Gget_traitementsData_treatments_treatments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_traitementsData_treatments_treatmentsBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'startDay':
          result.startDay = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'startMonth':
          result.startMonth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'startYear':
          result.startYear = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'endDay':
          result.endDay = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'endMonth':
          result.endMonth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'endYear':
          result.endYear = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dosage':
          result.dosage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'linkedDiseases':
          result.linkedDiseases.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_traitementsData_treatments_treatments_linkedDiseases)
              ]))! as BuiltList<Object?>);
          break;
        case 'linkedAllergies':
          result.linkedAllergies.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_traitementsData_treatments_treatments_linkedAllergies)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_traitementsData_treatments_treatments_linkedDiseasesSerializer
    implements
        StructuredSerializer<
            Gget_traitementsData_treatments_treatments_linkedDiseases> {
  @override
  final Iterable<Type> types = const [
    Gget_traitementsData_treatments_treatments_linkedDiseases,
    _$Gget_traitementsData_treatments_treatments_linkedDiseases
  ];
  @override
  final String wireName =
      'Gget_traitementsData_treatments_treatments_linkedDiseases';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_traitementsData_treatments_treatments_linkedDiseases object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'linkId',
      serializers.serialize(object.linkId,
          specifiedType: const FullType(String)),
      'disease',
      serializers.serialize(object.disease,
          specifiedType: const FullType(
              Gget_traitementsData_treatments_treatments_linkedDiseases_disease)),
    ];

    return result;
  }

  @override
  Gget_traitementsData_treatments_treatments_linkedDiseases deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_traitementsData_treatments_treatments_linkedDiseasesBuilder();

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
        case 'linkId':
          result.linkId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'disease':
          result.disease.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_traitementsData_treatments_treatments_linkedDiseases_disease))!
              as Gget_traitementsData_treatments_treatments_linkedDiseases_disease);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_traitementsData_treatments_treatments_linkedDiseases_diseaseSerializer
    implements
        StructuredSerializer<
            Gget_traitementsData_treatments_treatments_linkedDiseases_disease> {
  @override
  final Iterable<Type> types = const [
    Gget_traitementsData_treatments_treatments_linkedDiseases_disease,
    _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease
  ];
  @override
  final String wireName =
      'Gget_traitementsData_treatments_treatments_linkedDiseases_disease';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_traitementsData_treatments_treatments_linkedDiseases_disease object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'startYear',
      serializers.serialize(object.startYear,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.startDay;
    if (value != null) {
      result
        ..add('startDay')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.startMonth;
    if (value != null) {
      result
        ..add('startMonth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.endDay;
    if (value != null) {
      result
        ..add('endDay')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.endMonth;
    if (value != null) {
      result
        ..add('endMonth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.endYear;
    if (value != null) {
      result
        ..add('endYear')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.linkedDocuments;
    if (value != null) {
      result
        ..add('linkedDocuments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments)
            ])));
    }
    return result;
  }

  @override
  Gget_traitementsData_treatments_treatments_linkedDiseases_disease deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_traitementsData_treatments_treatments_linkedDiseases_diseaseBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'startDay':
          result.startDay = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'startMonth':
          result.startMonth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'startYear':
          result.startYear = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'endDay':
          result.endDay = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'endMonth':
          result.endMonth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'endYear':
          result.endYear = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'linkedDocuments':
          result.linkedDocuments.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocumentsSerializer
    implements
        StructuredSerializer<
            Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments> {
  @override
  final Iterable<Type> types = const [
    Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments,
    _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments
  ];
  @override
  final String wireName =
      'Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'linkId',
      serializers.serialize(object.linkId,
          specifiedType: const FullType(String)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(
              Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document)),
    ];

    return result;
  }

  @override
  Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocumentsBuilder();

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
        case 'linkId':
          result.linkId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'document':
          result.document.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document))!
              as Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_documentSerializer
    implements
        StructuredSerializer<
            Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document> {
  @override
  final Iterable<Type> types = const [
    Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document,
    _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document
  ];
  @override
  final String wireName =
      'Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_documentBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_traitementsData_treatments_treatments_linkedAllergiesSerializer
    implements
        StructuredSerializer<
            Gget_traitementsData_treatments_treatments_linkedAllergies> {
  @override
  final Iterable<Type> types = const [
    Gget_traitementsData_treatments_treatments_linkedAllergies,
    _$Gget_traitementsData_treatments_treatments_linkedAllergies
  ];
  @override
  final String wireName =
      'Gget_traitementsData_treatments_treatments_linkedAllergies';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_traitementsData_treatments_treatments_linkedAllergies object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'linkId',
      serializers.serialize(object.linkId,
          specifiedType: const FullType(String)),
      'allergy',
      serializers.serialize(object.allergy,
          specifiedType: const FullType(
              Gget_traitementsData_treatments_treatments_linkedAllergies_allergy)),
    ];

    return result;
  }

  @override
  Gget_traitementsData_treatments_treatments_linkedAllergies deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_traitementsData_treatments_treatments_linkedAllergiesBuilder();

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
        case 'linkId':
          result.linkId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'allergy':
          result.allergy.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_traitementsData_treatments_treatments_linkedAllergies_allergy))!
              as Gget_traitementsData_treatments_treatments_linkedAllergies_allergy);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_traitementsData_treatments_treatments_linkedAllergies_allergySerializer
    implements
        StructuredSerializer<
            Gget_traitementsData_treatments_treatments_linkedAllergies_allergy> {
  @override
  final Iterable<Type> types = const [
    Gget_traitementsData_treatments_treatments_linkedAllergies_allergy,
    _$Gget_traitementsData_treatments_treatments_linkedAllergies_allergy
  ];
  @override
  final String wireName =
      'Gget_traitementsData_treatments_treatments_linkedAllergies_allergy';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_traitementsData_treatments_treatments_linkedAllergies_allergy object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_traitementsData_treatments_treatments_linkedAllergies_allergy
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_traitementsData_treatments_treatments_linkedAllergies_allergyBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_traitementsData extends Gget_traitementsData {
  @override
  final String G__typename;
  @override
  final Gget_traitementsData_treatments? treatments;

  factory _$Gget_traitementsData(
          [void Function(Gget_traitementsDataBuilder)? updates]) =>
      (new Gget_traitementsDataBuilder()..update(updates))._build();

  _$Gget_traitementsData._({required this.G__typename, this.treatments})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_traitementsData', 'G__typename');
  }

  @override
  Gget_traitementsData rebuild(
          void Function(Gget_traitementsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_traitementsDataBuilder toBuilder() =>
      new Gget_traitementsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_traitementsData &&
        G__typename == other.G__typename &&
        treatments == other.treatments;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, treatments.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_traitementsData')
          ..add('G__typename', G__typename)
          ..add('treatments', treatments))
        .toString();
  }
}

class Gget_traitementsDataBuilder
    implements Builder<Gget_traitementsData, Gget_traitementsDataBuilder> {
  _$Gget_traitementsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_traitementsData_treatmentsBuilder? _treatments;
  Gget_traitementsData_treatmentsBuilder get treatments =>
      _$this._treatments ??= new Gget_traitementsData_treatmentsBuilder();
  set treatments(Gget_traitementsData_treatmentsBuilder? treatments) =>
      _$this._treatments = treatments;

  Gget_traitementsDataBuilder() {
    Gget_traitementsData._initializeBuilder(this);
  }

  Gget_traitementsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _treatments = $v.treatments?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_traitementsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_traitementsData;
  }

  @override
  void update(void Function(Gget_traitementsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_traitementsData build() => _build();

  _$Gget_traitementsData _build() {
    _$Gget_traitementsData _$result;
    try {
      _$result = _$v ??
          new _$Gget_traitementsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_traitementsData', 'G__typename'),
              treatments: _treatments?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'treatments';
        _treatments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_traitementsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_traitementsData_treatments
    extends Gget_traitementsData_treatments {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_traitementsData_treatments_treatments> treatments;
  @override
  final String? unconcernedDeclarationDate;

  factory _$Gget_traitementsData_treatments(
          [void Function(Gget_traitementsData_treatmentsBuilder)? updates]) =>
      (new Gget_traitementsData_treatmentsBuilder()..update(updates))._build();

  _$Gget_traitementsData_treatments._(
      {required this.G__typename,
      required this.treatments,
      this.unconcernedDeclarationDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_traitementsData_treatments', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        treatments, r'Gget_traitementsData_treatments', 'treatments');
  }

  @override
  Gget_traitementsData_treatments rebuild(
          void Function(Gget_traitementsData_treatmentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_traitementsData_treatmentsBuilder toBuilder() =>
      new Gget_traitementsData_treatmentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_traitementsData_treatments &&
        G__typename == other.G__typename &&
        treatments == other.treatments &&
        unconcernedDeclarationDate == other.unconcernedDeclarationDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, treatments.hashCode);
    _$hash = $jc(_$hash, unconcernedDeclarationDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_traitementsData_treatments')
          ..add('G__typename', G__typename)
          ..add('treatments', treatments)
          ..add('unconcernedDeclarationDate', unconcernedDeclarationDate))
        .toString();
  }
}

class Gget_traitementsData_treatmentsBuilder
    implements
        Builder<Gget_traitementsData_treatments,
            Gget_traitementsData_treatmentsBuilder> {
  _$Gget_traitementsData_treatments? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_traitementsData_treatments_treatments>? _treatments;
  ListBuilder<Gget_traitementsData_treatments_treatments> get treatments =>
      _$this._treatments ??=
          new ListBuilder<Gget_traitementsData_treatments_treatments>();
  set treatments(
          ListBuilder<Gget_traitementsData_treatments_treatments>?
              treatments) =>
      _$this._treatments = treatments;

  String? _unconcernedDeclarationDate;
  String? get unconcernedDeclarationDate => _$this._unconcernedDeclarationDate;
  set unconcernedDeclarationDate(String? unconcernedDeclarationDate) =>
      _$this._unconcernedDeclarationDate = unconcernedDeclarationDate;

  Gget_traitementsData_treatmentsBuilder() {
    Gget_traitementsData_treatments._initializeBuilder(this);
  }

  Gget_traitementsData_treatmentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _treatments = $v.treatments.toBuilder();
      _unconcernedDeclarationDate = $v.unconcernedDeclarationDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_traitementsData_treatments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_traitementsData_treatments;
  }

  @override
  void update(void Function(Gget_traitementsData_treatmentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_traitementsData_treatments build() => _build();

  _$Gget_traitementsData_treatments _build() {
    _$Gget_traitementsData_treatments _$result;
    try {
      _$result = _$v ??
          new _$Gget_traitementsData_treatments._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_traitementsData_treatments', 'G__typename'),
              treatments: treatments.build(),
              unconcernedDeclarationDate: unconcernedDeclarationDate);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'treatments';
        treatments.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_traitementsData_treatments', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_traitementsData_treatments_treatments
    extends Gget_traitementsData_treatments_treatments {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String? comment;
  @override
  final String? startDay;
  @override
  final String? startMonth;
  @override
  final String startYear;
  @override
  final String? endDay;
  @override
  final String? endMonth;
  @override
  final String? endYear;
  @override
  final String? dosage;
  @override
  final BuiltList<Gget_traitementsData_treatments_treatments_linkedDiseases>?
      linkedDiseases;
  @override
  final BuiltList<Gget_traitementsData_treatments_treatments_linkedAllergies>?
      linkedAllergies;

  factory _$Gget_traitementsData_treatments_treatments(
          [void Function(Gget_traitementsData_treatments_treatmentsBuilder)?
              updates]) =>
      (new Gget_traitementsData_treatments_treatmentsBuilder()..update(updates))
          ._build();

  _$Gget_traitementsData_treatments_treatments._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.comment,
      this.startDay,
      this.startMonth,
      required this.startYear,
      this.endDay,
      this.endMonth,
      this.endYear,
      this.dosage,
      this.linkedDiseases,
      this.linkedAllergies})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_traitementsData_treatments_treatments', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gget_traitementsData_treatments_treatments', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'Gget_traitementsData_treatments_treatments', 'name');
    BuiltValueNullFieldError.checkNotNull(
        startYear, r'Gget_traitementsData_treatments_treatments', 'startYear');
  }

  @override
  Gget_traitementsData_treatments_treatments rebuild(
          void Function(Gget_traitementsData_treatments_treatmentsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_traitementsData_treatments_treatmentsBuilder toBuilder() =>
      new Gget_traitementsData_treatments_treatmentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_traitementsData_treatments_treatments &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        comment == other.comment &&
        startDay == other.startDay &&
        startMonth == other.startMonth &&
        startYear == other.startYear &&
        endDay == other.endDay &&
        endMonth == other.endMonth &&
        endYear == other.endYear &&
        dosage == other.dosage &&
        linkedDiseases == other.linkedDiseases &&
        linkedAllergies == other.linkedAllergies;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, startDay.hashCode);
    _$hash = $jc(_$hash, startMonth.hashCode);
    _$hash = $jc(_$hash, startYear.hashCode);
    _$hash = $jc(_$hash, endDay.hashCode);
    _$hash = $jc(_$hash, endMonth.hashCode);
    _$hash = $jc(_$hash, endYear.hashCode);
    _$hash = $jc(_$hash, dosage.hashCode);
    _$hash = $jc(_$hash, linkedDiseases.hashCode);
    _$hash = $jc(_$hash, linkedAllergies.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_traitementsData_treatments_treatments')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('comment', comment)
          ..add('startDay', startDay)
          ..add('startMonth', startMonth)
          ..add('startYear', startYear)
          ..add('endDay', endDay)
          ..add('endMonth', endMonth)
          ..add('endYear', endYear)
          ..add('dosage', dosage)
          ..add('linkedDiseases', linkedDiseases)
          ..add('linkedAllergies', linkedAllergies))
        .toString();
  }
}

class Gget_traitementsData_treatments_treatmentsBuilder
    implements
        Builder<Gget_traitementsData_treatments_treatments,
            Gget_traitementsData_treatments_treatmentsBuilder> {
  _$Gget_traitementsData_treatments_treatments? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  String? _startDay;
  String? get startDay => _$this._startDay;
  set startDay(String? startDay) => _$this._startDay = startDay;

  String? _startMonth;
  String? get startMonth => _$this._startMonth;
  set startMonth(String? startMonth) => _$this._startMonth = startMonth;

  String? _startYear;
  String? get startYear => _$this._startYear;
  set startYear(String? startYear) => _$this._startYear = startYear;

  String? _endDay;
  String? get endDay => _$this._endDay;
  set endDay(String? endDay) => _$this._endDay = endDay;

  String? _endMonth;
  String? get endMonth => _$this._endMonth;
  set endMonth(String? endMonth) => _$this._endMonth = endMonth;

  String? _endYear;
  String? get endYear => _$this._endYear;
  set endYear(String? endYear) => _$this._endYear = endYear;

  String? _dosage;
  String? get dosage => _$this._dosage;
  set dosage(String? dosage) => _$this._dosage = dosage;

  ListBuilder<Gget_traitementsData_treatments_treatments_linkedDiseases>?
      _linkedDiseases;
  ListBuilder<Gget_traitementsData_treatments_treatments_linkedDiseases>
      get linkedDiseases => _$this._linkedDiseases ??= new ListBuilder<
          Gget_traitementsData_treatments_treatments_linkedDiseases>();
  set linkedDiseases(
          ListBuilder<
                  Gget_traitementsData_treatments_treatments_linkedDiseases>?
              linkedDiseases) =>
      _$this._linkedDiseases = linkedDiseases;

  ListBuilder<Gget_traitementsData_treatments_treatments_linkedAllergies>?
      _linkedAllergies;
  ListBuilder<Gget_traitementsData_treatments_treatments_linkedAllergies>
      get linkedAllergies => _$this._linkedAllergies ??= new ListBuilder<
          Gget_traitementsData_treatments_treatments_linkedAllergies>();
  set linkedAllergies(
          ListBuilder<
                  Gget_traitementsData_treatments_treatments_linkedAllergies>?
              linkedAllergies) =>
      _$this._linkedAllergies = linkedAllergies;

  Gget_traitementsData_treatments_treatmentsBuilder() {
    Gget_traitementsData_treatments_treatments._initializeBuilder(this);
  }

  Gget_traitementsData_treatments_treatmentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _comment = $v.comment;
      _startDay = $v.startDay;
      _startMonth = $v.startMonth;
      _startYear = $v.startYear;
      _endDay = $v.endDay;
      _endMonth = $v.endMonth;
      _endYear = $v.endYear;
      _dosage = $v.dosage;
      _linkedDiseases = $v.linkedDiseases?.toBuilder();
      _linkedAllergies = $v.linkedAllergies?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_traitementsData_treatments_treatments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_traitementsData_treatments_treatments;
  }

  @override
  void update(
      void Function(Gget_traitementsData_treatments_treatmentsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_traitementsData_treatments_treatments build() => _build();

  _$Gget_traitementsData_treatments_treatments _build() {
    _$Gget_traitementsData_treatments_treatments _$result;
    try {
      _$result = _$v ??
          new _$Gget_traitementsData_treatments_treatments._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_traitementsData_treatments_treatments', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gget_traitementsData_treatments_treatments', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'Gget_traitementsData_treatments_treatments', 'name'),
              comment: comment,
              startDay: startDay,
              startMonth: startMonth,
              startYear: BuiltValueNullFieldError.checkNotNull(startYear,
                  r'Gget_traitementsData_treatments_treatments', 'startYear'),
              endDay: endDay,
              endMonth: endMonth,
              endYear: endYear,
              dosage: dosage,
              linkedDiseases: _linkedDiseases?.build(),
              linkedAllergies: _linkedAllergies?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'linkedDiseases';
        _linkedDiseases?.build();
        _$failedField = 'linkedAllergies';
        _linkedAllergies?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_traitementsData_treatments_treatments',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_traitementsData_treatments_treatments_linkedDiseases
    extends Gget_traitementsData_treatments_treatments_linkedDiseases {
  @override
  final String G__typename;
  @override
  final String linkId;
  @override
  final Gget_traitementsData_treatments_treatments_linkedDiseases_disease
      disease;

  factory _$Gget_traitementsData_treatments_treatments_linkedDiseases(
          [void Function(
                  Gget_traitementsData_treatments_treatments_linkedDiseasesBuilder)?
              updates]) =>
      (new Gget_traitementsData_treatments_treatments_linkedDiseasesBuilder()
            ..update(updates))
          ._build();

  _$Gget_traitementsData_treatments_treatments_linkedDiseases._(
      {required this.G__typename, required this.linkId, required this.disease})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_traitementsData_treatments_treatments_linkedDiseases',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(linkId,
        r'Gget_traitementsData_treatments_treatments_linkedDiseases', 'linkId');
    BuiltValueNullFieldError.checkNotNull(
        disease,
        r'Gget_traitementsData_treatments_treatments_linkedDiseases',
        'disease');
  }

  @override
  Gget_traitementsData_treatments_treatments_linkedDiseases rebuild(
          void Function(
                  Gget_traitementsData_treatments_treatments_linkedDiseasesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_traitementsData_treatments_treatments_linkedDiseasesBuilder
      toBuilder() =>
          new Gget_traitementsData_treatments_treatments_linkedDiseasesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_traitementsData_treatments_treatments_linkedDiseases &&
        G__typename == other.G__typename &&
        linkId == other.linkId &&
        disease == other.disease;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, linkId.hashCode);
    _$hash = $jc(_$hash, disease.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_traitementsData_treatments_treatments_linkedDiseases')
          ..add('G__typename', G__typename)
          ..add('linkId', linkId)
          ..add('disease', disease))
        .toString();
  }
}

class Gget_traitementsData_treatments_treatments_linkedDiseasesBuilder
    implements
        Builder<Gget_traitementsData_treatments_treatments_linkedDiseases,
            Gget_traitementsData_treatments_treatments_linkedDiseasesBuilder> {
  _$Gget_traitementsData_treatments_treatments_linkedDiseases? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _linkId;
  String? get linkId => _$this._linkId;
  set linkId(String? linkId) => _$this._linkId = linkId;

  Gget_traitementsData_treatments_treatments_linkedDiseases_diseaseBuilder?
      _disease;
  Gget_traitementsData_treatments_treatments_linkedDiseases_diseaseBuilder
      get disease => _$this._disease ??=
          new Gget_traitementsData_treatments_treatments_linkedDiseases_diseaseBuilder();
  set disease(
          Gget_traitementsData_treatments_treatments_linkedDiseases_diseaseBuilder?
              disease) =>
      _$this._disease = disease;

  Gget_traitementsData_treatments_treatments_linkedDiseasesBuilder() {
    Gget_traitementsData_treatments_treatments_linkedDiseases
        ._initializeBuilder(this);
  }

  Gget_traitementsData_treatments_treatments_linkedDiseasesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _linkId = $v.linkId;
      _disease = $v.disease.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_traitementsData_treatments_treatments_linkedDiseases other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_traitementsData_treatments_treatments_linkedDiseases;
  }

  @override
  void update(
      void Function(
              Gget_traitementsData_treatments_treatments_linkedDiseasesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_traitementsData_treatments_treatments_linkedDiseases build() => _build();

  _$Gget_traitementsData_treatments_treatments_linkedDiseases _build() {
    _$Gget_traitementsData_treatments_treatments_linkedDiseases _$result;
    try {
      _$result = _$v ??
          new _$Gget_traitementsData_treatments_treatments_linkedDiseases._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_traitementsData_treatments_treatments_linkedDiseases',
                  'G__typename'),
              linkId: BuiltValueNullFieldError.checkNotNull(
                  linkId,
                  r'Gget_traitementsData_treatments_treatments_linkedDiseases',
                  'linkId'),
              disease: disease.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'disease';
        disease.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_traitementsData_treatments_treatments_linkedDiseases',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease
    extends Gget_traitementsData_treatments_treatments_linkedDiseases_disease {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String? comment;
  @override
  final String? startDay;
  @override
  final String? startMonth;
  @override
  final String startYear;
  @override
  final String? endDay;
  @override
  final String? endMonth;
  @override
  final String? endYear;
  @override
  final BuiltList<
          Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments>?
      linkedDocuments;

  factory _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease(
          [void Function(
                  Gget_traitementsData_treatments_treatments_linkedDiseases_diseaseBuilder)?
              updates]) =>
      (new Gget_traitementsData_treatments_treatments_linkedDiseases_diseaseBuilder()
            ..update(updates))
          ._build();

  _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.comment,
      this.startDay,
      this.startMonth,
      required this.startYear,
      this.endDay,
      this.endMonth,
      this.endYear,
      this.linkedDocuments})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_traitementsData_treatments_treatments_linkedDiseases_disease',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gget_traitementsData_treatments_treatments_linkedDiseases_disease',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'Gget_traitementsData_treatments_treatments_linkedDiseases_disease',
        'name');
    BuiltValueNullFieldError.checkNotNull(
        startYear,
        r'Gget_traitementsData_treatments_treatments_linkedDiseases_disease',
        'startYear');
  }

  @override
  Gget_traitementsData_treatments_treatments_linkedDiseases_disease rebuild(
          void Function(
                  Gget_traitementsData_treatments_treatments_linkedDiseases_diseaseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_traitementsData_treatments_treatments_linkedDiseases_diseaseBuilder
      toBuilder() =>
          new Gget_traitementsData_treatments_treatments_linkedDiseases_diseaseBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_traitementsData_treatments_treatments_linkedDiseases_disease &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        comment == other.comment &&
        startDay == other.startDay &&
        startMonth == other.startMonth &&
        startYear == other.startYear &&
        endDay == other.endDay &&
        endMonth == other.endMonth &&
        endYear == other.endYear &&
        linkedDocuments == other.linkedDocuments;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, startDay.hashCode);
    _$hash = $jc(_$hash, startMonth.hashCode);
    _$hash = $jc(_$hash, startYear.hashCode);
    _$hash = $jc(_$hash, endDay.hashCode);
    _$hash = $jc(_$hash, endMonth.hashCode);
    _$hash = $jc(_$hash, endYear.hashCode);
    _$hash = $jc(_$hash, linkedDocuments.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_traitementsData_treatments_treatments_linkedDiseases_disease')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('comment', comment)
          ..add('startDay', startDay)
          ..add('startMonth', startMonth)
          ..add('startYear', startYear)
          ..add('endDay', endDay)
          ..add('endMonth', endMonth)
          ..add('endYear', endYear)
          ..add('linkedDocuments', linkedDocuments))
        .toString();
  }
}

class Gget_traitementsData_treatments_treatments_linkedDiseases_diseaseBuilder
    implements
        Builder<
            Gget_traitementsData_treatments_treatments_linkedDiseases_disease,
            Gget_traitementsData_treatments_treatments_linkedDiseases_diseaseBuilder> {
  _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  String? _startDay;
  String? get startDay => _$this._startDay;
  set startDay(String? startDay) => _$this._startDay = startDay;

  String? _startMonth;
  String? get startMonth => _$this._startMonth;
  set startMonth(String? startMonth) => _$this._startMonth = startMonth;

  String? _startYear;
  String? get startYear => _$this._startYear;
  set startYear(String? startYear) => _$this._startYear = startYear;

  String? _endDay;
  String? get endDay => _$this._endDay;
  set endDay(String? endDay) => _$this._endDay = endDay;

  String? _endMonth;
  String? get endMonth => _$this._endMonth;
  set endMonth(String? endMonth) => _$this._endMonth = endMonth;

  String? _endYear;
  String? get endYear => _$this._endYear;
  set endYear(String? endYear) => _$this._endYear = endYear;

  ListBuilder<
          Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments>?
      _linkedDocuments;
  ListBuilder<
          Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments>
      get linkedDocuments => _$this._linkedDocuments ??= new ListBuilder<
          Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments>();
  set linkedDocuments(
          ListBuilder<
                  Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments>?
              linkedDocuments) =>
      _$this._linkedDocuments = linkedDocuments;

  Gget_traitementsData_treatments_treatments_linkedDiseases_diseaseBuilder() {
    Gget_traitementsData_treatments_treatments_linkedDiseases_disease
        ._initializeBuilder(this);
  }

  Gget_traitementsData_treatments_treatments_linkedDiseases_diseaseBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _comment = $v.comment;
      _startDay = $v.startDay;
      _startMonth = $v.startMonth;
      _startYear = $v.startYear;
      _endDay = $v.endDay;
      _endMonth = $v.endMonth;
      _endYear = $v.endYear;
      _linkedDocuments = $v.linkedDocuments?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_traitementsData_treatments_treatments_linkedDiseases_disease other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease;
  }

  @override
  void update(
      void Function(
              Gget_traitementsData_treatments_treatments_linkedDiseases_diseaseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_traitementsData_treatments_treatments_linkedDiseases_disease build() =>
      _build();

  _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease _build() {
    _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_traitementsData_treatments_treatments_linkedDiseases_disease',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(id,
                  r'Gget_traitementsData_treatments_treatments_linkedDiseases_disease', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name,
                  r'Gget_traitementsData_treatments_treatments_linkedDiseases_disease',
                  'name'),
              comment: comment,
              startDay: startDay,
              startMonth: startMonth,
              startYear: BuiltValueNullFieldError.checkNotNull(
                  startYear,
                  r'Gget_traitementsData_treatments_treatments_linkedDiseases_disease',
                  'startYear'),
              endDay: endDay,
              endMonth: endMonth,
              endYear: endYear,
              linkedDocuments: _linkedDocuments?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'linkedDocuments';
        _linkedDocuments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_traitementsData_treatments_treatments_linkedDiseases_disease',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments
    extends Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments {
  @override
  final String G__typename;
  @override
  final String linkId;
  @override
  final Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document
      document;

  factory _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments(
          [void Function(
                  Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocumentsBuilder)?
              updates]) =>
      (new Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocumentsBuilder()
            ..update(updates))
          ._build();

  _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments._(
      {required this.G__typename, required this.linkId, required this.document})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        linkId,
        r'Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments',
        'linkId');
    BuiltValueNullFieldError.checkNotNull(
        document,
        r'Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments',
        'document');
  }

  @override
  Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments
      rebuild(
              void Function(
                      Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocumentsBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocumentsBuilder
      toBuilder() =>
          new Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocumentsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments &&
        G__typename == other.G__typename &&
        linkId == other.linkId &&
        document == other.document;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, linkId.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments')
          ..add('G__typename', G__typename)
          ..add('linkId', linkId)
          ..add('document', document))
        .toString();
  }
}

class Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocumentsBuilder
    implements
        Builder<
            Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments,
            Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocumentsBuilder> {
  _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _linkId;
  String? get linkId => _$this._linkId;
  set linkId(String? linkId) => _$this._linkId = linkId;

  Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_documentBuilder?
      _document;
  Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_documentBuilder
      get document => _$this._document ??=
          new Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_documentBuilder();
  set document(
          Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_documentBuilder?
              document) =>
      _$this._document = document;

  Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocumentsBuilder() {
    Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments
        ._initializeBuilder(this);
  }

  Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocumentsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _linkId = $v.linkId;
      _document = $v.document.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments;
  }

  @override
  void update(
      void Function(
              Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocumentsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments
      build() => _build();

  _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments
      _build() {
    _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments',
                  'G__typename'),
              linkId: BuiltValueNullFieldError.checkNotNull(
                  linkId,
                  r'Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments',
                  'linkId'),
              document: document.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'document';
        document.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document
    extends Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String title;

  factory _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document(
          [void Function(
                  Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_documentBuilder)?
              updates]) =>
      (new Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_documentBuilder()
            ..update(updates))
          ._build();

  _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document._(
      {required this.G__typename, required this.id, required this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        title,
        r'Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document',
        'title');
  }

  @override
  Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document
      rebuild(
              void Function(
                      Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_documentBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_documentBuilder
      toBuilder() =>
          new Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_documentBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title))
        .toString();
  }
}

class Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_documentBuilder
    implements
        Builder<
            Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document,
            Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_documentBuilder> {
  _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_documentBuilder() {
    Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document
        ._initializeBuilder(this);
  }

  Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_documentBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document;
  }

  @override
  void update(
      void Function(
              Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_documentBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document
      build() => _build();

  _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document
      _build() {
    final _$result = _$v ??
        new _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document',
                'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title,
                r'Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document',
                'title'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_traitementsData_treatments_treatments_linkedAllergies
    extends Gget_traitementsData_treatments_treatments_linkedAllergies {
  @override
  final String G__typename;
  @override
  final String linkId;
  @override
  final Gget_traitementsData_treatments_treatments_linkedAllergies_allergy
      allergy;

  factory _$Gget_traitementsData_treatments_treatments_linkedAllergies(
          [void Function(
                  Gget_traitementsData_treatments_treatments_linkedAllergiesBuilder)?
              updates]) =>
      (new Gget_traitementsData_treatments_treatments_linkedAllergiesBuilder()
            ..update(updates))
          ._build();

  _$Gget_traitementsData_treatments_treatments_linkedAllergies._(
      {required this.G__typename, required this.linkId, required this.allergy})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_traitementsData_treatments_treatments_linkedAllergies',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        linkId,
        r'Gget_traitementsData_treatments_treatments_linkedAllergies',
        'linkId');
    BuiltValueNullFieldError.checkNotNull(
        allergy,
        r'Gget_traitementsData_treatments_treatments_linkedAllergies',
        'allergy');
  }

  @override
  Gget_traitementsData_treatments_treatments_linkedAllergies rebuild(
          void Function(
                  Gget_traitementsData_treatments_treatments_linkedAllergiesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_traitementsData_treatments_treatments_linkedAllergiesBuilder
      toBuilder() =>
          new Gget_traitementsData_treatments_treatments_linkedAllergiesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_traitementsData_treatments_treatments_linkedAllergies &&
        G__typename == other.G__typename &&
        linkId == other.linkId &&
        allergy == other.allergy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, linkId.hashCode);
    _$hash = $jc(_$hash, allergy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_traitementsData_treatments_treatments_linkedAllergies')
          ..add('G__typename', G__typename)
          ..add('linkId', linkId)
          ..add('allergy', allergy))
        .toString();
  }
}

class Gget_traitementsData_treatments_treatments_linkedAllergiesBuilder
    implements
        Builder<Gget_traitementsData_treatments_treatments_linkedAllergies,
            Gget_traitementsData_treatments_treatments_linkedAllergiesBuilder> {
  _$Gget_traitementsData_treatments_treatments_linkedAllergies? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _linkId;
  String? get linkId => _$this._linkId;
  set linkId(String? linkId) => _$this._linkId = linkId;

  Gget_traitementsData_treatments_treatments_linkedAllergies_allergyBuilder?
      _allergy;
  Gget_traitementsData_treatments_treatments_linkedAllergies_allergyBuilder
      get allergy => _$this._allergy ??=
          new Gget_traitementsData_treatments_treatments_linkedAllergies_allergyBuilder();
  set allergy(
          Gget_traitementsData_treatments_treatments_linkedAllergies_allergyBuilder?
              allergy) =>
      _$this._allergy = allergy;

  Gget_traitementsData_treatments_treatments_linkedAllergiesBuilder() {
    Gget_traitementsData_treatments_treatments_linkedAllergies
        ._initializeBuilder(this);
  }

  Gget_traitementsData_treatments_treatments_linkedAllergiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _linkId = $v.linkId;
      _allergy = $v.allergy.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_traitementsData_treatments_treatments_linkedAllergies other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_traitementsData_treatments_treatments_linkedAllergies;
  }

  @override
  void update(
      void Function(
              Gget_traitementsData_treatments_treatments_linkedAllergiesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_traitementsData_treatments_treatments_linkedAllergies build() =>
      _build();

  _$Gget_traitementsData_treatments_treatments_linkedAllergies _build() {
    _$Gget_traitementsData_treatments_treatments_linkedAllergies _$result;
    try {
      _$result = _$v ??
          new _$Gget_traitementsData_treatments_treatments_linkedAllergies._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_traitementsData_treatments_treatments_linkedAllergies',
                  'G__typename'),
              linkId: BuiltValueNullFieldError.checkNotNull(
                  linkId,
                  r'Gget_traitementsData_treatments_treatments_linkedAllergies',
                  'linkId'),
              allergy: allergy.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allergy';
        allergy.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_traitementsData_treatments_treatments_linkedAllergies',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_traitementsData_treatments_treatments_linkedAllergies_allergy
    extends Gget_traitementsData_treatments_treatments_linkedAllergies_allergy {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String? comment;

  factory _$Gget_traitementsData_treatments_treatments_linkedAllergies_allergy(
          [void Function(
                  Gget_traitementsData_treatments_treatments_linkedAllergies_allergyBuilder)?
              updates]) =>
      (new Gget_traitementsData_treatments_treatments_linkedAllergies_allergyBuilder()
            ..update(updates))
          ._build();

  _$Gget_traitementsData_treatments_treatments_linkedAllergies_allergy._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.comment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_traitementsData_treatments_treatments_linkedAllergies_allergy',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gget_traitementsData_treatments_treatments_linkedAllergies_allergy',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'Gget_traitementsData_treatments_treatments_linkedAllergies_allergy',
        'name');
  }

  @override
  Gget_traitementsData_treatments_treatments_linkedAllergies_allergy rebuild(
          void Function(
                  Gget_traitementsData_treatments_treatments_linkedAllergies_allergyBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_traitementsData_treatments_treatments_linkedAllergies_allergyBuilder
      toBuilder() =>
          new Gget_traitementsData_treatments_treatments_linkedAllergies_allergyBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_traitementsData_treatments_treatments_linkedAllergies_allergy &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        comment == other.comment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_traitementsData_treatments_treatments_linkedAllergies_allergy')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('comment', comment))
        .toString();
  }
}

class Gget_traitementsData_treatments_treatments_linkedAllergies_allergyBuilder
    implements
        Builder<
            Gget_traitementsData_treatments_treatments_linkedAllergies_allergy,
            Gget_traitementsData_treatments_treatments_linkedAllergies_allergyBuilder> {
  _$Gget_traitementsData_treatments_treatments_linkedAllergies_allergy? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  Gget_traitementsData_treatments_treatments_linkedAllergies_allergyBuilder() {
    Gget_traitementsData_treatments_treatments_linkedAllergies_allergy
        ._initializeBuilder(this);
  }

  Gget_traitementsData_treatments_treatments_linkedAllergies_allergyBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _comment = $v.comment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_traitementsData_treatments_treatments_linkedAllergies_allergy
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_traitementsData_treatments_treatments_linkedAllergies_allergy;
  }

  @override
  void update(
      void Function(
              Gget_traitementsData_treatments_treatments_linkedAllergies_allergyBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_traitementsData_treatments_treatments_linkedAllergies_allergy build() =>
      _build();

  _$Gget_traitementsData_treatments_treatments_linkedAllergies_allergy
      _build() {
    final _$result = _$v ??
        new _$Gget_traitementsData_treatments_treatments_linkedAllergies_allergy._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_traitementsData_treatments_treatments_linkedAllergies_allergy',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(id,
                r'Gget_traitementsData_treatments_treatments_linkedAllergies_allergy', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'Gget_traitementsData_treatments_treatments_linkedAllergies_allergy',
                'name'),
            comment: comment);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
