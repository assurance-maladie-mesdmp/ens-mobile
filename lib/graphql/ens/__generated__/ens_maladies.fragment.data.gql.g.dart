// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_maladies.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GmaladieData> _$gmaladieDataSerializer =
    new _$GmaladieDataSerializer();
Serializer<GmaladieData_linkedDocuments>
    _$gmaladieDataLinkedDocumentsSerializer =
    new _$GmaladieData_linkedDocumentsSerializer();
Serializer<GmaladieData_linkedDocuments_document>
    _$gmaladieDataLinkedDocumentsDocumentSerializer =
    new _$GmaladieData_linkedDocuments_documentSerializer();
Serializer<GmaladieData_linkedTreatments>
    _$gmaladieDataLinkedTreatmentsSerializer =
    new _$GmaladieData_linkedTreatmentsSerializer();
Serializer<GmaladieData_linkedTreatments_treatment>
    _$gmaladieDataLinkedTreatmentsTreatmentSerializer =
    new _$GmaladieData_linkedTreatments_treatmentSerializer();
Serializer<GmaladieData_linkedTreatments_treatment_linkedDiseases>
    _$gmaladieDataLinkedTreatmentsTreatmentLinkedDiseasesSerializer =
    new _$GmaladieData_linkedTreatments_treatment_linkedDiseasesSerializer();
Serializer<GmaladieData_linkedTreatments_treatment_linkedDiseases_disease>
    _$gmaladieDataLinkedTreatmentsTreatmentLinkedDiseasesDiseaseSerializer =
    new _$GmaladieData_linkedTreatments_treatment_linkedDiseases_diseaseSerializer();
Serializer<GtraitementLieData> _$gtraitementLieDataSerializer =
    new _$GtraitementLieDataSerializer();
Serializer<GtraitementLieData_treatment>
    _$gtraitementLieDataTreatmentSerializer =
    new _$GtraitementLieData_treatmentSerializer();
Serializer<GtraitementLieData_treatment_linkedDiseases>
    _$gtraitementLieDataTreatmentLinkedDiseasesSerializer =
    new _$GtraitementLieData_treatment_linkedDiseasesSerializer();
Serializer<GtraitementLieData_treatment_linkedDiseases_disease>
    _$gtraitementLieDataTreatmentLinkedDiseasesDiseaseSerializer =
    new _$GtraitementLieData_treatment_linkedDiseases_diseaseSerializer();

class _$GmaladieDataSerializer implements StructuredSerializer<GmaladieData> {
  @override
  final Iterable<Type> types = const [GmaladieData, _$GmaladieData];
  @override
  final String wireName = 'GmaladieData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GmaladieData object,
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
            specifiedType: const FullType(BuiltList,
                const [const FullType(GmaladieData_linkedDocuments)])));
    }
    value = object.linkedTreatments;
    if (value != null) {
      result
        ..add('linkedTreatments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GmaladieData_linkedTreatments)])));
    }
    return result;
  }

  @override
  GmaladieData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmaladieDataBuilder();

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
                const FullType(GmaladieData_linkedDocuments)
              ]))! as BuiltList<Object?>);
          break;
        case 'linkedTreatments':
          result.linkedTreatments.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GmaladieData_linkedTreatments)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GmaladieData_linkedDocumentsSerializer
    implements StructuredSerializer<GmaladieData_linkedDocuments> {
  @override
  final Iterable<Type> types = const [
    GmaladieData_linkedDocuments,
    _$GmaladieData_linkedDocuments
  ];
  @override
  final String wireName = 'GmaladieData_linkedDocuments';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmaladieData_linkedDocuments object,
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
          specifiedType: const FullType(GmaladieData_linkedDocuments_document)),
    ];

    return result;
  }

  @override
  GmaladieData_linkedDocuments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmaladieData_linkedDocumentsBuilder();

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
                  specifiedType:
                      const FullType(GmaladieData_linkedDocuments_document))!
              as GmaladieData_linkedDocuments_document);
          break;
      }
    }

    return result.build();
  }
}

class _$GmaladieData_linkedDocuments_documentSerializer
    implements StructuredSerializer<GmaladieData_linkedDocuments_document> {
  @override
  final Iterable<Type> types = const [
    GmaladieData_linkedDocuments_document,
    _$GmaladieData_linkedDocuments_document
  ];
  @override
  final String wireName = 'GmaladieData_linkedDocuments_document';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmaladieData_linkedDocuments_document object,
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
  GmaladieData_linkedDocuments_document deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmaladieData_linkedDocuments_documentBuilder();

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

class _$GmaladieData_linkedTreatmentsSerializer
    implements StructuredSerializer<GmaladieData_linkedTreatments> {
  @override
  final Iterable<Type> types = const [
    GmaladieData_linkedTreatments,
    _$GmaladieData_linkedTreatments
  ];
  @override
  final String wireName = 'GmaladieData_linkedTreatments';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmaladieData_linkedTreatments object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'linkId',
      serializers.serialize(object.linkId,
          specifiedType: const FullType(String)),
      'treatment',
      serializers.serialize(object.treatment,
          specifiedType:
              const FullType(GmaladieData_linkedTreatments_treatment)),
    ];

    return result;
  }

  @override
  GmaladieData_linkedTreatments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmaladieData_linkedTreatmentsBuilder();

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
        case 'treatment':
          result.treatment.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GmaladieData_linkedTreatments_treatment))!
              as GmaladieData_linkedTreatments_treatment);
          break;
      }
    }

    return result.build();
  }
}

