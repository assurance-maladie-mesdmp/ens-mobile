// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_agenda_create_rdv.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gcreate_rdvData> _$gcreateRdvDataSerializer =
    new _$Gcreate_rdvDataSerializer();
Serializer<Gcreate_rdvData_createAppointment>
    _$gcreateRdvDataCreateAppointmentSerializer =
    new _$Gcreate_rdvData_createAppointmentSerializer();
Serializer<Gcreate_rdvData_createAppointment_author>
    _$gcreateRdvDataCreateAppointmentAuthorSerializer =
    new _$Gcreate_rdvData_createAppointment_authorSerializer();

class _$Gcreate_rdvDataSerializer
    implements StructuredSerializer<Gcreate_rdvData> {
  @override
  final Iterable<Type> types = const [Gcreate_rdvData, _$Gcreate_rdvData];
  @override
  final String wireName = 'Gcreate_rdvData';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gcreate_rdvData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'createAppointment',
      serializers.serialize(object.createAppointment,
          specifiedType: const FullType(Gcreate_rdvData_createAppointment)),
    ];

    return result;
  }

  @override
  Gcreate_rdvData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcreate_rdvDataBuilder();

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
        case 'createAppointment':
          result.createAppointment.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gcreate_rdvData_createAppointment))!
              as Gcreate_rdvData_createAppointment);
          break;
      }
    }

    return result.build();
  }
}

class _$Gcreate_rdvData_createAppointmentSerializer
    implements StructuredSerializer<Gcreate_rdvData_createAppointment> {
  @override
  final Iterable<Type> types = const [
    Gcreate_rdvData_createAppointment,
    _$Gcreate_rdvData_createAppointment
  ];
  @override
  final String wireName = 'Gcreate_rdvData_createAppointment';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gcreate_rdvData_createAppointment object,
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
            specifiedType:
                const FullType(Gcreate_rdvData_createAppointment_author)));
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
  Gcreate_rdvData_createAppointment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcreate_rdvData_createAppointmentBuilder();

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
                  specifiedType:
                      const FullType(Gcreate_rdvData_createAppointment_author))!
              as Gcreate_rdvData_createAppointment_author);
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

