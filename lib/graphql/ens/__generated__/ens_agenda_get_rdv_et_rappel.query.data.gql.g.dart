// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_agenda_get_rdv_et_rappel.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_rdv_et_rappelData> _$ggetRdvEtRappelDataSerializer =
    new _$Gget_rdv_et_rappelDataSerializer();
Serializer<Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId>
    _$ggetRdvEtRappelDataFetchAllFuturesAppointmentsByPatientIdSerializer =
    new _$Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientIdSerializer();
Serializer<Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author>
    _$ggetRdvEtRappelDataFetchAllFuturesAppointmentsByPatientIdAuthorSerializer =
    new _$Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_authorSerializer();
Serializer<Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId>
    _$ggetRdvEtRappelDataFetchAllPastsAppointmentsByPatientIdSerializer =
    new _$Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientIdSerializer();
Serializer<Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author>
    _$ggetRdvEtRappelDataFetchAllPastsAppointmentsByPatientIdAuthorSerializer =
    new _$Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_authorSerializer();
Serializer<Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId>
    _$ggetRdvEtRappelDataFetchAllFuturesRemindersByPatientIdSerializer =
    new _$Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientIdSerializer();
Serializer<Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author>
    _$ggetRdvEtRappelDataFetchAllFuturesRemindersByPatientIdAuthorSerializer =
    new _$Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_authorSerializer();
Serializer<Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId>
    _$ggetRdvEtRappelDataFetchPastsRemindersByPatientIdSerializer =
    new _$Gget_rdv_et_rappelData_fetchPastsRemindersByPatientIdSerializer();
Serializer<Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author>
    _$ggetRdvEtRappelDataFetchPastsRemindersByPatientIdAuthorSerializer =
    new _$Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_authorSerializer();
Serializer<Gget_rdv_et_rappelData_fetchPreventionsByPatientId>
    _$ggetRdvEtRappelDataFetchPreventionsByPatientIdSerializer =
    new _$Gget_rdv_et_rappelData_fetchPreventionsByPatientIdSerializer();