class _$GmaladieData_linkedTreatments_treatmentSerializer
    implements StructuredSerializer<GmaladieData_linkedTreatments_treatment> {
  @override
  final Iterable<Type> types = const [
    GmaladieData_linkedTreatments_treatment,
    _$GmaladieData_linkedTreatments_treatment
  ];
  @override
  final String wireName = 'GmaladieData_linkedTreatments_treatment';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmaladieData_linkedTreatments_treatment object,
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
                  GmaladieData_linkedTreatments_treatment_linkedDiseases)
            ])));
    }
    return result;
  }

  @override
  GmaladieData_linkedTreatments_treatment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmaladieData_linkedTreatments_treatmentBuilder();

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
                    GmaladieData_linkedTreatments_treatment_linkedDiseases)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GmaladieData_linkedTreatments_treatment_linkedDiseasesSerializer
    implements
        StructuredSerializer<
            GmaladieData_linkedTreatments_treatment_linkedDiseases> {
  @override
  final Iterable<Type> types = const [
    GmaladieData_linkedTreatments_treatment_linkedDiseases,
    _$GmaladieData_linkedTreatments_treatment_linkedDiseases
  ];
  @override
  final String wireName =
      'GmaladieData_linkedTreatments_treatment_linkedDiseases';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GmaladieData_linkedTreatments_treatment_linkedDiseases object,
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
              GmaladieData_linkedTreatments_treatment_linkedDiseases_disease)),
    ];

    return result;
  }

  @override
  GmaladieData_linkedTreatments_treatment_linkedDiseases deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GmaladieData_linkedTreatments_treatment_linkedDiseasesBuilder();

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
                      GmaladieData_linkedTreatments_treatment_linkedDiseases_disease))!
              as GmaladieData_linkedTreatments_treatment_linkedDiseases_disease);
          break;
      }
    }

    return result.build();
  }
}

class _$GmaladieData_linkedTreatments_treatment_linkedDiseases_diseaseSerializer
    implements
        StructuredSerializer<
            GmaladieData_linkedTreatments_treatment_linkedDiseases_disease> {
  @override
  final Iterable<Type> types = const [
    GmaladieData_linkedTreatments_treatment_linkedDiseases_disease,
    _$GmaladieData_linkedTreatments_treatment_linkedDiseases_disease
  ];
  @override
  final String wireName =
      'GmaladieData_linkedTreatments_treatment_linkedDiseases_disease';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GmaladieData_linkedTreatments_treatment_linkedDiseases_disease object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GmaladieData_linkedTreatments_treatment_linkedDiseases_disease deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GmaladieData_linkedTreatments_treatment_linkedDiseases_diseaseBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GtraitementLieDataSerializer
    implements StructuredSerializer<GtraitementLieData> {
  @override
  final Iterable<Type> types = const [GtraitementLieData, _$GtraitementLieData];
  @override
  final String wireName = 'GtraitementLieData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GtraitementLieData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'linkId',
      serializers.serialize(object.linkId,
          specifiedType: const FullType(String)),
      'treatment',
      serializers.serialize(object.treatment,
          specifiedType: const FullType(GtraitementLieData_treatment)),
    ];

    return result;
  }

  @override
  GtraitementLieData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GtraitementLieDataBuilder();

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
        case 'treatment':
          result.treatment.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GtraitementLieData_treatment))!
              as GtraitementLieData_treatment);
          break;
      }
    }

    return result.build();
  }
}

class _$GtraitementLieData_treatmentSerializer
    implements StructuredSerializer<GtraitementLieData_treatment> {
  @override
  final Iterable<Type> types = const [
    GtraitementLieData_treatment,
    _$GtraitementLieData_treatment
  ];
  @override
  final String wireName = 'GtraitementLieData_treatment';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GtraitementLieData_treatment object,
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
              const FullType(GtraitementLieData_treatment_linkedDiseases)
            ])));
    }
    return result;
  }

  @override
  GtraitementLieData_treatment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GtraitementLieData_treatmentBuilder();

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
                const FullType(GtraitementLieData_treatment_linkedDiseases)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GtraitementLieData_treatment_linkedDiseasesSerializer
    implements
        StructuredSerializer<GtraitementLieData_treatment_linkedDiseases> {
  @override
  final Iterable<Type> types = const [
    GtraitementLieData_treatment_linkedDiseases,
    _$GtraitementLieData_treatment_linkedDiseases
  ];
  @override
  final String wireName = 'GtraitementLieData_treatment_linkedDiseases';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GtraitementLieData_treatment_linkedDiseases object,
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
              GtraitementLieData_treatment_linkedDiseases_disease)),
    ];

    return result;
  }

  @override
  GtraitementLieData_treatment_linkedDiseases deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GtraitementLieData_treatment_linkedDiseasesBuilder();

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
                      GtraitementLieData_treatment_linkedDiseases_disease))!
              as GtraitementLieData_treatment_linkedDiseases_disease);
          break;
      }
    }

    return result.build();
  }
}

