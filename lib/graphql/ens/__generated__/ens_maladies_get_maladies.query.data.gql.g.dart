// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_maladies_get_maladies.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_maladiesData> _$ggetMaladiesDataSerializer =
    new _$Gget_maladiesDataSerializer();
Serializer<Gget_maladiesData_diseases> _$ggetMaladiesDataDiseasesSerializer =
    new _$Gget_maladiesData_diseasesSerializer();
Serializer<Gget_maladiesData_diseases_diseases>
    _$ggetMaladiesDataDiseasesDiseasesSerializer =
    new _$Gget_maladiesData_diseases_diseasesSerializer();
Serializer<Gget_maladiesData_diseases_diseases_linkedDocuments>
    _$ggetMaladiesDataDiseasesDiseasesLinkedDocumentsSerializer =
    new _$Gget_maladiesData_diseases_diseases_linkedDocumentsSerializer();
Serializer<Gget_maladiesData_diseases_diseases_linkedDocuments_document>
    _$ggetMaladiesDataDiseasesDiseasesLinkedDocumentsDocumentSerializer =
    new _$Gget_maladiesData_diseases_diseases_linkedDocuments_documentSerializer();
Serializer<Gget_maladiesData_diseases_diseases_linkedTreatments>
    _$ggetMaladiesDataDiseasesDiseasesLinkedTreatmentsSerializer =
    new _$Gget_maladiesData_diseases_diseases_linkedTreatmentsSerializer();
Serializer<Gget_maladiesData_diseases_diseases_linkedTreatments_treatment>
    _$ggetMaladiesDataDiseasesDiseasesLinkedTreatmentsTreatmentSerializer =
    new _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatmentSerializer();
Serializer<
        Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases>
    _$ggetMaladiesDataDiseasesDiseasesLinkedTreatmentsTreatmentLinkedDiseasesSerializer =
    new _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseasesSerializer();
Serializer<
        Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease>
    _$ggetMaladiesDataDiseasesDiseasesLinkedTreatmentsTreatmentLinkedDiseasesDiseaseSerializer =
    new _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_diseaseSerializer();

class _$Gget_maladiesDataSerializer
    implements StructuredSerializer<Gget_maladiesData> {
  @override
  final Iterable<Type> types = const [Gget_maladiesData, _$Gget_maladiesData];
  @override
  final String wireName = 'Gget_maladiesData';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gget_maladiesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.diseases;
    if (value != null) {
      result
        ..add('diseases')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Gget_maladiesData_diseases)));
    }
    return result;
  }

  @override
  Gget_maladiesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_maladiesDataBuilder();

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
        case 'diseases':
          result.diseases.replace(serializers.deserialize(value,
                  specifiedType: const FullType(Gget_maladiesData_diseases))!
              as Gget_maladiesData_diseases);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_maladiesData_diseasesSerializer
    implements StructuredSerializer<Gget_maladiesData_diseases> {
  @override
  final Iterable<Type> types = const [
    Gget_maladiesData_diseases,
    _$Gget_maladiesData_diseases
  ];
  @override
  final String wireName = 'Gget_maladiesData_diseases';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_maladiesData_diseases object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'diseases',
      serializers.serialize(object.diseases,
          specifiedType: const FullType(BuiltList,
              const [const FullType(Gget_maladiesData_diseases_diseases)])),
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
  Gget_maladiesData_diseases deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_maladiesData_diseasesBuilder();

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
        case 'diseases':
          result.diseases.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gget_maladiesData_diseases_diseases)
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

