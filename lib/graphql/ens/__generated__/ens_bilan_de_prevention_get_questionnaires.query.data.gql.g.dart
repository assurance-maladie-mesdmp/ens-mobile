// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_bilan_de_prevention_get_questionnaires.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_questionnairesData> _$ggetQuestionnairesDataSerializer =
    new _$Gget_questionnairesDataSerializer();
Serializer<Gget_questionnairesData_fetchAllHealthQuizStatus>
    _$ggetQuestionnairesDataFetchAllHealthQuizStatusSerializer =
    new _$Gget_questionnairesData_fetchAllHealthQuizStatusSerializer();
Serializer<Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo>
    _$ggetQuestionnairesDataFetchAllHealthQuizStatusHealthQuizListToDoSerializer =
    new _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDoSerializer();
Serializer<
        Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response>
    _$ggetQuestionnairesDataFetchAllHealthQuizStatusHealthQuizListToDoResponseSerializer =
    new _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_responseSerializer();
Serializer<Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing>
    _$ggetQuestionnairesDataFetchAllHealthQuizStatusHealthQuizListDoingSerializer =
    new _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoingSerializer();
Serializer<
        Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response>
    _$ggetQuestionnairesDataFetchAllHealthQuizStatusHealthQuizListDoingResponseSerializer =
    new _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_responseSerializer();
Serializer<Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone>
    _$ggetQuestionnairesDataFetchAllHealthQuizStatusHealthQuizListDoneSerializer =
    new _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoneSerializer();
Serializer<
        Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response>
    _$ggetQuestionnairesDataFetchAllHealthQuizStatusHealthQuizListDoneResponseSerializer =
    new _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_responseSerializer();