class _$GtraitementLieData_treatment_linkedDiseases_diseaseSerializer
    implements
        StructuredSerializer<
            GtraitementLieData_treatment_linkedDiseases_disease> {
  @override
  final Iterable<Type> types = const [
    GtraitementLieData_treatment_linkedDiseases_disease,
    _$GtraitementLieData_treatment_linkedDiseases_disease
  ];
  @override
  final String wireName = 'GtraitementLieData_treatment_linkedDiseases_disease';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GtraitementLieData_treatment_linkedDiseases_disease object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GtraitementLieData_treatment_linkedDiseases_disease deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GtraitementLieData_treatment_linkedDiseases_diseaseBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GmaladieData extends GmaladieData {
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
  final BuiltList<GmaladieData_linkedDocuments>? linkedDocuments;
  @override
  final BuiltList<GmaladieData_linkedTreatments>? linkedTreatments;

  factory _$GmaladieData([void Function(GmaladieDataBuilder)? updates]) =>
      (new GmaladieDataBuilder()..update(updates))._build();

  _$GmaladieData._(
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
      this.linkedDocuments,
      this.linkedTreatments})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GmaladieData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GmaladieData', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'GmaladieData', 'name');
    BuiltValueNullFieldError.checkNotNull(
        startYear, r'GmaladieData', 'startYear');
  }

  @override
  GmaladieData rebuild(void Function(GmaladieDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmaladieDataBuilder toBuilder() => new GmaladieDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmaladieData &&
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
        linkedDocuments == other.linkedDocuments &&
        linkedTreatments == other.linkedTreatments;
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
    _$hash = $jc(_$hash, linkedTreatments.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GmaladieData')
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
          ..add('linkedDocuments', linkedDocuments)
          ..add('linkedTreatments', linkedTreatments))
        .toString();
  }
}