class _$Gget_maladiesData_diseases_diseasesSerializer
    implements StructuredSerializer<Gget_maladiesData_diseases_diseases> {
  @override
  final Iterable<Type> types = const [
    Gget_maladiesData_diseases_diseases,
    _$Gget_maladiesData_diseases_diseases
  ];
  @override
  final String wireName = 'Gget_maladiesData_diseases_diseases';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_maladiesData_diseases_diseases object,
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
                  Gget_maladiesData_diseases_diseases_linkedDocuments)
            ])));
    }
    value = object.linkedTreatments;
    if (value != null) {
      result
        ..add('linkedTreatments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_maladiesData_diseases_diseases_linkedTreatments)
            ])));
    }
    return result;
  }

  @override
  Gget_maladiesData_diseases_diseases deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_maladiesData_diseases_diseasesBuilder();

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
                    Gget_maladiesData_diseases_diseases_linkedDocuments)
              ]))! as BuiltList<Object?>);
          break;
        case 'linkedTreatments':
          result.linkedTreatments.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_maladiesData_diseases_diseases_linkedTreatments)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_maladiesData_diseases_diseases_linkedDocumentsSerializer
    implements
        StructuredSerializer<
            Gget_maladiesData_diseases_diseases_linkedDocuments> {
  @override
  final Iterable<Type> types = const [
    Gget_maladiesData_diseases_diseases_linkedDocuments,
    _$Gget_maladiesData_diseases_diseases_linkedDocuments
  ];
  @override
  final String wireName = 'Gget_maladiesData_diseases_diseases_linkedDocuments';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_maladiesData_diseases_diseases_linkedDocuments object,
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
              Gget_maladiesData_diseases_diseases_linkedDocuments_document)),
    ];

    return result;
  }

  @override
  Gget_maladiesData_diseases_diseases_linkedDocuments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_maladiesData_diseases_diseases_linkedDocumentsBuilder();

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
                      Gget_maladiesData_diseases_diseases_linkedDocuments_document))!
              as Gget_maladiesData_diseases_diseases_linkedDocuments_document);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_maladiesData_diseases_diseases_linkedDocuments_documentSerializer
    implements
        StructuredSerializer<
            Gget_maladiesData_diseases_diseases_linkedDocuments_document> {
  @override
  final Iterable<Type> types = const [
    Gget_maladiesData_diseases_diseases_linkedDocuments_document,
    _$Gget_maladiesData_diseases_diseases_linkedDocuments_document
  ];
  @override
  final String wireName =
      'Gget_maladiesData_diseases_diseases_linkedDocuments_document';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_maladiesData_diseases_diseases_linkedDocuments_document object,
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
  Gget_maladiesData_diseases_diseases_linkedDocuments_document deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_maladiesData_diseases_diseases_linkedDocuments_documentBuilder();

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

class _$Gget_maladiesData_diseases_diseases_linkedTreatmentsSerializer
    implements
        StructuredSerializer<
            Gget_maladiesData_diseases_diseases_linkedTreatments> {
  @override
  final Iterable<Type> types = const [
    Gget_maladiesData_diseases_diseases_linkedTreatments,
    _$Gget_maladiesData_diseases_diseases_linkedTreatments
  ];
  @override
  final String wireName =
      'Gget_maladiesData_diseases_diseases_linkedTreatments';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_maladiesData_diseases_diseases_linkedTreatments object,
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
          specifiedType: const FullType(
              Gget_maladiesData_diseases_diseases_linkedTreatments_treatment)),
    ];

    return result;
  }

  @override
  Gget_maladiesData_diseases_diseases_linkedTreatments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_maladiesData_diseases_diseases_linkedTreatmentsBuilder();

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
                  specifiedType: const FullType(
                      Gget_maladiesData_diseases_diseases_linkedTreatments_treatment))!
              as Gget_maladiesData_diseases_diseases_linkedTreatments_treatment);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatmentSerializer
    implements
        StructuredSerializer<
            Gget_maladiesData_diseases_diseases_linkedTreatments_treatment> {
  @override
  final Iterable<Type> types = const [
    Gget_maladiesData_diseases_diseases_linkedTreatments_treatment,
    _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment
  ];
  @override
  final String wireName =
      'Gget_maladiesData_diseases_diseases_linkedTreatments_treatment';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_maladiesData_diseases_diseases_linkedTreatments_treatment object,
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
                  Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases)
            ])));
    }
    return result;
  }

  @override
  Gget_maladiesData_diseases_diseases_linkedTreatments_treatment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_maladiesData_diseases_diseases_linkedTreatments_treatmentBuilder();

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
                    Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseasesSerializer
    implements
        StructuredSerializer<
            Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases> {
  @override
  final Iterable<Type> types = const [
    Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases,
    _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases
  ];
  @override
  final String wireName =
      'Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases
          object,
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
              Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease)),
    ];

    return result;
  }

  @override
  Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseasesBuilder();

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
                      Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease))!
              as Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_diseaseSerializer
    implements
        StructuredSerializer<
            Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease> {
  @override
  final Iterable<Type> types = const [
    Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease,
    _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease
  ];
  @override
  final String wireName =
      'Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease
          object,
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
  Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_diseaseBuilder();

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

class _$Gget_maladiesData extends Gget_maladiesData {
  @override
  final String G__typename;
  @override
  final Gget_maladiesData_diseases? diseases;

  factory _$Gget_maladiesData(
          [void Function(Gget_maladiesDataBuilder)? updates]) =>
      (new Gget_maladiesDataBuilder()..update(updates))._build();

  _$Gget_maladiesData._({required this.G__typename, this.diseases})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_maladiesData', 'G__typename');
  }

  @override
  Gget_maladiesData rebuild(void Function(Gget_maladiesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_maladiesDataBuilder toBuilder() =>
      new Gget_maladiesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_maladiesData &&
        G__typename == other.G__typename &&
        diseases == other.diseases;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, diseases.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_maladiesData')
          ..add('G__typename', G__typename)
          ..add('diseases', diseases))
        .toString();
  }
}

