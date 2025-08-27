// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_agenda_get_rendez_vous_by_id_and_patient_id.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_rendez_vous_by_id_and_patient_idData>
    _$ggetRendezVousByIdAndPatientIdDataSerializer =
    new _$Gget_rendez_vous_by_id_and_patient_idDataSerializer();
Serializer<
        Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId>
    _$ggetRendezVousByIdAndPatientIdDataFetchAppointmentByIdAndPatientIdSerializer =
    new _$Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientIdSerializer();
Serializer<
        Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author>
    _$ggetRendezVousByIdAndPatientIdDataFetchAppointmentByIdAndPatientIdAuthorSerializer =
    new _$Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_authorSerializer();

class _$Gget_rendez_vous_by_id_and_patient_idDataSerializer
    implements StructuredSerializer<Gget_rendez_vous_by_id_and_patient_idData> {
  @override
  final Iterable<Type> types = const [
    Gget_rendez_vous_by_id_and_patient_idData,
    _$Gget_rendez_vous_by_id_and_patient_idData
  ];
  @override
  final String wireName = 'Gget_rendez_vous_by_id_and_patient_idData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_rendez_vous_by_id_and_patient_idData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'fetchAppointmentByIdAndPatientId',
      serializers.serialize(object.fetchAppointmentByIdAndPatientId,
          specifiedType: const FullType(
              Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId)),
    ];

    return result;
  }

  @override
  Gget_rendez_vous_by_id_and_patient_idData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_rendez_vous_by_id_and_patient_idDataBuilder();

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
        case 'fetchAppointmentByIdAndPatientId':
          result.fetchAppointmentByIdAndPatientId.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId))!
              as Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientIdSerializer
    implements
        StructuredSerializer<
            Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId> {
  @override
  final Iterable<Type> types = const [
    Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId,
    _$Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId
  ];
  @override
  final String wireName =
      'Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId
          object,
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
                Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author)));
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
  Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientIdBuilder();

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
                      Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author))!
              as Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author);
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

