// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_es_get_es.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_etablissements_de_santeData>
    _$ggetEtablissementsDeSanteDataSerializer =
    new _$Gget_etablissements_de_santeDataSerializer();
Serializer<Gget_etablissements_de_santeData_getHealthStructures>
    _$ggetEtablissementsDeSanteDataGetHealthStructuresSerializer =
    new _$Gget_etablissements_de_santeData_getHealthStructuresSerializer();
Serializer<
        Gget_etablissements_de_santeData_getHealthStructures_healthStructures>
    _$ggetEtablissementsDeSanteDataGetHealthStructuresHealthStructuresSerializer =
    new _$Gget_etablissements_de_santeData_getHealthStructures_healthStructuresSerializer();
Serializer<
        Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses>
    _$ggetEtablissementsDeSanteDataGetHealthStructuresHealthStructuresAddressesSerializer =
    new _$Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addressesSerializer();

class _$Gget_etablissements_de_santeDataSerializer
    implements StructuredSerializer<Gget_etablissements_de_santeData> {
  @override
  final Iterable<Type> types = const [
    Gget_etablissements_de_santeData,
    _$Gget_etablissements_de_santeData
  ];
  @override
  final String wireName = 'Gget_etablissements_de_santeData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_etablissements_de_santeData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getHealthStructures',
      serializers.serialize(object.getHealthStructures,
          specifiedType: const FullType(
              Gget_etablissements_de_santeData_getHealthStructures)),
    ];

    return result;
  }

  @override
  Gget_etablissements_de_santeData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_etablissements_de_santeDataBuilder();

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
        case 'getHealthStructures':
          result.getHealthStructures.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_etablissements_de_santeData_getHealthStructures))!
              as Gget_etablissements_de_santeData_getHealthStructures);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_etablissements_de_santeData_getHealthStructuresSerializer
    implements
        StructuredSerializer<
            Gget_etablissements_de_santeData_getHealthStructures> {
  @override
  final Iterable<Type> types = const [
    Gget_etablissements_de_santeData_getHealthStructures,
    _$Gget_etablissements_de_santeData_getHealthStructures
  ];
  @override
  final String wireName =
      'Gget_etablissements_de_santeData_getHealthStructures';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_etablissements_de_santeData_getHealthStructures object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'healthStructures',
      serializers.serialize(object.healthStructures,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_etablissements_de_santeData_getHealthStructures_healthStructures)
          ])),
    ];

    return result;
  }

  @override
  Gget_etablissements_de_santeData_getHealthStructures deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_etablissements_de_santeData_getHealthStructuresBuilder();

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
        case 'healthStructures':
          result.healthStructures.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_etablissements_de_santeData_getHealthStructures_healthStructures)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_etablissements_de_santeData_getHealthStructures_healthStructuresSerializer
    implements
        StructuredSerializer<
            Gget_etablissements_de_santeData_getHealthStructures_healthStructures> {
  @override
  final Iterable<Type> types = const [
    Gget_etablissements_de_santeData_getHealthStructures_healthStructures,
    _$Gget_etablissements_de_santeData_getHealthStructures_healthStructures
  ];
  @override
  final String wireName =
      'Gget_etablissements_de_santeData_getHealthStructures_healthStructures';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_etablissements_de_santeData_getHealthStructures_healthStructures
          object,
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
                Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses)));
    }
    return result;
  }

  @override
  Gget_etablissements_de_santeData_getHealthStructures_healthStructures
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_etablissements_de_santeData_getHealthStructures_healthStructuresBuilder();

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
                      Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses))!
              as Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses);
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

class _$Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addressesSerializer
    implements
        StructuredSerializer<
            Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses> {
  @override
  final Iterable<Type> types = const [
    Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses,
    _$Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses
  ];
  @override
  final String wireName =
      'Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses
          object,
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
  Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addressesBuilder();

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

class _$Gget_etablissements_de_santeData
    extends Gget_etablissements_de_santeData {
  @override
  final String G__typename;
  @override
  final Gget_etablissements_de_santeData_getHealthStructures
      getHealthStructures;

  factory _$Gget_etablissements_de_santeData(
          [void Function(Gget_etablissements_de_santeDataBuilder)? updates]) =>
      (new Gget_etablissements_de_santeDataBuilder()..update(updates))._build();

  _$Gget_etablissements_de_santeData._(
      {required this.G__typename, required this.getHealthStructures})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_etablissements_de_santeData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(getHealthStructures,
        r'Gget_etablissements_de_santeData', 'getHealthStructures');
  }

  @override
  Gget_etablissements_de_santeData rebuild(
          void Function(Gget_etablissements_de_santeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_etablissements_de_santeDataBuilder toBuilder() =>
      new Gget_etablissements_de_santeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_etablissements_de_santeData &&
        G__typename == other.G__typename &&
        getHealthStructures == other.getHealthStructures;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getHealthStructures.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_etablissements_de_santeData')
          ..add('G__typename', G__typename)
          ..add('getHealthStructures', getHealthStructures))
        .toString();
  }
}