class Gget_maladiesDataBuilder
    implements Builder<Gget_maladiesData, Gget_maladiesDataBuilder> {
  _$Gget_maladiesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_maladiesData_diseasesBuilder? _diseases;
  Gget_maladiesData_diseasesBuilder get diseases =>
      _$this._diseases ??= new Gget_maladiesData_diseasesBuilder();
  set diseases(Gget_maladiesData_diseasesBuilder? diseases) =>
      _$this._diseases = diseases;

  Gget_maladiesDataBuilder() {
    Gget_maladiesData._initializeBuilder(this);
  }

  Gget_maladiesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _diseases = $v.diseases?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_maladiesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_maladiesData;
  }

  @override
  void update(void Function(Gget_maladiesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_maladiesData build() => _build();

  _$Gget_maladiesData _build() {
    _$Gget_maladiesData _$result;
    try {
      _$result = _$v ??
          new _$Gget_maladiesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_maladiesData', 'G__typename'),
              diseases: _diseases?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'diseases';
        _diseases?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_maladiesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_maladiesData_diseases extends Gget_maladiesData_diseases {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_maladiesData_diseases_diseases> diseases;
  @override
  final String? unconcernedDeclarationDate;

  factory _$Gget_maladiesData_diseases(
          [void Function(Gget_maladiesData_diseasesBuilder)? updates]) =>
      (new Gget_maladiesData_diseasesBuilder()..update(updates))._build();

  _$Gget_maladiesData_diseases._(
      {required this.G__typename,
      required this.diseases,
      this.unconcernedDeclarationDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_maladiesData_diseases', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        diseases, r'Gget_maladiesData_diseases', 'diseases');
  }

  @override
  Gget_maladiesData_diseases rebuild(
          void Function(Gget_maladiesData_diseasesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_maladiesData_diseasesBuilder toBuilder() =>
      new Gget_maladiesData_diseasesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_maladiesData_diseases &&
        G__typename == other.G__typename &&
        diseases == other.diseases &&
        unconcernedDeclarationDate == other.unconcernedDeclarationDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, diseases.hashCode);
    _$hash = $jc(_$hash, unconcernedDeclarationDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_maladiesData_diseases')
          ..add('G__typename', G__typename)
          ..add('diseases', diseases)
          ..add('unconcernedDeclarationDate', unconcernedDeclarationDate))
        .toString();
  }
}

class Gget_maladiesData_diseasesBuilder
    implements
        Builder<Gget_maladiesData_diseases, Gget_maladiesData_diseasesBuilder> {
  _$Gget_maladiesData_diseases? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_maladiesData_diseases_diseases>? _diseases;
  ListBuilder<Gget_maladiesData_diseases_diseases> get diseases =>
      _$this._diseases ??=
          new ListBuilder<Gget_maladiesData_diseases_diseases>();
  set diseases(ListBuilder<Gget_maladiesData_diseases_diseases>? diseases) =>
      _$this._diseases = diseases;

  String? _unconcernedDeclarationDate;
  String? get unconcernedDeclarationDate => _$this._unconcernedDeclarationDate;
  set unconcernedDeclarationDate(String? unconcernedDeclarationDate) =>
      _$this._unconcernedDeclarationDate = unconcernedDeclarationDate;

  Gget_maladiesData_diseasesBuilder() {
    Gget_maladiesData_diseases._initializeBuilder(this);
  }

  Gget_maladiesData_diseasesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _diseases = $v.diseases.toBuilder();
      _unconcernedDeclarationDate = $v.unconcernedDeclarationDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_maladiesData_diseases other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_maladiesData_diseases;
  }

  @override
  void update(void Function(Gget_maladiesData_diseasesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_maladiesData_diseases build() => _build();

  _$Gget_maladiesData_diseases _build() {
    _$Gget_maladiesData_diseases _$result;
    try {
      _$result = _$v ??
          new _$Gget_maladiesData_diseases._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_maladiesData_diseases', 'G__typename'),
              diseases: diseases.build(),
              unconcernedDeclarationDate: unconcernedDeclarationDate);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'diseases';
        diseases.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_maladiesData_diseases', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_maladiesData_diseases_diseases
    extends Gget_maladiesData_diseases_diseases {
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
  final BuiltList<Gget_maladiesData_diseases_diseases_linkedDocuments>?
      linkedDocuments;
  @override
  final BuiltList<Gget_maladiesData_diseases_diseases_linkedTreatments>?
      linkedTreatments;

  factory _$Gget_maladiesData_diseases_diseases(
          [void Function(Gget_maladiesData_diseases_diseasesBuilder)?
              updates]) =>
      (new Gget_maladiesData_diseases_diseasesBuilder()..update(updates))
          ._build();

  _$Gget_maladiesData_diseases_diseases._(
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
        G__typename, r'Gget_maladiesData_diseases_diseases', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gget_maladiesData_diseases_diseases', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'Gget_maladiesData_diseases_diseases', 'name');
    BuiltValueNullFieldError.checkNotNull(
        startYear, r'Gget_maladiesData_diseases_diseases', 'startYear');
  }

  @override
  Gget_maladiesData_diseases_diseases rebuild(
          void Function(Gget_maladiesData_diseases_diseasesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_maladiesData_diseases_diseasesBuilder toBuilder() =>
      new Gget_maladiesData_diseases_diseasesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_maladiesData_diseases_diseases &&
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
    return (newBuiltValueToStringHelper(r'Gget_maladiesData_diseases_diseases')
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

class Gget_maladiesData_diseases_diseasesBuilder
    implements
        Builder<Gget_maladiesData_diseases_diseases,
            Gget_maladiesData_diseases_diseasesBuilder> {
  _$Gget_maladiesData_diseases_diseases? _$v;

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

  ListBuilder<Gget_maladiesData_diseases_diseases_linkedDocuments>?
      _linkedDocuments;
  ListBuilder<Gget_maladiesData_diseases_diseases_linkedDocuments>
      get linkedDocuments => _$this._linkedDocuments ??= new ListBuilder<
          Gget_maladiesData_diseases_diseases_linkedDocuments>();
  set linkedDocuments(
          ListBuilder<Gget_maladiesData_diseases_diseases_linkedDocuments>?
              linkedDocuments) =>
      _$this._linkedDocuments = linkedDocuments;

  ListBuilder<Gget_maladiesData_diseases_diseases_linkedTreatments>?
      _linkedTreatments;
  ListBuilder<Gget_maladiesData_diseases_diseases_linkedTreatments>
      get linkedTreatments => _$this._linkedTreatments ??= new ListBuilder<
          Gget_maladiesData_diseases_diseases_linkedTreatments>();
  set linkedTreatments(
          ListBuilder<Gget_maladiesData_diseases_diseases_linkedTreatments>?
              linkedTreatments) =>
      _$this._linkedTreatments = linkedTreatments;

  Gget_maladiesData_diseases_diseasesBuilder() {
    Gget_maladiesData_diseases_diseases._initializeBuilder(this);
  }

  Gget_maladiesData_diseases_diseasesBuilder get _$this {
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
  void replace(Gget_maladiesData_diseases_diseases other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_maladiesData_diseases_diseases;
  }

  @override
  void update(
      void Function(Gget_maladiesData_diseases_diseasesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_maladiesData_diseases_diseases build() => _build();

  _$Gget_maladiesData_diseases_diseases _build() {
    _$Gget_maladiesData_diseases_diseases _$result;
    try {
      _$result = _$v ??
          new _$Gget_maladiesData_diseases_diseases._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_maladiesData_diseases_diseases', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gget_maladiesData_diseases_diseases', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'Gget_maladiesData_diseases_diseases', 'name'),
              comment: comment,
              startDay: startDay,
              startMonth: startMonth,
              startYear: BuiltValueNullFieldError.checkNotNull(startYear,
                  r'Gget_maladiesData_diseases_diseases', 'startYear'),
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
            r'Gget_maladiesData_diseases_diseases',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_maladiesData_diseases_diseases_linkedDocuments
    extends Gget_maladiesData_diseases_diseases_linkedDocuments {
  @override
  final String G__typename;
  @override
  final String linkId;
  @override
  final Gget_maladiesData_diseases_diseases_linkedDocuments_document document;

  factory _$Gget_maladiesData_diseases_diseases_linkedDocuments(
          [void Function(
                  Gget_maladiesData_diseases_diseases_linkedDocumentsBuilder)?
              updates]) =>
      (new Gget_maladiesData_diseases_diseases_linkedDocumentsBuilder()
            ..update(updates))
          ._build();

  _$Gget_maladiesData_diseases_diseases_linkedDocuments._(
      {required this.G__typename, required this.linkId, required this.document})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_maladiesData_diseases_diseases_linkedDocuments', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(linkId,
        r'Gget_maladiesData_diseases_diseases_linkedDocuments', 'linkId');
    BuiltValueNullFieldError.checkNotNull(document,
        r'Gget_maladiesData_diseases_diseases_linkedDocuments', 'document');
  }

  @override
  Gget_maladiesData_diseases_diseases_linkedDocuments rebuild(
          void Function(
                  Gget_maladiesData_diseases_diseases_linkedDocumentsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_maladiesData_diseases_diseases_linkedDocumentsBuilder toBuilder() =>
      new Gget_maladiesData_diseases_diseases_linkedDocumentsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_maladiesData_diseases_diseases_linkedDocuments &&
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
            r'Gget_maladiesData_diseases_diseases_linkedDocuments')
          ..add('G__typename', G__typename)
          ..add('linkId', linkId)
          ..add('document', document))
        .toString();
  }
}

class Gget_maladiesData_diseases_diseases_linkedDocumentsBuilder
    implements
        Builder<Gget_maladiesData_diseases_diseases_linkedDocuments,
            Gget_maladiesData_diseases_diseases_linkedDocumentsBuilder> {
  _$Gget_maladiesData_diseases_diseases_linkedDocuments? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _linkId;
  String? get linkId => _$this._linkId;
  set linkId(String? linkId) => _$this._linkId = linkId;

  Gget_maladiesData_diseases_diseases_linkedDocuments_documentBuilder?
      _document;
  Gget_maladiesData_diseases_diseases_linkedDocuments_documentBuilder
      get document => _$this._document ??=
          new Gget_maladiesData_diseases_diseases_linkedDocuments_documentBuilder();
  set document(
          Gget_maladiesData_diseases_diseases_linkedDocuments_documentBuilder?
              document) =>
      _$this._document = document;

  Gget_maladiesData_diseases_diseases_linkedDocumentsBuilder() {
    Gget_maladiesData_diseases_diseases_linkedDocuments._initializeBuilder(
        this);
  }

  Gget_maladiesData_diseases_diseases_linkedDocumentsBuilder get _$this {
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
  void replace(Gget_maladiesData_diseases_diseases_linkedDocuments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_maladiesData_diseases_diseases_linkedDocuments;
  }

  @override
  void update(
      void Function(Gget_maladiesData_diseases_diseases_linkedDocumentsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_maladiesData_diseases_diseases_linkedDocuments build() => _build();

  _$Gget_maladiesData_diseases_diseases_linkedDocuments _build() {
    _$Gget_maladiesData_diseases_diseases_linkedDocuments _$result;
    try {
      _$result = _$v ??
          new _$Gget_maladiesData_diseases_diseases_linkedDocuments._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_maladiesData_diseases_diseases_linkedDocuments',
                  'G__typename'),
              linkId: BuiltValueNullFieldError.checkNotNull(
                  linkId,
                  r'Gget_maladiesData_diseases_diseases_linkedDocuments',
                  'linkId'),
              document: document.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'document';
        document.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_maladiesData_diseases_diseases_linkedDocuments',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_maladiesData_diseases_diseases_linkedDocuments_document
    extends Gget_maladiesData_diseases_diseases_linkedDocuments_document {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String title;

  factory _$Gget_maladiesData_diseases_diseases_linkedDocuments_document(
          [void Function(
                  Gget_maladiesData_diseases_diseases_linkedDocuments_documentBuilder)?
              updates]) =>
      (new Gget_maladiesData_diseases_diseases_linkedDocuments_documentBuilder()
            ..update(updates))
          ._build();

  _$Gget_maladiesData_diseases_diseases_linkedDocuments_document._(
      {required this.G__typename, required this.id, required this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_maladiesData_diseases_diseases_linkedDocuments_document',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(id,
        r'Gget_maladiesData_diseases_diseases_linkedDocuments_document', 'id');
    BuiltValueNullFieldError.checkNotNull(
        title,
        r'Gget_maladiesData_diseases_diseases_linkedDocuments_document',
        'title');
  }

  @override
  Gget_maladiesData_diseases_diseases_linkedDocuments_document rebuild(
          void Function(
                  Gget_maladiesData_diseases_diseases_linkedDocuments_documentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_maladiesData_diseases_diseases_linkedDocuments_documentBuilder
      toBuilder() =>
          new Gget_maladiesData_diseases_diseases_linkedDocuments_documentBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_maladiesData_diseases_diseases_linkedDocuments_document &&
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
            r'Gget_maladiesData_diseases_diseases_linkedDocuments_document')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title))
        .toString();
  }
}

class Gget_maladiesData_diseases_diseases_linkedDocuments_documentBuilder
    implements
        Builder<Gget_maladiesData_diseases_diseases_linkedDocuments_document,
            Gget_maladiesData_diseases_diseases_linkedDocuments_documentBuilder> {
  _$Gget_maladiesData_diseases_diseases_linkedDocuments_document? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  Gget_maladiesData_diseases_diseases_linkedDocuments_documentBuilder() {
    Gget_maladiesData_diseases_diseases_linkedDocuments_document
        ._initializeBuilder(this);
  }

  Gget_maladiesData_diseases_diseases_linkedDocuments_documentBuilder
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
      Gget_maladiesData_diseases_diseases_linkedDocuments_document other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$Gget_maladiesData_diseases_diseases_linkedDocuments_document;
  }

  @override
  void update(
      void Function(
              Gget_maladiesData_diseases_diseases_linkedDocuments_documentBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_maladiesData_diseases_diseases_linkedDocuments_document build() =>
      _build();

  _$Gget_maladiesData_diseases_diseases_linkedDocuments_document _build() {
    final _$result = _$v ??
        new _$Gget_maladiesData_diseases_diseases_linkedDocuments_document._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_maladiesData_diseases_diseases_linkedDocuments_document',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'Gget_maladiesData_diseases_diseases_linkedDocuments_document',
                'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title,
                r'Gget_maladiesData_diseases_diseases_linkedDocuments_document',
                'title'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_maladiesData_diseases_diseases_linkedTreatments
    extends Gget_maladiesData_diseases_diseases_linkedTreatments {
  @override
  final String G__typename;
  @override
  final String linkId;
  @override
  final Gget_maladiesData_diseases_diseases_linkedTreatments_treatment
      treatment;

  factory _$Gget_maladiesData_diseases_diseases_linkedTreatments(
          [void Function(
                  Gget_maladiesData_diseases_diseases_linkedTreatmentsBuilder)?
              updates]) =>
      (new Gget_maladiesData_diseases_diseases_linkedTreatmentsBuilder()
            ..update(updates))
          ._build();

  _$Gget_maladiesData_diseases_diseases_linkedTreatments._(
      {required this.G__typename,
      required this.linkId,
      required this.treatment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_maladiesData_diseases_diseases_linkedTreatments', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(linkId,
        r'Gget_maladiesData_diseases_diseases_linkedTreatments', 'linkId');
    BuiltValueNullFieldError.checkNotNull(treatment,
        r'Gget_maladiesData_diseases_diseases_linkedTreatments', 'treatment');
  }

  @override
  Gget_maladiesData_diseases_diseases_linkedTreatments rebuild(
          void Function(
                  Gget_maladiesData_diseases_diseases_linkedTreatmentsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_maladiesData_diseases_diseases_linkedTreatmentsBuilder toBuilder() =>
      new Gget_maladiesData_diseases_diseases_linkedTreatmentsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_maladiesData_diseases_diseases_linkedTreatments &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_maladiesData_diseases_diseases_linkedTreatments')
          ..add('G__typename', G__typename)
          ..add('linkId', linkId)
          ..add('treatment', treatment))
        .toString();
  }
}

class Gget_maladiesData_diseases_diseases_linkedTreatmentsBuilder
    implements
        Builder<Gget_maladiesData_diseases_diseases_linkedTreatments,
            Gget_maladiesData_diseases_diseases_linkedTreatmentsBuilder> {
  _$Gget_maladiesData_diseases_diseases_linkedTreatments? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _linkId;
  String? get linkId => _$this._linkId;
  set linkId(String? linkId) => _$this._linkId = linkId;

  Gget_maladiesData_diseases_diseases_linkedTreatments_treatmentBuilder?
      _treatment;
  Gget_maladiesData_diseases_diseases_linkedTreatments_treatmentBuilder
      get treatment => _$this._treatment ??=
          new Gget_maladiesData_diseases_diseases_linkedTreatments_treatmentBuilder();
  set treatment(
          Gget_maladiesData_diseases_diseases_linkedTreatments_treatmentBuilder?
              treatment) =>
      _$this._treatment = treatment;

  Gget_maladiesData_diseases_diseases_linkedTreatmentsBuilder() {
    Gget_maladiesData_diseases_diseases_linkedTreatments._initializeBuilder(
        this);
  }

  Gget_maladiesData_diseases_diseases_linkedTreatmentsBuilder get _$this {
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
  void replace(Gget_maladiesData_diseases_diseases_linkedTreatments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_maladiesData_diseases_diseases_linkedTreatments;
  }

  @override
  void update(
      void Function(
              Gget_maladiesData_diseases_diseases_linkedTreatmentsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_maladiesData_diseases_diseases_linkedTreatments build() => _build();

  _$Gget_maladiesData_diseases_diseases_linkedTreatments _build() {
    _$Gget_maladiesData_diseases_diseases_linkedTreatments _$result;
    try {
      _$result = _$v ??
          new _$Gget_maladiesData_diseases_diseases_linkedTreatments._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_maladiesData_diseases_diseases_linkedTreatments',
                  'G__typename'),
              linkId: BuiltValueNullFieldError.checkNotNull(
                  linkId,
                  r'Gget_maladiesData_diseases_diseases_linkedTreatments',
                  'linkId'),
              treatment: treatment.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'treatment';
        treatment.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_maladiesData_diseases_diseases_linkedTreatments',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment
    extends Gget_maladiesData_diseases_diseases_linkedTreatments_treatment {
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
  final BuiltList<
          Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases>?
      linkedDiseases;

  factory _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment(
          [void Function(
                  Gget_maladiesData_diseases_diseases_linkedTreatments_treatmentBuilder)?
              updates]) =>
      (new Gget_maladiesData_diseases_diseases_linkedTreatments_treatmentBuilder()
            ..update(updates))
          ._build();

  _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment._(
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
        G__typename,
        r'Gget_maladiesData_diseases_diseases_linkedTreatments_treatment',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gget_maladiesData_diseases_diseases_linkedTreatments_treatment',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'Gget_maladiesData_diseases_diseases_linkedTreatments_treatment',
        'name');
    BuiltValueNullFieldError.checkNotNull(
        startYear,
        r'Gget_maladiesData_diseases_diseases_linkedTreatments_treatment',
        'startYear');
  }

  @override
  Gget_maladiesData_diseases_diseases_linkedTreatments_treatment rebuild(
          void Function(
                  Gget_maladiesData_diseases_diseases_linkedTreatments_treatmentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_maladiesData_diseases_diseases_linkedTreatments_treatmentBuilder
      toBuilder() =>
          new Gget_maladiesData_diseases_diseases_linkedTreatments_treatmentBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_maladiesData_diseases_diseases_linkedTreatments_treatment &&
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
            r'Gget_maladiesData_diseases_diseases_linkedTreatments_treatment')
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

class Gget_maladiesData_diseases_diseases_linkedTreatments_treatmentBuilder
    implements
        Builder<Gget_maladiesData_diseases_diseases_linkedTreatments_treatment,
            Gget_maladiesData_diseases_diseases_linkedTreatments_treatmentBuilder> {
  _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment? _$v;

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

  ListBuilder<
          Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases>?
      _linkedDiseases;
  ListBuilder<
          Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases>
      get linkedDiseases => _$this._linkedDiseases ??= new ListBuilder<
          Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases>();
  set linkedDiseases(
          ListBuilder<
                  Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases>?
              linkedDiseases) =>
      _$this._linkedDiseases = linkedDiseases;

  Gget_maladiesData_diseases_diseases_linkedTreatments_treatmentBuilder() {
    Gget_maladiesData_diseases_diseases_linkedTreatments_treatment
        ._initializeBuilder(this);
  }

  Gget_maladiesData_diseases_diseases_linkedTreatments_treatmentBuilder
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
      _dosage = $v.dosage;
      _linkedDiseases = $v.linkedDiseases?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_maladiesData_diseases_diseases_linkedTreatments_treatment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment;
  }

  @override
  void update(
      void Function(
              Gget_maladiesData_diseases_diseases_linkedTreatments_treatmentBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_maladiesData_diseases_diseases_linkedTreatments_treatment build() =>
      _build();

  _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment _build() {
    _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment _$result;
    try {
      _$result = _$v ??
          new _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_maladiesData_diseases_diseases_linkedTreatments_treatment',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(id,
                  r'Gget_maladiesData_diseases_diseases_linkedTreatments_treatment', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name,
                  r'Gget_maladiesData_diseases_diseases_linkedTreatments_treatment',
                  'name'),
              comment: comment,
              startDay: startDay,
              startMonth: startMonth,
              startYear: BuiltValueNullFieldError.checkNotNull(
                  startYear,
                  r'Gget_maladiesData_diseases_diseases_linkedTreatments_treatment',
                  'startYear'),
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
            r'Gget_maladiesData_diseases_diseases_linkedTreatments_treatment',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases
    extends Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases {
  @override
  final String G__typename;
  @override
  final String linkId;
  @override
  final Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease
      disease;

  factory _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases(
          [void Function(
                  Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseasesBuilder)?
              updates]) =>
      (new Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseasesBuilder()
            ..update(updates))
          ._build();

  _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases._(
      {required this.G__typename, required this.linkId, required this.disease})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        linkId,
        r'Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases',
        'linkId');
    BuiltValueNullFieldError.checkNotNull(
        disease,
        r'Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases',
        'disease');
  }

  @override
  Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases
      rebuild(
              void Function(
                      Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseasesBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseasesBuilder
      toBuilder() =>
          new Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseasesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases &&
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
            r'Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases')
          ..add('G__typename', G__typename)
          ..add('linkId', linkId)
          ..add('disease', disease))
        .toString();
  }
}

class Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseasesBuilder
    implements
        Builder<
            Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases,
            Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseasesBuilder> {
  _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _linkId;
  String? get linkId => _$this._linkId;
  set linkId(String? linkId) => _$this._linkId = linkId;

  Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_diseaseBuilder?
      _disease;
  Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_diseaseBuilder
      get disease => _$this._disease ??=
          new Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_diseaseBuilder();
  set disease(
          Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_diseaseBuilder?
              disease) =>
      _$this._disease = disease;

  Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseasesBuilder() {
    Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases
        ._initializeBuilder(this);
  }

  Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseasesBuilder
      get _$this {
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
      Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases;
  }

  @override
  void update(
      void Function(
              Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseasesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases
      build() => _build();

  _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases
      _build() {
    _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases',
                  'G__typename'),
              linkId: BuiltValueNullFieldError.checkNotNull(
                  linkId,
                  r'Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases',
                  'linkId'),
              disease: disease.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'disease';
        disease.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease
    extends Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease(
          [void Function(
                  Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_diseaseBuilder)?
              updates]) =>
      (new Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_diseaseBuilder()
            ..update(updates))
          ._build();

  _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease',
        'id');
  }

  @override
  Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease
      rebuild(
              void Function(
                      Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_diseaseBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_diseaseBuilder
      toBuilder() =>
          new Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_diseaseBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease &&
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
            r'Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_diseaseBuilder
    implements
        Builder<
            Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease,
            Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_diseaseBuilder> {
  _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_diseaseBuilder() {
    Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease
        ._initializeBuilder(this);
  }

  Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_diseaseBuilder
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
      Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease;
  }

  @override
  void update(
      void Function(
              Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_diseaseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease
      build() => _build();

  _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease
      _build() {
    final _$result = _$v ??
        new _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease',
                'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