class _$Gcreate_rdvData_createAppointment_authorSerializer
    implements StructuredSerializer<Gcreate_rdvData_createAppointment_author> {
  @override
  final Iterable<Type> types = const [
    Gcreate_rdvData_createAppointment_author,
    _$Gcreate_rdvData_createAppointment_author
  ];
  @override
  final String wireName = 'Gcreate_rdvData_createAppointment_author';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gcreate_rdvData_createAppointment_author object,
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
  Gcreate_rdvData_createAppointment_author deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcreate_rdvData_createAppointment_authorBuilder();

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

class _$Gcreate_rdvData extends Gcreate_rdvData {
  @override
  final String G__typename;
  @override
  final Gcreate_rdvData_createAppointment createAppointment;

  factory _$Gcreate_rdvData([void Function(Gcreate_rdvDataBuilder)? updates]) =>
      (new Gcreate_rdvDataBuilder()..update(updates))._build();

  _$Gcreate_rdvData._(
      {required this.G__typename, required this.createAppointment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gcreate_rdvData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        createAppointment, r'Gcreate_rdvData', 'createAppointment');
  }

  @override
  Gcreate_rdvData rebuild(void Function(Gcreate_rdvDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_rdvDataBuilder toBuilder() =>
      new Gcreate_rdvDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcreate_rdvData &&
        G__typename == other.G__typename &&
        createAppointment == other.createAppointment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createAppointment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gcreate_rdvData')
          ..add('G__typename', G__typename)
          ..add('createAppointment', createAppointment))
        .toString();
  }
}

class Gcreate_rdvDataBuilder
    implements Builder<Gcreate_rdvData, Gcreate_rdvDataBuilder> {
  _$Gcreate_rdvData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gcreate_rdvData_createAppointmentBuilder? _createAppointment;
  Gcreate_rdvData_createAppointmentBuilder get createAppointment =>
      _$this._createAppointment ??=
          new Gcreate_rdvData_createAppointmentBuilder();
  set createAppointment(
          Gcreate_rdvData_createAppointmentBuilder? createAppointment) =>
      _$this._createAppointment = createAppointment;

  Gcreate_rdvDataBuilder() {
    Gcreate_rdvData._initializeBuilder(this);
  }

  Gcreate_rdvDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createAppointment = $v.createAppointment.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gcreate_rdvData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_rdvData;
  }

  @override
  void update(void Function(Gcreate_rdvDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_rdvData build() => _build();

  _$Gcreate_rdvData _build() {
    _$Gcreate_rdvData _$result;
    try {
      _$result = _$v ??
          new _$Gcreate_rdvData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gcreate_rdvData', 'G__typename'),
              createAppointment: createAppointment.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createAppointment';
        createAppointment.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gcreate_rdvData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gcreate_rdvData_createAppointment
    extends Gcreate_rdvData_createAppointment {
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
  final Gcreate_rdvData_createAppointment_author? author;
  @override
  final String? status;
  @override
  final String? idProfessionnelSante;
  @override
  final String? idEtablissementSante;

  factory _$Gcreate_rdvData_createAppointment(
          [void Function(Gcreate_rdvData_createAppointmentBuilder)? updates]) =>
      (new Gcreate_rdvData_createAppointmentBuilder()..update(updates))
          ._build();

  _$Gcreate_rdvData_createAppointment._(
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
        G__typename, r'Gcreate_rdvData_createAppointment', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gcreate_rdvData_createAppointment', 'id');
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gcreate_rdvData_createAppointment', 'patientId');
    BuiltValueNullFieldError.checkNotNull(
        type, r'Gcreate_rdvData_createAppointment', 'type');
    BuiltValueNullFieldError.checkNotNull(
        professionalOrEstablishmentName,
        r'Gcreate_rdvData_createAppointment',
        'professionalOrEstablishmentName');
    BuiltValueNullFieldError.checkNotNull(
        date, r'Gcreate_rdvData_createAppointment', 'date');
  }

  @override
  Gcreate_rdvData_createAppointment rebuild(
          void Function(Gcreate_rdvData_createAppointmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_rdvData_createAppointmentBuilder toBuilder() =>
      new Gcreate_rdvData_createAppointmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcreate_rdvData_createAppointment &&
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
    return (newBuiltValueToStringHelper(r'Gcreate_rdvData_createAppointment')
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

class Gcreate_rdvData_createAppointmentBuilder
    implements
        Builder<Gcreate_rdvData_createAppointment,
            Gcreate_rdvData_createAppointmentBuilder> {
  _$Gcreate_rdvData_createAppointment? _$v;

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

  Gcreate_rdvData_createAppointment_authorBuilder? _author;
  Gcreate_rdvData_createAppointment_authorBuilder get author =>
      _$this._author ??= new Gcreate_rdvData_createAppointment_authorBuilder();
  set author(Gcreate_rdvData_createAppointment_authorBuilder? author) =>
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

  Gcreate_rdvData_createAppointmentBuilder() {
    Gcreate_rdvData_createAppointment._initializeBuilder(this);
  }

  Gcreate_rdvData_createAppointmentBuilder get _$this {
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
  void replace(Gcreate_rdvData_createAppointment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_rdvData_createAppointment;
  }

  @override
  void update(
      void Function(Gcreate_rdvData_createAppointmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_rdvData_createAppointment build() => _build();

  _$Gcreate_rdvData_createAppointment _build() {
    _$Gcreate_rdvData_createAppointment _$result;
    try {
      _$result = _$v ??
          new _$Gcreate_rdvData_createAppointment._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gcreate_rdvData_createAppointment', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gcreate_rdvData_createAppointment', 'id'),
              patientId: BuiltValueNullFieldError.checkNotNull(
                  patientId, r'Gcreate_rdvData_createAppointment', 'patientId'),
              name: name,
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'Gcreate_rdvData_createAppointment', 'type'),
              professionalOrEstablishmentName:
                  BuiltValueNullFieldError.checkNotNull(
                      professionalOrEstablishmentName,
                      r'Gcreate_rdvData_createAppointment',
                      'professionalOrEstablishmentName'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'Gcreate_rdvData_createAppointment', 'date'),
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
            r'Gcreate_rdvData_createAppointment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gcreate_rdvData_createAppointment_author
    extends Gcreate_rdvData_createAppointment_author {
  @override
  final String G__typename;
  @override
  final String authorLabel;
  @override
  final _i3.GAgendaAuthorTypeEnum type;

  factory _$Gcreate_rdvData_createAppointment_author(
          [void Function(Gcreate_rdvData_createAppointment_authorBuilder)?
              updates]) =>
      (new Gcreate_rdvData_createAppointment_authorBuilder()..update(updates))
          ._build();

  _$Gcreate_rdvData_createAppointment_author._(
      {required this.G__typename,
      required this.authorLabel,
      required this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gcreate_rdvData_createAppointment_author', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(authorLabel,
        r'Gcreate_rdvData_createAppointment_author', 'authorLabel');
    BuiltValueNullFieldError.checkNotNull(
        type, r'Gcreate_rdvData_createAppointment_author', 'type');
  }

  @override
  Gcreate_rdvData_createAppointment_author rebuild(
          void Function(Gcreate_rdvData_createAppointment_authorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_rdvData_createAppointment_authorBuilder toBuilder() =>
      new Gcreate_rdvData_createAppointment_authorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcreate_rdvData_createAppointment_author &&
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
            r'Gcreate_rdvData_createAppointment_author')
          ..add('G__typename', G__typename)
          ..add('authorLabel', authorLabel)
          ..add('type', type))
        .toString();
  }
}

class Gcreate_rdvData_createAppointment_authorBuilder
    implements
        Builder<Gcreate_rdvData_createAppointment_author,
            Gcreate_rdvData_createAppointment_authorBuilder> {
  _$Gcreate_rdvData_createAppointment_author? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _authorLabel;
  String? get authorLabel => _$this._authorLabel;
  set authorLabel(String? authorLabel) => _$this._authorLabel = authorLabel;

  _i3.GAgendaAuthorTypeEnum? _type;
  _i3.GAgendaAuthorTypeEnum? get type => _$this._type;
  set type(_i3.GAgendaAuthorTypeEnum? type) => _$this._type = type;

  Gcreate_rdvData_createAppointment_authorBuilder() {
    Gcreate_rdvData_createAppointment_author._initializeBuilder(this);
  }

  Gcreate_rdvData_createAppointment_authorBuilder get _$this {
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
  void replace(Gcreate_rdvData_createAppointment_author other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_rdvData_createAppointment_author;
  }

  @override
  void update(
      void Function(Gcreate_rdvData_createAppointment_authorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_rdvData_createAppointment_author build() => _build();

  _$Gcreate_rdvData_createAppointment_author _build() {
    final _$result = _$v ??
        new _$Gcreate_rdvData_createAppointment_author._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gcreate_rdvData_createAppointment_author', 'G__typename'),
            authorLabel: BuiltValueNullFieldError.checkNotNull(authorLabel,
                r'Gcreate_rdvData_createAppointment_author', 'authorLabel'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'Gcreate_rdvData_createAppointment_author', 'type'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