class _$Gget_rdv_et_rappelDataSerializer
    implements StructuredSerializer<Gget_rdv_et_rappelData> {
  @override
  final Iterable<Type> types = const [
    Gget_rdv_et_rappelData,
    _$Gget_rdv_et_rappelData
  ];
  @override
  final String wireName = 'Gget_rdv_et_rappelData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_rdv_et_rappelData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'fetchAllFuturesAppointmentsByPatientId',
      serializers.serialize(object.fetchAllFuturesAppointmentsByPatientId,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId)
          ])),
      'fetchAllPastsAppointmentsByPatientId',
      serializers.serialize(object.fetchAllPastsAppointmentsByPatientId,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId)
          ])),
    ];
    Object? value;
    value = object.fetchAllFuturesRemindersByPatientId;
    if (value != null) {
      result
        ..add('fetchAllFuturesRemindersByPatientId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId)
            ])));
    }
    value = object.fetchPastsRemindersByPatientId;
    if (value != null) {
      result
        ..add('fetchPastsRemindersByPatientId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId)
            ])));
    }
    value = object.fetchPreventionsByPatientId;
    if (value != null) {
      result
        ..add('fetchPreventionsByPatientId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(Gget_rdv_et_rappelData_fetchPreventionsByPatientId)
            ])));
    }
    return result;
  }

  @override
  Gget_rdv_et_rappelData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_rdv_et_rappelDataBuilder();

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
        case 'fetchAllFuturesAppointmentsByPatientId':
          result.fetchAllFuturesAppointmentsByPatientId.replace(
              serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType(
                        Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId)
                  ]))! as BuiltList<Object?>);
          break;
        case 'fetchAllPastsAppointmentsByPatientId':
          result.fetchAllPastsAppointmentsByPatientId.replace(
              serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType(
                        Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId)
                  ]))! as BuiltList<Object?>);
          break;
        case 'fetchAllFuturesRemindersByPatientId':
          result.fetchAllFuturesRemindersByPatientId.replace(
              serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType(
                        Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId)
                  ]))! as BuiltList<Object?>);
          break;
        case 'fetchPastsRemindersByPatientId':
          result.fetchPastsRemindersByPatientId.replace(serializers.deserialize(
              value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId)
              ]))! as BuiltList<Object?>);
          break;
        case 'fetchPreventionsByPatientId':
          result.fetchPreventionsByPatientId.replace(serializers.deserialize(
              value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_rdv_et_rappelData_fetchPreventionsByPatientId)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientIdSerializer
    implements
        StructuredSerializer<
            Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId> {
  @override
  final Iterable<Type> types = const [
    Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId,
    _$Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId
  ];
  @override
  final String wireName =
      'Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(_i3.GAppointmentType)),
      'professionalOrEstablishmentName',
      serializers.serialize(object.professionalOrEstablishmentName,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.speciality;
    if (value != null) {
      result
        ..add('speciality')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.author;
    if (value != null) {
      result
        ..add('author')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idProfessionnelSante;
    if (value != null) {
      result
        ..add('idProfessionnelSante')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idEtablissementSante;
    if (value != null) {
      result
        ..add('idEtablissementSante')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientIdBuilder();

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
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GAppointmentType))!
              as _i3.GAppointmentType;
          break;
        case 'professionalOrEstablishmentName':
          result.professionalOrEstablishmentName = serializers.deserialize(
              value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'speciality':
          result.speciality = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author))!
              as Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idProfessionnelSante':
          result.idProfessionnelSante = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idEtablissementSante':
          result.idEtablissementSante = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_authorSerializer
    implements
        StructuredSerializer<
            Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author> {
  @override
  final Iterable<Type> types = const [
    Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author,
    _$Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author
  ];
  @override
  final String wireName =
      'Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'authorLabel',
      serializers.serialize(object.authorLabel,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(_i3.GAgendaAuthorTypeEnum)),
    ];

    return result;
  }

  @override
  Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_authorBuilder();

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
        case 'authorLabel':
          result.authorLabel = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GAgendaAuthorTypeEnum))!
              as _i3.GAgendaAuthorTypeEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientIdSerializer
    implements
        StructuredSerializer<
            Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId> {
  @override
  final Iterable<Type> types = const [
    Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId,
    _$Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId
  ];
  @override
  final String wireName =
      'Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(_i3.GAppointmentType)),
      'professionalOrEstablishmentName',
      serializers.serialize(object.professionalOrEstablishmentName,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.speciality;
    if (value != null) {
      result
        ..add('speciality')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.author;
    if (value != null) {
      result
        ..add('author')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idProfessionnelSante;
    if (value != null) {
      result
        ..add('idProfessionnelSante')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idEtablissementSante;
    if (value != null) {
      result
        ..add('idEtablissementSante')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientIdBuilder();

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
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GAppointmentType))!
              as _i3.GAppointmentType;
          break;
        case 'professionalOrEstablishmentName':
          result.professionalOrEstablishmentName = serializers.deserialize(
              value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'speciality':
          result.speciality = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author))!
              as Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idProfessionnelSante':
          result.idProfessionnelSante = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idEtablissementSante':
          result.idEtablissementSante = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_authorSerializer
    implements
        StructuredSerializer<
            Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author> {
  @override
  final Iterable<Type> types = const [
    Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author,
    _$Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author
  ];
  @override
  final String wireName =
      'Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'authorLabel',
      serializers.serialize(object.authorLabel,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(_i3.GAgendaAuthorTypeEnum)),
    ];

    return result;
  }

  @override
  Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_authorBuilder();

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
        case 'authorLabel':
          result.authorLabel = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GAgendaAuthorTypeEnum))!
              as _i3.GAgendaAuthorTypeEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientIdSerializer
    implements
        StructuredSerializer<
            Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId> {
  @override
  final Iterable<Type> types = const [
    Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId,
    _$Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId
  ];
  @override
  final String wireName =
      'Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'comment',
      serializers.serialize(object.comment,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.author;
    if (value != null) {
      result
        ..add('author')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author)));
    }
    return result;
  }

  @override
  Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientIdBuilder();

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
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author))!
              as Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_authorSerializer
    implements
        StructuredSerializer<
            Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author> {
  @override
  final Iterable<Type> types = const [
    Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author,
    _$Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author
  ];
  @override
  final String wireName =
      'Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'authorLabel',
      serializers.serialize(object.authorLabel,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_authorBuilder();

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
        case 'authorLabel':
          result.authorLabel = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_rdv_et_rappelData_fetchPastsRemindersByPatientIdSerializer
    implements
        StructuredSerializer<
            Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId> {
  @override
  final Iterable<Type> types = const [
    Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId,
    _$Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId
  ];
  @override
  final String wireName =
      'Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'comment',
      serializers.serialize(object.comment,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.author;
    if (value != null) {
      result
        ..add('author')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author)));
    }
    return result;
  }

  @override
  Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_rdv_et_rappelData_fetchPastsRemindersByPatientIdBuilder();

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
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author))!
              as Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_authorSerializer
    implements
        StructuredSerializer<
            Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author> {
  @override
  final Iterable<Type> types = const [
    Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author,
    _$Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author
  ];
  @override
  final String wireName =
      'Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'authorLabel',
      serializers.serialize(object.authorLabel,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_authorBuilder();

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
        case 'authorLabel':
          result.authorLabel = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_rdv_et_rappelData_fetchPreventionsByPatientIdSerializer
    implements
        StructuredSerializer<
            Gget_rdv_et_rappelData_fetchPreventionsByPatientId> {
  @override
  final Iterable<Type> types = const [
    Gget_rdv_et_rappelData_fetchPreventionsByPatientId,
    _$Gget_rdv_et_rappelData_fetchPreventionsByPatientId
  ];
  @override
  final String wireName = 'Gget_rdv_et_rappelData_fetchPreventionsByPatientId';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_rdv_et_rappelData_fetchPreventionsByPatientId object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'dateDebutCampagne',
      serializers.serialize(object.dateDebutCampagne,
          specifiedType: const FullType(String)),
      'dateDebutPrevention',
      serializers.serialize(object.dateDebutPrevention,
          specifiedType: const FullType(String)),
      'dateFinPrevention',
      serializers.serialize(object.dateFinPrevention,
          specifiedType: const FullType(String)),
      'statut',
      serializers.serialize(object.statut,
          specifiedType: const FullType(_i3.GPreventionTypeEnum)),
    ];
    Object? value;
    value = object.dateFinCampagne;
    if (value != null) {
      result
        ..add('dateFinCampagne')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.executionDate;
    if (value != null) {
      result
        ..add('executionDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.requirementLevel;
    if (value != null) {
      result
        ..add('requirementLevel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_rdv_et_rappelData_fetchPreventionsByPatientId deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_rdv_et_rappelData_fetchPreventionsByPatientIdBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'dateDebutCampagne':
          result.dateDebutCampagne = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'dateFinCampagne':
          result.dateFinCampagne = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dateDebutPrevention':
          result.dateDebutPrevention = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'dateFinPrevention':
          result.dateFinPrevention = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'statut':
          result.statut = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GPreventionTypeEnum))!
              as _i3.GPreventionTypeEnum;
          break;
        case 'executionDate':
          result.executionDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'requirementLevel':
          result.requirementLevel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_rdv_et_rappelData extends Gget_rdv_et_rappelData {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId>
      fetchAllFuturesAppointmentsByPatientId;
  @override
  final BuiltList<Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId>
      fetchAllPastsAppointmentsByPatientId;
  @override
  final BuiltList<Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId>?
      fetchAllFuturesRemindersByPatientId;
  @override
  final BuiltList<Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId>?
      fetchPastsRemindersByPatientId;
  @override
  final BuiltList<Gget_rdv_et_rappelData_fetchPreventionsByPatientId>?
      fetchPreventionsByPatientId;

  factory _$Gget_rdv_et_rappelData(
          [void Function(Gget_rdv_et_rappelDataBuilder)? updates]) =>
      (new Gget_rdv_et_rappelDataBuilder()..update(updates))._build();

  _$Gget_rdv_et_rappelData._(
      {required this.G__typename,
      required this.fetchAllFuturesAppointmentsByPatientId,
      required this.fetchAllPastsAppointmentsByPatientId,
      this.fetchAllFuturesRemindersByPatientId,
      this.fetchPastsRemindersByPatientId,
      this.fetchPreventionsByPatientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_rdv_et_rappelData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        fetchAllFuturesAppointmentsByPatientId,
        r'Gget_rdv_et_rappelData',
        'fetchAllFuturesAppointmentsByPatientId');
    BuiltValueNullFieldError.checkNotNull(fetchAllPastsAppointmentsByPatientId,
        r'Gget_rdv_et_rappelData', 'fetchAllPastsAppointmentsByPatientId');
  }

  @override
  Gget_rdv_et_rappelData rebuild(
          void Function(Gget_rdv_et_rappelDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_rdv_et_rappelDataBuilder toBuilder() =>
      new Gget_rdv_et_rappelDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_rdv_et_rappelData &&
        G__typename == other.G__typename &&
        fetchAllFuturesAppointmentsByPatientId ==
            other.fetchAllFuturesAppointmentsByPatientId &&
        fetchAllPastsAppointmentsByPatientId ==
            other.fetchAllPastsAppointmentsByPatientId &&
        fetchAllFuturesRemindersByPatientId ==
            other.fetchAllFuturesRemindersByPatientId &&
        fetchPastsRemindersByPatientId ==
            other.fetchPastsRemindersByPatientId &&
        fetchPreventionsByPatientId == other.fetchPreventionsByPatientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, fetchAllFuturesAppointmentsByPatientId.hashCode);
    _$hash = $jc(_$hash, fetchAllPastsAppointmentsByPatientId.hashCode);
    _$hash = $jc(_$hash, fetchAllFuturesRemindersByPatientId.hashCode);
    _$hash = $jc(_$hash, fetchPastsRemindersByPatientId.hashCode);
    _$hash = $jc(_$hash, fetchPreventionsByPatientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_rdv_et_rappelData')
          ..add('G__typename', G__typename)
          ..add('fetchAllFuturesAppointmentsByPatientId',
              fetchAllFuturesAppointmentsByPatientId)
          ..add('fetchAllPastsAppointmentsByPatientId',
              fetchAllPastsAppointmentsByPatientId)
          ..add('fetchAllFuturesRemindersByPatientId',
              fetchAllFuturesRemindersByPatientId)
          ..add(
              'fetchPastsRemindersByPatientId', fetchPastsRemindersByPatientId)
          ..add('fetchPreventionsByPatientId', fetchPreventionsByPatientId))
        .toString();
  }
}

class Gget_rdv_et_rappelDataBuilder
    implements Builder<Gget_rdv_et_rappelData, Gget_rdv_et_rappelDataBuilder> {
  _$Gget_rdv_et_rappelData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId>?
      _fetchAllFuturesAppointmentsByPatientId;
  ListBuilder<Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId>
      get fetchAllFuturesAppointmentsByPatientId =>
          _$this._fetchAllFuturesAppointmentsByPatientId ??= new ListBuilder<
              Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId>();
  set fetchAllFuturesAppointmentsByPatientId(
          ListBuilder<
                  Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId>?
              fetchAllFuturesAppointmentsByPatientId) =>
      _$this._fetchAllFuturesAppointmentsByPatientId =
          fetchAllFuturesAppointmentsByPatientId;

  ListBuilder<Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId>?
      _fetchAllPastsAppointmentsByPatientId;
  ListBuilder<Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId>
      get fetchAllPastsAppointmentsByPatientId =>
          _$this._fetchAllPastsAppointmentsByPatientId ??= new ListBuilder<
              Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId>();
  set fetchAllPastsAppointmentsByPatientId(
          ListBuilder<
                  Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId>?
              fetchAllPastsAppointmentsByPatientId) =>
      _$this._fetchAllPastsAppointmentsByPatientId =
          fetchAllPastsAppointmentsByPatientId;

  ListBuilder<Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId>?
      _fetchAllFuturesRemindersByPatientId;
  ListBuilder<Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId>
      get fetchAllFuturesRemindersByPatientId =>
          _$this._fetchAllFuturesRemindersByPatientId ??= new ListBuilder<
              Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId>();
  set fetchAllFuturesRemindersByPatientId(
          ListBuilder<
                  Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId>?
              fetchAllFuturesRemindersByPatientId) =>
      _$this._fetchAllFuturesRemindersByPatientId =
          fetchAllFuturesRemindersByPatientId;

  ListBuilder<Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId>?
      _fetchPastsRemindersByPatientId;
  ListBuilder<Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId>
      get fetchPastsRemindersByPatientId =>
          _$this._fetchPastsRemindersByPatientId ??= new ListBuilder<
              Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId>();
  set fetchPastsRemindersByPatientId(
          ListBuilder<Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId>?
              fetchPastsRemindersByPatientId) =>
      _$this._fetchPastsRemindersByPatientId = fetchPastsRemindersByPatientId;

  ListBuilder<Gget_rdv_et_rappelData_fetchPreventionsByPatientId>?
      _fetchPreventionsByPatientId;
  ListBuilder<Gget_rdv_et_rappelData_fetchPreventionsByPatientId>
      get fetchPreventionsByPatientId => _$this._fetchPreventionsByPatientId ??=
          new ListBuilder<Gget_rdv_et_rappelData_fetchPreventionsByPatientId>();
  set fetchPreventionsByPatientId(
          ListBuilder<Gget_rdv_et_rappelData_fetchPreventionsByPatientId>?
              fetchPreventionsByPatientId) =>
      _$this._fetchPreventionsByPatientId = fetchPreventionsByPatientId;

  Gget_rdv_et_rappelDataBuilder() {
    Gget_rdv_et_rappelData._initializeBuilder(this);
  }

  Gget_rdv_et_rappelDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _fetchAllFuturesAppointmentsByPatientId =
          $v.fetchAllFuturesAppointmentsByPatientId.toBuilder();
      _fetchAllPastsAppointmentsByPatientId =
          $v.fetchAllPastsAppointmentsByPatientId.toBuilder();
      _fetchAllFuturesRemindersByPatientId =
          $v.fetchAllFuturesRemindersByPatientId?.toBuilder();
      _fetchPastsRemindersByPatientId =
          $v.fetchPastsRemindersByPatientId?.toBuilder();
      _fetchPreventionsByPatientId =
          $v.fetchPreventionsByPatientId?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_rdv_et_rappelData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_rdv_et_rappelData;
  }

  @override
  void update(void Function(Gget_rdv_et_rappelDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_rdv_et_rappelData build() => _build();

  _$Gget_rdv_et_rappelData _build() {
    _$Gget_rdv_et_rappelData _$result;
    try {
      _$result = _$v ??
          new _$Gget_rdv_et_rappelData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_rdv_et_rappelData', 'G__typename'),
              fetchAllFuturesAppointmentsByPatientId:
                  fetchAllFuturesAppointmentsByPatientId.build(),
              fetchAllPastsAppointmentsByPatientId:
                  fetchAllPastsAppointmentsByPatientId.build(),
              fetchAllFuturesRemindersByPatientId:
                  _fetchAllFuturesRemindersByPatientId?.build(),
              fetchPastsRemindersByPatientId:
                  _fetchPastsRemindersByPatientId?.build(),
              fetchPreventionsByPatientId:
                  _fetchPreventionsByPatientId?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fetchAllFuturesAppointmentsByPatientId';
        fetchAllFuturesAppointmentsByPatientId.build();
        _$failedField = 'fetchAllPastsAppointmentsByPatientId';
        fetchAllPastsAppointmentsByPatientId.build();
        _$failedField = 'fetchAllFuturesRemindersByPatientId';
        _fetchAllFuturesRemindersByPatientId?.build();
        _$failedField = 'fetchPastsRemindersByPatientId';
        _fetchPastsRemindersByPatientId?.build();
        _$failedField = 'fetchPreventionsByPatientId';
        _fetchPreventionsByPatientId?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_rdv_et_rappelData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId
    extends Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String patientId;
  @override
  final String? name;
  @override
  final _i3.GAppointmentType type;
  @override
  final String professionalOrEstablishmentName;
  @override
  final String date;
  @override
  final String? comment;
  @override
  final String? speciality;
  @override
  final String? address;
  @override
  final Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author?
      author;
  @override
  final String? status;
  @override
  final String? idProfessionnelSante;
  @override
  final String? idEtablissementSante;

  factory _$Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId(
          [void Function(
                  Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientIdBuilder)?
              updates]) =>
      (new Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientIdBuilder()
            ..update(updates))
          ._build();

  _$Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId._(
      {required this.G__typename,
      required this.id,
      required this.patientId,
      this.name,
      required this.type,
      required this.professionalOrEstablishmentName,
      required this.date,
      this.comment,
      this.speciality,
      this.address,
      this.author,
      this.status,
      this.idProfessionnelSante,
      this.idEtablissementSante})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(id,
        r'Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId', 'id');
    BuiltValueNullFieldError.checkNotNull(
        patientId,
        r'Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId',
        'patientId');
    BuiltValueNullFieldError.checkNotNull(
        type,
        r'Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId',
        'type');
    BuiltValueNullFieldError.checkNotNull(
        professionalOrEstablishmentName,
        r'Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId',
        'professionalOrEstablishmentName');
    BuiltValueNullFieldError.checkNotNull(
        date,
        r'Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId',
        'date');
  }

  @override
  Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId rebuild(
          void Function(
                  Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientIdBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientIdBuilder
      toBuilder() =>
          new Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientIdBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId &&
        G__typename == other.G__typename &&
        id == other.id &&
        patientId == other.patientId &&
        name == other.name &&
        type == other.type &&
        professionalOrEstablishmentName ==
            other.professionalOrEstablishmentName &&
        date == other.date &&
        comment == other.comment &&
        speciality == other.speciality &&
        address == other.address &&
        author == other.author &&
        status == other.status &&
        idProfessionnelSante == other.idProfessionnelSante &&
        idEtablissementSante == other.idEtablissementSante;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, professionalOrEstablishmentName.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, speciality.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, idProfessionnelSante.hashCode);
    _$hash = $jc(_$hash, idEtablissementSante.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('patientId', patientId)
          ..add('name', name)
          ..add('type', type)
          ..add('professionalOrEstablishmentName',
              professionalOrEstablishmentName)
          ..add('date', date)
          ..add('comment', comment)
          ..add('speciality', speciality)
          ..add('address', address)
          ..add('author', author)
          ..add('status', status)
          ..add('idProfessionnelSante', idProfessionnelSante)
          ..add('idEtablissementSante', idEtablissementSante))
        .toString();
  }
}

class Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientIdBuilder
    implements
        Builder<Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId,
            Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientIdBuilder> {
  _$Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  _i3.GAppointmentType? _type;
  _i3.GAppointmentType? get type => _$this._type;
  set type(_i3.GAppointmentType? type) => _$this._type = type;

  String? _professionalOrEstablishmentName;
  String? get professionalOrEstablishmentName =>
      _$this._professionalOrEstablishmentName;
  set professionalOrEstablishmentName(
          String? professionalOrEstablishmentName) =>
      _$this._professionalOrEstablishmentName = professionalOrEstablishmentName;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  String? _speciality;
  String? get speciality => _$this._speciality;
  set speciality(String? speciality) => _$this._speciality = speciality;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_authorBuilder?
      _author;
  Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_authorBuilder
      get author => _$this._author ??=
          new Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_authorBuilder();
  set author(
          Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_authorBuilder?
              author) =>
      _$this._author = author;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _idProfessionnelSante;
  String? get idProfessionnelSante => _$this._idProfessionnelSante;
  set idProfessionnelSante(String? idProfessionnelSante) =>
      _$this._idProfessionnelSante = idProfessionnelSante;

  String? _idEtablissementSante;
  String? get idEtablissementSante => _$this._idEtablissementSante;
  set idEtablissementSante(String? idEtablissementSante) =>
      _$this._idEtablissementSante = idEtablissementSante;

  Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientIdBuilder() {
    Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId
        ._initializeBuilder(this);
  }

  Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientIdBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _patientId = $v.patientId;
      _name = $v.name;
      _type = $v.type;
      _professionalOrEstablishmentName = $v.professionalOrEstablishmentName;
      _date = $v.date;
      _comment = $v.comment;
      _speciality = $v.speciality;
      _address = $v.address;
      _author = $v.author?.toBuilder();
      _status = $v.status;
      _idProfessionnelSante = $v.idProfessionnelSante;
      _idEtablissementSante = $v.idEtablissementSante;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId;
  }

  @override
  void update(
      void Function(
              Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientIdBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId build() =>
      _build();

  _$Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId _build() {
    _$Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId _$result;
    try {
      _$result = _$v ??
          new _$Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId', 'id'),
              patientId: BuiltValueNullFieldError.checkNotNull(
                  patientId, r'Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId', 'patientId'),
              name: name,
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId', 'type'),
              professionalOrEstablishmentName: BuiltValueNullFieldError.checkNotNull(
                  professionalOrEstablishmentName,
                  r'Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId',
                  'professionalOrEstablishmentName'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId', 'date'),
              comment: comment,
              speciality: speciality,
              address: address,
              author: _author?.build(),
              status: status,
              idProfessionnelSante: idProfessionnelSante,
              idEtablissementSante: idEtablissementSante);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'author';
        _author?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author
    extends Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author {
  @override
  final String G__typename;
  @override
  final String authorLabel;
  @override
  final _i3.GAgendaAuthorTypeEnum type;

  factory _$Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author(
          [void Function(
                  Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_authorBuilder)?
              updates]) =>
      (new Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_authorBuilder()
            ..update(updates))
          ._build();

  _$Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author._(
      {required this.G__typename,
      required this.authorLabel,
      required this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        authorLabel,
        r'Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author',
        'authorLabel');
    BuiltValueNullFieldError.checkNotNull(
        type,
        r'Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author',
        'type');
  }

  @override
  Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author rebuild(
          void Function(
                  Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_authorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_authorBuilder
      toBuilder() =>
          new Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_authorBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author &&
        G__typename == other.G__typename &&
        authorLabel == other.authorLabel &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, authorLabel.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author')
          ..add('G__typename', G__typename)
          ..add('authorLabel', authorLabel)
          ..add('type', type))
        .toString();
  }
}

class Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_authorBuilder
    implements
        Builder<
            Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author,
            Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_authorBuilder> {
  _$Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _authorLabel;
  String? get authorLabel => _$this._authorLabel;
  set authorLabel(String? authorLabel) => _$this._authorLabel = authorLabel;

  _i3.GAgendaAuthorTypeEnum? _type;
  _i3.GAgendaAuthorTypeEnum? get type => _$this._type;
  set type(_i3.GAgendaAuthorTypeEnum? type) => _$this._type = type;

  Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_authorBuilder() {
    Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author
        ._initializeBuilder(this);
  }

  Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_authorBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _authorLabel = $v.authorLabel;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author;
  }

  @override
  void update(
      void Function(
              Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_authorBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author
      build() => _build();

  _$Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author
      _build() {
    final _$result = _$v ??
        new _$Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author',
                'G__typename'),
            authorLabel: BuiltValueNullFieldError.checkNotNull(
                authorLabel,
                r'Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author',
                'authorLabel'),
            type: BuiltValueNullFieldError.checkNotNull(
                type,
                r'Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author',
                'type'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId
    extends Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String patientId;
  @override
  final String? name;
  @override
  final _i3.GAppointmentType type;
  @override
  final String professionalOrEstablishmentName;
  @override
  final String date;
  @override
  final String? comment;
  @override
  final String? speciality;
  @override
  final String? address;
  @override
  final Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author?
      author;
  @override
  final String? status;
  @override
  final String? idProfessionnelSante;
  @override
  final String? idEtablissementSante;

  factory _$Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId(
          [void Function(
                  Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientIdBuilder)?
              updates]) =>
      (new Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientIdBuilder()
            ..update(updates))
          ._build();

  _$Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId._(
      {required this.G__typename,
      required this.id,
      required this.patientId,
      this.name,
      required this.type,
      required this.professionalOrEstablishmentName,
      required this.date,
      this.comment,
      this.speciality,
      this.address,
      this.author,
      this.status,
      this.idProfessionnelSante,
      this.idEtablissementSante})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(id,
        r'Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId', 'id');
    BuiltValueNullFieldError.checkNotNull(
        patientId,
        r'Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId',
        'patientId');
    BuiltValueNullFieldError.checkNotNull(type,
        r'Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId', 'type');
    BuiltValueNullFieldError.checkNotNull(
        professionalOrEstablishmentName,
        r'Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId',
        'professionalOrEstablishmentName');
    BuiltValueNullFieldError.checkNotNull(date,
        r'Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId', 'date');
  }

  @override
  Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId rebuild(
          void Function(
                  Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientIdBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientIdBuilder
      toBuilder() =>
          new Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientIdBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId &&
        G__typename == other.G__typename &&
        id == other.id &&
        patientId == other.patientId &&
        name == other.name &&
        type == other.type &&
        professionalOrEstablishmentName ==
            other.professionalOrEstablishmentName &&
        date == other.date &&
        comment == other.comment &&
        speciality == other.speciality &&
        address == other.address &&
        author == other.author &&
        status == other.status &&
        idProfessionnelSante == other.idProfessionnelSante &&
        idEtablissementSante == other.idEtablissementSante;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, professionalOrEstablishmentName.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, speciality.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, idProfessionnelSante.hashCode);
    _$hash = $jc(_$hash, idEtablissementSante.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('patientId', patientId)
          ..add('name', name)
          ..add('type', type)
          ..add('professionalOrEstablishmentName',
              professionalOrEstablishmentName)
          ..add('date', date)
          ..add('comment', comment)
          ..add('speciality', speciality)
          ..add('address', address)
          ..add('author', author)
          ..add('status', status)
          ..add('idProfessionnelSante', idProfessionnelSante)
          ..add('idEtablissementSante', idEtablissementSante))
        .toString();
  }
}

class Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientIdBuilder
    implements
        Builder<Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId,
            Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientIdBuilder> {
  _$Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  _i3.GAppointmentType? _type;
  _i3.GAppointmentType? get type => _$this._type;
  set type(_i3.GAppointmentType? type) => _$this._type = type;

  String? _professionalOrEstablishmentName;
  String? get professionalOrEstablishmentName =>
      _$this._professionalOrEstablishmentName;
  set professionalOrEstablishmentName(
          String? professionalOrEstablishmentName) =>
      _$this._professionalOrEstablishmentName = professionalOrEstablishmentName;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  String? _speciality;
  String? get speciality => _$this._speciality;
  set speciality(String? speciality) => _$this._speciality = speciality;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_authorBuilder?
      _author;
  Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_authorBuilder
      get author => _$this._author ??=
          new Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_authorBuilder();
  set author(
          Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_authorBuilder?
              author) =>
      _$this._author = author;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _idProfessionnelSante;
  String? get idProfessionnelSante => _$this._idProfessionnelSante;
  set idProfessionnelSante(String? idProfessionnelSante) =>
      _$this._idProfessionnelSante = idProfessionnelSante;

  String? _idEtablissementSante;
  String? get idEtablissementSante => _$this._idEtablissementSante;
  set idEtablissementSante(String? idEtablissementSante) =>
      _$this._idEtablissementSante = idEtablissementSante;

  Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientIdBuilder() {
    Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId
        ._initializeBuilder(this);
  }

  Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientIdBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _patientId = $v.patientId;
      _name = $v.name;
      _type = $v.type;
      _professionalOrEstablishmentName = $v.professionalOrEstablishmentName;
      _date = $v.date;
      _comment = $v.comment;
      _speciality = $v.speciality;
      _address = $v.address;
      _author = $v.author?.toBuilder();
      _status = $v.status;
      _idProfessionnelSante = $v.idProfessionnelSante;
      _idEtablissementSante = $v.idEtablissementSante;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId;
  }

  @override
  void update(
      void Function(
              Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientIdBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId build() =>
      _build();

  _$Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId _build() {
    _$Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId _$result;
    try {
      _$result = _$v ??
          new _$Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId', 'id'),
              patientId: BuiltValueNullFieldError.checkNotNull(
                  patientId, r'Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId', 'patientId'),
              name: name,
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId', 'type'),
              professionalOrEstablishmentName: BuiltValueNullFieldError.checkNotNull(
                  professionalOrEstablishmentName,
                  r'Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId',
                  'professionalOrEstablishmentName'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId', 'date'),
              comment: comment,
              speciality: speciality,
              address: address,
              author: _author?.build(),
              status: status,
              idProfessionnelSante: idProfessionnelSante,
              idEtablissementSante: idEtablissementSante);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'author';
        _author?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author
    extends Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author {
  @override
  final String G__typename;
  @override
  final String authorLabel;
  @override
  final _i3.GAgendaAuthorTypeEnum type;

  factory _$Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author(
          [void Function(
                  Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_authorBuilder)?
              updates]) =>
      (new Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_authorBuilder()
            ..update(updates))
          ._build();

  _$Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author._(
      {required this.G__typename,
      required this.authorLabel,
      required this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        authorLabel,
        r'Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author',
        'authorLabel');
    BuiltValueNullFieldError.checkNotNull(
        type,
        r'Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author',
        'type');
  }

  @override
  Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author rebuild(
          void Function(
                  Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_authorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_authorBuilder
      toBuilder() =>
          new Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_authorBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author &&
        G__typename == other.G__typename &&
        authorLabel == other.authorLabel &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, authorLabel.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author')
          ..add('G__typename', G__typename)
          ..add('authorLabel', authorLabel)
          ..add('type', type))
        .toString();
  }
}

class Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_authorBuilder
    implements
        Builder<
            Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author,
            Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_authorBuilder> {
  _$Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _authorLabel;
  String? get authorLabel => _$this._authorLabel;
  set authorLabel(String? authorLabel) => _$this._authorLabel = authorLabel;

  _i3.GAgendaAuthorTypeEnum? _type;
  _i3.GAgendaAuthorTypeEnum? get type => _$this._type;
  set type(_i3.GAgendaAuthorTypeEnum? type) => _$this._type = type;

  Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_authorBuilder() {
    Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author
        ._initializeBuilder(this);
  }

  Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_authorBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _authorLabel = $v.authorLabel;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author;
  }

  @override
  void update(
      void Function(
              Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_authorBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author build() =>
      _build();

  _$Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author
      _build() {
    final _$result = _$v ??
        new _$Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author',
                'G__typename'),
            authorLabel: BuiltValueNullFieldError.checkNotNull(
                authorLabel,
                r'Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author',
                'authorLabel'),
            type: BuiltValueNullFieldError.checkNotNull(
                type,
                r'Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author',
                'type'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId
    extends Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String date;
  @override
  final String title;
  @override
  final String comment;
  @override
  final Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author?
      author;

  factory _$Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId(
          [void Function(
                  Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientIdBuilder)?
              updates]) =>
      (new Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientIdBuilder()
            ..update(updates))
          ._build();

  _$Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId._(
      {required this.G__typename,
      required this.id,
      required this.date,
      required this.title,
      required this.comment,
      this.author})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(id,
        r'Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId', 'id');
    BuiltValueNullFieldError.checkNotNull(date,
        r'Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId', 'date');
    BuiltValueNullFieldError.checkNotNull(title,
        r'Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId', 'title');
    BuiltValueNullFieldError.checkNotNull(
        comment,
        r'Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId',
        'comment');
  }

  @override
  Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId rebuild(
          void Function(
                  Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientIdBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientIdBuilder
      toBuilder() =>
          new Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientIdBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId &&
        G__typename == other.G__typename &&
        id == other.id &&
        date == other.date &&
        title == other.title &&
        comment == other.comment &&
        author == other.author;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('date', date)
          ..add('title', title)
          ..add('comment', comment)
          ..add('author', author))
        .toString();
  }
}

class Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientIdBuilder
    implements
        Builder<Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId,
            Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientIdBuilder> {
  _$Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_authorBuilder?
      _author;
  Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_authorBuilder
      get author => _$this._author ??=
          new Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_authorBuilder();
  set author(
          Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_authorBuilder?
              author) =>
      _$this._author = author;

  Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientIdBuilder() {
    Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId
        ._initializeBuilder(this);
  }

  Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _date = $v.date;
      _title = $v.title;
      _comment = $v.comment;
      _author = $v.author?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId;
  }

  @override
  void update(
      void Function(
              Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientIdBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId build() =>
      _build();

  _$Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId _build() {
    _$Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId _$result;
    try {
      _$result = _$v ??
          new _$Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId', 'id'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date,
                  r'Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId',
                  'date'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title,
                  r'Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId',
                  'title'),
              comment: BuiltValueNullFieldError.checkNotNull(
                  comment,
                  r'Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId',
                  'comment'),
              author: _author?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'author';
        _author?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author
    extends Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author {
  @override
  final String G__typename;
  @override
  final String authorLabel;

  factory _$Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author(
          [void Function(
                  Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_authorBuilder)?
              updates]) =>
      (new Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_authorBuilder()
            ..update(updates))
          ._build();

  _$Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author._(
      {required this.G__typename, required this.authorLabel})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        authorLabel,
        r'Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author',
        'authorLabel');
  }

  @override
  Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author rebuild(
          void Function(
                  Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_authorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_authorBuilder
      toBuilder() =>
          new Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_authorBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author &&
        G__typename == other.G__typename &&
        authorLabel == other.authorLabel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, authorLabel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author')
          ..add('G__typename', G__typename)
          ..add('authorLabel', authorLabel))
        .toString();
  }
}

class Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_authorBuilder
    implements
        Builder<
            Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author,
            Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_authorBuilder> {
  _$Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _authorLabel;
  String? get authorLabel => _$this._authorLabel;
  set authorLabel(String? authorLabel) => _$this._authorLabel = authorLabel;

  Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_authorBuilder() {
    Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author
        ._initializeBuilder(this);
  }

  Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_authorBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _authorLabel = $v.authorLabel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author;
  }

  @override
  void update(
      void Function(
              Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_authorBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author build() =>
      _build();

  _$Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author _build() {
    final _$result = _$v ??
        new _$Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author',
                'G__typename'),
            authorLabel: BuiltValueNullFieldError.checkNotNull(
                authorLabel,
                r'Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author',
                'authorLabel'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId
    extends Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String date;
  @override
  final String title;
  @override
  final String comment;
  @override
  final Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author? author;

  factory _$Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId(
          [void Function(
                  Gget_rdv_et_rappelData_fetchPastsRemindersByPatientIdBuilder)?
              updates]) =>
      (new Gget_rdv_et_rappelData_fetchPastsRemindersByPatientIdBuilder()
            ..update(updates))
          ._build();

  _$Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId._(
      {required this.G__typename,
      required this.id,
      required this.date,
      required this.title,
      required this.comment,
      this.author})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId', 'id');
    BuiltValueNullFieldError.checkNotNull(
        date, r'Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId', 'date');
    BuiltValueNullFieldError.checkNotNull(title,
        r'Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId', 'title');
    BuiltValueNullFieldError.checkNotNull(comment,
        r'Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId', 'comment');
  }

  @override
  Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId rebuild(
          void Function(
                  Gget_rdv_et_rappelData_fetchPastsRemindersByPatientIdBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_rdv_et_rappelData_fetchPastsRemindersByPatientIdBuilder toBuilder() =>
      new Gget_rdv_et_rappelData_fetchPastsRemindersByPatientIdBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId &&
        G__typename == other.G__typename &&
        id == other.id &&
        date == other.date &&
        title == other.title &&
        comment == other.comment &&
        author == other.author;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('date', date)
          ..add('title', title)
          ..add('comment', comment)
          ..add('author', author))
        .toString();
  }
}

class Gget_rdv_et_rappelData_fetchPastsRemindersByPatientIdBuilder
    implements
        Builder<Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId,
            Gget_rdv_et_rappelData_fetchPastsRemindersByPatientIdBuilder> {
  _$Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_authorBuilder? _author;
  Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_authorBuilder
      get author => _$this._author ??=
          new Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_authorBuilder();
  set author(
          Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_authorBuilder?
              author) =>
      _$this._author = author;

  Gget_rdv_et_rappelData_fetchPastsRemindersByPatientIdBuilder() {
    Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId._initializeBuilder(
        this);
  }

  Gget_rdv_et_rappelData_fetchPastsRemindersByPatientIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _date = $v.date;
      _title = $v.title;
      _comment = $v.comment;
      _author = $v.author?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId;
  }

  @override
  void update(
      void Function(
              Gget_rdv_et_rappelData_fetchPastsRemindersByPatientIdBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId build() => _build();

  _$Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId _build() {
    _$Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId _$result;
    try {
      _$result = _$v ??
          new _$Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId', 'id'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date,
                  r'Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId',
                  'date'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title,
                  r'Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId',
                  'title'),
              comment: BuiltValueNullFieldError.checkNotNull(
                  comment,
                  r'Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId',
                  'comment'),
              author: _author?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'author';
        _author?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author
    extends Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author {
  @override
  final String G__typename;
  @override
  final String authorLabel;

  factory _$Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author(
          [void Function(
                  Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_authorBuilder)?
              updates]) =>
      (new Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_authorBuilder()
            ..update(updates))
          ._build();

  _$Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author._(
      {required this.G__typename, required this.authorLabel})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        authorLabel,
        r'Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author',
        'authorLabel');
  }

  @override
  Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author rebuild(
          void Function(
                  Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_authorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_authorBuilder
      toBuilder() =>
          new Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_authorBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author &&
        G__typename == other.G__typename &&
        authorLabel == other.authorLabel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, authorLabel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author')
          ..add('G__typename', G__typename)
          ..add('authorLabel', authorLabel))
        .toString();
  }
}

class Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_authorBuilder
    implements
        Builder<Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author,
            Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_authorBuilder> {
  _$Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _authorLabel;
  String? get authorLabel => _$this._authorLabel;
  set authorLabel(String? authorLabel) => _$this._authorLabel = authorLabel;

  Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_authorBuilder() {
    Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author
        ._initializeBuilder(this);
  }

  Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_authorBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _authorLabel = $v.authorLabel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author;
  }

  @override
  void update(
      void Function(
              Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_authorBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author build() =>
      _build();

  _$Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author _build() {
    final _$result = _$v ??
        new _$Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author',
                'G__typename'),
            authorLabel: BuiltValueNullFieldError.checkNotNull(
                authorLabel,
                r'Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author',
                'authorLabel'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_rdv_et_rappelData_fetchPreventionsByPatientId
    extends Gget_rdv_et_rappelData_fetchPreventionsByPatientId {
  @override
  final String G__typename;
  @override
  final String code;
  @override
  final String type;
  @override
  final String title;
  @override
  final String dateDebutCampagne;
  @override
  final String? dateFinCampagne;
  @override
  final String dateDebutPrevention;
  @override
  final String dateFinPrevention;
  @override
  final _i3.GPreventionTypeEnum statut;
  @override
  final String? executionDate;
  @override
  final String? requirementLevel;

  factory _$Gget_rdv_et_rappelData_fetchPreventionsByPatientId(
          [void Function(
                  Gget_rdv_et_rappelData_fetchPreventionsByPatientIdBuilder)?
              updates]) =>
      (new Gget_rdv_et_rappelData_fetchPreventionsByPatientIdBuilder()
            ..update(updates))
          ._build();

  _$Gget_rdv_et_rappelData_fetchPreventionsByPatientId._(
      {required this.G__typename,
      required this.code,
      required this.type,
      required this.title,
      required this.dateDebutCampagne,
      this.dateFinCampagne,
      required this.dateDebutPrevention,
      required this.dateFinPrevention,
      required this.statut,
      this.executionDate,
      this.requirementLevel})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_rdv_et_rappelData_fetchPreventionsByPatientId', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        code, r'Gget_rdv_et_rappelData_fetchPreventionsByPatientId', 'code');
    BuiltValueNullFieldError.checkNotNull(
        type, r'Gget_rdv_et_rappelData_fetchPreventionsByPatientId', 'type');
    BuiltValueNullFieldError.checkNotNull(
        title, r'Gget_rdv_et_rappelData_fetchPreventionsByPatientId', 'title');
    BuiltValueNullFieldError.checkNotNull(
        dateDebutCampagne,
        r'Gget_rdv_et_rappelData_fetchPreventionsByPatientId',
        'dateDebutCampagne');
    BuiltValueNullFieldError.checkNotNull(
        dateDebutPrevention,
        r'Gget_rdv_et_rappelData_fetchPreventionsByPatientId',
        'dateDebutPrevention');
    BuiltValueNullFieldError.checkNotNull(
        dateFinPrevention,
        r'Gget_rdv_et_rappelData_fetchPreventionsByPatientId',
        'dateFinPrevention');
    BuiltValueNullFieldError.checkNotNull(statut,
        r'Gget_rdv_et_rappelData_fetchPreventionsByPatientId', 'statut');
  }

  @override
  Gget_rdv_et_rappelData_fetchPreventionsByPatientId rebuild(
          void Function(
                  Gget_rdv_et_rappelData_fetchPreventionsByPatientIdBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_rdv_et_rappelData_fetchPreventionsByPatientIdBuilder toBuilder() =>
      new Gget_rdv_et_rappelData_fetchPreventionsByPatientIdBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_rdv_et_rappelData_fetchPreventionsByPatientId &&
        G__typename == other.G__typename &&
        code == other.code &&
        type == other.type &&
        title == other.title &&
        dateDebutCampagne == other.dateDebutCampagne &&
        dateFinCampagne == other.dateFinCampagne &&
        dateDebutPrevention == other.dateDebutPrevention &&
        dateFinPrevention == other.dateFinPrevention &&
        statut == other.statut &&
        executionDate == other.executionDate &&
        requirementLevel == other.requirementLevel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, dateDebutCampagne.hashCode);
    _$hash = $jc(_$hash, dateFinCampagne.hashCode);
    _$hash = $jc(_$hash, dateDebutPrevention.hashCode);
    _$hash = $jc(_$hash, dateFinPrevention.hashCode);
    _$hash = $jc(_$hash, statut.hashCode);
    _$hash = $jc(_$hash, executionDate.hashCode);
    _$hash = $jc(_$hash, requirementLevel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_rdv_et_rappelData_fetchPreventionsByPatientId')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('type', type)
          ..add('title', title)
          ..add('dateDebutCampagne', dateDebutCampagne)
          ..add('dateFinCampagne', dateFinCampagne)
          ..add('dateDebutPrevention', dateDebutPrevention)
          ..add('dateFinPrevention', dateFinPrevention)
          ..add('statut', statut)
          ..add('executionDate', executionDate)
          ..add('requirementLevel', requirementLevel))
        .toString();
  }
}

class Gget_rdv_et_rappelData_fetchPreventionsByPatientIdBuilder
    implements
        Builder<Gget_rdv_et_rappelData_fetchPreventionsByPatientId,
            Gget_rdv_et_rappelData_fetchPreventionsByPatientIdBuilder> {
  _$Gget_rdv_et_rappelData_fetchPreventionsByPatientId? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _dateDebutCampagne;
  String? get dateDebutCampagne => _$this._dateDebutCampagne;
  set dateDebutCampagne(String? dateDebutCampagne) =>
      _$this._dateDebutCampagne = dateDebutCampagne;

  String? _dateFinCampagne;
  String? get dateFinCampagne => _$this._dateFinCampagne;
  set dateFinCampagne(String? dateFinCampagne) =>
      _$this._dateFinCampagne = dateFinCampagne;

  String? _dateDebutPrevention;
  String? get dateDebutPrevention => _$this._dateDebutPrevention;
  set dateDebutPrevention(String? dateDebutPrevention) =>
      _$this._dateDebutPrevention = dateDebutPrevention;

  String? _dateFinPrevention;
  String? get dateFinPrevention => _$this._dateFinPrevention;
  set dateFinPrevention(String? dateFinPrevention) =>
      _$this._dateFinPrevention = dateFinPrevention;

  _i3.GPreventionTypeEnum? _statut;
  _i3.GPreventionTypeEnum? get statut => _$this._statut;
  set statut(_i3.GPreventionTypeEnum? statut) => _$this._statut = statut;

  String? _executionDate;
  String? get executionDate => _$this._executionDate;
  set executionDate(String? executionDate) =>
      _$this._executionDate = executionDate;

  String? _requirementLevel;
  String? get requirementLevel => _$this._requirementLevel;
  set requirementLevel(String? requirementLevel) =>
      _$this._requirementLevel = requirementLevel;

  Gget_rdv_et_rappelData_fetchPreventionsByPatientIdBuilder() {
    Gget_rdv_et_rappelData_fetchPreventionsByPatientId._initializeBuilder(this);
  }

  Gget_rdv_et_rappelData_fetchPreventionsByPatientIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _code = $v.code;
      _type = $v.type;
      _title = $v.title;
      _dateDebutCampagne = $v.dateDebutCampagne;
      _dateFinCampagne = $v.dateFinCampagne;
      _dateDebutPrevention = $v.dateDebutPrevention;
      _dateFinPrevention = $v.dateFinPrevention;
      _statut = $v.statut;
      _executionDate = $v.executionDate;
      _requirementLevel = $v.requirementLevel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_rdv_et_rappelData_fetchPreventionsByPatientId other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_rdv_et_rappelData_fetchPreventionsByPatientId;
  }

  @override
  void update(
      void Function(Gget_rdv_et_rappelData_fetchPreventionsByPatientIdBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_rdv_et_rappelData_fetchPreventionsByPatientId build() => _build();

  _$Gget_rdv_et_rappelData_fetchPreventionsByPatientId _build() {
    final _$result = _$v ??
        new _$Gget_rdv_et_rappelData_fetchPreventionsByPatientId._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'Gget_rdv_et_rappelData_fetchPreventionsByPatientId', 'G__typename'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'Gget_rdv_et_rappelData_fetchPreventionsByPatientId', 'code'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'Gget_rdv_et_rappelData_fetchPreventionsByPatientId', 'type'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'Gget_rdv_et_rappelData_fetchPreventionsByPatientId', 'title'),
            dateDebutCampagne: BuiltValueNullFieldError.checkNotNull(
                dateDebutCampagne,
                r'Gget_rdv_et_rappelData_fetchPreventionsByPatientId',
                'dateDebutCampagne'),
            dateFinCampagne: dateFinCampagne,
            dateDebutPrevention: BuiltValueNullFieldError.checkNotNull(
                dateDebutPrevention,
                r'Gget_rdv_et_rappelData_fetchPreventionsByPatientId',
                'dateDebutPrevention'),
            dateFinPrevention: BuiltValueNullFieldError.checkNotNull(dateFinPrevention, r'Gget_rdv_et_rappelData_fetchPreventionsByPatientId', 'dateFinPrevention'),
            statut: BuiltValueNullFieldError.checkNotNull(statut, r'Gget_rdv_et_rappelData_fetchPreventionsByPatientId', 'statut'),
            executionDate: executionDate,
            requirementLevel: requirementLevel);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