class _$Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_authorSerializer
    implements
        StructuredSerializer<
            Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author> {
  @override
  final Iterable<Type> types = const [
    Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author,
    _$Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author
  ];
  @override
  final String wireName =
      'Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author
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
  Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_authorBuilder();

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

class _$Gget_rendez_vous_by_id_and_patient_idData
    extends Gget_rendez_vous_by_id_and_patient_idData {
  @override
  final String G__typename;
  @override
  final Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId
      fetchAppointmentByIdAndPatientId;

  factory _$Gget_rendez_vous_by_id_and_patient_idData(
          [void Function(Gget_rendez_vous_by_id_and_patient_idDataBuilder)?
              updates]) =>
      (new Gget_rendez_vous_by_id_and_patient_idDataBuilder()..update(updates))
          ._build();

  _$Gget_rendez_vous_by_id_and_patient_idData._(
      {required this.G__typename,
      required this.fetchAppointmentByIdAndPatientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_rendez_vous_by_id_and_patient_idData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        fetchAppointmentByIdAndPatientId,
        r'Gget_rendez_vous_by_id_and_patient_idData',
        'fetchAppointmentByIdAndPatientId');
  }

  @override
  Gget_rendez_vous_by_id_and_patient_idData rebuild(
          void Function(Gget_rendez_vous_by_id_and_patient_idDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_rendez_vous_by_id_and_patient_idDataBuilder toBuilder() =>
      new Gget_rendez_vous_by_id_and_patient_idDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_rendez_vous_by_id_and_patient_idData &&
        G__typename == other.G__typename &&
        fetchAppointmentByIdAndPatientId ==
            other.fetchAppointmentByIdAndPatientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, fetchAppointmentByIdAndPatientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_rendez_vous_by_id_and_patient_idData')
          ..add('G__typename', G__typename)
          ..add('fetchAppointmentByIdAndPatientId',
              fetchAppointmentByIdAndPatientId))
        .toString();
  }
}

class Gget_rendez_vous_by_id_and_patient_idDataBuilder
    implements
        Builder<Gget_rendez_vous_by_id_and_patient_idData,
            Gget_rendez_vous_by_id_and_patient_idDataBuilder> {
  _$Gget_rendez_vous_by_id_and_patient_idData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientIdBuilder?
      _fetchAppointmentByIdAndPatientId;
  Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientIdBuilder
      get fetchAppointmentByIdAndPatientId => _$this
              ._fetchAppointmentByIdAndPatientId ??=
          new Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientIdBuilder();
  set fetchAppointmentByIdAndPatientId(
          Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientIdBuilder?
              fetchAppointmentByIdAndPatientId) =>
      _$this._fetchAppointmentByIdAndPatientId =
          fetchAppointmentByIdAndPatientId;

  Gget_rendez_vous_by_id_and_patient_idDataBuilder() {
    Gget_rendez_vous_by_id_and_patient_idData._initializeBuilder(this);
  }

  Gget_rendez_vous_by_id_and_patient_idDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _fetchAppointmentByIdAndPatientId =
          $v.fetchAppointmentByIdAndPatientId.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_rendez_vous_by_id_and_patient_idData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_rendez_vous_by_id_and_patient_idData;
  }

  @override
  void update(
      void Function(Gget_rendez_vous_by_id_and_patient_idDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_rendez_vous_by_id_and_patient_idData build() => _build();

  _$Gget_rendez_vous_by_id_and_patient_idData _build() {
    _$Gget_rendez_vous_by_id_and_patient_idData _$result;
    try {
      _$result = _$v ??
          new _$Gget_rendez_vous_by_id_and_patient_idData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_rendez_vous_by_id_and_patient_idData', 'G__typename'),
              fetchAppointmentByIdAndPatientId:
                  fetchAppointmentByIdAndPatientId.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fetchAppointmentByIdAndPatientId';
        fetchAppointmentByIdAndPatientId.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_rendez_vous_by_id_and_patient_idData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId
    extends Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId {
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
  final Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author?
      author;
  @override
  final String? status;
  @override
  final String? idProfessionnelSante;
  @override
  final String? idEtablissementSante;

  factory _$Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId(
          [void Function(
                  Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientIdBuilder)?
              updates]) =>
      (new Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientIdBuilder()
            ..update(updates))
          ._build();

  _$Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId._(
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
        r'Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        patientId,
        r'Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId',
        'patientId');
    BuiltValueNullFieldError.checkNotNull(
        type,
        r'Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId',
        'type');
    BuiltValueNullFieldError.checkNotNull(
        professionalOrEstablishmentName,
        r'Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId',
        'professionalOrEstablishmentName');
    BuiltValueNullFieldError.checkNotNull(
        date,
        r'Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId',
        'date');
  }

  @override
  Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId
      rebuild(
              void Function(
                      Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientIdBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientIdBuilder
      toBuilder() =>
          new Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientIdBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId &&
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
            r'Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId')
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

class Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientIdBuilder
    implements
        Builder<
            Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId,
            Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientIdBuilder> {
  _$Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId?
      _$v;

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

  Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_authorBuilder?
      _author;
  Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_authorBuilder
      get author => _$this._author ??=
          new Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_authorBuilder();
  set author(
          Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_authorBuilder?
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

  Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientIdBuilder() {
    Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId
        ._initializeBuilder(this);
  }

  Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientIdBuilder
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
      Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId;
  }

  @override
  void update(
      void Function(
              Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientIdBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId
      build() => _build();

  _$Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId
      _build() {
    _$Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId', 'id'),
              patientId: BuiltValueNullFieldError.checkNotNull(
                  patientId, r'Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId', 'patientId'),
              name: name,
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId', 'type'),
              professionalOrEstablishmentName: BuiltValueNullFieldError.checkNotNull(
                  professionalOrEstablishmentName,
                  r'Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId',
                  'professionalOrEstablishmentName'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId', 'date'),
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
            r'Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author
    extends Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author {
  @override
  final String G__typename;
  @override
  final String authorLabel;
  @override
  final _i3.GAgendaAuthorTypeEnum type;

  factory _$Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author(
          [void Function(
                  Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_authorBuilder)?
              updates]) =>
      (new Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_authorBuilder()
            ..update(updates))
          ._build();

  _$Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author._(
      {required this.G__typename,
      required this.authorLabel,
      required this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        authorLabel,
        r'Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author',
        'authorLabel');
    BuiltValueNullFieldError.checkNotNull(
        type,
        r'Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author',
        'type');
  }

  @override
  Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author
      rebuild(
              void Function(
                      Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_authorBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_authorBuilder
      toBuilder() =>
          new Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_authorBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author &&
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
            r'Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author')
          ..add('G__typename', G__typename)
          ..add('authorLabel', authorLabel)
          ..add('type', type))
        .toString();
  }
}

class Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_authorBuilder
    implements
        Builder<
            Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author,
            Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_authorBuilder> {
  _$Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _authorLabel;
  String? get authorLabel => _$this._authorLabel;
  set authorLabel(String? authorLabel) => _$this._authorLabel = authorLabel;

  _i3.GAgendaAuthorTypeEnum? _type;
  _i3.GAgendaAuthorTypeEnum? get type => _$this._type;
  set type(_i3.GAgendaAuthorTypeEnum? type) => _$this._type = type;

  Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_authorBuilder() {
    Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author
        ._initializeBuilder(this);
  }

  Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_authorBuilder
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
      Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author;
  }

  @override
  void update(
      void Function(
              Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_authorBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author
      build() => _build();

  _$Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author
      _build() {
    final _$result = _$v ??
        new _$Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author',
                'G__typename'),
            authorLabel: BuiltValueNullFieldError.checkNotNull(
                authorLabel,
                r'Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author',
                'authorLabel'),
            type: BuiltValueNullFieldError.checkNotNull(
                type,
                r'Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author',
                'type'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
