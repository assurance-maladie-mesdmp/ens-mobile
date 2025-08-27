// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_traitement.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GtraitementData> _$gtraitementDataSerializer =
    new _$GtraitementDataSerializer();
Serializer<GtraitementData_linkedDiseases>
    _$gtraitementDataLinkedDiseasesSerializer =
    new _$GtraitementData_linkedDiseasesSerializer();
Serializer<GtraitementData_linkedDiseases_disease>
    _$gtraitementDataLinkedDiseasesDiseaseSerializer =
    new _$GtraitementData_linkedDiseases_diseaseSerializer();
Serializer<GtraitementData_linkedDiseases_disease_linkedDocuments>
    _$gtraitementDataLinkedDiseasesDiseaseLinkedDocumentsSerializer =
    new _$GtraitementData_linkedDiseases_disease_linkedDocumentsSerializer();
Serializer<GtraitementData_linkedDiseases_disease_linkedDocuments_document>
    _$gtraitementDataLinkedDiseasesDiseaseLinkedDocumentsDocumentSerializer =
    new _$GtraitementData_linkedDiseases_disease_linkedDocuments_documentSerializer();
Serializer<GtraitementData_linkedAllergies>
    _$gtraitementDataLinkedAllergiesSerializer =
    new _$GtraitementData_linkedAllergiesSerializer();
Serializer<GtraitementData_linkedAllergies_allergy>
    _$gtraitementDataLinkedAllergiesAllergySerializer =
    new _$GtraitementData_linkedAllergies_allergySerializer();
Serializer<GmaladieLieData> _$gmaladieLieDataSerializer =
    new _$GmaladieLieDataSerializer();
Serializer<GmaladieLieData_disease> _$gmaladieLieDataDiseaseSerializer =
    new _$GmaladieLieData_diseaseSerializer();
Serializer<GmaladieLieData_disease_linkedDocuments>
    _$gmaladieLieDataDiseaseLinkedDocumentsSerializer =
    new _$GmaladieLieData_disease_linkedDocumentsSerializer();
Serializer<GmaladieLieData_disease_linkedDocuments_document>
    _$gmaladieLieDataDiseaseLinkedDocumentsDocumentSerializer =
    new _$GmaladieLieData_disease_linkedDocuments_documentSerializer();
Serializer<GallergieLieData> _$gallergieLieDataSerializer =
    new _$GallergieLieDataSerializer();
Serializer<GallergieLieData_allergy> _$gallergieLieDataAllergySerializer =
    new _$GallergieLieData_allergySerializer();
Serializer<GmaladieSansTraitementLieData>
    _$gmaladieSansTraitementLieDataSerializer =
    new _$GmaladieSansTraitementLieDataSerializer();
Serializer<GmaladieSansTraitementLieData_linkedDocuments>
    _$gmaladieSansTraitementLieDataLinkedDocumentsSerializer =
    new _$GmaladieSansTraitementLieData_linkedDocumentsSerializer();
Serializer<GmaladieSansTraitementLieData_linkedDocuments_document>
    _$gmaladieSansTraitementLieDataLinkedDocumentsDocumentSerializer =
    new _$GmaladieSansTraitementLieData_linkedDocuments_documentSerializer();

class _$GtraitementDataSerializer
    implements StructuredSerializer<GtraitementData> {
  @override
  final Iterable<Type> types = const [GtraitementData, _$GtraitementData];
  @override
  final String wireName = 'GtraitementData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GtraitementData object,
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
            specifiedType: const FullType(BuiltList,
                const [const FullType(GtraitementData_linkedDiseases)])));
    }
    value = object.linkedAllergies;
    if (value != null) {
      result
        ..add('linkedAllergies')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GtraitementData_linkedAllergies)])));
    }
    return result;
  }

  @override
  GtraitementData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GtraitementDataBuilder();

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
                const FullType(GtraitementData_linkedDiseases)
              ]))! as BuiltList<Object?>);
          break;
        case 'linkedAllergies':
          result.linkedAllergies.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GtraitementData_linkedAllergies)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GtraitementData_linkedDiseasesSerializer
    implements StructuredSerializer<GtraitementData_linkedDiseases> {
  @override
  final Iterable<Type> types = const [
    GtraitementData_linkedDiseases,
    _$GtraitementData_linkedDiseases
  ];
  @override
  final String wireName = 'GtraitementData_linkedDiseases';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GtraitementData_linkedDiseases object,
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
          specifiedType:
              const FullType(GtraitementData_linkedDiseases_disease)),
    ];

    return result;
  }

  @override
  GtraitementData_linkedDiseases deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GtraitementData_linkedDiseasesBuilder();

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
                  specifiedType:
                      const FullType(GtraitementData_linkedDiseases_disease))!
              as GtraitementData_linkedDiseases_disease);
          break;
      }
    }

    return result.build();
  }
}

class _$GtraitementData_linkedDiseases_diseaseSerializer
    implements StructuredSerializer<GtraitementData_linkedDiseases_disease> {
  @override
  final Iterable<Type> types = const [
    GtraitementData_linkedDiseases_disease,
    _$GtraitementData_linkedDiseases_disease
  ];
  @override
  final String wireName = 'GtraitementData_linkedDiseases_disease';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GtraitementData_linkedDiseases_disease object,
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
                  GtraitementData_linkedDiseases_disease_linkedDocuments)
            ])));
    }
    return result;
  }

  @override
  GtraitementData_linkedDiseases_disease deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GtraitementData_linkedDiseases_diseaseBuilder();

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
                    GtraitementData_linkedDiseases_disease_linkedDocuments)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GtraitementData_linkedDiseases_disease_linkedDocumentsSerializer
    implements
        StructuredSerializer<
            GtraitementData_linkedDiseases_disease_linkedDocuments> {
  @override
  final Iterable<Type> types = const [
    GtraitementData_linkedDiseases_disease_linkedDocuments,
    _$GtraitementData_linkedDiseases_disease_linkedDocuments
  ];
  @override
  final String wireName =
      'GtraitementData_linkedDiseases_disease_linkedDocuments';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GtraitementData_linkedDiseases_disease_linkedDocuments object,
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
              GtraitementData_linkedDiseases_disease_linkedDocuments_document)),
    ];

    return result;
  }

  @override
  GtraitementData_linkedDiseases_disease_linkedDocuments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GtraitementData_linkedDiseases_disease_linkedDocumentsBuilder();

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
                      GtraitementData_linkedDiseases_disease_linkedDocuments_document))!
              as GtraitementData_linkedDiseases_disease_linkedDocuments_document);
          break;
      }
    }

    return result.build();
  }
}