class _$Gget_questionnairesDataSerializer
    implements StructuredSerializer<Gget_questionnairesData> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnairesData,
    _$Gget_questionnairesData
  ];
  @override
  final String wireName = 'Gget_questionnairesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_questionnairesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'fetchAllHealthQuizStatus',
      serializers.serialize(object.fetchAllHealthQuizStatus,
          specifiedType:
              const FullType(Gget_questionnairesData_fetchAllHealthQuizStatus)),
    ];

    return result;
  }

  @override
  Gget_questionnairesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_questionnairesDataBuilder();

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
        case 'fetchAllHealthQuizStatus':
          result.fetchAllHealthQuizStatus.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_questionnairesData_fetchAllHealthQuizStatus))!
              as Gget_questionnairesData_fetchAllHealthQuizStatus);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_questionnairesData_fetchAllHealthQuizStatusSerializer
    implements
        StructuredSerializer<Gget_questionnairesData_fetchAllHealthQuizStatus> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnairesData_fetchAllHealthQuizStatus,
    _$Gget_questionnairesData_fetchAllHealthQuizStatus
  ];
  @override
  final String wireName = 'Gget_questionnairesData_fetchAllHealthQuizStatus';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_questionnairesData_fetchAllHealthQuizStatus object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'isEmpty',
      serializers.serialize(object.isEmpty,
          specifiedType: const FullType(bool)),
      'healthQuizListToDo',
      serializers.serialize(object.healthQuizListToDo,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo)
          ])),
      'healthQuizListDoing',
      serializers.serialize(object.healthQuizListDoing,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing)
          ])),
      'healthQuizListDone',
      serializers.serialize(object.healthQuizListDone,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone)
          ])),
    ];

    return result;
  }

  @override
  Gget_questionnairesData_fetchAllHealthQuizStatus deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_questionnairesData_fetchAllHealthQuizStatusBuilder();

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
        case 'isEmpty':
          result.isEmpty = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'healthQuizListToDo':
          result.healthQuizListToDo.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo)
              ]))! as BuiltList<Object?>);
          break;
        case 'healthQuizListDoing':
          result.healthQuizListDoing.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing)
              ]))! as BuiltList<Object?>);
          break;
        case 'healthQuizListDone':
          result.healthQuizListDone.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDoSerializer
    implements
        StructuredSerializer<
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo,
    _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo
  ];
  @override
  final String wireName =
      'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'lastVersion',
      serializers.serialize(object.lastVersion,
          specifiedType: const FullType(String)),
      'ageMin',
      serializers.serialize(object.ageMin,
          specifiedType: const FullType(double)),
      'ageMax',
      serializers.serialize(object.ageMax,
          specifiedType: const FullType(double)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'availableLimitDate',
      serializers.serialize(object.availableLimitDate,
          specifiedType: const FullType(String)),
      'availableLimitDateFormatted',
      serializers.serialize(object.availableLimitDateFormatted,
          specifiedType: const FullType(String)),
      'isEditable',
      serializers.serialize(object.isEditable,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.response;
    if (value != null) {
      result
        ..add('response')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response)));
    }
    return result;
  }

  @override
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDoBuilder();

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
        case 'response':
          result.response.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response))!
              as Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response);
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastVersion':
          result.lastVersion = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'ageMin':
          result.ageMin = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'ageMax':
          result.ageMax = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'availableLimitDate':
          result.availableLimitDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'availableLimitDateFormatted':
          result.availableLimitDateFormatted = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'isEditable':
          result.isEditable = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_responseSerializer
    implements
        StructuredSerializer<
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response,
    _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response
  ];
  @override
  final String wireName =
      'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'version',
      serializers.serialize(object.version,
          specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(_i3.GHealthQuizCompletionStatus)),
      'lastUpdateUserDate',
      serializers.serialize(object.lastUpdateUserDate,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.lastUpdateUserDateFormatted;
    if (value != null) {
      result
        ..add('lastUpdateUserDateFormatted')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.questionToDisplay;
    if (value != null) {
      result
        ..add('questionToDisplay')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_responseBuilder();

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
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GHealthQuizCompletionStatus))!
              as _i3.GHealthQuizCompletionStatus;
          break;
        case 'lastUpdateUserDate':
          result.lastUpdateUserDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastUpdateUserDateFormatted':
          result.lastUpdateUserDateFormatted = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'questionToDisplay':
          result.questionToDisplay = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoingSerializer
    implements
        StructuredSerializer<
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing,
    _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing
  ];
  @override
  final String wireName =
      'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'lastVersion',
      serializers.serialize(object.lastVersion,
          specifiedType: const FullType(String)),
      'ageMin',
      serializers.serialize(object.ageMin,
          specifiedType: const FullType(double)),
      'ageMax',
      serializers.serialize(object.ageMax,
          specifiedType: const FullType(double)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'availableLimitDate',
      serializers.serialize(object.availableLimitDate,
          specifiedType: const FullType(String)),
      'availableLimitDateFormatted',
      serializers.serialize(object.availableLimitDateFormatted,
          specifiedType: const FullType(String)),
      'isEditable',
      serializers.serialize(object.isEditable,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.response;
    if (value != null) {
      result
        ..add('response')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response)));
    }
    return result;
  }

  @override
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoingBuilder();

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
        case 'response':
          result.response.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response))!
              as Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response);
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastVersion':
          result.lastVersion = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'ageMin':
          result.ageMin = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'ageMax':
          result.ageMax = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'availableLimitDate':
          result.availableLimitDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'availableLimitDateFormatted':
          result.availableLimitDateFormatted = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'isEditable':
          result.isEditable = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_responseSerializer
    implements
        StructuredSerializer<
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response,
    _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response
  ];
  @override
  final String wireName =
      'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'version',
      serializers.serialize(object.version,
          specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(_i3.GHealthQuizCompletionStatus)),
      'lastUpdateUserDate',
      serializers.serialize(object.lastUpdateUserDate,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.lastUpdateUserDateFormatted;
    if (value != null) {
      result
        ..add('lastUpdateUserDateFormatted')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.questionToDisplay;
    if (value != null) {
      result
        ..add('questionToDisplay')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_responseBuilder();

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
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GHealthQuizCompletionStatus))!
              as _i3.GHealthQuizCompletionStatus;
          break;
        case 'lastUpdateUserDate':
          result.lastUpdateUserDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastUpdateUserDateFormatted':
          result.lastUpdateUserDateFormatted = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'questionToDisplay':
          result.questionToDisplay = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoneSerializer
    implements
        StructuredSerializer<
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone,
    _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone
  ];
  @override
  final String wireName =
      'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'lastVersion',
      serializers.serialize(object.lastVersion,
          specifiedType: const FullType(String)),
      'ageMin',
      serializers.serialize(object.ageMin,
          specifiedType: const FullType(double)),
      'ageMax',
      serializers.serialize(object.ageMax,
          specifiedType: const FullType(double)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'availableLimitDate',
      serializers.serialize(object.availableLimitDate,
          specifiedType: const FullType(String)),
      'availableLimitDateFormatted',
      serializers.serialize(object.availableLimitDateFormatted,
          specifiedType: const FullType(String)),
      'isEditable',
      serializers.serialize(object.isEditable,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.response;
    if (value != null) {
      result
        ..add('response')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response)));
    }
    return result;
  }

  @override
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoneBuilder();

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
        case 'response':
          result.response.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response))!
              as Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response);
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastVersion':
          result.lastVersion = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'ageMin':
          result.ageMin = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'ageMax':
          result.ageMax = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'availableLimitDate':
          result.availableLimitDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'availableLimitDateFormatted':
          result.availableLimitDateFormatted = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'isEditable':
          result.isEditable = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_responseSerializer
    implements
        StructuredSerializer<
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response> {
  @override
  final Iterable<Type> types = const [
    Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response,
    _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response
  ];
  @override
  final String wireName =
      'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'version',
      serializers.serialize(object.version,
          specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(_i3.GHealthQuizCompletionStatus)),
      'lastUpdateUserDate',
      serializers.serialize(object.lastUpdateUserDate,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.lastUpdateUserDateFormatted;
    if (value != null) {
      result
        ..add('lastUpdateUserDateFormatted')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.questionToDisplay;
    if (value != null) {
      result
        ..add('questionToDisplay')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_responseBuilder();

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
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GHealthQuizCompletionStatus))!
              as _i3.GHealthQuizCompletionStatus;
          break;
        case 'lastUpdateUserDate':
          result.lastUpdateUserDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastUpdateUserDateFormatted':
          result.lastUpdateUserDateFormatted = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'questionToDisplay':
          result.questionToDisplay = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_questionnairesData extends Gget_questionnairesData {
  @override
  final String G__typename;
  @override
  final Gget_questionnairesData_fetchAllHealthQuizStatus
      fetchAllHealthQuizStatus;

  factory _$Gget_questionnairesData(
          [void Function(Gget_questionnairesDataBuilder)? updates]) =>
      (new Gget_questionnairesDataBuilder()..update(updates))._build();

  _$Gget_questionnairesData._(
      {required this.G__typename, required this.fetchAllHealthQuizStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_questionnairesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(fetchAllHealthQuizStatus,
        r'Gget_questionnairesData', 'fetchAllHealthQuizStatus');
  }

  @override
  Gget_questionnairesData rebuild(
          void Function(Gget_questionnairesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_questionnairesDataBuilder toBuilder() =>
      new Gget_questionnairesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_questionnairesData &&
        G__typename == other.G__typename &&
        fetchAllHealthQuizStatus == other.fetchAllHealthQuizStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, fetchAllHealthQuizStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_questionnairesData')
          ..add('G__typename', G__typename)
          ..add('fetchAllHealthQuizStatus', fetchAllHealthQuizStatus))
        .toString();
  }
}

class Gget_questionnairesDataBuilder
    implements
        Builder<Gget_questionnairesData, Gget_questionnairesDataBuilder> {
  _$Gget_questionnairesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_questionnairesData_fetchAllHealthQuizStatusBuilder?
      _fetchAllHealthQuizStatus;
  Gget_questionnairesData_fetchAllHealthQuizStatusBuilder
      get fetchAllHealthQuizStatus => _$this._fetchAllHealthQuizStatus ??=
          new Gget_questionnairesData_fetchAllHealthQuizStatusBuilder();
  set fetchAllHealthQuizStatus(
          Gget_questionnairesData_fetchAllHealthQuizStatusBuilder?
              fetchAllHealthQuizStatus) =>
      _$this._fetchAllHealthQuizStatus = fetchAllHealthQuizStatus;

  Gget_questionnairesDataBuilder() {
    Gget_questionnairesData._initializeBuilder(this);
  }

  Gget_questionnairesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _fetchAllHealthQuizStatus = $v.fetchAllHealthQuizStatus.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_questionnairesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_questionnairesData;
  }

  @override
  void update(void Function(Gget_questionnairesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnairesData build() => _build();

  _$Gget_questionnairesData _build() {
    _$Gget_questionnairesData _$result;
    try {
      _$result = _$v ??
          new _$Gget_questionnairesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_questionnairesData', 'G__typename'),
              fetchAllHealthQuizStatus: fetchAllHealthQuizStatus.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fetchAllHealthQuizStatus';
        fetchAllHealthQuizStatus.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_questionnairesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_questionnairesData_fetchAllHealthQuizStatus
    extends Gget_questionnairesData_fetchAllHealthQuizStatus {
  @override
  final String G__typename;
  @override
  final bool isEmpty;
  @override
  final BuiltList<
          Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo>
      healthQuizListToDo;
  @override
  final BuiltList<
          Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing>
      healthQuizListDoing;
  @override
  final BuiltList<
          Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone>
      healthQuizListDone;

  factory _$Gget_questionnairesData_fetchAllHealthQuizStatus(
          [void Function(
                  Gget_questionnairesData_fetchAllHealthQuizStatusBuilder)?
              updates]) =>
      (new Gget_questionnairesData_fetchAllHealthQuizStatusBuilder()
            ..update(updates))
          ._build();

  _$Gget_questionnairesData_fetchAllHealthQuizStatus._(
      {required this.G__typename,
      required this.isEmpty,
      required this.healthQuizListToDo,
      required this.healthQuizListDoing,
      required this.healthQuizListDone})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(isEmpty,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus', 'isEmpty');
    BuiltValueNullFieldError.checkNotNull(
        healthQuizListToDo,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus',
        'healthQuizListToDo');
    BuiltValueNullFieldError.checkNotNull(
        healthQuizListDoing,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus',
        'healthQuizListDoing');
    BuiltValueNullFieldError.checkNotNull(
        healthQuizListDone,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus',
        'healthQuizListDone');
  }

  @override
  Gget_questionnairesData_fetchAllHealthQuizStatus rebuild(
          void Function(Gget_questionnairesData_fetchAllHealthQuizStatusBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_questionnairesData_fetchAllHealthQuizStatusBuilder toBuilder() =>
      new Gget_questionnairesData_fetchAllHealthQuizStatusBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_questionnairesData_fetchAllHealthQuizStatus &&
        G__typename == other.G__typename &&
        isEmpty == other.isEmpty &&
        healthQuizListToDo == other.healthQuizListToDo &&
        healthQuizListDoing == other.healthQuizListDoing &&
        healthQuizListDone == other.healthQuizListDone;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, isEmpty.hashCode);
    _$hash = $jc(_$hash, healthQuizListToDo.hashCode);
    _$hash = $jc(_$hash, healthQuizListDoing.hashCode);
    _$hash = $jc(_$hash, healthQuizListDone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_questionnairesData_fetchAllHealthQuizStatus')
          ..add('G__typename', G__typename)
          ..add('isEmpty', isEmpty)
          ..add('healthQuizListToDo', healthQuizListToDo)
          ..add('healthQuizListDoing', healthQuizListDoing)
          ..add('healthQuizListDone', healthQuizListDone))
        .toString();
  }
}

class Gget_questionnairesData_fetchAllHealthQuizStatusBuilder
    implements
        Builder<Gget_questionnairesData_fetchAllHealthQuizStatus,
            Gget_questionnairesData_fetchAllHealthQuizStatusBuilder> {
  _$Gget_questionnairesData_fetchAllHealthQuizStatus? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _isEmpty;
  bool? get isEmpty => _$this._isEmpty;
  set isEmpty(bool? isEmpty) => _$this._isEmpty = isEmpty;

  ListBuilder<
          Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo>?
      _healthQuizListToDo;
  ListBuilder<
          Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo>
      get healthQuizListToDo => _$this._healthQuizListToDo ??= new ListBuilder<
          Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo>();
  set healthQuizListToDo(
          ListBuilder<
                  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo>?
              healthQuizListToDo) =>
      _$this._healthQuizListToDo = healthQuizListToDo;

  ListBuilder<
          Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing>?
      _healthQuizListDoing;
  ListBuilder<
          Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing>
      get healthQuizListDoing => _$this._healthQuizListDoing ??= new ListBuilder<
          Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing>();
  set healthQuizListDoing(
          ListBuilder<
                  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing>?
              healthQuizListDoing) =>
      _$this._healthQuizListDoing = healthQuizListDoing;

  ListBuilder<
          Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone>?
      _healthQuizListDone;
  ListBuilder<
          Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone>
      get healthQuizListDone => _$this._healthQuizListDone ??= new ListBuilder<
          Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone>();
  set healthQuizListDone(
          ListBuilder<
                  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone>?
              healthQuizListDone) =>
      _$this._healthQuizListDone = healthQuizListDone;

  Gget_questionnairesData_fetchAllHealthQuizStatusBuilder() {
    Gget_questionnairesData_fetchAllHealthQuizStatus._initializeBuilder(this);
  }

  Gget_questionnairesData_fetchAllHealthQuizStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _isEmpty = $v.isEmpty;
      _healthQuizListToDo = $v.healthQuizListToDo.toBuilder();
      _healthQuizListDoing = $v.healthQuizListDoing.toBuilder();
      _healthQuizListDone = $v.healthQuizListDone.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_questionnairesData_fetchAllHealthQuizStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_questionnairesData_fetchAllHealthQuizStatus;
  }

  @override
  void update(
      void Function(Gget_questionnairesData_fetchAllHealthQuizStatusBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnairesData_fetchAllHealthQuizStatus build() => _build();

  _$Gget_questionnairesData_fetchAllHealthQuizStatus _build() {
    _$Gget_questionnairesData_fetchAllHealthQuizStatus _$result;
    try {
      _$result = _$v ??
          new _$Gget_questionnairesData_fetchAllHealthQuizStatus._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_questionnairesData_fetchAllHealthQuizStatus',
                  'G__typename'),
              isEmpty: BuiltValueNullFieldError.checkNotNull(
                  isEmpty,
                  r'Gget_questionnairesData_fetchAllHealthQuizStatus',
                  'isEmpty'),
              healthQuizListToDo: healthQuizListToDo.build(),
              healthQuizListDoing: healthQuizListDoing.build(),
              healthQuizListDone: healthQuizListDone.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'healthQuizListToDo';
        healthQuizListToDo.build();
        _$failedField = 'healthQuizListDoing';
        healthQuizListDoing.build();
        _$failedField = 'healthQuizListDone';
        healthQuizListDone.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_questionnairesData_fetchAllHealthQuizStatus',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo
    extends Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo {
  @override
  final String G__typename;
  @override
  final Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response?
      response;
  @override
  final String code;
  @override
  final String lastVersion;
  @override
  final double ageMin;
  @override
  final double ageMax;
  @override
  final String title;
  @override
  final String availableLimitDate;
  @override
  final String availableLimitDateFormatted;
  @override
  final bool isEditable;

  factory _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo(
          [void Function(
                  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDoBuilder)?
              updates]) =>
      (new Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDoBuilder()
            ..update(updates))
          ._build();

  _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo._(
      {required this.G__typename,
      this.response,
      required this.code,
      required this.lastVersion,
      required this.ageMin,
      required this.ageMax,
      required this.title,
      required this.availableLimitDate,
      required this.availableLimitDateFormatted,
      required this.isEditable})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        code,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo',
        'code');
    BuiltValueNullFieldError.checkNotNull(
        lastVersion,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo',
        'lastVersion');
    BuiltValueNullFieldError.checkNotNull(
        ageMin,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo',
        'ageMin');
    BuiltValueNullFieldError.checkNotNull(
        ageMax,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo',
        'ageMax');
    BuiltValueNullFieldError.checkNotNull(
        title,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo',
        'title');
    BuiltValueNullFieldError.checkNotNull(
        availableLimitDate,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo',
        'availableLimitDate');
    BuiltValueNullFieldError.checkNotNull(
        availableLimitDateFormatted,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo',
        'availableLimitDateFormatted');
    BuiltValueNullFieldError.checkNotNull(
        isEditable,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo',
        'isEditable');
  }

  @override
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo rebuild(
          void Function(
                  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDoBuilder
      toBuilder() =>
          new Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo &&
        G__typename == other.G__typename &&
        response == other.response &&
        code == other.code &&
        lastVersion == other.lastVersion &&
        ageMin == other.ageMin &&
        ageMax == other.ageMax &&
        title == other.title &&
        availableLimitDate == other.availableLimitDate &&
        availableLimitDateFormatted == other.availableLimitDateFormatted &&
        isEditable == other.isEditable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, response.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, lastVersion.hashCode);
    _$hash = $jc(_$hash, ageMin.hashCode);
    _$hash = $jc(_$hash, ageMax.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, availableLimitDate.hashCode);
    _$hash = $jc(_$hash, availableLimitDateFormatted.hashCode);
    _$hash = $jc(_$hash, isEditable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo')
          ..add('G__typename', G__typename)
          ..add('response', response)
          ..add('code', code)
          ..add('lastVersion', lastVersion)
          ..add('ageMin', ageMin)
          ..add('ageMax', ageMax)
          ..add('title', title)
          ..add('availableLimitDate', availableLimitDate)
          ..add('availableLimitDateFormatted', availableLimitDateFormatted)
          ..add('isEditable', isEditable))
        .toString();
  }
}

class Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDoBuilder
    implements
        Builder<
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo,
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDoBuilder> {
  _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_responseBuilder?
      _response;
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_responseBuilder
      get response => _$this._response ??=
          new Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_responseBuilder();
  set response(
          Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_responseBuilder?
              response) =>
      _$this._response = response;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _lastVersion;
  String? get lastVersion => _$this._lastVersion;
  set lastVersion(String? lastVersion) => _$this._lastVersion = lastVersion;

  double? _ageMin;
  double? get ageMin => _$this._ageMin;
  set ageMin(double? ageMin) => _$this._ageMin = ageMin;

  double? _ageMax;
  double? get ageMax => _$this._ageMax;
  set ageMax(double? ageMax) => _$this._ageMax = ageMax;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _availableLimitDate;
  String? get availableLimitDate => _$this._availableLimitDate;
  set availableLimitDate(String? availableLimitDate) =>
      _$this._availableLimitDate = availableLimitDate;

  String? _availableLimitDateFormatted;
  String? get availableLimitDateFormatted =>
      _$this._availableLimitDateFormatted;
  set availableLimitDateFormatted(String? availableLimitDateFormatted) =>
      _$this._availableLimitDateFormatted = availableLimitDateFormatted;

  bool? _isEditable;
  bool? get isEditable => _$this._isEditable;
  set isEditable(bool? isEditable) => _$this._isEditable = isEditable;

  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDoBuilder() {
    Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo
        ._initializeBuilder(this);
  }

  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDoBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _code = $v.code;
      _lastVersion = $v.lastVersion;
      _ageMin = $v.ageMin;
      _ageMax = $v.ageMax;
      _title = $v.title;
      _availableLimitDate = $v.availableLimitDate;
      _availableLimitDateFormatted = $v.availableLimitDateFormatted;
      _isEditable = $v.isEditable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo;
  }

  @override
  void update(
      void Function(
              Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo build() =>
      _build();

  _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo
      _build() {
    _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo',
                  'G__typename'),
              response: _response?.build(),
              code: BuiltValueNullFieldError.checkNotNull(
                  code, r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo', 'code'),
              lastVersion: BuiltValueNullFieldError.checkNotNull(
                  lastVersion,
                  r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo',
                  'lastVersion'),
              ageMin: BuiltValueNullFieldError.checkNotNull(
                  ageMin, r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo', 'ageMin'),
              ageMax: BuiltValueNullFieldError.checkNotNull(
                  ageMax, r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo', 'ageMax'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo', 'title'),
              availableLimitDate: BuiltValueNullFieldError.checkNotNull(availableLimitDate, r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo', 'availableLimitDate'),
              availableLimitDateFormatted: BuiltValueNullFieldError.checkNotNull(availableLimitDateFormatted, r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo', 'availableLimitDateFormatted'),
              isEditable: BuiltValueNullFieldError.checkNotNull(isEditable, r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo', 'isEditable'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response
    extends Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String version;
  @override
  final _i3.GHealthQuizCompletionStatus status;
  @override
  final String lastUpdateUserDate;
  @override
  final String? lastUpdateUserDateFormatted;
  @override
  final double? questionToDisplay;

  factory _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response(
          [void Function(
                  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_responseBuilder)?
              updates]) =>
      (new Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_responseBuilder()
            ..update(updates))
          ._build();

  _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response._(
      {required this.G__typename,
      required this.id,
      required this.version,
      required this.status,
      required this.lastUpdateUserDate,
      this.lastUpdateUserDateFormatted,
      this.questionToDisplay})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        version,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response',
        'version');
    BuiltValueNullFieldError.checkNotNull(
        status,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response',
        'status');
    BuiltValueNullFieldError.checkNotNull(
        lastUpdateUserDate,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response',
        'lastUpdateUserDate');
  }

  @override
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response
      rebuild(
              void Function(
                      Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_responseBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_responseBuilder
      toBuilder() =>
          new Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_responseBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response &&
        G__typename == other.G__typename &&
        id == other.id &&
        version == other.version &&
        status == other.status &&
        lastUpdateUserDate == other.lastUpdateUserDate &&
        lastUpdateUserDateFormatted == other.lastUpdateUserDateFormatted &&
        questionToDisplay == other.questionToDisplay;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, lastUpdateUserDate.hashCode);
    _$hash = $jc(_$hash, lastUpdateUserDateFormatted.hashCode);
    _$hash = $jc(_$hash, questionToDisplay.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('version', version)
          ..add('status', status)
          ..add('lastUpdateUserDate', lastUpdateUserDate)
          ..add('lastUpdateUserDateFormatted', lastUpdateUserDateFormatted)
          ..add('questionToDisplay', questionToDisplay))
        .toString();
  }
}

class Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_responseBuilder
    implements
        Builder<
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response,
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_responseBuilder> {
  _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  _i3.GHealthQuizCompletionStatus? _status;
  _i3.GHealthQuizCompletionStatus? get status => _$this._status;
  set status(_i3.GHealthQuizCompletionStatus? status) =>
      _$this._status = status;

  String? _lastUpdateUserDate;
  String? get lastUpdateUserDate => _$this._lastUpdateUserDate;
  set lastUpdateUserDate(String? lastUpdateUserDate) =>
      _$this._lastUpdateUserDate = lastUpdateUserDate;

  String? _lastUpdateUserDateFormatted;
  String? get lastUpdateUserDateFormatted =>
      _$this._lastUpdateUserDateFormatted;
  set lastUpdateUserDateFormatted(String? lastUpdateUserDateFormatted) =>
      _$this._lastUpdateUserDateFormatted = lastUpdateUserDateFormatted;

  double? _questionToDisplay;
  double? get questionToDisplay => _$this._questionToDisplay;
  set questionToDisplay(double? questionToDisplay) =>
      _$this._questionToDisplay = questionToDisplay;

  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_responseBuilder() {
    Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response
        ._initializeBuilder(this);
  }

  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_responseBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _version = $v.version;
      _status = $v.status;
      _lastUpdateUserDate = $v.lastUpdateUserDate;
      _lastUpdateUserDateFormatted = $v.lastUpdateUserDateFormatted;
      _questionToDisplay = $v.questionToDisplay;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response;
  }

  @override
  void update(
      void Function(
              Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_responseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response
      build() => _build();

  _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response
      _build() {
    final _$result = _$v ??
        new _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response', 'id'),
            version: BuiltValueNullFieldError.checkNotNull(
                version,
                r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response',
                'version'),
            status: BuiltValueNullFieldError.checkNotNull(
                status,
                r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response',
                'status'),
            lastUpdateUserDate: BuiltValueNullFieldError.checkNotNull(
                lastUpdateUserDate,
                r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response',
                'lastUpdateUserDate'),
            lastUpdateUserDateFormatted: lastUpdateUserDateFormatted,
            questionToDisplay: questionToDisplay);
    replace(_$result);
    return _$result;
  }
}

class _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing
    extends Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing {
  @override
  final String G__typename;
  @override
  final Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response?
      response;
  @override
  final String code;
  @override
  final String lastVersion;
  @override
  final double ageMin;
  @override
  final double ageMax;
  @override
  final String title;
  @override
  final String availableLimitDate;
  @override
  final String availableLimitDateFormatted;
  @override
  final bool isEditable;

  factory _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing(
          [void Function(
                  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoingBuilder)?
              updates]) =>
      (new Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoingBuilder()
            ..update(updates))
          ._build();

  _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing._(
      {required this.G__typename,
      this.response,
      required this.code,
      required this.lastVersion,
      required this.ageMin,
      required this.ageMax,
      required this.title,
      required this.availableLimitDate,
      required this.availableLimitDateFormatted,
      required this.isEditable})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        code,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing',
        'code');
    BuiltValueNullFieldError.checkNotNull(
        lastVersion,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing',
        'lastVersion');
    BuiltValueNullFieldError.checkNotNull(
        ageMin,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing',
        'ageMin');
    BuiltValueNullFieldError.checkNotNull(
        ageMax,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing',
        'ageMax');
    BuiltValueNullFieldError.checkNotNull(
        title,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing',
        'title');
    BuiltValueNullFieldError.checkNotNull(
        availableLimitDate,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing',
        'availableLimitDate');
    BuiltValueNullFieldError.checkNotNull(
        availableLimitDateFormatted,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing',
        'availableLimitDateFormatted');
    BuiltValueNullFieldError.checkNotNull(
        isEditable,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing',
        'isEditable');
  }

  @override
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing rebuild(
          void Function(
                  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoingBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoingBuilder
      toBuilder() =>
          new Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoingBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing &&
        G__typename == other.G__typename &&
        response == other.response &&
        code == other.code &&
        lastVersion == other.lastVersion &&
        ageMin == other.ageMin &&
        ageMax == other.ageMax &&
        title == other.title &&
        availableLimitDate == other.availableLimitDate &&
        availableLimitDateFormatted == other.availableLimitDateFormatted &&
        isEditable == other.isEditable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, response.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, lastVersion.hashCode);
    _$hash = $jc(_$hash, ageMin.hashCode);
    _$hash = $jc(_$hash, ageMax.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, availableLimitDate.hashCode);
    _$hash = $jc(_$hash, availableLimitDateFormatted.hashCode);
    _$hash = $jc(_$hash, isEditable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing')
          ..add('G__typename', G__typename)
          ..add('response', response)
          ..add('code', code)
          ..add('lastVersion', lastVersion)
          ..add('ageMin', ageMin)
          ..add('ageMax', ageMax)
          ..add('title', title)
          ..add('availableLimitDate', availableLimitDate)
          ..add('availableLimitDateFormatted', availableLimitDateFormatted)
          ..add('isEditable', isEditable))
        .toString();
  }
}

class Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoingBuilder
    implements
        Builder<
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing,
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoingBuilder> {
  _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_responseBuilder?
      _response;
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_responseBuilder
      get response => _$this._response ??=
          new Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_responseBuilder();
  set response(
          Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_responseBuilder?
              response) =>
      _$this._response = response;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _lastVersion;
  String? get lastVersion => _$this._lastVersion;
  set lastVersion(String? lastVersion) => _$this._lastVersion = lastVersion;

  double? _ageMin;
  double? get ageMin => _$this._ageMin;
  set ageMin(double? ageMin) => _$this._ageMin = ageMin;

  double? _ageMax;
  double? get ageMax => _$this._ageMax;
  set ageMax(double? ageMax) => _$this._ageMax = ageMax;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _availableLimitDate;
  String? get availableLimitDate => _$this._availableLimitDate;
  set availableLimitDate(String? availableLimitDate) =>
      _$this._availableLimitDate = availableLimitDate;

  String? _availableLimitDateFormatted;
  String? get availableLimitDateFormatted =>
      _$this._availableLimitDateFormatted;
  set availableLimitDateFormatted(String? availableLimitDateFormatted) =>
      _$this._availableLimitDateFormatted = availableLimitDateFormatted;

  bool? _isEditable;
  bool? get isEditable => _$this._isEditable;
  set isEditable(bool? isEditable) => _$this._isEditable = isEditable;

  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoingBuilder() {
    Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing
        ._initializeBuilder(this);
  }

  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoingBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _code = $v.code;
      _lastVersion = $v.lastVersion;
      _ageMin = $v.ageMin;
      _ageMax = $v.ageMax;
      _title = $v.title;
      _availableLimitDate = $v.availableLimitDate;
      _availableLimitDateFormatted = $v.availableLimitDateFormatted;
      _isEditable = $v.isEditable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing;
  }

  @override
  void update(
      void Function(
              Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoingBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing
      build() => _build();

  _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing
      _build() {
    _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing',
                  'G__typename'),
              response: _response?.build(),
              code: BuiltValueNullFieldError.checkNotNull(
                  code, r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing', 'code'),
              lastVersion: BuiltValueNullFieldError.checkNotNull(
                  lastVersion,
                  r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing',
                  'lastVersion'),
              ageMin: BuiltValueNullFieldError.checkNotNull(
                  ageMin, r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing', 'ageMin'),
              ageMax: BuiltValueNullFieldError.checkNotNull(
                  ageMax, r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing', 'ageMax'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing', 'title'),
              availableLimitDate: BuiltValueNullFieldError.checkNotNull(availableLimitDate, r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing', 'availableLimitDate'),
              availableLimitDateFormatted: BuiltValueNullFieldError.checkNotNull(availableLimitDateFormatted, r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing', 'availableLimitDateFormatted'),
              isEditable: BuiltValueNullFieldError.checkNotNull(isEditable, r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing', 'isEditable'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response
    extends Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String version;
  @override
  final _i3.GHealthQuizCompletionStatus status;
  @override
  final String lastUpdateUserDate;
  @override
  final String? lastUpdateUserDateFormatted;
  @override
  final double? questionToDisplay;

  factory _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response(
          [void Function(
                  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_responseBuilder)?
              updates]) =>
      (new Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_responseBuilder()
            ..update(updates))
          ._build();

  _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response._(
      {required this.G__typename,
      required this.id,
      required this.version,
      required this.status,
      required this.lastUpdateUserDate,
      this.lastUpdateUserDateFormatted,
      this.questionToDisplay})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        version,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response',
        'version');
    BuiltValueNullFieldError.checkNotNull(
        status,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response',
        'status');
    BuiltValueNullFieldError.checkNotNull(
        lastUpdateUserDate,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response',
        'lastUpdateUserDate');
  }

  @override
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response
      rebuild(
              void Function(
                      Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_responseBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_responseBuilder
      toBuilder() =>
          new Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_responseBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response &&
        G__typename == other.G__typename &&
        id == other.id &&
        version == other.version &&
        status == other.status &&
        lastUpdateUserDate == other.lastUpdateUserDate &&
        lastUpdateUserDateFormatted == other.lastUpdateUserDateFormatted &&
        questionToDisplay == other.questionToDisplay;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, lastUpdateUserDate.hashCode);
    _$hash = $jc(_$hash, lastUpdateUserDateFormatted.hashCode);
    _$hash = $jc(_$hash, questionToDisplay.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('version', version)
          ..add('status', status)
          ..add('lastUpdateUserDate', lastUpdateUserDate)
          ..add('lastUpdateUserDateFormatted', lastUpdateUserDateFormatted)
          ..add('questionToDisplay', questionToDisplay))
        .toString();
  }
}

class Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_responseBuilder
    implements
        Builder<
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response,
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_responseBuilder> {
  _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  _i3.GHealthQuizCompletionStatus? _status;
  _i3.GHealthQuizCompletionStatus? get status => _$this._status;
  set status(_i3.GHealthQuizCompletionStatus? status) =>
      _$this._status = status;

  String? _lastUpdateUserDate;
  String? get lastUpdateUserDate => _$this._lastUpdateUserDate;
  set lastUpdateUserDate(String? lastUpdateUserDate) =>
      _$this._lastUpdateUserDate = lastUpdateUserDate;

  String? _lastUpdateUserDateFormatted;
  String? get lastUpdateUserDateFormatted =>
      _$this._lastUpdateUserDateFormatted;
  set lastUpdateUserDateFormatted(String? lastUpdateUserDateFormatted) =>
      _$this._lastUpdateUserDateFormatted = lastUpdateUserDateFormatted;

  double? _questionToDisplay;
  double? get questionToDisplay => _$this._questionToDisplay;
  set questionToDisplay(double? questionToDisplay) =>
      _$this._questionToDisplay = questionToDisplay;

  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_responseBuilder() {
    Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response
        ._initializeBuilder(this);
  }

  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_responseBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _version = $v.version;
      _status = $v.status;
      _lastUpdateUserDate = $v.lastUpdateUserDate;
      _lastUpdateUserDateFormatted = $v.lastUpdateUserDateFormatted;
      _questionToDisplay = $v.questionToDisplay;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response;
  }

  @override
  void update(
      void Function(
              Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_responseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response
      build() => _build();

  _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response
      _build() {
    final _$result = _$v ??
        new _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response', 'id'),
            version: BuiltValueNullFieldError.checkNotNull(
                version,
                r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response',
                'version'),
            status: BuiltValueNullFieldError.checkNotNull(
                status,
                r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response',
                'status'),
            lastUpdateUserDate: BuiltValueNullFieldError.checkNotNull(
                lastUpdateUserDate,
                r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response',
                'lastUpdateUserDate'),
            lastUpdateUserDateFormatted: lastUpdateUserDateFormatted,
            questionToDisplay: questionToDisplay);
    replace(_$result);
    return _$result;
  }
}

class _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone
    extends Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone {
  @override
  final String G__typename;
  @override
  final Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response?
      response;
  @override
  final String code;
  @override
  final String lastVersion;
  @override
  final double ageMin;
  @override
  final double ageMax;
  @override
  final String title;
  @override
  final String availableLimitDate;
  @override
  final String availableLimitDateFormatted;
  @override
  final bool isEditable;

  factory _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone(
          [void Function(
                  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoneBuilder)?
              updates]) =>
      (new Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoneBuilder()
            ..update(updates))
          ._build();

  _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone._(
      {required this.G__typename,
      this.response,
      required this.code,
      required this.lastVersion,
      required this.ageMin,
      required this.ageMax,
      required this.title,
      required this.availableLimitDate,
      required this.availableLimitDateFormatted,
      required this.isEditable})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        code,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone',
        'code');
    BuiltValueNullFieldError.checkNotNull(
        lastVersion,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone',
        'lastVersion');
    BuiltValueNullFieldError.checkNotNull(
        ageMin,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone',
        'ageMin');
    BuiltValueNullFieldError.checkNotNull(
        ageMax,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone',
        'ageMax');
    BuiltValueNullFieldError.checkNotNull(
        title,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone',
        'title');
    BuiltValueNullFieldError.checkNotNull(
        availableLimitDate,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone',
        'availableLimitDate');
    BuiltValueNullFieldError.checkNotNull(
        availableLimitDateFormatted,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone',
        'availableLimitDateFormatted');
    BuiltValueNullFieldError.checkNotNull(
        isEditable,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone',
        'isEditable');
  }

  @override
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone rebuild(
          void Function(
                  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoneBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoneBuilder
      toBuilder() =>
          new Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoneBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone &&
        G__typename == other.G__typename &&
        response == other.response &&
        code == other.code &&
        lastVersion == other.lastVersion &&
        ageMin == other.ageMin &&
        ageMax == other.ageMax &&
        title == other.title &&
        availableLimitDate == other.availableLimitDate &&
        availableLimitDateFormatted == other.availableLimitDateFormatted &&
        isEditable == other.isEditable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, response.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, lastVersion.hashCode);
    _$hash = $jc(_$hash, ageMin.hashCode);
    _$hash = $jc(_$hash, ageMax.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, availableLimitDate.hashCode);
    _$hash = $jc(_$hash, availableLimitDateFormatted.hashCode);
    _$hash = $jc(_$hash, isEditable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone')
          ..add('G__typename', G__typename)
          ..add('response', response)
          ..add('code', code)
          ..add('lastVersion', lastVersion)
          ..add('ageMin', ageMin)
          ..add('ageMax', ageMax)
          ..add('title', title)
          ..add('availableLimitDate', availableLimitDate)
          ..add('availableLimitDateFormatted', availableLimitDateFormatted)
          ..add('isEditable', isEditable))
        .toString();
  }
}

class Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoneBuilder
    implements
        Builder<
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone,
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoneBuilder> {
  _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_responseBuilder?
      _response;
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_responseBuilder
      get response => _$this._response ??=
          new Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_responseBuilder();
  set response(
          Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_responseBuilder?
              response) =>
      _$this._response = response;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _lastVersion;
  String? get lastVersion => _$this._lastVersion;
  set lastVersion(String? lastVersion) => _$this._lastVersion = lastVersion;

  double? _ageMin;
  double? get ageMin => _$this._ageMin;
  set ageMin(double? ageMin) => _$this._ageMin = ageMin;

  double? _ageMax;
  double? get ageMax => _$this._ageMax;
  set ageMax(double? ageMax) => _$this._ageMax = ageMax;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _availableLimitDate;
  String? get availableLimitDate => _$this._availableLimitDate;
  set availableLimitDate(String? availableLimitDate) =>
      _$this._availableLimitDate = availableLimitDate;

  String? _availableLimitDateFormatted;
  String? get availableLimitDateFormatted =>
      _$this._availableLimitDateFormatted;
  set availableLimitDateFormatted(String? availableLimitDateFormatted) =>
      _$this._availableLimitDateFormatted = availableLimitDateFormatted;

  bool? _isEditable;
  bool? get isEditable => _$this._isEditable;
  set isEditable(bool? isEditable) => _$this._isEditable = isEditable;

  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoneBuilder() {
    Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone
        ._initializeBuilder(this);
  }

  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoneBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _response = $v.response?.toBuilder();
      _code = $v.code;
      _lastVersion = $v.lastVersion;
      _ageMin = $v.ageMin;
      _ageMax = $v.ageMax;
      _title = $v.title;
      _availableLimitDate = $v.availableLimitDate;
      _availableLimitDateFormatted = $v.availableLimitDateFormatted;
      _isEditable = $v.isEditable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone;
  }

  @override
  void update(
      void Function(
              Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoneBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone build() =>
      _build();

  _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone
      _build() {
    _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone',
                  'G__typename'),
              response: _response?.build(),
              code: BuiltValueNullFieldError.checkNotNull(
                  code, r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone', 'code'),
              lastVersion: BuiltValueNullFieldError.checkNotNull(
                  lastVersion,
                  r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone',
                  'lastVersion'),
              ageMin: BuiltValueNullFieldError.checkNotNull(
                  ageMin, r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone', 'ageMin'),
              ageMax: BuiltValueNullFieldError.checkNotNull(
                  ageMax, r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone', 'ageMax'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone', 'title'),
              availableLimitDate: BuiltValueNullFieldError.checkNotNull(availableLimitDate, r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone', 'availableLimitDate'),
              availableLimitDateFormatted: BuiltValueNullFieldError.checkNotNull(availableLimitDateFormatted, r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone', 'availableLimitDateFormatted'),
              isEditable: BuiltValueNullFieldError.checkNotNull(isEditable, r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone', 'isEditable'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        _response?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response
    extends Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String version;
  @override
  final _i3.GHealthQuizCompletionStatus status;
  @override
  final String lastUpdateUserDate;
  @override
  final String? lastUpdateUserDateFormatted;
  @override
  final double? questionToDisplay;

  factory _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response(
          [void Function(
                  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_responseBuilder)?
              updates]) =>
      (new Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_responseBuilder()
            ..update(updates))
          ._build();

  _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response._(
      {required this.G__typename,
      required this.id,
      required this.version,
      required this.status,
      required this.lastUpdateUserDate,
      this.lastUpdateUserDateFormatted,
      this.questionToDisplay})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        version,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response',
        'version');
    BuiltValueNullFieldError.checkNotNull(
        status,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response',
        'status');
    BuiltValueNullFieldError.checkNotNull(
        lastUpdateUserDate,
        r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response',
        'lastUpdateUserDate');
  }

  @override
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response
      rebuild(
              void Function(
                      Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_responseBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_responseBuilder
      toBuilder() =>
          new Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_responseBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response &&
        G__typename == other.G__typename &&
        id == other.id &&
        version == other.version &&
        status == other.status &&
        lastUpdateUserDate == other.lastUpdateUserDate &&
        lastUpdateUserDateFormatted == other.lastUpdateUserDateFormatted &&
        questionToDisplay == other.questionToDisplay;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, lastUpdateUserDate.hashCode);
    _$hash = $jc(_$hash, lastUpdateUserDateFormatted.hashCode);
    _$hash = $jc(_$hash, questionToDisplay.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('version', version)
          ..add('status', status)
          ..add('lastUpdateUserDate', lastUpdateUserDate)
          ..add('lastUpdateUserDateFormatted', lastUpdateUserDateFormatted)
          ..add('questionToDisplay', questionToDisplay))
        .toString();
  }
}

class Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_responseBuilder
    implements
        Builder<
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response,
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_responseBuilder> {
  _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  _i3.GHealthQuizCompletionStatus? _status;
  _i3.GHealthQuizCompletionStatus? get status => _$this._status;
  set status(_i3.GHealthQuizCompletionStatus? status) =>
      _$this._status = status;

  String? _lastUpdateUserDate;
  String? get lastUpdateUserDate => _$this._lastUpdateUserDate;
  set lastUpdateUserDate(String? lastUpdateUserDate) =>
      _$this._lastUpdateUserDate = lastUpdateUserDate;

  String? _lastUpdateUserDateFormatted;
  String? get lastUpdateUserDateFormatted =>
      _$this._lastUpdateUserDateFormatted;
  set lastUpdateUserDateFormatted(String? lastUpdateUserDateFormatted) =>
      _$this._lastUpdateUserDateFormatted = lastUpdateUserDateFormatted;

  double? _questionToDisplay;
  double? get questionToDisplay => _$this._questionToDisplay;
  set questionToDisplay(double? questionToDisplay) =>
      _$this._questionToDisplay = questionToDisplay;

  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_responseBuilder() {
    Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response
        ._initializeBuilder(this);
  }

  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_responseBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _version = $v.version;
      _status = $v.status;
      _lastUpdateUserDate = $v.lastUpdateUserDate;
      _lastUpdateUserDateFormatted = $v.lastUpdateUserDateFormatted;
      _questionToDisplay = $v.questionToDisplay;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response;
  }

  @override
  void update(
      void Function(
              Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_responseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response
      build() => _build();

  _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response
      _build() {
    final _$result = _$v ??
        new _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response', 'id'),
            version: BuiltValueNullFieldError.checkNotNull(
                version,
                r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response',
                'version'),
            status: BuiltValueNullFieldError.checkNotNull(
                status,
                r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response',
                'status'),
            lastUpdateUserDate: BuiltValueNullFieldError.checkNotNull(
                lastUpdateUserDate,
                r'Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response',
                'lastUpdateUserDate'),
            lastUpdateUserDateFormatted: lastUpdateUserDateFormatted,
            questionToDisplay: questionToDisplay);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
