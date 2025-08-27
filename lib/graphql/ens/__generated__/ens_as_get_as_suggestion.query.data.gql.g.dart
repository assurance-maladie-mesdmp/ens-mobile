// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_as_get_as_suggestion.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_as_suggestionsData> _$ggetAsSuggestionsDataSerializer =
    new _$Gget_as_suggestionsDataSerializer();
Serializer<Gget_as_suggestionsData_getHealthActorsSuggestions>
    _$ggetAsSuggestionsDataGetHealthActorsSuggestionsSerializer =
    new _$Gget_as_suggestionsData_getHealthActorsSuggestionsSerializer();
Serializer<
        Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions>
    _$ggetAsSuggestionsDataGetHealthActorsSuggestionsHealthActorsSuggestionsSerializer =
    new _$Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestionsSerializer();

class _$Gget_as_suggestionsDataSerializer
    implements StructuredSerializer<Gget_as_suggestionsData> {
  @override
  final Iterable<Type> types = const [
    Gget_as_suggestionsData,
    _$Gget_as_suggestionsData
  ];
  @override
  final String wireName = 'Gget_as_suggestionsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_as_suggestionsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getHealthActorsSuggestions',
      serializers.serialize(object.getHealthActorsSuggestions,
          specifiedType: const FullType(
              Gget_as_suggestionsData_getHealthActorsSuggestions)),
    ];

    return result;
  }

  @override
  Gget_as_suggestionsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_as_suggestionsDataBuilder();

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
        case 'getHealthActorsSuggestions':
          result.getHealthActorsSuggestions.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Gget_as_suggestionsData_getHealthActorsSuggestions))!
              as Gget_as_suggestionsData_getHealthActorsSuggestions);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_as_suggestionsData_getHealthActorsSuggestionsSerializer
    implements
        StructuredSerializer<
            Gget_as_suggestionsData_getHealthActorsSuggestions> {
  @override
  final Iterable<Type> types = const [
    Gget_as_suggestionsData_getHealthActorsSuggestions,
    _$Gget_as_suggestionsData_getHealthActorsSuggestions
  ];
  @override
  final String wireName = 'Gget_as_suggestionsData_getHealthActorsSuggestions';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_as_suggestionsData_getHealthActorsSuggestions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'healthActorsSuggestions',
      serializers.serialize(object.healthActorsSuggestions,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions)
          ])),
    ];

    return result;
  }

  @override
  Gget_as_suggestionsData_getHealthActorsSuggestions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_as_suggestionsData_getHealthActorsSuggestionsBuilder();

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
        case 'healthActorsSuggestions':
          result.healthActorsSuggestions.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestionsSerializer
    implements
        StructuredSerializer<
            Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions> {
  @override
  final Iterable<Type> types = const [
    Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions,
    _$Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions
  ];
  @override
  final String wireName =
      'Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'nationalId',
      serializers.serialize(object.nationalId,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
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
    value = object.profession;
    if (value != null) {
      result
        ..add('profession')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestionsBuilder();

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
        case 'nationalId':
          result.nationalId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'profession':
          result.profession = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_as_suggestionsData extends Gget_as_suggestionsData {
  @override
  final String G__typename;
  @override
  final Gget_as_suggestionsData_getHealthActorsSuggestions
      getHealthActorsSuggestions;

  factory _$Gget_as_suggestionsData(
          [void Function(Gget_as_suggestionsDataBuilder)? updates]) =>
      (new Gget_as_suggestionsDataBuilder()..update(updates))._build();

  _$Gget_as_suggestionsData._(
      {required this.G__typename, required this.getHealthActorsSuggestions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_as_suggestionsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(getHealthActorsSuggestions,
        r'Gget_as_suggestionsData', 'getHealthActorsSuggestions');
  }

  @override
  Gget_as_suggestionsData rebuild(
          void Function(Gget_as_suggestionsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_as_suggestionsDataBuilder toBuilder() =>
      new Gget_as_suggestionsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_as_suggestionsData &&
        G__typename == other.G__typename &&
        getHealthActorsSuggestions == other.getHealthActorsSuggestions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getHealthActorsSuggestions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_as_suggestionsData')
          ..add('G__typename', G__typename)
          ..add('getHealthActorsSuggestions', getHealthActorsSuggestions))
        .toString();
  }
}

class Gget_as_suggestionsDataBuilder
    implements
        Builder<Gget_as_suggestionsData, Gget_as_suggestionsDataBuilder> {
  _$Gget_as_suggestionsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_as_suggestionsData_getHealthActorsSuggestionsBuilder?
      _getHealthActorsSuggestions;
  Gget_as_suggestionsData_getHealthActorsSuggestionsBuilder
      get getHealthActorsSuggestions => _$this._getHealthActorsSuggestions ??=
          new Gget_as_suggestionsData_getHealthActorsSuggestionsBuilder();
  set getHealthActorsSuggestions(
          Gget_as_suggestionsData_getHealthActorsSuggestionsBuilder?
              getHealthActorsSuggestions) =>
      _$this._getHealthActorsSuggestions = getHealthActorsSuggestions;

  Gget_as_suggestionsDataBuilder() {
    Gget_as_suggestionsData._initializeBuilder(this);
  }

  Gget_as_suggestionsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getHealthActorsSuggestions = $v.getHealthActorsSuggestions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_as_suggestionsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_as_suggestionsData;
  }

  @override
  void update(void Function(Gget_as_suggestionsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_as_suggestionsData build() => _build();

  _$Gget_as_suggestionsData _build() {
    _$Gget_as_suggestionsData _$result;
    try {
      _$result = _$v ??
          new _$Gget_as_suggestionsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_as_suggestionsData', 'G__typename'),
              getHealthActorsSuggestions: getHealthActorsSuggestions.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getHealthActorsSuggestions';
        getHealthActorsSuggestions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_as_suggestionsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_as_suggestionsData_getHealthActorsSuggestions
    extends Gget_as_suggestionsData_getHealthActorsSuggestions {
  @override
  final String G__typename;
  @override
  final BuiltList<
          Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions>
      healthActorsSuggestions;

  factory _$Gget_as_suggestionsData_getHealthActorsSuggestions(
          [void Function(
                  Gget_as_suggestionsData_getHealthActorsSuggestionsBuilder)?
              updates]) =>
      (new Gget_as_suggestionsData_getHealthActorsSuggestionsBuilder()
            ..update(updates))
          ._build();

  _$Gget_as_suggestionsData_getHealthActorsSuggestions._(
      {required this.G__typename, required this.healthActorsSuggestions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_as_suggestionsData_getHealthActorsSuggestions', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        healthActorsSuggestions,
        r'Gget_as_suggestionsData_getHealthActorsSuggestions',
        'healthActorsSuggestions');
  }

  @override
  Gget_as_suggestionsData_getHealthActorsSuggestions rebuild(
          void Function(
                  Gget_as_suggestionsData_getHealthActorsSuggestionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_as_suggestionsData_getHealthActorsSuggestionsBuilder toBuilder() =>
      new Gget_as_suggestionsData_getHealthActorsSuggestionsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_as_suggestionsData_getHealthActorsSuggestions &&
        G__typename == other.G__typename &&
        healthActorsSuggestions == other.healthActorsSuggestions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, healthActorsSuggestions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_as_suggestionsData_getHealthActorsSuggestions')
          ..add('G__typename', G__typename)
          ..add('healthActorsSuggestions', healthActorsSuggestions))
        .toString();
  }
}

class Gget_as_suggestionsData_getHealthActorsSuggestionsBuilder
    implements
        Builder<Gget_as_suggestionsData_getHealthActorsSuggestions,
            Gget_as_suggestionsData_getHealthActorsSuggestionsBuilder> {
  _$Gget_as_suggestionsData_getHealthActorsSuggestions? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<
          Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions>?
      _healthActorsSuggestions;
  ListBuilder<
          Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions>
      get healthActorsSuggestions =>
          _$this._healthActorsSuggestions ??= new ListBuilder<
              Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions>();
  set healthActorsSuggestions(
          ListBuilder<
                  Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions>?
              healthActorsSuggestions) =>
      _$this._healthActorsSuggestions = healthActorsSuggestions;

  Gget_as_suggestionsData_getHealthActorsSuggestionsBuilder() {
    Gget_as_suggestionsData_getHealthActorsSuggestions._initializeBuilder(this);
  }

  Gget_as_suggestionsData_getHealthActorsSuggestionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _healthActorsSuggestions = $v.healthActorsSuggestions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_as_suggestionsData_getHealthActorsSuggestions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_as_suggestionsData_getHealthActorsSuggestions;
  }

  @override
  void update(
      void Function(Gget_as_suggestionsData_getHealthActorsSuggestionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_as_suggestionsData_getHealthActorsSuggestions build() => _build();

  _$Gget_as_suggestionsData_getHealthActorsSuggestions _build() {
    _$Gget_as_suggestionsData_getHealthActorsSuggestions _$result;
    try {
      _$result = _$v ??
          new _$Gget_as_suggestionsData_getHealthActorsSuggestions._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_as_suggestionsData_getHealthActorsSuggestions',
                  'G__typename'),
              healthActorsSuggestions: healthActorsSuggestions.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'healthActorsSuggestions';
        healthActorsSuggestions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_as_suggestionsData_getHealthActorsSuggestions',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions
    extends Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions {
  @override
  final String G__typename;
  @override
  final String nationalId;
  @override
  final String? name;
  @override
  final String type;
  @override
  final String? address;
  @override
  final String? profession;
  @override
  final String? email;

  factory _$Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions(
          [void Function(
                  Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestionsBuilder)?
              updates]) =>
      (new Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestionsBuilder()
            ..update(updates))
          ._build();

  _$Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions._(
      {required this.G__typename,
      required this.nationalId,
      this.name,
      required this.type,
      this.address,
      this.profession,
      this.email})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        nationalId,
        r'Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions',
        'nationalId');
    BuiltValueNullFieldError.checkNotNull(
        type,
        r'Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions',
        'type');
  }

  @override
  Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions
      rebuild(
              void Function(
                      Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestionsBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestionsBuilder
      toBuilder() =>
          new Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestionsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions &&
        G__typename == other.G__typename &&
        nationalId == other.nationalId &&
        name == other.name &&
        type == other.type &&
        address == other.address &&
        profession == other.profession &&
        email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, nationalId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, profession.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions')
          ..add('G__typename', G__typename)
          ..add('nationalId', nationalId)
          ..add('name', name)
          ..add('type', type)
          ..add('address', address)
          ..add('profession', profession)
          ..add('email', email))
        .toString();
  }
}

class Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestionsBuilder
    implements
        Builder<
            Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions,
            Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestionsBuilder> {
  _$Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _nationalId;
  String? get nationalId => _$this._nationalId;
  set nationalId(String? nationalId) => _$this._nationalId = nationalId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _profession;
  String? get profession => _$this._profession;
  set profession(String? profession) => _$this._profession = profession;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestionsBuilder() {
    Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions
        ._initializeBuilder(this);
  }

  Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestionsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nationalId = $v.nationalId;
      _name = $v.name;
      _type = $v.type;
      _address = $v.address;
      _profession = $v.profession;
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions;
  }

  @override
  void update(
      void Function(
              Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions
      build() => _build();

  _$Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions
      _build() {
    final _$result = _$v ??
        new _$Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions',
                'G__typename'),
            nationalId: BuiltValueNullFieldError.checkNotNull(
                nationalId,
                r'Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions',
                'nationalId'),
            name: name,
            type: BuiltValueNullFieldError.checkNotNull(
                type,
                r'Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions',
                'type'),
            address: address,
            profession: profession,
            email: email);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
