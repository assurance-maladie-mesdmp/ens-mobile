// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_es_get_es_details.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_es_detailsData> _$ggetEsDetailsDataSerializer =
    new _$Gget_es_detailsDataSerializer();
Serializer<Gget_es_detailsData_getHealthStructureReferential>
    _$ggetEsDetailsDataGetHealthStructureReferentialSerializer =
    new _$Gget_es_detailsData_getHealthStructureReferentialSerializer();
Serializer<Gget_es_detailsData_getHealthStructureReferential_addresses>
    _$ggetEsDetailsDataGetHealthStructureReferentialAddressesSerializer =
    new _$Gget_es_detailsData_getHealthStructureReferential_addressesSerializer();

class _$Gget_es_detailsDataSerializer
    implements StructuredSerializer<Gget_es_detailsData> {
  @override
  final Iterable<Type> types = const [
    Gget_es_detailsData,
    _$Gget_es_detailsData
  ];
  @override
  final String wireName = 'Gget_es_detailsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_es_detailsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getHealthStructureReferential',
      serializers.serialize(object.getHealthStructureReferential,
          specifiedType: const FullType(
              Gget_es_detailsData_getHealthStructureReferential)),
    ];

    return result;
  }

  @override
  Gget_es_detailsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_es_detailsDataBuilder();

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
        case 'getHealthStructureReferential':
          result.getHealthStructureReferential.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Gget_es_detailsData_getHealthStructureReferential))!
              as Gget_es_detailsData_getHealthStructureReferential);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_es_detailsData_getHealthStructureReferentialSerializer
    implements
        StructuredSerializer<
            Gget_es_detailsData_getHealthStructureReferential> {
  @override
  final Iterable<Type> types = const [
    Gget_es_detailsData_getHealthStructureReferential,
    _$Gget_es_detailsData_getHealthStructureReferential
  ];
  @override
  final String wireName = 'Gget_es_detailsData_getHealthStructureReferential';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_es_detailsData_getHealthStructureReferential object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'isContactable',
      serializers.serialize(object.isContactable,
          specifiedType: const FullType(bool)),
      'active',
      serializers.serialize(object.active, specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.alias;
    if (value != null) {
      result
        ..add('alias')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.activity;
    if (value != null) {
      result
        ..add('activity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.organizationId;
    if (value != null) {
      result
        ..add('organizationId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mail;
    if (value != null) {
      result
        ..add('mail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.addresses;
    if (value != null) {
      result
        ..add('addresses')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_es_detailsData_getHealthStructureReferential_addresses)));
    }
    return result;
  }

  @override
  Gget_es_detailsData_getHealthStructureReferential deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_es_detailsData_getHealthStructureReferentialBuilder();

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
        case 'alias':
          result.alias = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'activity':
          result.activity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'organizationId':
          result.organizationId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isContactable':
          result.isContactable = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'mail':
          result.mail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'addresses':
          result.addresses.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_es_detailsData_getHealthStructureReferential_addresses))!
              as Gget_es_detailsData_getHealthStructureReferential_addresses);
          break;
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_es_detailsData_getHealthStructureReferential_addressesSerializer
    implements
        StructuredSerializer<
            Gget_es_detailsData_getHealthStructureReferential_addresses> {
  @override
  final Iterable<Type> types = const [
    Gget_es_detailsData_getHealthStructureReferential_addresses,
    _$Gget_es_detailsData_getHealthStructureReferential_addresses
  ];
  @override
  final String wireName =
      'Gget_es_detailsData_getHealthStructureReferential_addresses';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_es_detailsData_getHealthStructureReferential_addresses object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.adresseName;
    if (value != null) {
      result
        ..add('adresseName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cityZipCode;
    if (value != null) {
      result
        ..add('cityZipCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.roadNumber;
    if (value != null) {
      result
        ..add('roadNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.labelRoadType;
    if (value != null) {
      result
        ..add('labelRoadType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.road;
    if (value != null) {
      result
        ..add('road')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.commune;
    if (value != null) {
      result
        ..add('commune')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numeroTelephone;
    if (value != null) {
      result
        ..add('numeroTelephone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_es_detailsData_getHealthStructureReferential_addresses deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_es_detailsData_getHealthStructureReferential_addressesBuilder();

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
        case 'adresseName':
          result.adresseName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cityZipCode':
          result.cityZipCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'roadNumber':
          result.roadNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'labelRoadType':
          result.labelRoadType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'road':
          result.road = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'commune':
          result.commune = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'numeroTelephone':
          result.numeroTelephone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_es_detailsData extends Gget_es_detailsData {
  @override
  final String G__typename;
  @override
  final Gget_es_detailsData_getHealthStructureReferential
      getHealthStructureReferential;

  factory _$Gget_es_detailsData(
          [void Function(Gget_es_detailsDataBuilder)? updates]) =>
      (new Gget_es_detailsDataBuilder()..update(updates))._build();

  _$Gget_es_detailsData._(
      {required this.G__typename, required this.getHealthStructureReferential})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_es_detailsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(getHealthStructureReferential,
        r'Gget_es_detailsData', 'getHealthStructureReferential');
  }

  @override
  Gget_es_detailsData rebuild(
          void Function(Gget_es_detailsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_es_detailsDataBuilder toBuilder() =>
      new Gget_es_detailsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_es_detailsData &&
        G__typename == other.G__typename &&
        getHealthStructureReferential == other.getHealthStructureReferential;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getHealthStructureReferential.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_es_detailsData')
          ..add('G__typename', G__typename)
          ..add('getHealthStructureReferential', getHealthStructureReferential))
        .toString();
  }
}

class Gget_es_detailsDataBuilder
    implements Builder<Gget_es_detailsData, Gget_es_detailsDataBuilder> {
  _$Gget_es_detailsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_es_detailsData_getHealthStructureReferentialBuilder?
      _getHealthStructureReferential;
  Gget_es_detailsData_getHealthStructureReferentialBuilder
      get getHealthStructureReferential =>
          _$this._getHealthStructureReferential ??=
              new Gget_es_detailsData_getHealthStructureReferentialBuilder();
  set getHealthStructureReferential(
          Gget_es_detailsData_getHealthStructureReferentialBuilder?
              getHealthStructureReferential) =>
      _$this._getHealthStructureReferential = getHealthStructureReferential;

  Gget_es_detailsDataBuilder() {
    Gget_es_detailsData._initializeBuilder(this);
  }

  Gget_es_detailsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getHealthStructureReferential =
          $v.getHealthStructureReferential.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_es_detailsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_es_detailsData;
  }

  @override
  void update(void Function(Gget_es_detailsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_es_detailsData build() => _build();

  _$Gget_es_detailsData _build() {
    _$Gget_es_detailsData _$result;
    try {
      _$result = _$v ??
          new _$Gget_es_detailsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_es_detailsData', 'G__typename'),
              getHealthStructureReferential:
                  getHealthStructureReferential.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getHealthStructureReferential';
        getHealthStructureReferential.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_es_detailsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_es_detailsData_getHealthStructureReferential
    extends Gget_es_detailsData_getHealthStructureReferential {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String? alias;
  @override
  final String? activity;
  @override
  final String? organizationId;
  @override
  final bool isContactable;
  @override
  final String? mail;
  @override
  final Gget_es_detailsData_getHealthStructureReferential_addresses? addresses;
  @override
  final bool active;

  factory _$Gget_es_detailsData_getHealthStructureReferential(
          [void Function(
                  Gget_es_detailsData_getHealthStructureReferentialBuilder)?
              updates]) =>
      (new Gget_es_detailsData_getHealthStructureReferentialBuilder()
            ..update(updates))
          ._build();

  _$Gget_es_detailsData_getHealthStructureReferential._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.alias,
      this.activity,
      this.organizationId,
      required this.isContactable,
      this.mail,
      this.addresses,
      required this.active})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_es_detailsData_getHealthStructureReferential', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gget_es_detailsData_getHealthStructureReferential', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'Gget_es_detailsData_getHealthStructureReferential', 'name');
    BuiltValueNullFieldError.checkNotNull(isContactable,
        r'Gget_es_detailsData_getHealthStructureReferential', 'isContactable');
    BuiltValueNullFieldError.checkNotNull(
        active, r'Gget_es_detailsData_getHealthStructureReferential', 'active');
  }

  @override
  Gget_es_detailsData_getHealthStructureReferential rebuild(
          void Function(
                  Gget_es_detailsData_getHealthStructureReferentialBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_es_detailsData_getHealthStructureReferentialBuilder toBuilder() =>
      new Gget_es_detailsData_getHealthStructureReferentialBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_es_detailsData_getHealthStructureReferential &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        alias == other.alias &&
        activity == other.activity &&
        organizationId == other.organizationId &&
        isContactable == other.isContactable &&
        mail == other.mail &&
        addresses == other.addresses &&
        active == other.active;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, alias.hashCode);
    _$hash = $jc(_$hash, activity.hashCode);
    _$hash = $jc(_$hash, organizationId.hashCode);
    _$hash = $jc(_$hash, isContactable.hashCode);
    _$hash = $jc(_$hash, mail.hashCode);
    _$hash = $jc(_$hash, addresses.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_es_detailsData_getHealthStructureReferential')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('alias', alias)
          ..add('activity', activity)
          ..add('organizationId', organizationId)
          ..add('isContactable', isContactable)
          ..add('mail', mail)
          ..add('addresses', addresses)
          ..add('active', active))
        .toString();
  }
}

class Gget_es_detailsData_getHealthStructureReferentialBuilder
    implements
        Builder<Gget_es_detailsData_getHealthStructureReferential,
            Gget_es_detailsData_getHealthStructureReferentialBuilder> {
  _$Gget_es_detailsData_getHealthStructureReferential? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _alias;
  String? get alias => _$this._alias;
  set alias(String? alias) => _$this._alias = alias;

  String? _activity;
  String? get activity => _$this._activity;
  set activity(String? activity) => _$this._activity = activity;

  String? _organizationId;
  String? get organizationId => _$this._organizationId;
  set organizationId(String? organizationId) =>
      _$this._organizationId = organizationId;

  bool? _isContactable;
  bool? get isContactable => _$this._isContactable;
  set isContactable(bool? isContactable) =>
      _$this._isContactable = isContactable;

  String? _mail;
  String? get mail => _$this._mail;
  set mail(String? mail) => _$this._mail = mail;

  Gget_es_detailsData_getHealthStructureReferential_addressesBuilder?
      _addresses;
  Gget_es_detailsData_getHealthStructureReferential_addressesBuilder
      get addresses => _$this._addresses ??=
          new Gget_es_detailsData_getHealthStructureReferential_addressesBuilder();
  set addresses(
          Gget_es_detailsData_getHealthStructureReferential_addressesBuilder?
              addresses) =>
      _$this._addresses = addresses;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  Gget_es_detailsData_getHealthStructureReferentialBuilder() {
    Gget_es_detailsData_getHealthStructureReferential._initializeBuilder(this);
  }

  Gget_es_detailsData_getHealthStructureReferentialBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _alias = $v.alias;
      _activity = $v.activity;
      _organizationId = $v.organizationId;
      _isContactable = $v.isContactable;
      _mail = $v.mail;
      _addresses = $v.addresses?.toBuilder();
      _active = $v.active;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_es_detailsData_getHealthStructureReferential other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_es_detailsData_getHealthStructureReferential;
  }

  @override
  void update(
      void Function(Gget_es_detailsData_getHealthStructureReferentialBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_es_detailsData_getHealthStructureReferential build() => _build();

  _$Gget_es_detailsData_getHealthStructureReferential _build() {
    _$Gget_es_detailsData_getHealthStructureReferential _$result;
    try {
      _$result = _$v ??
          new _$Gget_es_detailsData_getHealthStructureReferential._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_es_detailsData_getHealthStructureReferential',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gget_es_detailsData_getHealthStructureReferential', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(name,
                  r'Gget_es_detailsData_getHealthStructureReferential', 'name'),
              alias: alias,
              activity: activity,
              organizationId: organizationId,
              isContactable: BuiltValueNullFieldError.checkNotNull(
                  isContactable,
                  r'Gget_es_detailsData_getHealthStructureReferential',
                  'isContactable'),
              mail: mail,
              addresses: _addresses?.build(),
              active: BuiltValueNullFieldError.checkNotNull(
                  active,
                  r'Gget_es_detailsData_getHealthStructureReferential',
                  'active'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addresses';
        _addresses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_es_detailsData_getHealthStructureReferential',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_es_detailsData_getHealthStructureReferential_addresses
    extends Gget_es_detailsData_getHealthStructureReferential_addresses {
  @override
  final String G__typename;
  @override
  final String? adresseName;
  @override
  final String? cityZipCode;
  @override
  final String? roadNumber;
  @override
  final String? labelRoadType;
  @override
  final String? road;
  @override
  final String? commune;
  @override
  final String? numeroTelephone;

  factory _$Gget_es_detailsData_getHealthStructureReferential_addresses(
          [void Function(
                  Gget_es_detailsData_getHealthStructureReferential_addressesBuilder)?
              updates]) =>
      (new Gget_es_detailsData_getHealthStructureReferential_addressesBuilder()
            ..update(updates))
          ._build();

  _$Gget_es_detailsData_getHealthStructureReferential_addresses._(
      {required this.G__typename,
      this.adresseName,
      this.cityZipCode,
      this.roadNumber,
      this.labelRoadType,
      this.road,
      this.commune,
      this.numeroTelephone})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_es_detailsData_getHealthStructureReferential_addresses',
        'G__typename');
  }

  @override
  Gget_es_detailsData_getHealthStructureReferential_addresses rebuild(
          void Function(
                  Gget_es_detailsData_getHealthStructureReferential_addressesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_es_detailsData_getHealthStructureReferential_addressesBuilder
      toBuilder() =>
          new Gget_es_detailsData_getHealthStructureReferential_addressesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_es_detailsData_getHealthStructureReferential_addresses &&
        G__typename == other.G__typename &&
        adresseName == other.adresseName &&
        cityZipCode == other.cityZipCode &&
        roadNumber == other.roadNumber &&
        labelRoadType == other.labelRoadType &&
        road == other.road &&
        commune == other.commune &&
        numeroTelephone == other.numeroTelephone;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, adresseName.hashCode);
    _$hash = $jc(_$hash, cityZipCode.hashCode);
    _$hash = $jc(_$hash, roadNumber.hashCode);
    _$hash = $jc(_$hash, labelRoadType.hashCode);
    _$hash = $jc(_$hash, road.hashCode);
    _$hash = $jc(_$hash, commune.hashCode);
    _$hash = $jc(_$hash, numeroTelephone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_es_detailsData_getHealthStructureReferential_addresses')
          ..add('G__typename', G__typename)
          ..add('adresseName', adresseName)
          ..add('cityZipCode', cityZipCode)
          ..add('roadNumber', roadNumber)
          ..add('labelRoadType', labelRoadType)
          ..add('road', road)
          ..add('commune', commune)
          ..add('numeroTelephone', numeroTelephone))
        .toString();
  }
}

class Gget_es_detailsData_getHealthStructureReferential_addressesBuilder
    implements
        Builder<Gget_es_detailsData_getHealthStructureReferential_addresses,
            Gget_es_detailsData_getHealthStructureReferential_addressesBuilder> {
  _$Gget_es_detailsData_getHealthStructureReferential_addresses? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _adresseName;
  String? get adresseName => _$this._adresseName;
  set adresseName(String? adresseName) => _$this._adresseName = adresseName;

  String? _cityZipCode;
  String? get cityZipCode => _$this._cityZipCode;
  set cityZipCode(String? cityZipCode) => _$this._cityZipCode = cityZipCode;

  String? _roadNumber;
  String? get roadNumber => _$this._roadNumber;
  set roadNumber(String? roadNumber) => _$this._roadNumber = roadNumber;

  String? _labelRoadType;
  String? get labelRoadType => _$this._labelRoadType;
  set labelRoadType(String? labelRoadType) =>
      _$this._labelRoadType = labelRoadType;

  String? _road;
  String? get road => _$this._road;
  set road(String? road) => _$this._road = road;

  String? _commune;
  String? get commune => _$this._commune;
  set commune(String? commune) => _$this._commune = commune;

  String? _numeroTelephone;
  String? get numeroTelephone => _$this._numeroTelephone;
  set numeroTelephone(String? numeroTelephone) =>
      _$this._numeroTelephone = numeroTelephone;

  Gget_es_detailsData_getHealthStructureReferential_addressesBuilder() {
    Gget_es_detailsData_getHealthStructureReferential_addresses
        ._initializeBuilder(this);
  }

  Gget_es_detailsData_getHealthStructureReferential_addressesBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _adresseName = $v.adresseName;
      _cityZipCode = $v.cityZipCode;
      _roadNumber = $v.roadNumber;
      _labelRoadType = $v.labelRoadType;
      _road = $v.road;
      _commune = $v.commune;
      _numeroTelephone = $v.numeroTelephone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_es_detailsData_getHealthStructureReferential_addresses other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$Gget_es_detailsData_getHealthStructureReferential_addresses;
  }

  @override
  void update(
      void Function(
              Gget_es_detailsData_getHealthStructureReferential_addressesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_es_detailsData_getHealthStructureReferential_addresses build() =>
      _build();

  _$Gget_es_detailsData_getHealthStructureReferential_addresses _build() {
    final _$result = _$v ??
        new _$Gget_es_detailsData_getHealthStructureReferential_addresses._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_es_detailsData_getHealthStructureReferential_addresses',
                'G__typename'),
            adresseName: adresseName,
            cityZipCode: cityZipCode,
            roadNumber: roadNumber,
            labelRoadType: labelRoadType,
            road: road,
            commune: commune,
            numeroTelephone: numeroTelephone);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