class _$GtraitementData_linkedDiseases_disease_linkedDocuments_documentSerializer
    implements
        StructuredSerializer<
            GtraitementData_linkedDiseases_disease_linkedDocuments_document> {
  @override
  final Iterable<Type> types = const [
    GtraitementData_linkedDiseases_disease_linkedDocuments_document,
    _$GtraitementData_linkedDiseases_disease_linkedDocuments_document
  ];
  @override
  final String wireName =
      'GtraitementData_linkedDiseases_disease_linkedDocuments_document';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GtraitementData_linkedDiseases_disease_linkedDocuments_document object,
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
  GtraitementData_linkedDiseases_disease_linkedDocuments_document deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GtraitementData_linkedDiseases_disease_linkedDocuments_documentBuilder();

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

class _$GtraitementData_linkedAllergiesSerializer
    implements StructuredSerializer<GtraitementData_linkedAllergies> {
  @override
  final Iterable<Type> types = const [
    GtraitementData_linkedAllergies,
    _$GtraitementData_linkedAllergies
  ];
  @override
  final String wireName = 'GtraitementData_linkedAllergies';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GtraitementData_linkedAllergies object,
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
          specifiedType:
              const FullType(GtraitementData_linkedAllergies_allergy)),
    ];

    return result;
  }

  @override
  GtraitementData_linkedAllergies deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GtraitementData_linkedAllergiesBuilder();

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
                  specifiedType:
                      const FullType(GtraitementData_linkedAllergies_allergy))!
              as GtraitementData_linkedAllergies_allergy);
          break;
      }
    }

    return result.build();
  }
}

class _$GtraitementData_linkedAllergies_allergySerializer
    implements StructuredSerializer<GtraitementData_linkedAllergies_allergy> {
  @override
  final Iterable<Type> types = const [
    GtraitementData_linkedAllergies_allergy,
    _$GtraitementData_linkedAllergies_allergy
  ];
  @override
  final String wireName = 'GtraitementData_linkedAllergies_allergy';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GtraitementData_linkedAllergies_allergy object,
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
  GtraitementData_linkedAllergies_allergy deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GtraitementData_linkedAllergies_allergyBuilder();

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

class _$GmaladieLieDataSerializer
    implements StructuredSerializer<GmaladieLieData> {
  @override
  final Iterable<Type> types = const [GmaladieLieData, _$GmaladieLieData];
  @override
  final String wireName = 'GmaladieLieData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GmaladieLieData object,
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
          specifiedType: const FullType(GmaladieLieData_disease)),
    ];

    return result;
  }

  @override
  GmaladieLieData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmaladieLieDataBuilder();

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
                  specifiedType: const FullType(GmaladieLieData_disease))!
              as GmaladieLieData_disease);
          break;
      }
    }

    return result.build();
  }
}

class _$GmaladieLieData_diseaseSerializer
    implements StructuredSerializer<GmaladieLieData_disease> {
  @override
  final Iterable<Type> types = const [
    GmaladieLieData_disease,
    _$GmaladieLieData_disease
  ];
  @override
  final String wireName = 'GmaladieLieData_disease';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmaladieLieData_disease object,
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
              const FullType(GmaladieLieData_disease_linkedDocuments)
            ])));
    }
    return result;
  }

  @override
  GmaladieLieData_disease deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmaladieLieData_diseaseBuilder();

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
                const FullType(GmaladieLieData_disease_linkedDocuments)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GmaladieLieData_disease_linkedDocumentsSerializer
    implements StructuredSerializer<GmaladieLieData_disease_linkedDocuments> {
  @override
  final Iterable<Type> types = const [
    GmaladieLieData_disease_linkedDocuments,
    _$GmaladieLieData_disease_linkedDocuments
  ];
  @override
  final String wireName = 'GmaladieLieData_disease_linkedDocuments';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmaladieLieData_disease_linkedDocuments object,
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
          specifiedType:
              const FullType(GmaladieLieData_disease_linkedDocuments_document)),
    ];

    return result;
  }

  @override
  GmaladieLieData_disease_linkedDocuments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmaladieLieData_disease_linkedDocumentsBuilder();

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
                      GmaladieLieData_disease_linkedDocuments_document))!
              as GmaladieLieData_disease_linkedDocuments_document);
          break;
      }
    }

    return result.build();
  }
}

class _$GmaladieLieData_disease_linkedDocuments_documentSerializer
    implements
        StructuredSerializer<GmaladieLieData_disease_linkedDocuments_document> {
  @override
  final Iterable<Type> types = const [
    GmaladieLieData_disease_linkedDocuments_document,
    _$GmaladieLieData_disease_linkedDocuments_document
  ];
  @override
  final String wireName = 'GmaladieLieData_disease_linkedDocuments_document';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GmaladieLieData_disease_linkedDocuments_document object,
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
  GmaladieLieData_disease_linkedDocuments_document deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GmaladieLieData_disease_linkedDocuments_documentBuilder();

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

class _$GallergieLieDataSerializer
    implements StructuredSerializer<GallergieLieData> {
  @override
  final Iterable<Type> types = const [GallergieLieData, _$GallergieLieData];
  @override
  final String wireName = 'GallergieLieData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GallergieLieData object,
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
          specifiedType: const FullType(GallergieLieData_allergy)),
    ];

    return result;
  }

  @override
  GallergieLieData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallergieLieDataBuilder();

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
                  specifiedType: const FullType(GallergieLieData_allergy))!
              as GallergieLieData_allergy);
          break;
      }
    }

    return result.build();
  }
}

class _$GallergieLieData_allergySerializer
    implements StructuredSerializer<GallergieLieData_allergy> {
  @override
  final Iterable<Type> types = const [
    GallergieLieData_allergy,
    _$GallergieLieData_allergy
  ];
  @override
  final String wireName = 'GallergieLieData_allergy';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GallergieLieData_allergy object,
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
  GallergieLieData_allergy deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallergieLieData_allergyBuilder();

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

class _$GmaladieSansTraitementLieDataSerializer
    implements StructuredSerializer<GmaladieSansTraitementLieData> {
  @override
  final Iterable<Type> types = const [
    GmaladieSansTraitementLieData,
    _$GmaladieSansTraitementLieData
  ];
  @override
  final String wireName = 'GmaladieSansTraitementLieData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmaladieSansTraitementLieData object,
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
              const FullType(GmaladieSansTraitementLieData_linkedDocuments)
            ])));
    }
    return result;
  }

  @override
  GmaladieSansTraitementLieData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmaladieSansTraitementLieDataBuilder();

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
                const FullType(GmaladieSansTraitementLieData_linkedDocuments)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GmaladieSansTraitementLieData_linkedDocumentsSerializer
    implements
        StructuredSerializer<GmaladieSansTraitementLieData_linkedDocuments> {
  @override
  final Iterable<Type> types = const [
    GmaladieSansTraitementLieData_linkedDocuments,
    _$GmaladieSansTraitementLieData_linkedDocuments
  ];
  @override
  final String wireName = 'GmaladieSansTraitementLieData_linkedDocuments';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GmaladieSansTraitementLieData_linkedDocuments object,
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
              GmaladieSansTraitementLieData_linkedDocuments_document)),
    ];

    return result;
  }

  @override
  GmaladieSansTraitementLieData_linkedDocuments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmaladieSansTraitementLieData_linkedDocumentsBuilder();

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
                      GmaladieSansTraitementLieData_linkedDocuments_document))!
              as GmaladieSansTraitementLieData_linkedDocuments_document);
          break;
      }
    }

    return result.build();
  }
}

