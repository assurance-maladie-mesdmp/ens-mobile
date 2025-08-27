// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_agenda_rdv.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GrdvData> _$grdvDataSerializer = new _$GrdvDataSerializer();
Serializer<GrdvData_author> _$grdvDataAuthorSerializer =
    new _$GrdvData_authorSerializer();

class _$GrdvDataSerializer implements StructuredSerializer<GrdvData> {
  @override
  final Iterable<Type> types = const [GrdvData, _$GrdvData];
  @override
  final String wireName = 'GrdvData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GrdvData object,
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
          specifiedType: const FullType(_i1.GAppointmentType)),
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
            specifiedType: const FullType(GrdvData_author)));
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
  GrdvData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GrdvDataBuilder();

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
                  specifiedType: const FullType(_i1.GAppointmentType))!
              as _i1.GAppointmentType;
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
                  specifiedType: const FullType(GrdvData_author))!
              as GrdvData_author);
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

class _$GrdvData_authorSerializer
    implements StructuredSerializer<GrdvData_author> {
  @override
  final Iterable<Type> types = const [GrdvData_author, _$GrdvData_author];
  @override
  final String wireName = 'GrdvData_author';

  @override
  Iterable<Object?> serialize(Serializers serializers, GrdvData_author object,
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
          specifiedType: const FullType(_i1.GAgendaAuthorTypeEnum)),
    ];

    return result;
  }

  @override
  GrdvData_author deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GrdvData_authorBuilder();

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
                  specifiedType: const FullType(_i1.GAgendaAuthorTypeEnum))!
              as _i1.GAgendaAuthorTypeEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$GrdvData extends GrdvData {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String patientId;
  @override
  final String? name;
  @override
  final _i1.GAppointmentType type;
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
  final GrdvData_author? author;
  @override
  final String? status;
  @override
  final String? idProfessionnelSante;
  @override
  final String? idEtablissementSante;

  factory _$GrdvData([void Function(GrdvDataBuilder)? updates]) =>
      (new GrdvDataBuilder()..update(updates))._build();

  _$GrdvData._(
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
        G__typename, r'GrdvData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GrdvData', 'id');
    BuiltValueNullFieldError.checkNotNull(patientId, r'GrdvData', 'patientId');
    BuiltValueNullFieldError.checkNotNull(type, r'GrdvData', 'type');
    BuiltValueNullFieldError.checkNotNull(professionalOrEstablishmentName,
        r'GrdvData', 'professionalOrEstablishmentName');
    BuiltValueNullFieldError.checkNotNull(date, r'GrdvData', 'date');
  }

  @override
  GrdvData rebuild(void Function(GrdvDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GrdvDataBuilder toBuilder() => new GrdvDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GrdvData &&
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
    return (newBuiltValueToStringHelper(r'GrdvData')
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

class GrdvDataBuilder implements Builder<GrdvData, GrdvDataBuilder> {
  _$GrdvData? _$v;

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

  _i1.GAppointmentType? _type;
  _i1.GAppointmentType? get type => _$this._type;
  set type(_i1.GAppointmentType? type) => _$this._type = type;

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

  GrdvData_authorBuilder? _author;
  GrdvData_authorBuilder get author =>
      _$this._author ??= new GrdvData_authorBuilder();
  set author(GrdvData_authorBuilder? author) => _$this._author = author;

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

  GrdvDataBuilder() {
    GrdvData._initializeBuilder(this);
  }

  GrdvDataBuilder get _$this {
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
  void replace(GrdvData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GrdvData;
  }

  @override
  void update(void Function(GrdvDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GrdvData build() => _build();

  _$GrdvData _build() {
    _$GrdvData _$result;
    try {
      _$result = _$v ??
          new _$GrdvData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GrdvData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(id, r'GrdvData', 'id'),
              patientId: BuiltValueNullFieldError.checkNotNull(
                  patientId, r'GrdvData', 'patientId'),
              name: name,
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'GrdvData', 'type'),
              professionalOrEstablishmentName:
                  BuiltValueNullFieldError.checkNotNull(
                      professionalOrEstablishmentName,
                      r'GrdvData',
                      'professionalOrEstablishmentName'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'GrdvData', 'date'),
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
            r'GrdvData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GrdvData_author extends GrdvData_author {
  @override
  final String G__typename;
  @override
  final String authorLabel;
  @override
  final _i1.GAgendaAuthorTypeEnum type;

  factory _$GrdvData_author([void Function(GrdvData_authorBuilder)? updates]) =>
      (new GrdvData_authorBuilder()..update(updates))._build();

  _$GrdvData_author._(
      {required this.G__typename,
      required this.authorLabel,
      required this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GrdvData_author', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        authorLabel, r'GrdvData_author', 'authorLabel');
    BuiltValueNullFieldError.checkNotNull(type, r'GrdvData_author', 'type');
  }

  @override
  GrdvData_author rebuild(void Function(GrdvData_authorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GrdvData_authorBuilder toBuilder() =>
      new GrdvData_authorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GrdvData_author &&
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
    return (newBuiltValueToStringHelper(r'GrdvData_author')
          ..add('G__typename', G__typename)
          ..add('authorLabel', authorLabel)
          ..add('type', type))
        .toString();
  }
}

class GrdvData_authorBuilder
    implements Builder<GrdvData_author, GrdvData_authorBuilder> {
  _$GrdvData_author? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _authorLabel;
  String? get authorLabel => _$this._authorLabel;
  set authorLabel(String? authorLabel) => _$this._authorLabel = authorLabel;

  _i1.GAgendaAuthorTypeEnum? _type;
  _i1.GAgendaAuthorTypeEnum? get type => _$this._type;
  set type(_i1.GAgendaAuthorTypeEnum? type) => _$this._type = type;

  GrdvData_authorBuilder() {
    GrdvData_author._initializeBuilder(this);
  }

  GrdvData_authorBuilder get _$this {
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
  void replace(GrdvData_author other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GrdvData_author;
  }

  @override
  void update(void Function(GrdvData_authorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GrdvData_author build() => _build();

  _$GrdvData_author _build() {
    final _$result = _$v ??
        new _$GrdvData_author._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GrdvData_author', 'G__typename'),
            authorLabel: BuiltValueNullFieldError.checkNotNull(
                authorLabel, r'GrdvData_author', 'authorLabel'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'GrdvData_author', 'type'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