class Gget_etablissements_de_santeDataBuilder
    implements
        Builder<Gget_etablissements_de_santeData,
            Gget_etablissements_de_santeDataBuilder> {
  _$Gget_etablissements_de_santeData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_etablissements_de_santeData_getHealthStructuresBuilder?
      _getHealthStructures;
  Gget_etablissements_de_santeData_getHealthStructuresBuilder
      get getHealthStructures => _$this._getHealthStructures ??=
          new Gget_etablissements_de_santeData_getHealthStructuresBuilder();
  set getHealthStructures(
          Gget_etablissements_de_santeData_getHealthStructuresBuilder?
              getHealthStructures) =>
      _$this._getHealthStructures = getHealthStructures;

  Gget_etablissements_de_santeDataBuilder() {
    Gget_etablissements_de_santeData._initializeBuilder(this);
  }

  Gget_etablissements_de_santeDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getHealthStructures = $v.getHealthStructures.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_etablissements_de_santeData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_etablissements_de_santeData;
  }

  @override
  void update(void Function(Gget_etablissements_de_santeDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_etablissements_de_santeData build() => _build();

  _$Gget_etablissements_de_santeData _build() {
    _$Gget_etablissements_de_santeData _$result;
    try {
      _$result = _$v ??
          new _$Gget_etablissements_de_santeData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_etablissements_de_santeData', 'G__typename'),
              getHealthStructures: getHealthStructures.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getHealthStructures';
        getHealthStructures.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_etablissements_de_santeData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_etablissements_de_santeData_getHealthStructures
    extends Gget_etablissements_de_santeData_getHealthStructures {
  @override
  final String G__typename;
  @override
  final BuiltList<
          Gget_etablissements_de_santeData_getHealthStructures_healthStructures>
      healthStructures;

  factory _$Gget_etablissements_de_santeData_getHealthStructures(
          [void Function(
                  Gget_etablissements_de_santeData_getHealthStructuresBuilder)?
              updates]) =>
      (new Gget_etablissements_de_santeData_getHealthStructuresBuilder()
            ..update(updates))
          ._build();

  _$Gget_etablissements_de_santeData_getHealthStructures._(
      {required this.G__typename, required this.healthStructures})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_etablissements_de_santeData_getHealthStructures', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        healthStructures,
        r'Gget_etablissements_de_santeData_getHealthStructures',
        'healthStructures');
  }

  @override
  Gget_etablissements_de_santeData_getHealthStructures rebuild(
          void Function(
                  Gget_etablissements_de_santeData_getHealthStructuresBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_etablissements_de_santeData_getHealthStructuresBuilder toBuilder() =>
      new Gget_etablissements_de_santeData_getHealthStructuresBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_etablissements_de_santeData_getHealthStructures &&
        G__typename == other.G__typename &&
        healthStructures == other.healthStructures;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, healthStructures.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_etablissements_de_santeData_getHealthStructures')
          ..add('G__typename', G__typename)
          ..add('healthStructures', healthStructures))
        .toString();
  }
}

class Gget_etablissements_de_santeData_getHealthStructuresBuilder
    implements
        Builder<Gget_etablissements_de_santeData_getHealthStructures,
            Gget_etablissements_de_santeData_getHealthStructuresBuilder> {
  _$Gget_etablissements_de_santeData_getHealthStructures? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<
          Gget_etablissements_de_santeData_getHealthStructures_healthStructures>?
      _healthStructures;
  ListBuilder<
          Gget_etablissements_de_santeData_getHealthStructures_healthStructures>
      get healthStructures => _$this._healthStructures ??= new ListBuilder<
          Gget_etablissements_de_santeData_getHealthStructures_healthStructures>();
  set healthStructures(
          ListBuilder<
                  Gget_etablissements_de_santeData_getHealthStructures_healthStructures>?
              healthStructures) =>
      _$this._healthStructures = healthStructures;

  Gget_etablissements_de_santeData_getHealthStructuresBuilder() {
    Gget_etablissements_de_santeData_getHealthStructures._initializeBuilder(
        this);
  }

  Gget_etablissements_de_santeData_getHealthStructuresBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _healthStructures = $v.healthStructures.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_etablissements_de_santeData_getHealthStructures other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_etablissements_de_santeData_getHealthStructures;
  }

  @override
  void update(
      void Function(
              Gget_etablissements_de_santeData_getHealthStructuresBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_etablissements_de_santeData_getHealthStructures build() => _build();

  _$Gget_etablissements_de_santeData_getHealthStructures _build() {
    _$Gget_etablissements_de_santeData_getHealthStructures _$result;
    try {
      _$result = _$v ??
          new _$Gget_etablissements_de_santeData_getHealthStructures._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_etablissements_de_santeData_getHealthStructures',
                  'G__typename'),
              healthStructures: healthStructures.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'healthStructures';
        healthStructures.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_etablissements_de_santeData_getHealthStructures',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_etablissements_de_santeData_getHealthStructures_healthStructures
    extends Gget_etablissements_de_santeData_getHealthStructures_healthStructures {
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
  final Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses?
      addresses;
  @override
  final bool active;

  factory _$Gget_etablissements_de_santeData_getHealthStructures_healthStructures(
          [void Function(
                  Gget_etablissements_de_santeData_getHealthStructures_healthStructuresBuilder)?
              updates]) =>
      (new Gget_etablissements_de_santeData_getHealthStructures_healthStructuresBuilder()
            ..update(updates))
          ._build();

  _$Gget_etablissements_de_santeData_getHealthStructures_healthStructures._(
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
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_etablissements_de_santeData_getHealthStructures_healthStructures',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gget_etablissements_de_santeData_getHealthStructures_healthStructures',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'Gget_etablissements_de_santeData_getHealthStructures_healthStructures',
        'name');
    BuiltValueNullFieldError.checkNotNull(
        isContactable,
        r'Gget_etablissements_de_santeData_getHealthStructures_healthStructures',
        'isContactable');
    BuiltValueNullFieldError.checkNotNull(
        active,
        r'Gget_etablissements_de_santeData_getHealthStructures_healthStructures',
        'active');
  }

  @override
  Gget_etablissements_de_santeData_getHealthStructures_healthStructures rebuild(
          void Function(
                  Gget_etablissements_de_santeData_getHealthStructures_healthStructuresBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_etablissements_de_santeData_getHealthStructures_healthStructuresBuilder
      toBuilder() =>
          new Gget_etablissements_de_santeData_getHealthStructures_healthStructuresBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_etablissements_de_santeData_getHealthStructures_healthStructures &&
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
            r'Gget_etablissements_de_santeData_getHealthStructures_healthStructures')
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

class Gget_etablissements_de_santeData_getHealthStructures_healthStructuresBuilder
    implements
        Builder<
            Gget_etablissements_de_santeData_getHealthStructures_healthStructures,
            Gget_etablissements_de_santeData_getHealthStructures_healthStructuresBuilder> {
  _$Gget_etablissements_de_santeData_getHealthStructures_healthStructures? _$v;

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

  Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addressesBuilder?
      _addresses;
  Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addressesBuilder
      get addresses => _$this._addresses ??=
          new Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addressesBuilder();
  set addresses(
          Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addressesBuilder?
              addresses) =>
      _$this._addresses = addresses;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  Gget_etablissements_de_santeData_getHealthStructures_healthStructuresBuilder() {
    Gget_etablissements_de_santeData_getHealthStructures_healthStructures
        ._initializeBuilder(this);
  }

  Gget_etablissements_de_santeData_getHealthStructures_healthStructuresBuilder
      get _$this {
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
  void replace(
      Gget_etablissements_de_santeData_getHealthStructures_healthStructures
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_etablissements_de_santeData_getHealthStructures_healthStructures;
  }

  @override
  void update(
      void Function(
              Gget_etablissements_de_santeData_getHealthStructures_healthStructuresBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_etablissements_de_santeData_getHealthStructures_healthStructures
      build() => _build();

  _$Gget_etablissements_de_santeData_getHealthStructures_healthStructures
      _build() {
    _$Gget_etablissements_de_santeData_getHealthStructures_healthStructures
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_etablissements_de_santeData_getHealthStructures_healthStructures._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_etablissements_de_santeData_getHealthStructures_healthStructures',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gget_etablissements_de_santeData_getHealthStructures_healthStructures', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'Gget_etablissements_de_santeData_getHealthStructures_healthStructures', 'name'),
              alias: alias,
              activity: activity,
              organizationId: organizationId,
              isContactable: BuiltValueNullFieldError.checkNotNull(
                  isContactable,
                  r'Gget_etablissements_de_santeData_getHealthStructures_healthStructures',
                  'isContactable'),
              mail: mail,
              addresses: _addresses?.build(),
              active: BuiltValueNullFieldError.checkNotNull(
                  active,
                  r'Gget_etablissements_de_santeData_getHealthStructures_healthStructures',
                  'active'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addresses';
        _addresses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_etablissements_de_santeData_getHealthStructures_healthStructures',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses
    extends Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses {
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

  factory _$Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses(
          [void Function(
                  Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addressesBuilder)?
              updates]) =>
      (new Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addressesBuilder()
            ..update(updates))
          ._build();

  _$Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses._(
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
        r'Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses',
        'G__typename');
  }

  @override
  Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses
      rebuild(
              void Function(
                      Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addressesBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addressesBuilder
      toBuilder() =>
          new Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addressesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses &&
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
            r'Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses')
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

class Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addressesBuilder
    implements
        Builder<
            Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses,
            Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addressesBuilder> {
  _$Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses?
      _$v;

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

  Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addressesBuilder() {
    Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses
        ._initializeBuilder(this);
  }

  Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addressesBuilder
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
      Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses;
  }

  @override
  void update(
      void Function(
              Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addressesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses
      build() => _build();

  _$Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses
      _build() {
    final _$result = _$v ??
        new _$Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses',
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