class _$GmaladieSansTraitementLieData_linkedDocuments_documentSerializer
    implements
        StructuredSerializer<
            GmaladieSansTraitementLieData_linkedDocuments_document> {
  @override
  final Iterable<Type> types = const [
    GmaladieSansTraitementLieData_linkedDocuments_document,
    _$GmaladieSansTraitementLieData_linkedDocuments_document
  ];
  @override
  final String wireName =
      'GmaladieSansTraitementLieData_linkedDocuments_document';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GmaladieSansTraitementLieData_linkedDocuments_document object,
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
  GmaladieSansTraitementLieData_linkedDocuments_document deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GmaladieSansTraitementLieData_linkedDocuments_documentBuilder();

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

class _$GtraitementData extends GtraitementData {
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
  final BuiltList<GtraitementData_linkedDiseases>? linkedDiseases;
  @override
  final BuiltList<GtraitementData_linkedAllergies>? linkedAllergies;

  factory _$GtraitementData([void Function(GtraitementDataBuilder)? updates]) =>
      (new GtraitementDataBuilder()..update(updates))._build();

  _$GtraitementData._(
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
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GtraitementData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GtraitementData', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'GtraitementData', 'name');
    BuiltValueNullFieldError.checkNotNull(
        startYear, r'GtraitementData', 'startYear');
  }

  @override
  GtraitementData rebuild(void Function(GtraitementDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GtraitementDataBuilder toBuilder() =>
      new GtraitementDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GtraitementData &&
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
    return (newBuiltValueToStringHelper(r'GtraitementData')
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

class GtraitementDataBuilder
    implements Builder<GtraitementData, GtraitementDataBuilder> {
  _$GtraitementData? _$v;

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

  ListBuilder<GtraitementData_linkedDiseases>? _linkedDiseases;
  ListBuilder<GtraitementData_linkedDiseases> get linkedDiseases =>
      _$this._linkedDiseases ??=
          new ListBuilder<GtraitementData_linkedDiseases>();
  set linkedDiseases(
          ListBuilder<GtraitementData_linkedDiseases>? linkedDiseases) =>
      _$this._linkedDiseases = linkedDiseases;

  ListBuilder<GtraitementData_linkedAllergies>? _linkedAllergies;
  ListBuilder<GtraitementData_linkedAllergies> get linkedAllergies =>
      _$this._linkedAllergies ??=
          new ListBuilder<GtraitementData_linkedAllergies>();
  set linkedAllergies(
          ListBuilder<GtraitementData_linkedAllergies>? linkedAllergies) =>
      _$this._linkedAllergies = linkedAllergies;

  GtraitementDataBuilder() {
    GtraitementData._initializeBuilder(this);
  }

  GtraitementDataBuilder get _$this {
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
  void replace(GtraitementData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GtraitementData;
  }

  @override
  void update(void Function(GtraitementDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GtraitementData build() => _build();

  _$GtraitementData _build() {
    _$GtraitementData _$result;
    try {
      _$result = _$v ??
          new _$GtraitementData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GtraitementData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GtraitementData', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GtraitementData', 'name'),
              comment: comment,
              startDay: startDay,
              startMonth: startMonth,
              startYear: BuiltValueNullFieldError.checkNotNull(
                  startYear, r'GtraitementData', 'startYear'),
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
            r'GtraitementData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GtraitementData_linkedDiseases extends GtraitementData_linkedDiseases {
  @override
  final String G__typename;
  @override
  final String linkId;
  @override
  final GtraitementData_linkedDiseases_disease disease;

  factory _$GtraitementData_linkedDiseases(
          [void Function(GtraitementData_linkedDiseasesBuilder)? updates]) =>
      (new GtraitementData_linkedDiseasesBuilder()..update(updates))._build();

  _$GtraitementData_linkedDiseases._(
      {required this.G__typename, required this.linkId, required this.disease})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GtraitementData_linkedDiseases', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        linkId, r'GtraitementData_linkedDiseases', 'linkId');
    BuiltValueNullFieldError.checkNotNull(
        disease, r'GtraitementData_linkedDiseases', 'disease');
  }

  @override
  GtraitementData_linkedDiseases rebuild(
          void Function(GtraitementData_linkedDiseasesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GtraitementData_linkedDiseasesBuilder toBuilder() =>
      new GtraitementData_linkedDiseasesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GtraitementData_linkedDiseases &&
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
    return (newBuiltValueToStringHelper(r'GtraitementData_linkedDiseases')
          ..add('G__typename', G__typename)
          ..add('linkId', linkId)
          ..add('disease', disease))
        .toString();
  }
}

class GtraitementData_linkedDiseasesBuilder
    implements
        Builder<GtraitementData_linkedDiseases,
            GtraitementData_linkedDiseasesBuilder> {
  _$GtraitementData_linkedDiseases? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _linkId;
  String? get linkId => _$this._linkId;
  set linkId(String? linkId) => _$this._linkId = linkId;

  GtraitementData_linkedDiseases_diseaseBuilder? _disease;
  GtraitementData_linkedDiseases_diseaseBuilder get disease =>
      _$this._disease ??= new GtraitementData_linkedDiseases_diseaseBuilder();
  set disease(GtraitementData_linkedDiseases_diseaseBuilder? disease) =>
      _$this._disease = disease;

  GtraitementData_linkedDiseasesBuilder() {
    GtraitementData_linkedDiseases._initializeBuilder(this);
  }

  GtraitementData_linkedDiseasesBuilder get _$this {
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
  void replace(GtraitementData_linkedDiseases other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GtraitementData_linkedDiseases;
  }

  @override
  void update(void Function(GtraitementData_linkedDiseasesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GtraitementData_linkedDiseases build() => _build();

  _$GtraitementData_linkedDiseases _build() {
    _$GtraitementData_linkedDiseases _$result;
    try {
      _$result = _$v ??
          new _$GtraitementData_linkedDiseases._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GtraitementData_linkedDiseases', 'G__typename'),
              linkId: BuiltValueNullFieldError.checkNotNull(
                  linkId, r'GtraitementData_linkedDiseases', 'linkId'),
              disease: disease.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'disease';
        disease.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GtraitementData_linkedDiseases', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GtraitementData_linkedDiseases_disease
    extends GtraitementData_linkedDiseases_disease {
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
  final BuiltList<GtraitementData_linkedDiseases_disease_linkedDocuments>?
      linkedDocuments;

  factory _$GtraitementData_linkedDiseases_disease(
          [void Function(GtraitementData_linkedDiseases_diseaseBuilder)?
              updates]) =>
      (new GtraitementData_linkedDiseases_diseaseBuilder()..update(updates))
          ._build();

  _$GtraitementData_linkedDiseases_disease._(
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
        G__typename, r'GtraitementData_linkedDiseases_disease', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GtraitementData_linkedDiseases_disease', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GtraitementData_linkedDiseases_disease', 'name');
    BuiltValueNullFieldError.checkNotNull(
        startYear, r'GtraitementData_linkedDiseases_disease', 'startYear');
  }

  @override
  GtraitementData_linkedDiseases_disease rebuild(
          void Function(GtraitementData_linkedDiseases_diseaseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GtraitementData_linkedDiseases_diseaseBuilder toBuilder() =>
      new GtraitementData_linkedDiseases_diseaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GtraitementData_linkedDiseases_disease &&
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
            r'GtraitementData_linkedDiseases_disease')
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

class GtraitementData_linkedDiseases_diseaseBuilder
    implements
        Builder<GtraitementData_linkedDiseases_disease,
            GtraitementData_linkedDiseases_diseaseBuilder> {
  _$GtraitementData_linkedDiseases_disease? _$v;

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

  ListBuilder<GtraitementData_linkedDiseases_disease_linkedDocuments>?
      _linkedDocuments;
  ListBuilder<GtraitementData_linkedDiseases_disease_linkedDocuments>
      get linkedDocuments => _$this._linkedDocuments ??= new ListBuilder<
          GtraitementData_linkedDiseases_disease_linkedDocuments>();
  set linkedDocuments(
          ListBuilder<GtraitementData_linkedDiseases_disease_linkedDocuments>?
              linkedDocuments) =>
      _$this._linkedDocuments = linkedDocuments;

  GtraitementData_linkedDiseases_diseaseBuilder() {
    GtraitementData_linkedDiseases_disease._initializeBuilder(this);
  }

  GtraitementData_linkedDiseases_diseaseBuilder get _$this {
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
  void replace(GtraitementData_linkedDiseases_disease other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GtraitementData_linkedDiseases_disease;
  }

  @override
  void update(
      void Function(GtraitementData_linkedDiseases_diseaseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GtraitementData_linkedDiseases_disease build() => _build();

  _$GtraitementData_linkedDiseases_disease _build() {
    _$GtraitementData_linkedDiseases_disease _$result;
    try {
      _$result = _$v ??
          new _$GtraitementData_linkedDiseases_disease._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GtraitementData_linkedDiseases_disease', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GtraitementData_linkedDiseases_disease', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GtraitementData_linkedDiseases_disease', 'name'),
              comment: comment,
              startDay: startDay,
              startMonth: startMonth,
              startYear: BuiltValueNullFieldError.checkNotNull(startYear,
                  r'GtraitementData_linkedDiseases_disease', 'startYear'),
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
            r'GtraitementData_linkedDiseases_disease',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GtraitementData_linkedDiseases_disease_linkedDocuments
    extends GtraitementData_linkedDiseases_disease_linkedDocuments {
  @override
  final String G__typename;
  @override
  final String linkId;
  @override
  final GtraitementData_linkedDiseases_disease_linkedDocuments_document
      document;

  factory _$GtraitementData_linkedDiseases_disease_linkedDocuments(
          [void Function(
                  GtraitementData_linkedDiseases_disease_linkedDocumentsBuilder)?
              updates]) =>
      (new GtraitementData_linkedDiseases_disease_linkedDocumentsBuilder()
            ..update(updates))
          ._build();

  _$GtraitementData_linkedDiseases_disease_linkedDocuments._(
      {required this.G__typename, required this.linkId, required this.document})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GtraitementData_linkedDiseases_disease_linkedDocuments',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(linkId,
        r'GtraitementData_linkedDiseases_disease_linkedDocuments', 'linkId');
    BuiltValueNullFieldError.checkNotNull(document,
        r'GtraitementData_linkedDiseases_disease_linkedDocuments', 'document');
  }

  @override
  GtraitementData_linkedDiseases_disease_linkedDocuments rebuild(
          void Function(
                  GtraitementData_linkedDiseases_disease_linkedDocumentsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GtraitementData_linkedDiseases_disease_linkedDocumentsBuilder toBuilder() =>
      new GtraitementData_linkedDiseases_disease_linkedDocumentsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GtraitementData_linkedDiseases_disease_linkedDocuments &&
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
            r'GtraitementData_linkedDiseases_disease_linkedDocuments')
          ..add('G__typename', G__typename)
          ..add('linkId', linkId)
          ..add('document', document))
        .toString();
  }
}

class GtraitementData_linkedDiseases_disease_linkedDocumentsBuilder
    implements
        Builder<GtraitementData_linkedDiseases_disease_linkedDocuments,
            GtraitementData_linkedDiseases_disease_linkedDocumentsBuilder> {
  _$GtraitementData_linkedDiseases_disease_linkedDocuments? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _linkId;
  String? get linkId => _$this._linkId;
  set linkId(String? linkId) => _$this._linkId = linkId;

  GtraitementData_linkedDiseases_disease_linkedDocuments_documentBuilder?
      _document;
  GtraitementData_linkedDiseases_disease_linkedDocuments_documentBuilder
      get document => _$this._document ??=
          new GtraitementData_linkedDiseases_disease_linkedDocuments_documentBuilder();
  set document(
          GtraitementData_linkedDiseases_disease_linkedDocuments_documentBuilder?
              document) =>
      _$this._document = document;

  GtraitementData_linkedDiseases_disease_linkedDocumentsBuilder() {
    GtraitementData_linkedDiseases_disease_linkedDocuments._initializeBuilder(
        this);
  }

  GtraitementData_linkedDiseases_disease_linkedDocumentsBuilder get _$this {
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
  void replace(GtraitementData_linkedDiseases_disease_linkedDocuments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GtraitementData_linkedDiseases_disease_linkedDocuments;
  }

  @override
  void update(
      void Function(
              GtraitementData_linkedDiseases_disease_linkedDocumentsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GtraitementData_linkedDiseases_disease_linkedDocuments build() => _build();

  _$GtraitementData_linkedDiseases_disease_linkedDocuments _build() {
    _$GtraitementData_linkedDiseases_disease_linkedDocuments _$result;
    try {
      _$result = _$v ??
          new _$GtraitementData_linkedDiseases_disease_linkedDocuments._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GtraitementData_linkedDiseases_disease_linkedDocuments',
                  'G__typename'),
              linkId: BuiltValueNullFieldError.checkNotNull(
                  linkId,
                  r'GtraitementData_linkedDiseases_disease_linkedDocuments',
                  'linkId'),
              document: document.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'document';
        document.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GtraitementData_linkedDiseases_disease_linkedDocuments',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GtraitementData_linkedDiseases_disease_linkedDocuments_document
    extends GtraitementData_linkedDiseases_disease_linkedDocuments_document {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String title;

  factory _$GtraitementData_linkedDiseases_disease_linkedDocuments_document(
          [void Function(
                  GtraitementData_linkedDiseases_disease_linkedDocuments_documentBuilder)?
              updates]) =>
      (new GtraitementData_linkedDiseases_disease_linkedDocuments_documentBuilder()
            ..update(updates))
          ._build();

  _$GtraitementData_linkedDiseases_disease_linkedDocuments_document._(
      {required this.G__typename, required this.id, required this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GtraitementData_linkedDiseases_disease_linkedDocuments_document',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GtraitementData_linkedDiseases_disease_linkedDocuments_document',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        title,
        r'GtraitementData_linkedDiseases_disease_linkedDocuments_document',
        'title');
  }

  @override
  GtraitementData_linkedDiseases_disease_linkedDocuments_document rebuild(
          void Function(
                  GtraitementData_linkedDiseases_disease_linkedDocuments_documentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GtraitementData_linkedDiseases_disease_linkedDocuments_documentBuilder
      toBuilder() =>
          new GtraitementData_linkedDiseases_disease_linkedDocuments_documentBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GtraitementData_linkedDiseases_disease_linkedDocuments_document &&
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
            r'GtraitementData_linkedDiseases_disease_linkedDocuments_document')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title))
        .toString();
  }
}

class GtraitementData_linkedDiseases_disease_linkedDocuments_documentBuilder
    implements
        Builder<GtraitementData_linkedDiseases_disease_linkedDocuments_document,
            GtraitementData_linkedDiseases_disease_linkedDocuments_documentBuilder> {
  _$GtraitementData_linkedDiseases_disease_linkedDocuments_document? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  GtraitementData_linkedDiseases_disease_linkedDocuments_documentBuilder() {
    GtraitementData_linkedDiseases_disease_linkedDocuments_document
        ._initializeBuilder(this);
  }

  GtraitementData_linkedDiseases_disease_linkedDocuments_documentBuilder
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
      GtraitementData_linkedDiseases_disease_linkedDocuments_document other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GtraitementData_linkedDiseases_disease_linkedDocuments_document;
  }

  @override
  void update(
      void Function(
              GtraitementData_linkedDiseases_disease_linkedDocuments_documentBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GtraitementData_linkedDiseases_disease_linkedDocuments_document build() =>
      _build();

  _$GtraitementData_linkedDiseases_disease_linkedDocuments_document _build() {
    final _$result = _$v ??
        new _$GtraitementData_linkedDiseases_disease_linkedDocuments_document._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GtraitementData_linkedDiseases_disease_linkedDocuments_document',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GtraitementData_linkedDiseases_disease_linkedDocuments_document',
                'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title,
                r'GtraitementData_linkedDiseases_disease_linkedDocuments_document',
                'title'));
    replace(_$result);
    return _$result;
  }
}

class _$GtraitementData_linkedAllergies
    extends GtraitementData_linkedAllergies {
  @override
  final String G__typename;
  @override
  final String linkId;
  @override
  final GtraitementData_linkedAllergies_allergy allergy;

  factory _$GtraitementData_linkedAllergies(
          [void Function(GtraitementData_linkedAllergiesBuilder)? updates]) =>
      (new GtraitementData_linkedAllergiesBuilder()..update(updates))._build();

  _$GtraitementData_linkedAllergies._(
      {required this.G__typename, required this.linkId, required this.allergy})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GtraitementData_linkedAllergies', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        linkId, r'GtraitementData_linkedAllergies', 'linkId');
    BuiltValueNullFieldError.checkNotNull(
        allergy, r'GtraitementData_linkedAllergies', 'allergy');
  }

  @override
  GtraitementData_linkedAllergies rebuild(
          void Function(GtraitementData_linkedAllergiesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GtraitementData_linkedAllergiesBuilder toBuilder() =>
      new GtraitementData_linkedAllergiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GtraitementData_linkedAllergies &&
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
    return (newBuiltValueToStringHelper(r'GtraitementData_linkedAllergies')
          ..add('G__typename', G__typename)
          ..add('linkId', linkId)
          ..add('allergy', allergy))
        .toString();
  }
}

class GtraitementData_linkedAllergiesBuilder
    implements
        Builder<GtraitementData_linkedAllergies,
            GtraitementData_linkedAllergiesBuilder> {
  _$GtraitementData_linkedAllergies? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _linkId;
  String? get linkId => _$this._linkId;
  set linkId(String? linkId) => _$this._linkId = linkId;

  GtraitementData_linkedAllergies_allergyBuilder? _allergy;
  GtraitementData_linkedAllergies_allergyBuilder get allergy =>
      _$this._allergy ??= new GtraitementData_linkedAllergies_allergyBuilder();
  set allergy(GtraitementData_linkedAllergies_allergyBuilder? allergy) =>
      _$this._allergy = allergy;

  GtraitementData_linkedAllergiesBuilder() {
    GtraitementData_linkedAllergies._initializeBuilder(this);
  }

  GtraitementData_linkedAllergiesBuilder get _$this {
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
  void replace(GtraitementData_linkedAllergies other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GtraitementData_linkedAllergies;
  }

  @override
  void update(void Function(GtraitementData_linkedAllergiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GtraitementData_linkedAllergies build() => _build();

  _$GtraitementData_linkedAllergies _build() {
    _$GtraitementData_linkedAllergies _$result;
    try {
      _$result = _$v ??
          new _$GtraitementData_linkedAllergies._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GtraitementData_linkedAllergies', 'G__typename'),
              linkId: BuiltValueNullFieldError.checkNotNull(
                  linkId, r'GtraitementData_linkedAllergies', 'linkId'),
              allergy: allergy.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allergy';
        allergy.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GtraitementData_linkedAllergies', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GtraitementData_linkedAllergies_allergy
    extends GtraitementData_linkedAllergies_allergy {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String? comment;

  factory _$GtraitementData_linkedAllergies_allergy(
          [void Function(GtraitementData_linkedAllergies_allergyBuilder)?
              updates]) =>
      (new GtraitementData_linkedAllergies_allergyBuilder()..update(updates))
          ._build();

  _$GtraitementData_linkedAllergies_allergy._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.comment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GtraitementData_linkedAllergies_allergy', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GtraitementData_linkedAllergies_allergy', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GtraitementData_linkedAllergies_allergy', 'name');
  }

  @override
  GtraitementData_linkedAllergies_allergy rebuild(
          void Function(GtraitementData_linkedAllergies_allergyBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GtraitementData_linkedAllergies_allergyBuilder toBuilder() =>
      new GtraitementData_linkedAllergies_allergyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GtraitementData_linkedAllergies_allergy &&
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
            r'GtraitementData_linkedAllergies_allergy')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('comment', comment))
        .toString();
  }
}

class GtraitementData_linkedAllergies_allergyBuilder
    implements
        Builder<GtraitementData_linkedAllergies_allergy,
            GtraitementData_linkedAllergies_allergyBuilder> {
  _$GtraitementData_linkedAllergies_allergy? _$v;

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

  GtraitementData_linkedAllergies_allergyBuilder() {
    GtraitementData_linkedAllergies_allergy._initializeBuilder(this);
  }

  GtraitementData_linkedAllergies_allergyBuilder get _$this {
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
  void replace(GtraitementData_linkedAllergies_allergy other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GtraitementData_linkedAllergies_allergy;
  }

  @override
  void update(
      void Function(GtraitementData_linkedAllergies_allergyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GtraitementData_linkedAllergies_allergy build() => _build();

  _$GtraitementData_linkedAllergies_allergy _build() {
    final _$result = _$v ??
        new _$GtraitementData_linkedAllergies_allergy._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GtraitementData_linkedAllergies_allergy', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GtraitementData_linkedAllergies_allergy', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GtraitementData_linkedAllergies_allergy', 'name'),
            comment: comment);
    replace(_$result);
    return _$result;
  }
}

class _$GmaladieLieData extends GmaladieLieData {
  @override
  final String G__typename;
  @override
  final String linkId;
  @override
  final GmaladieLieData_disease disease;

  factory _$GmaladieLieData([void Function(GmaladieLieDataBuilder)? updates]) =>
      (new GmaladieLieDataBuilder()..update(updates))._build();

  _$GmaladieLieData._(
      {required this.G__typename, required this.linkId, required this.disease})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GmaladieLieData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(linkId, r'GmaladieLieData', 'linkId');
    BuiltValueNullFieldError.checkNotNull(
        disease, r'GmaladieLieData', 'disease');
  }

  @override
  GmaladieLieData rebuild(void Function(GmaladieLieDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmaladieLieDataBuilder toBuilder() =>
      new GmaladieLieDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmaladieLieData &&
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
    return (newBuiltValueToStringHelper(r'GmaladieLieData')
          ..add('G__typename', G__typename)
          ..add('linkId', linkId)
          ..add('disease', disease))
        .toString();
  }
}

class GmaladieLieDataBuilder
    implements Builder<GmaladieLieData, GmaladieLieDataBuilder> {
  _$GmaladieLieData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _linkId;
  String? get linkId => _$this._linkId;
  set linkId(String? linkId) => _$this._linkId = linkId;

  GmaladieLieData_diseaseBuilder? _disease;
  GmaladieLieData_diseaseBuilder get disease =>
      _$this._disease ??= new GmaladieLieData_diseaseBuilder();
  set disease(GmaladieLieData_diseaseBuilder? disease) =>
      _$this._disease = disease;

  GmaladieLieDataBuilder() {
    GmaladieLieData._initializeBuilder(this);
  }

  GmaladieLieDataBuilder get _$this {
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
  void replace(GmaladieLieData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmaladieLieData;
  }

  @override
  void update(void Function(GmaladieLieDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmaladieLieData build() => _build();

  _$GmaladieLieData _build() {
    _$GmaladieLieData _$result;
    try {
      _$result = _$v ??
          new _$GmaladieLieData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GmaladieLieData', 'G__typename'),
              linkId: BuiltValueNullFieldError.checkNotNull(
                  linkId, r'GmaladieLieData', 'linkId'),
              disease: disease.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'disease';
        disease.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GmaladieLieData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmaladieLieData_disease extends GmaladieLieData_disease {
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
  final BuiltList<GmaladieLieData_disease_linkedDocuments>? linkedDocuments;

  factory _$GmaladieLieData_disease(
          [void Function(GmaladieLieData_diseaseBuilder)? updates]) =>
      (new GmaladieLieData_diseaseBuilder()..update(updates))._build();

  _$GmaladieLieData_disease._(
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
        G__typename, r'GmaladieLieData_disease', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GmaladieLieData_disease', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GmaladieLieData_disease', 'name');
    BuiltValueNullFieldError.checkNotNull(
        startYear, r'GmaladieLieData_disease', 'startYear');
  }

  @override
  GmaladieLieData_disease rebuild(
          void Function(GmaladieLieData_diseaseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmaladieLieData_diseaseBuilder toBuilder() =>
      new GmaladieLieData_diseaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmaladieLieData_disease &&
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
    return (newBuiltValueToStringHelper(r'GmaladieLieData_disease')
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

class GmaladieLieData_diseaseBuilder
    implements
        Builder<GmaladieLieData_disease, GmaladieLieData_diseaseBuilder> {
  _$GmaladieLieData_disease? _$v;

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

  ListBuilder<GmaladieLieData_disease_linkedDocuments>? _linkedDocuments;
  ListBuilder<GmaladieLieData_disease_linkedDocuments> get linkedDocuments =>
      _$this._linkedDocuments ??=
          new ListBuilder<GmaladieLieData_disease_linkedDocuments>();
  set linkedDocuments(
          ListBuilder<GmaladieLieData_disease_linkedDocuments>?
              linkedDocuments) =>
      _$this._linkedDocuments = linkedDocuments;

  GmaladieLieData_diseaseBuilder() {
    GmaladieLieData_disease._initializeBuilder(this);
  }

  GmaladieLieData_diseaseBuilder get _$this {
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
  void replace(GmaladieLieData_disease other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmaladieLieData_disease;
  }

  @override
  void update(void Function(GmaladieLieData_diseaseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmaladieLieData_disease build() => _build();

  _$GmaladieLieData_disease _build() {
    _$GmaladieLieData_disease _$result;
    try {
      _$result = _$v ??
          new _$GmaladieLieData_disease._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GmaladieLieData_disease', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GmaladieLieData_disease', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GmaladieLieData_disease', 'name'),
              comment: comment,
              startDay: startDay,
              startMonth: startMonth,
              startYear: BuiltValueNullFieldError.checkNotNull(
                  startYear, r'GmaladieLieData_disease', 'startYear'),
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
            r'GmaladieLieData_disease', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmaladieLieData_disease_linkedDocuments
    extends GmaladieLieData_disease_linkedDocuments {
  @override
  final String G__typename;
  @override
  final String linkId;
  @override
  final GmaladieLieData_disease_linkedDocuments_document document;

  factory _$GmaladieLieData_disease_linkedDocuments(
          [void Function(GmaladieLieData_disease_linkedDocumentsBuilder)?
              updates]) =>
      (new GmaladieLieData_disease_linkedDocumentsBuilder()..update(updates))
          ._build();

  _$GmaladieLieData_disease_linkedDocuments._(
      {required this.G__typename, required this.linkId, required this.document})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GmaladieLieData_disease_linkedDocuments', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        linkId, r'GmaladieLieData_disease_linkedDocuments', 'linkId');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GmaladieLieData_disease_linkedDocuments', 'document');
  }

  @override
  GmaladieLieData_disease_linkedDocuments rebuild(
          void Function(GmaladieLieData_disease_linkedDocumentsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmaladieLieData_disease_linkedDocumentsBuilder toBuilder() =>
      new GmaladieLieData_disease_linkedDocumentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmaladieLieData_disease_linkedDocuments &&
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
            r'GmaladieLieData_disease_linkedDocuments')
          ..add('G__typename', G__typename)
          ..add('linkId', linkId)
          ..add('document', document))
        .toString();
  }
}

class GmaladieLieData_disease_linkedDocumentsBuilder
    implements
        Builder<GmaladieLieData_disease_linkedDocuments,
            GmaladieLieData_disease_linkedDocumentsBuilder> {
  _$GmaladieLieData_disease_linkedDocuments? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _linkId;
  String? get linkId => _$this._linkId;
  set linkId(String? linkId) => _$this._linkId = linkId;

  GmaladieLieData_disease_linkedDocuments_documentBuilder? _document;
  GmaladieLieData_disease_linkedDocuments_documentBuilder get document =>
      _$this._document ??=
          new GmaladieLieData_disease_linkedDocuments_documentBuilder();
  set document(
          GmaladieLieData_disease_linkedDocuments_documentBuilder? document) =>
      _$this._document = document;

  GmaladieLieData_disease_linkedDocumentsBuilder() {
    GmaladieLieData_disease_linkedDocuments._initializeBuilder(this);
  }

  GmaladieLieData_disease_linkedDocumentsBuilder get _$this {
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
  void replace(GmaladieLieData_disease_linkedDocuments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmaladieLieData_disease_linkedDocuments;
  }

  @override
  void update(
      void Function(GmaladieLieData_disease_linkedDocumentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmaladieLieData_disease_linkedDocuments build() => _build();

  _$GmaladieLieData_disease_linkedDocuments _build() {
    _$GmaladieLieData_disease_linkedDocuments _$result;
    try {
      _$result = _$v ??
          new _$GmaladieLieData_disease_linkedDocuments._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GmaladieLieData_disease_linkedDocuments', 'G__typename'),
              linkId: BuiltValueNullFieldError.checkNotNull(
                  linkId, r'GmaladieLieData_disease_linkedDocuments', 'linkId'),
              document: document.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'document';
        document.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GmaladieLieData_disease_linkedDocuments',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmaladieLieData_disease_linkedDocuments_document
    extends GmaladieLieData_disease_linkedDocuments_document {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String title;

  factory _$GmaladieLieData_disease_linkedDocuments_document(
          [void Function(
                  GmaladieLieData_disease_linkedDocuments_documentBuilder)?
              updates]) =>
      (new GmaladieLieData_disease_linkedDocuments_documentBuilder()
            ..update(updates))
          ._build();

  _$GmaladieLieData_disease_linkedDocuments_document._(
      {required this.G__typename, required this.id, required this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GmaladieLieData_disease_linkedDocuments_document', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GmaladieLieData_disease_linkedDocuments_document', 'id');
    BuiltValueNullFieldError.checkNotNull(
        title, r'GmaladieLieData_disease_linkedDocuments_document', 'title');
  }

  @override
  GmaladieLieData_disease_linkedDocuments_document rebuild(
          void Function(GmaladieLieData_disease_linkedDocuments_documentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmaladieLieData_disease_linkedDocuments_documentBuilder toBuilder() =>
      new GmaladieLieData_disease_linkedDocuments_documentBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmaladieLieData_disease_linkedDocuments_document &&
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
            r'GmaladieLieData_disease_linkedDocuments_document')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title))
        .toString();
  }
}

class GmaladieLieData_disease_linkedDocuments_documentBuilder
    implements
        Builder<GmaladieLieData_disease_linkedDocuments_document,
            GmaladieLieData_disease_linkedDocuments_documentBuilder> {
  _$GmaladieLieData_disease_linkedDocuments_document? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  GmaladieLieData_disease_linkedDocuments_documentBuilder() {
    GmaladieLieData_disease_linkedDocuments_document._initializeBuilder(this);
  }

  GmaladieLieData_disease_linkedDocuments_documentBuilder get _$this {
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
  void replace(GmaladieLieData_disease_linkedDocuments_document other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmaladieLieData_disease_linkedDocuments_document;
  }

  @override
  void update(
      void Function(GmaladieLieData_disease_linkedDocuments_documentBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GmaladieLieData_disease_linkedDocuments_document build() => _build();

  _$GmaladieLieData_disease_linkedDocuments_document _build() {
    final _$result = _$v ??
        new _$GmaladieLieData_disease_linkedDocuments_document._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GmaladieLieData_disease_linkedDocuments_document',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GmaladieLieData_disease_linkedDocuments_document', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(title,
                r'GmaladieLieData_disease_linkedDocuments_document', 'title'));
    replace(_$result);
    return _$result;
  }
}

class _$GallergieLieData extends GallergieLieData {
  @override
  final String G__typename;
  @override
  final String linkId;
  @override
  final GallergieLieData_allergy allergy;

  factory _$GallergieLieData(
          [void Function(GallergieLieDataBuilder)? updates]) =>
      (new GallergieLieDataBuilder()..update(updates))._build();

  _$GallergieLieData._(
      {required this.G__typename, required this.linkId, required this.allergy})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GallergieLieData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        linkId, r'GallergieLieData', 'linkId');
    BuiltValueNullFieldError.checkNotNull(
        allergy, r'GallergieLieData', 'allergy');
  }

  @override
  GallergieLieData rebuild(void Function(GallergieLieDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallergieLieDataBuilder toBuilder() =>
      new GallergieLieDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallergieLieData &&
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
    return (newBuiltValueToStringHelper(r'GallergieLieData')
          ..add('G__typename', G__typename)
          ..add('linkId', linkId)
          ..add('allergy', allergy))
        .toString();
  }
}

class GallergieLieDataBuilder
    implements Builder<GallergieLieData, GallergieLieDataBuilder> {
  _$GallergieLieData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _linkId;
  String? get linkId => _$this._linkId;
  set linkId(String? linkId) => _$this._linkId = linkId;

  GallergieLieData_allergyBuilder? _allergy;
  GallergieLieData_allergyBuilder get allergy =>
      _$this._allergy ??= new GallergieLieData_allergyBuilder();
  set allergy(GallergieLieData_allergyBuilder? allergy) =>
      _$this._allergy = allergy;

  GallergieLieDataBuilder() {
    GallergieLieData._initializeBuilder(this);
  }

  GallergieLieDataBuilder get _$this {
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
  void replace(GallergieLieData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallergieLieData;
  }

  @override
  void update(void Function(GallergieLieDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GallergieLieData build() => _build();

  _$GallergieLieData _build() {
    _$GallergieLieData _$result;
    try {
      _$result = _$v ??
          new _$GallergieLieData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GallergieLieData', 'G__typename'),
              linkId: BuiltValueNullFieldError.checkNotNull(
                  linkId, r'GallergieLieData', 'linkId'),
              allergy: allergy.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allergy';
        allergy.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GallergieLieData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GallergieLieData_allergy extends GallergieLieData_allergy {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String? comment;

  factory _$GallergieLieData_allergy(
          [void Function(GallergieLieData_allergyBuilder)? updates]) =>
      (new GallergieLieData_allergyBuilder()..update(updates))._build();

  _$GallergieLieData_allergy._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.comment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GallergieLieData_allergy', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GallergieLieData_allergy', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GallergieLieData_allergy', 'name');
  }

  @override
  GallergieLieData_allergy rebuild(
          void Function(GallergieLieData_allergyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallergieLieData_allergyBuilder toBuilder() =>
      new GallergieLieData_allergyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallergieLieData_allergy &&
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
    return (newBuiltValueToStringHelper(r'GallergieLieData_allergy')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('comment', comment))
        .toString();
  }
}

class GallergieLieData_allergyBuilder
    implements
        Builder<GallergieLieData_allergy, GallergieLieData_allergyBuilder> {
  _$GallergieLieData_allergy? _$v;

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

  GallergieLieData_allergyBuilder() {
    GallergieLieData_allergy._initializeBuilder(this);
  }

  GallergieLieData_allergyBuilder get _$this {
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
  void replace(GallergieLieData_allergy other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallergieLieData_allergy;
  }

  @override
  void update(void Function(GallergieLieData_allergyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GallergieLieData_allergy build() => _build();

  _$GallergieLieData_allergy _build() {
    final _$result = _$v ??
        new _$GallergieLieData_allergy._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GallergieLieData_allergy', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GallergieLieData_allergy', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GallergieLieData_allergy', 'name'),
            comment: comment);
    replace(_$result);
    return _$result;
  }
}

class _$GmaladieSansTraitementLieData extends GmaladieSansTraitementLieData {
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
  final BuiltList<GmaladieSansTraitementLieData_linkedDocuments>?
      linkedDocuments;

  factory _$GmaladieSansTraitementLieData(
          [void Function(GmaladieSansTraitementLieDataBuilder)? updates]) =>
      (new GmaladieSansTraitementLieDataBuilder()..update(updates))._build();

  _$GmaladieSansTraitementLieData._(
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
        G__typename, r'GmaladieSansTraitementLieData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GmaladieSansTraitementLieData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GmaladieSansTraitementLieData', 'name');
    BuiltValueNullFieldError.checkNotNull(
        startYear, r'GmaladieSansTraitementLieData', 'startYear');
  }

  @override
  GmaladieSansTraitementLieData rebuild(
          void Function(GmaladieSansTraitementLieDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmaladieSansTraitementLieDataBuilder toBuilder() =>
      new GmaladieSansTraitementLieDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmaladieSansTraitementLieData &&
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
    return (newBuiltValueToStringHelper(r'GmaladieSansTraitementLieData')
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

class GmaladieSansTraitementLieDataBuilder
    implements
        Builder<GmaladieSansTraitementLieData,
            GmaladieSansTraitementLieDataBuilder> {
  _$GmaladieSansTraitementLieData? _$v;

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

  ListBuilder<GmaladieSansTraitementLieData_linkedDocuments>? _linkedDocuments;
  ListBuilder<GmaladieSansTraitementLieData_linkedDocuments>
      get linkedDocuments => _$this._linkedDocuments ??=
          new ListBuilder<GmaladieSansTraitementLieData_linkedDocuments>();
  set linkedDocuments(
          ListBuilder<GmaladieSansTraitementLieData_linkedDocuments>?
              linkedDocuments) =>
      _$this._linkedDocuments = linkedDocuments;

  GmaladieSansTraitementLieDataBuilder() {
    GmaladieSansTraitementLieData._initializeBuilder(this);
  }

  GmaladieSansTraitementLieDataBuilder get _$this {
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
  void replace(GmaladieSansTraitementLieData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmaladieSansTraitementLieData;
  }

  @override
  void update(void Function(GmaladieSansTraitementLieDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmaladieSansTraitementLieData build() => _build();

  _$GmaladieSansTraitementLieData _build() {
    _$GmaladieSansTraitementLieData _$result;
    try {
      _$result = _$v ??
          new _$GmaladieSansTraitementLieData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GmaladieSansTraitementLieData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GmaladieSansTraitementLieData', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GmaladieSansTraitementLieData', 'name'),
              comment: comment,
              startDay: startDay,
              startMonth: startMonth,
              startYear: BuiltValueNullFieldError.checkNotNull(
                  startYear, r'GmaladieSansTraitementLieData', 'startYear'),
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
            r'GmaladieSansTraitementLieData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmaladieSansTraitementLieData_linkedDocuments
    extends GmaladieSansTraitementLieData_linkedDocuments {
  @override
  final String G__typename;
  @override
  final String linkId;
  @override
  final GmaladieSansTraitementLieData_linkedDocuments_document document;

  factory _$GmaladieSansTraitementLieData_linkedDocuments(
          [void Function(GmaladieSansTraitementLieData_linkedDocumentsBuilder)?
              updates]) =>
      (new GmaladieSansTraitementLieData_linkedDocumentsBuilder()
            ..update(updates))
          ._build();

  _$GmaladieSansTraitementLieData_linkedDocuments._(
      {required this.G__typename, required this.linkId, required this.document})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GmaladieSansTraitementLieData_linkedDocuments', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        linkId, r'GmaladieSansTraitementLieData_linkedDocuments', 'linkId');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GmaladieSansTraitementLieData_linkedDocuments', 'document');
  }

  @override
  GmaladieSansTraitementLieData_linkedDocuments rebuild(
          void Function(GmaladieSansTraitementLieData_linkedDocumentsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmaladieSansTraitementLieData_linkedDocumentsBuilder toBuilder() =>
      new GmaladieSansTraitementLieData_linkedDocumentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmaladieSansTraitementLieData_linkedDocuments &&
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
            r'GmaladieSansTraitementLieData_linkedDocuments')
          ..add('G__typename', G__typename)
          ..add('linkId', linkId)
          ..add('document', document))
        .toString();
  }
}

class GmaladieSansTraitementLieData_linkedDocumentsBuilder
    implements
        Builder<GmaladieSansTraitementLieData_linkedDocuments,
            GmaladieSansTraitementLieData_linkedDocumentsBuilder> {
  _$GmaladieSansTraitementLieData_linkedDocuments? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _linkId;
  String? get linkId => _$this._linkId;
  set linkId(String? linkId) => _$this._linkId = linkId;

  GmaladieSansTraitementLieData_linkedDocuments_documentBuilder? _document;
  GmaladieSansTraitementLieData_linkedDocuments_documentBuilder get document =>
      _$this._document ??=
          new GmaladieSansTraitementLieData_linkedDocuments_documentBuilder();
  set document(
          GmaladieSansTraitementLieData_linkedDocuments_documentBuilder?
              document) =>
      _$this._document = document;

  GmaladieSansTraitementLieData_linkedDocumentsBuilder() {
    GmaladieSansTraitementLieData_linkedDocuments._initializeBuilder(this);
  }

  GmaladieSansTraitementLieData_linkedDocumentsBuilder get _$this {
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
  void replace(GmaladieSansTraitementLieData_linkedDocuments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmaladieSansTraitementLieData_linkedDocuments;
  }

  @override
  void update(
      void Function(GmaladieSansTraitementLieData_linkedDocumentsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GmaladieSansTraitementLieData_linkedDocuments build() => _build();

  _$GmaladieSansTraitementLieData_linkedDocuments _build() {
    _$GmaladieSansTraitementLieData_linkedDocuments _$result;
    try {
      _$result = _$v ??
          new _$GmaladieSansTraitementLieData_linkedDocuments._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GmaladieSansTraitementLieData_linkedDocuments',
                  'G__typename'),
              linkId: BuiltValueNullFieldError.checkNotNull(linkId,
                  r'GmaladieSansTraitementLieData_linkedDocuments', 'linkId'),
              document: document.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'document';
        document.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GmaladieSansTraitementLieData_linkedDocuments',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmaladieSansTraitementLieData_linkedDocuments_document
    extends GmaladieSansTraitementLieData_linkedDocuments_document {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String title;

  factory _$GmaladieSansTraitementLieData_linkedDocuments_document(
          [void Function(
                  GmaladieSansTraitementLieData_linkedDocuments_documentBuilder)?
              updates]) =>
      (new GmaladieSansTraitementLieData_linkedDocuments_documentBuilder()
            ..update(updates))
          ._build();

  _$GmaladieSansTraitementLieData_linkedDocuments_document._(
      {required this.G__typename, required this.id, required this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GmaladieSansTraitementLieData_linkedDocuments_document',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GmaladieSansTraitementLieData_linkedDocuments_document', 'id');
    BuiltValueNullFieldError.checkNotNull(title,
        r'GmaladieSansTraitementLieData_linkedDocuments_document', 'title');
  }

  @override
  GmaladieSansTraitementLieData_linkedDocuments_document rebuild(
          void Function(
                  GmaladieSansTraitementLieData_linkedDocuments_documentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmaladieSansTraitementLieData_linkedDocuments_documentBuilder toBuilder() =>
      new GmaladieSansTraitementLieData_linkedDocuments_documentBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmaladieSansTraitementLieData_linkedDocuments_document &&
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
            r'GmaladieSansTraitementLieData_linkedDocuments_document')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title))
        .toString();
  }
}

class GmaladieSansTraitementLieData_linkedDocuments_documentBuilder
    implements
        Builder<GmaladieSansTraitementLieData_linkedDocuments_document,
            GmaladieSansTraitementLieData_linkedDocuments_documentBuilder> {
  _$GmaladieSansTraitementLieData_linkedDocuments_document? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  GmaladieSansTraitementLieData_linkedDocuments_documentBuilder() {
    GmaladieSansTraitementLieData_linkedDocuments_document._initializeBuilder(
        this);
  }

  GmaladieSansTraitementLieData_linkedDocuments_documentBuilder get _$this {
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
  void replace(GmaladieSansTraitementLieData_linkedDocuments_document other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmaladieSansTraitementLieData_linkedDocuments_document;
  }

  @override
  void update(
      void Function(
              GmaladieSansTraitementLieData_linkedDocuments_documentBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GmaladieSansTraitementLieData_linkedDocuments_document build() => _build();

  _$GmaladieSansTraitementLieData_linkedDocuments_document _build() {
    final _$result = _$v ??
        new _$GmaladieSansTraitementLieData_linkedDocuments_document._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GmaladieSansTraitementLieData_linkedDocuments_document',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GmaladieSansTraitementLieData_linkedDocuments_document',
                'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title,
                r'GmaladieSansTraitementLieData_linkedDocuments_document',
                'title'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