class GmaladieDataBuilder
    implements Builder<GmaladieData, GmaladieDataBuilder> {
  _$GmaladieData? _$v;

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

  ListBuilder<GmaladieData_linkedDocuments>? _linkedDocuments;
  ListBuilder<GmaladieData_linkedDocuments> get linkedDocuments =>
      _$this._linkedDocuments ??=
          new ListBuilder<GmaladieData_linkedDocuments>();
  set linkedDocuments(
          ListBuilder<GmaladieData_linkedDocuments>? linkedDocuments) =>
      _$this._linkedDocuments = linkedDocuments;

  ListBuilder<GmaladieData_linkedTreatments>? _linkedTreatments;
  ListBuilder<GmaladieData_linkedTreatments> get linkedTreatments =>
      _$this._linkedTreatments ??=
          new ListBuilder<GmaladieData_linkedTreatments>();
  set linkedTreatments(
          ListBuilder<GmaladieData_linkedTreatments>? linkedTreatments) =>
      _$this._linkedTreatments = linkedTreatments;

  GmaladieDataBuilder() {
    GmaladieData._initializeBuilder(this);
  }

  GmaladieDataBuilder get _$this {
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
      _linkedTreatments = $v.linkedTreatments?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GmaladieData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmaladieData;
  }

  @override
  void update(void Function(GmaladieDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmaladieData build() => _build();

  _$GmaladieData _build() {
    _$GmaladieData _$result;
    try {
      _$result = _$v ??
          new _$GmaladieData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GmaladieData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GmaladieData', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GmaladieData', 'name'),
              comment: comment,
              startDay: startDay,
              startMonth: startMonth,
              startYear: BuiltValueNullFieldError.checkNotNull(
                  startYear, r'GmaladieData', 'startYear'),
              endDay: endDay,
              endMonth: endMonth,
              endYear: endYear,
              linkedDocuments: _linkedDocuments?.build(),
              linkedTreatments: _linkedTreatments?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'linkedDocuments';
        _linkedDocuments?.build();
        _$failedField = 'linkedTreatments';
        _linkedTreatments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GmaladieData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmaladieData_linkedDocuments extends GmaladieData_linkedDocuments {
  @override
  final String G__typename;
  @override
  final String linkId;
  @override
  final GmaladieData_linkedDocuments_document document;

  factory _$GmaladieData_linkedDocuments(
          [void Function(GmaladieData_linkedDocumentsBuilder)? updates]) =>
      (new GmaladieData_linkedDocumentsBuilder()..update(updates))._build();

  _$GmaladieData_linkedDocuments._(
      {required this.G__typename, required this.linkId, required this.document})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GmaladieData_linkedDocuments', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        linkId, r'GmaladieData_linkedDocuments', 'linkId');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GmaladieData_linkedDocuments', 'document');
  }

  @override
  GmaladieData_linkedDocuments rebuild(
          void Function(GmaladieData_linkedDocumentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmaladieData_linkedDocumentsBuilder toBuilder() =>
      new GmaladieData_linkedDocumentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmaladieData_linkedDocuments &&
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
    return (newBuiltValueToStringHelper(r'GmaladieData_linkedDocuments')
          ..add('G__typename', G__typename)
          ..add('linkId', linkId)
          ..add('document', document))
        .toString();
  }
}

class GmaladieData_linkedDocumentsBuilder
    implements
        Builder<GmaladieData_linkedDocuments,
            GmaladieData_linkedDocumentsBuilder> {
  _$GmaladieData_linkedDocuments? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _linkId;
  String? get linkId => _$this._linkId;
  set linkId(String? linkId) => _$this._linkId = linkId;

  GmaladieData_linkedDocuments_documentBuilder? _document;
  GmaladieData_linkedDocuments_documentBuilder get document =>
      _$this._document ??= new GmaladieData_linkedDocuments_documentBuilder();
  set document(GmaladieData_linkedDocuments_documentBuilder? document) =>
      _$this._document = document;

  GmaladieData_linkedDocumentsBuilder() {
    GmaladieData_linkedDocuments._initializeBuilder(this);
  }

  GmaladieData_linkedDocumentsBuilder get _$this {
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
  void replace(GmaladieData_linkedDocuments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmaladieData_linkedDocuments;
  }

  @override
  void update(void Function(GmaladieData_linkedDocumentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmaladieData_linkedDocuments build() => _build();

  _$GmaladieData_linkedDocuments _build() {
    _$GmaladieData_linkedDocuments _$result;
    try {
      _$result = _$v ??
          new _$GmaladieData_linkedDocuments._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GmaladieData_linkedDocuments', 'G__typename'),
              linkId: BuiltValueNullFieldError.checkNotNull(
                  linkId, r'GmaladieData_linkedDocuments', 'linkId'),
              document: document.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'document';
        document.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GmaladieData_linkedDocuments', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmaladieData_linkedDocuments_document
    extends GmaladieData_linkedDocuments_document {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String title;

  factory _$GmaladieData_linkedDocuments_document(
          [void Function(GmaladieData_linkedDocuments_documentBuilder)?
              updates]) =>
      (new GmaladieData_linkedDocuments_documentBuilder()..update(updates))
          ._build();

  _$GmaladieData_linkedDocuments_document._(
      {required this.G__typename, required this.id, required this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GmaladieData_linkedDocuments_document', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GmaladieData_linkedDocuments_document', 'id');
    BuiltValueNullFieldError.checkNotNull(
        title, r'GmaladieData_linkedDocuments_document', 'title');
  }

  @override
  GmaladieData_linkedDocuments_document rebuild(
          void Function(GmaladieData_linkedDocuments_documentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmaladieData_linkedDocuments_documentBuilder toBuilder() =>
      new GmaladieData_linkedDocuments_documentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmaladieData_linkedDocuments_document &&
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
            r'GmaladieData_linkedDocuments_document')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title))
        .toString();
  }
}

class GmaladieData_linkedDocuments_documentBuilder
    implements
        Builder<GmaladieData_linkedDocuments_document,
            GmaladieData_linkedDocuments_documentBuilder> {
  _$GmaladieData_linkedDocuments_document? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  GmaladieData_linkedDocuments_documentBuilder() {
    GmaladieData_linkedDocuments_document._initializeBuilder(this);
  }

  GmaladieData_linkedDocuments_documentBuilder get _$this {
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
  void replace(GmaladieData_linkedDocuments_document other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmaladieData_linkedDocuments_document;
  }

  @override
  void update(
      void Function(GmaladieData_linkedDocuments_documentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmaladieData_linkedDocuments_document build() => _build();

  _$GmaladieData_linkedDocuments_document _build() {
    final _$result = _$v ??
        new _$GmaladieData_linkedDocuments_document._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GmaladieData_linkedDocuments_document', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GmaladieData_linkedDocuments_document', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'GmaladieData_linkedDocuments_document', 'title'));
    replace(_$result);
    return _$result;
  }
}

class _$GmaladieData_linkedTreatments extends GmaladieData_linkedTreatments {
  @override
  final String G__typename;
  @override
  final String linkId;
  @override
  final GmaladieData_linkedTreatments_treatment treatment;

  factory _$GmaladieData_linkedTreatments(
          [void Function(GmaladieData_linkedTreatmentsBuilder)? updates]) =>
      (new GmaladieData_linkedTreatmentsBuilder()..update(updates))._build();

  _$GmaladieData_linkedTreatments._(
      {required this.G__typename,
      required this.linkId,
      required this.treatment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GmaladieData_linkedTreatments', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        linkId, r'GmaladieData_linkedTreatments', 'linkId');
    BuiltValueNullFieldError.checkNotNull(
        treatment, r'GmaladieData_linkedTreatments', 'treatment');
  }

  @override
  GmaladieData_linkedTreatments rebuild(
          void Function(GmaladieData_linkedTreatmentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmaladieData_linkedTreatmentsBuilder toBuilder() =>
      new GmaladieData_linkedTreatmentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmaladieData_linkedTreatments &&
        G__typename == other.G__typename &&
        linkId == other.linkId &&
        treatment == other.treatment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, linkId.hashCode);
    _$hash = $jc(_$hash, treatment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GmaladieData_linkedTreatments')
          ..add('G__typename', G__typename)
          ..add('linkId', linkId)
          ..add('treatment', treatment))
        .toString();
  }
}

class GmaladieData_linkedTreatmentsBuilder
    implements
        Builder<GmaladieData_linkedTreatments,
            GmaladieData_linkedTreatmentsBuilder> {
  _$GmaladieData_linkedTreatments? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _linkId;
  String? get linkId => _$this._linkId;
  set linkId(String? linkId) => _$this._linkId = linkId;

  GmaladieData_linkedTreatments_treatmentBuilder? _treatment;
  GmaladieData_linkedTreatments_treatmentBuilder get treatment =>
      _$this._treatment ??=
          new GmaladieData_linkedTreatments_treatmentBuilder();
  set treatment(GmaladieData_linkedTreatments_treatmentBuilder? treatment) =>
      _$this._treatment = treatment;

  GmaladieData_linkedTreatmentsBuilder() {
    GmaladieData_linkedTreatments._initializeBuilder(this);
  }

  GmaladieData_linkedTreatmentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _linkId = $v.linkId;
      _treatment = $v.treatment.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GmaladieData_linkedTreatments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmaladieData_linkedTreatments;
  }

  @override
  void update(void Function(GmaladieData_linkedTreatmentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmaladieData_linkedTreatments build() => _build();

  _$GmaladieData_linkedTreatments _build() {
    _$GmaladieData_linkedTreatments _$result;
    try {
      _$result = _$v ??
          new _$GmaladieData_linkedTreatments._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GmaladieData_linkedTreatments', 'G__typename'),
              linkId: BuiltValueNullFieldError.checkNotNull(
                  linkId, r'GmaladieData_linkedTreatments', 'linkId'),
              treatment: treatment.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'treatment';
        treatment.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GmaladieData_linkedTreatments', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmaladieData_linkedTreatments_treatment
    extends GmaladieData_linkedTreatments_treatment {
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
  final BuiltList<GmaladieData_linkedTreatments_treatment_linkedDiseases>?
      linkedDiseases;

  factory _$GmaladieData_linkedTreatments_treatment(
          [void Function(GmaladieData_linkedTreatments_treatmentBuilder)?
              updates]) =>
      (new GmaladieData_linkedTreatments_treatmentBuilder()..update(updates))
          ._build();

  _$GmaladieData_linkedTreatments_treatment._(
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
      this.linkedDiseases})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GmaladieData_linkedTreatments_treatment', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GmaladieData_linkedTreatments_treatment', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GmaladieData_linkedTreatments_treatment', 'name');
    BuiltValueNullFieldError.checkNotNull(
        startYear, r'GmaladieData_linkedTreatments_treatment', 'startYear');
  }

  @override
  GmaladieData_linkedTreatments_treatment rebuild(
          void Function(GmaladieData_linkedTreatments_treatmentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmaladieData_linkedTreatments_treatmentBuilder toBuilder() =>
      new GmaladieData_linkedTreatments_treatmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmaladieData_linkedTreatments_treatment &&
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
        linkedDiseases == other.linkedDiseases;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GmaladieData_linkedTreatments_treatment')
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
          ..add('linkedDiseases', linkedDiseases))
        .toString();
  }
}

class GmaladieData_linkedTreatments_treatmentBuilder
    implements
        Builder<GmaladieData_linkedTreatments_treatment,
            GmaladieData_linkedTreatments_treatmentBuilder> {
  _$GmaladieData_linkedTreatments_treatment? _$v;

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

  ListBuilder<GmaladieData_linkedTreatments_treatment_linkedDiseases>?
      _linkedDiseases;
  ListBuilder<GmaladieData_linkedTreatments_treatment_linkedDiseases>
      get linkedDiseases => _$this._linkedDiseases ??= new ListBuilder<
          GmaladieData_linkedTreatments_treatment_linkedDiseases>();
  set linkedDiseases(
          ListBuilder<GmaladieData_linkedTreatments_treatment_linkedDiseases>?
              linkedDiseases) =>
      _$this._linkedDiseases = linkedDiseases;

  GmaladieData_linkedTreatments_treatmentBuilder() {
    GmaladieData_linkedTreatments_treatment._initializeBuilder(this);
  }

  GmaladieData_linkedTreatments_treatmentBuilder get _$this {
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
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GmaladieData_linkedTreatments_treatment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmaladieData_linkedTreatments_treatment;
  }

  @override
  void update(
      void Function(GmaladieData_linkedTreatments_treatmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmaladieData_linkedTreatments_treatment build() => _build();

  _$GmaladieData_linkedTreatments_treatment _build() {
    _$GmaladieData_linkedTreatments_treatment _$result;
    try {
      _$result = _$v ??
          new _$GmaladieData_linkedTreatments_treatment._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GmaladieData_linkedTreatments_treatment', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GmaladieData_linkedTreatments_treatment', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GmaladieData_linkedTreatments_treatment', 'name'),
              comment: comment,
              startDay: startDay,
              startMonth: startMonth,
              startYear: BuiltValueNullFieldError.checkNotNull(startYear,
                  r'GmaladieData_linkedTreatments_treatment', 'startYear'),
              endDay: endDay,
              endMonth: endMonth,
              endYear: endYear,
              dosage: dosage,
              linkedDiseases: _linkedDiseases?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'linkedDiseases';
        _linkedDiseases?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GmaladieData_linkedTreatments_treatment',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmaladieData_linkedTreatments_treatment_linkedDiseases
    extends GmaladieData_linkedTreatments_treatment_linkedDiseases {
  @override
  final String G__typename;
  @override
  final String linkId;
  @override
  final GmaladieData_linkedTreatments_treatment_linkedDiseases_disease disease;

  factory _$GmaladieData_linkedTreatments_treatment_linkedDiseases(
          [void Function(
                  GmaladieData_linkedTreatments_treatment_linkedDiseasesBuilder)?
              updates]) =>
      (new GmaladieData_linkedTreatments_treatment_linkedDiseasesBuilder()
            ..update(updates))
          ._build();

  _$GmaladieData_linkedTreatments_treatment_linkedDiseases._(
      {required this.G__typename, required this.linkId, required this.disease})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GmaladieData_linkedTreatments_treatment_linkedDiseases',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(linkId,
        r'GmaladieData_linkedTreatments_treatment_linkedDiseases', 'linkId');
    BuiltValueNullFieldError.checkNotNull(disease,
        r'GmaladieData_linkedTreatments_treatment_linkedDiseases', 'disease');
  }

  @override
  GmaladieData_linkedTreatments_treatment_linkedDiseases rebuild(
          void Function(
                  GmaladieData_linkedTreatments_treatment_linkedDiseasesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmaladieData_linkedTreatments_treatment_linkedDiseasesBuilder toBuilder() =>
      new GmaladieData_linkedTreatments_treatment_linkedDiseasesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmaladieData_linkedTreatments_treatment_linkedDiseases &&
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
            r'GmaladieData_linkedTreatments_treatment_linkedDiseases')
          ..add('G__typename', G__typename)
          ..add('linkId', linkId)
          ..add('disease', disease))
        .toString();
  }
}

class GmaladieData_linkedTreatments_treatment_linkedDiseasesBuilder
    implements
        Builder<GmaladieData_linkedTreatments_treatment_linkedDiseases,
            GmaladieData_linkedTreatments_treatment_linkedDiseasesBuilder> {
  _$GmaladieData_linkedTreatments_treatment_linkedDiseases? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _linkId;
  String? get linkId => _$this._linkId;
  set linkId(String? linkId) => _$this._linkId = linkId;

  GmaladieData_linkedTreatments_treatment_linkedDiseases_diseaseBuilder?
      _disease;
  GmaladieData_linkedTreatments_treatment_linkedDiseases_diseaseBuilder
      get disease => _$this._disease ??=
          new GmaladieData_linkedTreatments_treatment_linkedDiseases_diseaseBuilder();
  set disease(
          GmaladieData_linkedTreatments_treatment_linkedDiseases_diseaseBuilder?
              disease) =>
      _$this._disease = disease;

  GmaladieData_linkedTreatments_treatment_linkedDiseasesBuilder() {
    GmaladieData_linkedTreatments_treatment_linkedDiseases._initializeBuilder(
        this);
  }

  GmaladieData_linkedTreatments_treatment_linkedDiseasesBuilder get _$this {
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
  void replace(GmaladieData_linkedTreatments_treatment_linkedDiseases other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmaladieData_linkedTreatments_treatment_linkedDiseases;
  }

  @override
  void update(
      void Function(
              GmaladieData_linkedTreatments_treatment_linkedDiseasesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GmaladieData_linkedTreatments_treatment_linkedDiseases build() => _build();

  _$GmaladieData_linkedTreatments_treatment_linkedDiseases _build() {
    _$GmaladieData_linkedTreatments_treatment_linkedDiseases _$result;
    try {
      _$result = _$v ??
          new _$GmaladieData_linkedTreatments_treatment_linkedDiseases._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GmaladieData_linkedTreatments_treatment_linkedDiseases',
                  'G__typename'),
              linkId: BuiltValueNullFieldError.checkNotNull(
                  linkId,
                  r'GmaladieData_linkedTreatments_treatment_linkedDiseases',
                  'linkId'),
              disease: disease.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'disease';
        disease.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GmaladieData_linkedTreatments_treatment_linkedDiseases',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmaladieData_linkedTreatments_treatment_linkedDiseases_disease
    extends GmaladieData_linkedTreatments_treatment_linkedDiseases_disease {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GmaladieData_linkedTreatments_treatment_linkedDiseases_disease(
          [void Function(
                  GmaladieData_linkedTreatments_treatment_linkedDiseases_diseaseBuilder)?
              updates]) =>
      (new GmaladieData_linkedTreatments_treatment_linkedDiseases_diseaseBuilder()
            ..update(updates))
          ._build();

  _$GmaladieData_linkedTreatments_treatment_linkedDiseases_disease._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GmaladieData_linkedTreatments_treatment_linkedDiseases_disease',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GmaladieData_linkedTreatments_treatment_linkedDiseases_disease',
        'id');
  }

  @override
  GmaladieData_linkedTreatments_treatment_linkedDiseases_disease rebuild(
          void Function(
                  GmaladieData_linkedTreatments_treatment_linkedDiseases_diseaseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmaladieData_linkedTreatments_treatment_linkedDiseases_diseaseBuilder
      toBuilder() =>
          new GmaladieData_linkedTreatments_treatment_linkedDiseases_diseaseBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GmaladieData_linkedTreatments_treatment_linkedDiseases_disease &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GmaladieData_linkedTreatments_treatment_linkedDiseases_disease')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GmaladieData_linkedTreatments_treatment_linkedDiseases_diseaseBuilder
    implements
        Builder<GmaladieData_linkedTreatments_treatment_linkedDiseases_disease,
            GmaladieData_linkedTreatments_treatment_linkedDiseases_diseaseBuilder> {
  _$GmaladieData_linkedTreatments_treatment_linkedDiseases_disease? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GmaladieData_linkedTreatments_treatment_linkedDiseases_diseaseBuilder() {
    GmaladieData_linkedTreatments_treatment_linkedDiseases_disease
        ._initializeBuilder(this);
  }

  GmaladieData_linkedTreatments_treatment_linkedDiseases_diseaseBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GmaladieData_linkedTreatments_treatment_linkedDiseases_disease other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GmaladieData_linkedTreatments_treatment_linkedDiseases_disease;
  }

  @override
  void update(
      void Function(
              GmaladieData_linkedTreatments_treatment_linkedDiseases_diseaseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GmaladieData_linkedTreatments_treatment_linkedDiseases_disease build() =>
      _build();

  _$GmaladieData_linkedTreatments_treatment_linkedDiseases_disease _build() {
    final _$result = _$v ??
        new _$GmaladieData_linkedTreatments_treatment_linkedDiseases_disease._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GmaladieData_linkedTreatments_treatment_linkedDiseases_disease',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'GmaladieData_linkedTreatments_treatment_linkedDiseases_disease',
                'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GtraitementLieData extends GtraitementLieData {
  @override
  final String G__typename;
  @override
  final String linkId;
  @override
  final GtraitementLieData_treatment treatment;

  factory _$GtraitementLieData(
          [void Function(GtraitementLieDataBuilder)? updates]) =>
      (new GtraitementLieDataBuilder()..update(updates))._build();

  _$GtraitementLieData._(
      {required this.G__typename,
      required this.linkId,
      required this.treatment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GtraitementLieData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        linkId, r'GtraitementLieData', 'linkId');
    BuiltValueNullFieldError.checkNotNull(
        treatment, r'GtraitementLieData', 'treatment');
  }

  @override
  GtraitementLieData rebuild(
          void Function(GtraitementLieDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GtraitementLieDataBuilder toBuilder() =>
      new GtraitementLieDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GtraitementLieData &&
        G__typename == other.G__typename &&
        linkId == other.linkId &&
        treatment == other.treatment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, linkId.hashCode);
    _$hash = $jc(_$hash, treatment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GtraitementLieData')
          ..add('G__typename', G__typename)
          ..add('linkId', linkId)
          ..add('treatment', treatment))
        .toString();
  }
}

class GtraitementLieDataBuilder
    implements Builder<GtraitementLieData, GtraitementLieDataBuilder> {
  _$GtraitementLieData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _linkId;
  String? get linkId => _$this._linkId;
  set linkId(String? linkId) => _$this._linkId = linkId;

  GtraitementLieData_treatmentBuilder? _treatment;
  GtraitementLieData_treatmentBuilder get treatment =>
      _$this._treatment ??= new GtraitementLieData_treatmentBuilder();
  set treatment(GtraitementLieData_treatmentBuilder? treatment) =>
      _$this._treatment = treatment;

  GtraitementLieDataBuilder() {
    GtraitementLieData._initializeBuilder(this);
  }

  GtraitementLieDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _linkId = $v.linkId;
      _treatment = $v.treatment.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GtraitementLieData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GtraitementLieData;
  }

  @override
  void update(void Function(GtraitementLieDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GtraitementLieData build() => _build();

  _$GtraitementLieData _build() {
    _$GtraitementLieData _$result;
    try {
      _$result = _$v ??
          new _$GtraitementLieData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GtraitementLieData', 'G__typename'),
              linkId: BuiltValueNullFieldError.checkNotNull(
                  linkId, r'GtraitementLieData', 'linkId'),
              treatment: treatment.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'treatment';
        treatment.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GtraitementLieData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GtraitementLieData_treatment extends GtraitementLieData_treatment {
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
  final BuiltList<GtraitementLieData_treatment_linkedDiseases>? linkedDiseases;

  factory _$GtraitementLieData_treatment(
          [void Function(GtraitementLieData_treatmentBuilder)? updates]) =>
      (new GtraitementLieData_treatmentBuilder()..update(updates))._build();

  _$GtraitementLieData_treatment._(
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
      this.linkedDiseases})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GtraitementLieData_treatment', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GtraitementLieData_treatment', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GtraitementLieData_treatment', 'name');
    BuiltValueNullFieldError.checkNotNull(
        startYear, r'GtraitementLieData_treatment', 'startYear');
  }

  @override
  GtraitementLieData_treatment rebuild(
          void Function(GtraitementLieData_treatmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GtraitementLieData_treatmentBuilder toBuilder() =>
      new GtraitementLieData_treatmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GtraitementLieData_treatment &&
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
        linkedDiseases == other.linkedDiseases;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GtraitementLieData_treatment')
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
          ..add('linkedDiseases', linkedDiseases))
        .toString();
  }
}

class GtraitementLieData_treatmentBuilder
    implements
        Builder<GtraitementLieData_treatment,
            GtraitementLieData_treatmentBuilder> {
  _$GtraitementLieData_treatment? _$v;

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

  ListBuilder<GtraitementLieData_treatment_linkedDiseases>? _linkedDiseases;
  ListBuilder<GtraitementLieData_treatment_linkedDiseases> get linkedDiseases =>
      _$this._linkedDiseases ??=
          new ListBuilder<GtraitementLieData_treatment_linkedDiseases>();
  set linkedDiseases(
          ListBuilder<GtraitementLieData_treatment_linkedDiseases>?
              linkedDiseases) =>
      _$this._linkedDiseases = linkedDiseases;

  GtraitementLieData_treatmentBuilder() {
    GtraitementLieData_treatment._initializeBuilder(this);
  }

  GtraitementLieData_treatmentBuilder get _$this {
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
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GtraitementLieData_treatment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GtraitementLieData_treatment;
  }

  @override
  void update(void Function(GtraitementLieData_treatmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GtraitementLieData_treatment build() => _build();

  _$GtraitementLieData_treatment _build() {
    _$GtraitementLieData_treatment _$result;
    try {
      _$result = _$v ??
          new _$GtraitementLieData_treatment._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GtraitementLieData_treatment', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GtraitementLieData_treatment', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GtraitementLieData_treatment', 'name'),
              comment: comment,
              startDay: startDay,
              startMonth: startMonth,
              startYear: BuiltValueNullFieldError.checkNotNull(
                  startYear, r'GtraitementLieData_treatment', 'startYear'),
              endDay: endDay,
              endMonth: endMonth,
              endYear: endYear,
              dosage: dosage,
              linkedDiseases: _linkedDiseases?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'linkedDiseases';
        _linkedDiseases?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GtraitementLieData_treatment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GtraitementLieData_treatment_linkedDiseases
    extends GtraitementLieData_treatment_linkedDiseases {
  @override
  final String G__typename;
  @override
  final String linkId;
  @override
  final GtraitementLieData_treatment_linkedDiseases_disease disease;

  factory _$GtraitementLieData_treatment_linkedDiseases(
          [void Function(GtraitementLieData_treatment_linkedDiseasesBuilder)?
              updates]) =>
      (new GtraitementLieData_treatment_linkedDiseasesBuilder()
            ..update(updates))
          ._build();

  _$GtraitementLieData_treatment_linkedDiseases._(
      {required this.G__typename, required this.linkId, required this.disease})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GtraitementLieData_treatment_linkedDiseases', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        linkId, r'GtraitementLieData_treatment_linkedDiseases', 'linkId');
    BuiltValueNullFieldError.checkNotNull(
        disease, r'GtraitementLieData_treatment_linkedDiseases', 'disease');
  }

  @override
  GtraitementLieData_treatment_linkedDiseases rebuild(
          void Function(GtraitementLieData_treatment_linkedDiseasesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GtraitementLieData_treatment_linkedDiseasesBuilder toBuilder() =>
      new GtraitementLieData_treatment_linkedDiseasesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GtraitementLieData_treatment_linkedDiseases &&
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
            r'GtraitementLieData_treatment_linkedDiseases')
          ..add('G__typename', G__typename)
          ..add('linkId', linkId)
          ..add('disease', disease))
        .toString();
  }
}

class GtraitementLieData_treatment_linkedDiseasesBuilder
    implements
        Builder<GtraitementLieData_treatment_linkedDiseases,
            GtraitementLieData_treatment_linkedDiseasesBuilder> {
  _$GtraitementLieData_treatment_linkedDiseases? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _linkId;
  String? get linkId => _$this._linkId;
  set linkId(String? linkId) => _$this._linkId = linkId;

  GtraitementLieData_treatment_linkedDiseases_diseaseBuilder? _disease;
  GtraitementLieData_treatment_linkedDiseases_diseaseBuilder get disease =>
      _$this._disease ??=
          new GtraitementLieData_treatment_linkedDiseases_diseaseBuilder();
  set disease(
          GtraitementLieData_treatment_linkedDiseases_diseaseBuilder?
              disease) =>
      _$this._disease = disease;

  GtraitementLieData_treatment_linkedDiseasesBuilder() {
    GtraitementLieData_treatment_linkedDiseases._initializeBuilder(this);
  }

  GtraitementLieData_treatment_linkedDiseasesBuilder get _$this {
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
  void replace(GtraitementLieData_treatment_linkedDiseases other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GtraitementLieData_treatment_linkedDiseases;
  }

  @override
  void update(
      void Function(GtraitementLieData_treatment_linkedDiseasesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GtraitementLieData_treatment_linkedDiseases build() => _build();

  _$GtraitementLieData_treatment_linkedDiseases _build() {
    _$GtraitementLieData_treatment_linkedDiseases _$result;
    try {
      _$result = _$v ??
          new _$GtraitementLieData_treatment_linkedDiseases._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GtraitementLieData_treatment_linkedDiseases',
                  'G__typename'),
              linkId: BuiltValueNullFieldError.checkNotNull(linkId,
                  r'GtraitementLieData_treatment_linkedDiseases', 'linkId'),
              disease: disease.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'disease';
        disease.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GtraitementLieData_treatment_linkedDiseases',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GtraitementLieData_treatment_linkedDiseases_disease
    extends GtraitementLieData_treatment_linkedDiseases_disease {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GtraitementLieData_treatment_linkedDiseases_disease(
          [void Function(
                  GtraitementLieData_treatment_linkedDiseases_diseaseBuilder)?
              updates]) =>
      (new GtraitementLieData_treatment_linkedDiseases_diseaseBuilder()
            ..update(updates))
          ._build();

  _$GtraitementLieData_treatment_linkedDiseases_disease._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GtraitementLieData_treatment_linkedDiseases_disease', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GtraitementLieData_treatment_linkedDiseases_disease', 'id');
  }

  @override
  GtraitementLieData_treatment_linkedDiseases_disease rebuild(
          void Function(
                  GtraitementLieData_treatment_linkedDiseases_diseaseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GtraitementLieData_treatment_linkedDiseases_diseaseBuilder toBuilder() =>
      new GtraitementLieData_treatment_linkedDiseases_diseaseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GtraitementLieData_treatment_linkedDiseases_disease &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GtraitementLieData_treatment_linkedDiseases_disease')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GtraitementLieData_treatment_linkedDiseases_diseaseBuilder
    implements
        Builder<GtraitementLieData_treatment_linkedDiseases_disease,
            GtraitementLieData_treatment_linkedDiseases_diseaseBuilder> {
  _$GtraitementLieData_treatment_linkedDiseases_disease? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GtraitementLieData_treatment_linkedDiseases_diseaseBuilder() {
    GtraitementLieData_treatment_linkedDiseases_disease._initializeBuilder(
        this);
  }

  GtraitementLieData_treatment_linkedDiseases_diseaseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GtraitementLieData_treatment_linkedDiseases_disease other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GtraitementLieData_treatment_linkedDiseases_disease;
  }

  @override
  void update(
      void Function(GtraitementLieData_treatment_linkedDiseases_diseaseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GtraitementLieData_treatment_linkedDiseases_disease build() => _build();

  _$GtraitementLieData_treatment_linkedDiseases_disease _build() {
    final _$result = _$v ??
        new _$GtraitementLieData_treatment_linkedDiseases_disease._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GtraitementLieData_treatment_linkedDiseases_disease',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(id,
                r'GtraitementLieData_treatment_linkedDiseases_disease', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
