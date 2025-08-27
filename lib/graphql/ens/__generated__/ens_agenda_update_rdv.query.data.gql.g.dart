// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_agenda_update_rdv.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_rdvData> _$gupdateRdvDataSerializer =
    new _$Gupdate_rdvDataSerializer();
Serializer<Gupdate_rdvData_updateAppointmentByIdAndPatientId>
    _$gupdateRdvDataUpdateAppointmentByIdAndPatientIdSerializer =
    new _$Gupdate_rdvData_updateAppointmentByIdAndPatientIdSerializer();
Serializer<Gupdate_rdvData_updateAppointmentByIdAndPatientId_author>
    _$gupdateRdvDataUpdateAppointmentByIdAndPatientIdAuthorSerializer =
    new _$Gupdate_rdvData_updateAppointmentByIdAndPatientId_authorSerializer();

class _$Gupdate_rdvDataSerializer
    implements StructuredSerializer<Gupdate_rdvData> {
  @override
  final Iterable<Type> types = const [Gupdate_rdvData, _$Gupdate_rdvData];
  @override
  final String wireName = 'Gupdate_rdvData';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gupdate_rdvData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'updateAppointmentByIdAndPatientId',
      serializers.serialize(object.updateAppointmentByIdAndPatientId,
          specifiedType: const FullType(
              Gupdate_rdvData_updateAppointmentByIdAndPatientId)),
    ];

    return result;
  }

  @override
  Gupdate_rdvData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_rdvDataBuilder();

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
        case 'updateAppointmentByIdAndPatientId':
          result.updateAppointmentByIdAndPatientId.replace(
              serializers.deserialize(value,
                      specifiedType: const FullType(
                          Gupdate_rdvData_updateAppointmentByIdAndPatientId))!
                  as Gupdate_rdvData_updateAppointmentByIdAndPatientId);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_rdvData_updateAppointmentByIdAndPatientIdSerializer
    implements
        StructuredSerializer<
            Gupdate_rdvData_updateAppointmentByIdAndPatientId> {
  @override
  final Iterable<Type> types = const [
    Gupdate_rdvData_updateAppointmentByIdAndPatientId,
    _$Gupdate_rdvData_updateAppointmentByIdAndPatientId
  ];
  @override
  final String wireName = 'Gupdate_rdvData_updateAppointmentByIdAndPatientId';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gupdate_rdvData_updateAppointmentByIdAndPatientId object,
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
                Gupdate_rdvData_updateAppointmentByIdAndPatientId_author)));
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
  Gupdate_rdvData_updateAppointmentByIdAndPatientId deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gupdate_rdvData_updateAppointmentByIdAndPatientIdBuilder();

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
                      Gupdate_rdvData_updateAppointmentByIdAndPatientId_author))!
              as Gupdate_rdvData_updateAppointmentByIdAndPatientId_author);
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

class _$Gupdate_rdvData_updateAppointmentByIdAndPatientId_authorSerializer
    implements
        StructuredSerializer<
            Gupdate_rdvData_updateAppointmentByIdAndPatientId_author> {
  @override
  final Iterable<Type> types = const [
    Gupdate_rdvData_updateAppointmentByIdAndPatientId_author,
    _$Gupdate_rdvData_updateAppointmentByIdAndPatientId_author
  ];
  @override
  final String wireName =
      'Gupdate_rdvData_updateAppointmentByIdAndPatientId_author';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gupdate_rdvData_updateAppointmentByIdAndPatientId_author object,
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
  Gupdate_rdvData_updateAppointmentByIdAndPatientId_author deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gupdate_rdvData_updateAppointmentByIdAndPatientId_authorBuilder();

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

class _$Gupdate_rdvData extends Gupdate_rdvData {
  @override
  final String G__typename;
  @override
  final Gupdate_rdvData_updateAppointmentByIdAndPatientId
      updateAppointmentByIdAndPatientId;

  factory _$Gupdate_rdvData([void Function(Gupdate_rdvDataBuilder)? updates]) =>
      (new Gupdate_rdvDataBuilder()..update(updates))._build();

  _$Gupdate_rdvData._(
      {required this.G__typename,
      required this.updateAppointmentByIdAndPatientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_rdvData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(updateAppointmentByIdAndPatientId,
        r'Gupdate_rdvData', 'updateAppointmentByIdAndPatientId');
  }

  @override
  Gupdate_rdvData rebuild(void Function(Gupdate_rdvDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_rdvDataBuilder toBuilder() =>
      new Gupdate_rdvDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_rdvData &&
        G__typename == other.G__typename &&
        updateAppointmentByIdAndPatientId ==
            other.updateAppointmentByIdAndPatientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, updateAppointmentByIdAndPatientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_rdvData')
          ..add('G__typename', G__typename)
          ..add('updateAppointmentByIdAndPatientId',
              updateAppointmentByIdAndPatientId))
        .toString();
  }
}

class Gupdate_rdvDataBuilder
    implements Builder<Gupdate_rdvData, Gupdate_rdvDataBuilder> {
  _$Gupdate_rdvData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gupdate_rdvData_updateAppointmentByIdAndPatientIdBuilder?
      _updateAppointmentByIdAndPatientId;
  Gupdate_rdvData_updateAppointmentByIdAndPatientIdBuilder
      get updateAppointmentByIdAndPatientId =>
          _$this._updateAppointmentByIdAndPatientId ??=
              new Gupdate_rdvData_updateAppointmentByIdAndPatientIdBuilder();
  set updateAppointmentByIdAndPatientId(
          Gupdate_rdvData_updateAppointmentByIdAndPatientIdBuilder?
              updateAppointmentByIdAndPatientId) =>
      _$this._updateAppointmentByIdAndPatientId =
          updateAppointmentByIdAndPatientId;

  Gupdate_rdvDataBuilder() {
    Gupdate_rdvData._initializeBuilder(this);
  }

  Gupdate_rdvDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateAppointmentByIdAndPatientId =
          $v.updateAppointmentByIdAndPatientId.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_rdvData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_rdvData;
  }

  @override
  void update(void Function(Gupdate_rdvDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_rdvData build() => _build();

  _$Gupdate_rdvData _build() {
    _$Gupdate_rdvData _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_rdvData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gupdate_rdvData', 'G__typename'),
              updateAppointmentByIdAndPatientId:
                  updateAppointmentByIdAndPatientId.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateAppointmentByIdAndPatientId';
        updateAppointmentByIdAndPatientId.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_rdvData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_rdvData_updateAppointmentByIdAndPatientId
    extends Gupdate_rdvData_updateAppointmentByIdAndPatientId {
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
  final Gupdate_rdvData_updateAppointmentByIdAndPatientId_author? author;
  @override
  final String? status;
  @override
  final String? idProfessionnelSante;
  @override
  final String? idEtablissementSante;

  factory _$Gupdate_rdvData_updateAppointmentByIdAndPatientId(
          [void Function(
                  Gupdate_rdvData_updateAppointmentByIdAndPatientIdBuilder)?
              updates]) =>
      (new Gupdate_rdvData_updateAppointmentByIdAndPatientIdBuilder()
            ..update(updates))
          ._build();

  _$Gupdate_rdvData_updateAppointmentByIdAndPatientId._(
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
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gupdate_rdvData_updateAppointmentByIdAndPatientId', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gupdate_rdvData_updateAppointmentByIdAndPatientId', 'id');
    BuiltValueNullFieldError.checkNotNull(patientId,
        r'Gupdate_rdvData_updateAppointmentByIdAndPatientId', 'patientId');
    BuiltValueNullFieldError.checkNotNull(
        type, r'Gupdate_rdvData_updateAppointmentByIdAndPatientId', 'type');
    BuiltValueNullFieldError.checkNotNull(
        professionalOrEstablishmentName,
        r'Gupdate_rdvData_updateAppointmentByIdAndPatientId',
        'professionalOrEstablishmentName');
    BuiltValueNullFieldError.checkNotNull(
        date, r'Gupdate_rdvData_updateAppointmentByIdAndPatientId', 'date');
  }

  @override
  Gupdate_rdvData_updateAppointmentByIdAndPatientId rebuild(
          void Function(
                  Gupdate_rdvData_updateAppointmentByIdAndPatientIdBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_rdvData_updateAppointmentByIdAndPatientIdBuilder toBuilder() =>
      new Gupdate_rdvData_updateAppointmentByIdAndPatientIdBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_rdvData_updateAppointmentByIdAndPatientId &&
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
            r'Gupdate_rdvData_updateAppointmentByIdAndPatientId')
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

class Gupdate_rdvData_updateAppointmentByIdAndPatientIdBuilder
    implements
        Builder<Gupdate_rdvData_updateAppointmentByIdAndPatientId,
            Gupdate_rdvData_updateAppointmentByIdAndPatientIdBuilder> {
  _$Gupdate_rdvData_updateAppointmentByIdAndPatientId? _$v;

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

  Gupdate_rdvData_updateAppointmentByIdAndPatientId_authorBuilder? _author;
  Gupdate_rdvData_updateAppointmentByIdAndPatientId_authorBuilder get author =>
      _$this._author ??=
          new Gupdate_rdvData_updateAppointmentByIdAndPatientId_authorBuilder();
  set author(
          Gupdate_rdvData_updateAppointmentByIdAndPatientId_authorBuilder?
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

  Gupdate_rdvData_updateAppointmentByIdAndPatientIdBuilder() {
    Gupdate_rdvData_updateAppointmentByIdAndPatientId._initializeBuilder(this);
  }

  Gupdate_rdvData_updateAppointmentByIdAndPatientIdBuilder get _$this {
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
  void replace(Gupdate_rdvData_updateAppointmentByIdAndPatientId other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_rdvData_updateAppointmentByIdAndPatientId;
  }

  @override
  void update(
      void Function(Gupdate_rdvData_updateAppointmentByIdAndPatientIdBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_rdvData_updateAppointmentByIdAndPatientId build() => _build();

  _$Gupdate_rdvData_updateAppointmentByIdAndPatientId _build() {
    _$Gupdate_rdvData_updateAppointmentByIdAndPatientId _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_rdvData_updateAppointmentByIdAndPatientId._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gupdate_rdvData_updateAppointmentByIdAndPatientId',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gupdate_rdvData_updateAppointmentByIdAndPatientId', 'id'),
              patientId: BuiltValueNullFieldError.checkNotNull(
                  patientId, r'Gupdate_rdvData_updateAppointmentByIdAndPatientId', 'patientId'),
              name: name,
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'Gupdate_rdvData_updateAppointmentByIdAndPatientId', 'type'),
              professionalOrEstablishmentName: BuiltValueNullFieldError.checkNotNull(
                  professionalOrEstablishmentName,
                  r'Gupdate_rdvData_updateAppointmentByIdAndPatientId',
                  'professionalOrEstablishmentName'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'Gupdate_rdvData_updateAppointmentByIdAndPatientId', 'date'),
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
            r'Gupdate_rdvData_updateAppointmentByIdAndPatientId',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_rdvData_updateAppointmentByIdAndPatientId_author
    extends Gupdate_rdvData_updateAppointmentByIdAndPatientId_author {
  @override
  final String G__typename;
  @override
  final String authorLabel;
  @override
  final _i3.GAgendaAuthorTypeEnum type;

  factory _$Gupdate_rdvData_updateAppointmentByIdAndPatientId_author(
          [void Function(
                  Gupdate_rdvData_updateAppointmentByIdAndPatientId_authorBuilder)?
              updates]) =>
      (new Gupdate_rdvData_updateAppointmentByIdAndPatientId_authorBuilder()
            ..update(updates))
          ._build();

  _$Gupdate_rdvData_updateAppointmentByIdAndPatientId_author._(
      {required this.G__typename,
      required this.authorLabel,
      required this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gupdate_rdvData_updateAppointmentByIdAndPatientId_author',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        authorLabel,
        r'Gupdate_rdvData_updateAppointmentByIdAndPatientId_author',
        'authorLabel');
    BuiltValueNullFieldError.checkNotNull(type,
        r'Gupdate_rdvData_updateAppointmentByIdAndPatientId_author', 'type');
  }

  @override
  Gupdate_rdvData_updateAppointmentByIdAndPatientId_author rebuild(
          void Function(
                  Gupdate_rdvData_updateAppointmentByIdAndPatientId_authorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_rdvData_updateAppointmentByIdAndPatientId_authorBuilder toBuilder() =>
      new Gupdate_rdvData_updateAppointmentByIdAndPatientId_authorBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_rdvData_updateAppointmentByIdAndPatientId_author &&
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
            r'Gupdate_rdvData_updateAppointmentByIdAndPatientId_author')
          ..add('G__typename', G__typename)
          ..add('authorLabel', authorLabel)
          ..add('type', type))
        .toString();
  }
}

class Gupdate_rdvData_updateAppointmentByIdAndPatientId_authorBuilder
    implements
        Builder<Gupdate_rdvData_updateAppointmentByIdAndPatientId_author,
            Gupdate_rdvData_updateAppointmentByIdAndPatientId_authorBuilder> {
  _$Gupdate_rdvData_updateAppointmentByIdAndPatientId_author? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _authorLabel;
  String? get authorLabel => _$this._authorLabel;
  set authorLabel(String? authorLabel) => _$this._authorLabel = authorLabel;

  _i3.GAgendaAuthorTypeEnum? _type;
  _i3.GAgendaAuthorTypeEnum? get type => _$this._type;
  set type(_i3.GAgendaAuthorTypeEnum? type) => _$this._type = type;

  Gupdate_rdvData_updateAppointmentByIdAndPatientId_authorBuilder() {
    Gupdate_rdvData_updateAppointmentByIdAndPatientId_author._initializeBuilder(
        this);
  }

  Gupdate_rdvData_updateAppointmentByIdAndPatientId_authorBuilder get _$this {
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
  void replace(Gupdate_rdvData_updateAppointmentByIdAndPatientId_author other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_rdvData_updateAppointmentByIdAndPatientId_author;
  }

  @override
  void update(
      void Function(
              Gupdate_rdvData_updateAppointmentByIdAndPatientId_authorBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_rdvData_updateAppointmentByIdAndPatientId_author build() => _build();

  _$Gupdate_rdvData_updateAppointmentByIdAndPatientId_author _build() {
    final _$result = _$v ??
        new _$Gupdate_rdvData_updateAppointmentByIdAndPatientId_author._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gupdate_rdvData_updateAppointmentByIdAndPatientId_author',
                'G__typename'),
            authorLabel: BuiltValueNullFieldError.checkNotNull(
                authorLabel,
                r'Gupdate_rdvData_updateAppointmentByIdAndPatientId_author',
                'authorLabel'),
            type: BuiltValueNullFieldError.checkNotNull(
                type,
                r'Gupdate_rdvData_updateAppointmentByIdAndPatientId_author',
                'type'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
