// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ajout_ad_get_ads_a_ajouter.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_ads_a_ajouterData> _$ggetAdsAAjouterDataSerializer =
    new _$Gget_ads_a_ajouterDataSerializer();
Serializer<Gget_ads_a_ajouterData_getAccountFamily>
    _$ggetAdsAAjouterDataGetAccountFamilySerializer =
    new _$Gget_ads_a_ajouterData_getAccountFamilySerializer();
Serializer<Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate>
    _$ggetAdsAAjouterDataGetAccountFamilyProfilsToActivateSerializer =
    new _$Gget_ads_a_ajouterData_getAccountFamily_profilsToActivateSerializer();
Serializer<Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable>
    _$ggetAdsAAjouterDataGetAccountFamilyProfilsNonActivableSerializer =
    new _$Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivableSerializer();

class _$Gget_ads_a_ajouterDataSerializer
    implements StructuredSerializer<Gget_ads_a_ajouterData> {
  @override
  final Iterable<Type> types = const [
    Gget_ads_a_ajouterData,
    _$Gget_ads_a_ajouterData
  ];
  @override
  final String wireName = 'Gget_ads_a_ajouterData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_ads_a_ajouterData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getAccountFamily',
      serializers.serialize(object.getAccountFamily,
          specifiedType:
              const FullType(Gget_ads_a_ajouterData_getAccountFamily)),
    ];

    return result;
  }

  @override
  Gget_ads_a_ajouterData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_ads_a_ajouterDataBuilder();

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
        case 'getAccountFamily':
          result.getAccountFamily.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gget_ads_a_ajouterData_getAccountFamily))!
              as Gget_ads_a_ajouterData_getAccountFamily);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_ads_a_ajouterData_getAccountFamilySerializer
    implements StructuredSerializer<Gget_ads_a_ajouterData_getAccountFamily> {
  @override
  final Iterable<Type> types = const [
    Gget_ads_a_ajouterData_getAccountFamily,
    _$Gget_ads_a_ajouterData_getAccountFamily
  ];
  @override
  final String wireName = 'Gget_ads_a_ajouterData_getAccountFamily';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_ads_a_ajouterData_getAccountFamily object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.profilsToActivate;
    if (value != null) {
      result
        ..add('profilsToActivate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate)
            ])));
    }
    value = object.profilsNonActivable;
    if (value != null) {
      result
        ..add('profilsNonActivable')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable)
            ])));
    }
    return result;
  }

  @override
  Gget_ads_a_ajouterData_getAccountFamily deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_ads_a_ajouterData_getAccountFamilyBuilder();

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
        case 'profilsToActivate':
          result.profilsToActivate.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate)
              ]))! as BuiltList<Object?>);
          break;
        case 'profilsNonActivable':
          result.profilsNonActivable.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_ads_a_ajouterData_getAccountFamily_profilsToActivateSerializer
    implements
        StructuredSerializer<
            Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate> {
  @override
  final Iterable<Type> types = const [
    Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate,
    _$Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate
  ];
  @override
  final String wireName =
      'Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'index',
      serializers.serialize(object.index,
          specifiedType: const FullType(double)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'statutProfile',
      serializers.serialize(object.statutProfile,
          specifiedType: const FullType(String)),
      'hasDeleteRequest',
      serializers.serialize(object.hasDeleteRequest,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_ads_a_ajouterData_getAccountFamily_profilsToActivateBuilder();

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
        case 'index':
          result.index = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'statutProfile':
          result.statutProfile = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'hasDeleteRequest':
          result.hasDeleteRequest = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivableSerializer
    implements
        StructuredSerializer<
            Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable> {
  @override
  final Iterable<Type> types = const [
    Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable,
    _$Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable
  ];
  @override
  final String wireName =
      'Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'index',
      serializers.serialize(object.index,
          specifiedType: const FullType(double)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'statutProfile',
      serializers.serialize(object.statutProfile,
          specifiedType: const FullType(String)),
      'hasDeleteRequest',
      serializers.serialize(object.hasDeleteRequest,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivableBuilder();

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
        case 'index':
          result.index = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'statutProfile':
          result.statutProfile = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'hasDeleteRequest':
          result.hasDeleteRequest = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_ads_a_ajouterData extends Gget_ads_a_ajouterData {
  @override
  final String G__typename;
  @override
  final Gget_ads_a_ajouterData_getAccountFamily getAccountFamily;

  factory _$Gget_ads_a_ajouterData(
          [void Function(Gget_ads_a_ajouterDataBuilder)? updates]) =>
      (new Gget_ads_a_ajouterDataBuilder()..update(updates))._build();

  _$Gget_ads_a_ajouterData._(
      {required this.G__typename, required this.getAccountFamily})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_ads_a_ajouterData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getAccountFamily, r'Gget_ads_a_ajouterData', 'getAccountFamily');
  }

  @override
  Gget_ads_a_ajouterData rebuild(
          void Function(Gget_ads_a_ajouterDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_ads_a_ajouterDataBuilder toBuilder() =>
      new Gget_ads_a_ajouterDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_ads_a_ajouterData &&
        G__typename == other.G__typename &&
        getAccountFamily == other.getAccountFamily;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getAccountFamily.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_ads_a_ajouterData')
          ..add('G__typename', G__typename)
          ..add('getAccountFamily', getAccountFamily))
        .toString();
  }
}

class Gget_ads_a_ajouterDataBuilder
    implements Builder<Gget_ads_a_ajouterData, Gget_ads_a_ajouterDataBuilder> {
  _$Gget_ads_a_ajouterData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_ads_a_ajouterData_getAccountFamilyBuilder? _getAccountFamily;
  Gget_ads_a_ajouterData_getAccountFamilyBuilder get getAccountFamily =>
      _$this._getAccountFamily ??=
          new Gget_ads_a_ajouterData_getAccountFamilyBuilder();
  set getAccountFamily(
          Gget_ads_a_ajouterData_getAccountFamilyBuilder? getAccountFamily) =>
      _$this._getAccountFamily = getAccountFamily;

  Gget_ads_a_ajouterDataBuilder() {
    Gget_ads_a_ajouterData._initializeBuilder(this);
  }

  Gget_ads_a_ajouterDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getAccountFamily = $v.getAccountFamily.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_ads_a_ajouterData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_ads_a_ajouterData;
  }

  @override
  void update(void Function(Gget_ads_a_ajouterDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_ads_a_ajouterData build() => _build();

  _$Gget_ads_a_ajouterData _build() {
    _$Gget_ads_a_ajouterData _$result;
    try {
      _$result = _$v ??
          new _$Gget_ads_a_ajouterData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_ads_a_ajouterData', 'G__typename'),
              getAccountFamily: getAccountFamily.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getAccountFamily';
        getAccountFamily.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_ads_a_ajouterData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_ads_a_ajouterData_getAccountFamily
    extends Gget_ads_a_ajouterData_getAccountFamily {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate>?
      profilsToActivate;
  @override
  final BuiltList<Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable>?
      profilsNonActivable;

  factory _$Gget_ads_a_ajouterData_getAccountFamily(
          [void Function(Gget_ads_a_ajouterData_getAccountFamilyBuilder)?
              updates]) =>
      (new Gget_ads_a_ajouterData_getAccountFamilyBuilder()..update(updates))
          ._build();

  _$Gget_ads_a_ajouterData_getAccountFamily._(
      {required this.G__typename,
      this.profilsToActivate,
      this.profilsNonActivable})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_ads_a_ajouterData_getAccountFamily', 'G__typename');
  }

  @override
  Gget_ads_a_ajouterData_getAccountFamily rebuild(
          void Function(Gget_ads_a_ajouterData_getAccountFamilyBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_ads_a_ajouterData_getAccountFamilyBuilder toBuilder() =>
      new Gget_ads_a_ajouterData_getAccountFamilyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_ads_a_ajouterData_getAccountFamily &&
        G__typename == other.G__typename &&
        profilsToActivate == other.profilsToActivate &&
        profilsNonActivable == other.profilsNonActivable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, profilsToActivate.hashCode);
    _$hash = $jc(_$hash, profilsNonActivable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_ads_a_ajouterData_getAccountFamily')
          ..add('G__typename', G__typename)
          ..add('profilsToActivate', profilsToActivate)
          ..add('profilsNonActivable', profilsNonActivable))
        .toString();
  }
}

class Gget_ads_a_ajouterData_getAccountFamilyBuilder
    implements
        Builder<Gget_ads_a_ajouterData_getAccountFamily,
            Gget_ads_a_ajouterData_getAccountFamilyBuilder> {
  _$Gget_ads_a_ajouterData_getAccountFamily? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate>?
      _profilsToActivate;
  ListBuilder<Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate>
      get profilsToActivate => _$this._profilsToActivate ??= new ListBuilder<
          Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate>();
  set profilsToActivate(
          ListBuilder<
                  Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate>?
              profilsToActivate) =>
      _$this._profilsToActivate = profilsToActivate;

  ListBuilder<Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable>?
      _profilsNonActivable;
  ListBuilder<Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable>
      get profilsNonActivable =>
          _$this._profilsNonActivable ??= new ListBuilder<
              Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable>();
  set profilsNonActivable(
          ListBuilder<
                  Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable>?
              profilsNonActivable) =>
      _$this._profilsNonActivable = profilsNonActivable;

  Gget_ads_a_ajouterData_getAccountFamilyBuilder() {
    Gget_ads_a_ajouterData_getAccountFamily._initializeBuilder(this);
  }

  Gget_ads_a_ajouterData_getAccountFamilyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _profilsToActivate = $v.profilsToActivate?.toBuilder();
      _profilsNonActivable = $v.profilsNonActivable?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_ads_a_ajouterData_getAccountFamily other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_ads_a_ajouterData_getAccountFamily;
  }

  @override
  void update(
      void Function(Gget_ads_a_ajouterData_getAccountFamilyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_ads_a_ajouterData_getAccountFamily build() => _build();

  _$Gget_ads_a_ajouterData_getAccountFamily _build() {
    _$Gget_ads_a_ajouterData_getAccountFamily _$result;
    try {
      _$result = _$v ??
          new _$Gget_ads_a_ajouterData_getAccountFamily._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_ads_a_ajouterData_getAccountFamily', 'G__typename'),
              profilsToActivate: _profilsToActivate?.build(),
              profilsNonActivable: _profilsNonActivable?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'profilsToActivate';
        _profilsToActivate?.build();
        _$failedField = 'profilsNonActivable';
        _profilsNonActivable?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_ads_a_ajouterData_getAccountFamily',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate
    extends Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate {
  @override
  final String G__typename;
  @override
  final double index;
  @override
  final String lastName;
  @override
  final String firstName;
  @override
  final String statutProfile;
  @override
  final bool hasDeleteRequest;

  factory _$Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate(
          [void Function(
                  Gget_ads_a_ajouterData_getAccountFamily_profilsToActivateBuilder)?
              updates]) =>
      (new Gget_ads_a_ajouterData_getAccountFamily_profilsToActivateBuilder()
            ..update(updates))
          ._build();

  _$Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate._(
      {required this.G__typename,
      required this.index,
      required this.lastName,
      required this.firstName,
      required this.statutProfile,
      required this.hasDeleteRequest})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(index,
        r'Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate', 'index');
    BuiltValueNullFieldError.checkNotNull(
        lastName,
        r'Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate',
        'lastName');
    BuiltValueNullFieldError.checkNotNull(
        firstName,
        r'Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate',
        'firstName');
    BuiltValueNullFieldError.checkNotNull(
        statutProfile,
        r'Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate',
        'statutProfile');
    BuiltValueNullFieldError.checkNotNull(
        hasDeleteRequest,
        r'Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate',
        'hasDeleteRequest');
  }

  @override
  Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate rebuild(
          void Function(
                  Gget_ads_a_ajouterData_getAccountFamily_profilsToActivateBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_ads_a_ajouterData_getAccountFamily_profilsToActivateBuilder
      toBuilder() =>
          new Gget_ads_a_ajouterData_getAccountFamily_profilsToActivateBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate &&
        G__typename == other.G__typename &&
        index == other.index &&
        lastName == other.lastName &&
        firstName == other.firstName &&
        statutProfile == other.statutProfile &&
        hasDeleteRequest == other.hasDeleteRequest;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, statutProfile.hashCode);
    _$hash = $jc(_$hash, hasDeleteRequest.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate')
          ..add('G__typename', G__typename)
          ..add('index', index)
          ..add('lastName', lastName)
          ..add('firstName', firstName)
          ..add('statutProfile', statutProfile)
          ..add('hasDeleteRequest', hasDeleteRequest))
        .toString();
  }
}

class Gget_ads_a_ajouterData_getAccountFamily_profilsToActivateBuilder
    implements
        Builder<Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate,
            Gget_ads_a_ajouterData_getAccountFamily_profilsToActivateBuilder> {
  _$Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _index;
  double? get index => _$this._index;
  set index(double? index) => _$this._index = index;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _statutProfile;
  String? get statutProfile => _$this._statutProfile;
  set statutProfile(String? statutProfile) =>
      _$this._statutProfile = statutProfile;

  bool? _hasDeleteRequest;
  bool? get hasDeleteRequest => _$this._hasDeleteRequest;
  set hasDeleteRequest(bool? hasDeleteRequest) =>
      _$this._hasDeleteRequest = hasDeleteRequest;

  Gget_ads_a_ajouterData_getAccountFamily_profilsToActivateBuilder() {
    Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate
        ._initializeBuilder(this);
  }

  Gget_ads_a_ajouterData_getAccountFamily_profilsToActivateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _index = $v.index;
      _lastName = $v.lastName;
      _firstName = $v.firstName;
      _statutProfile = $v.statutProfile;
      _hasDeleteRequest = $v.hasDeleteRequest;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate;
  }

  @override
  void update(
      void Function(
              Gget_ads_a_ajouterData_getAccountFamily_profilsToActivateBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate build() => _build();

  _$Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate _build() {
    final _$result = _$v ??
        new _$Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate', 'G__typename'),
            index: BuiltValueNullFieldError.checkNotNull(
                index, r'Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate', 'index'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate', 'lastName'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate', 'firstName'),
            statutProfile: BuiltValueNullFieldError.checkNotNull(
                statutProfile,
                r'Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate',
                'statutProfile'),
            hasDeleteRequest: BuiltValueNullFieldError.checkNotNull(
                hasDeleteRequest,
                r'Gget_ads_a_ajouterData_getAccountFamily_profilsToActivate',
                'hasDeleteRequest'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable
    extends Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable {
  @override
  final String G__typename;
  @override
  final double index;
  @override
  final String lastName;
  @override
  final String firstName;
  @override
  final String statutProfile;
  @override
  final bool hasDeleteRequest;

  factory _$Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable(
          [void Function(
                  Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivableBuilder)?
              updates]) =>
      (new Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivableBuilder()
            ..update(updates))
          ._build();

  _$Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable._(
      {required this.G__typename,
      required this.index,
      required this.lastName,
      required this.firstName,
      required this.statutProfile,
      required this.hasDeleteRequest})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        index,
        r'Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable',
        'index');
    BuiltValueNullFieldError.checkNotNull(
        lastName,
        r'Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable',
        'lastName');
    BuiltValueNullFieldError.checkNotNull(
        firstName,
        r'Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable',
        'firstName');
    BuiltValueNullFieldError.checkNotNull(
        statutProfile,
        r'Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable',
        'statutProfile');
    BuiltValueNullFieldError.checkNotNull(
        hasDeleteRequest,
        r'Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable',
        'hasDeleteRequest');
  }

  @override
  Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable rebuild(
          void Function(
                  Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivableBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivableBuilder
      toBuilder() =>
          new Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivableBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable &&
        G__typename == other.G__typename &&
        index == other.index &&
        lastName == other.lastName &&
        firstName == other.firstName &&
        statutProfile == other.statutProfile &&
        hasDeleteRequest == other.hasDeleteRequest;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, statutProfile.hashCode);
    _$hash = $jc(_$hash, hasDeleteRequest.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable')
          ..add('G__typename', G__typename)
          ..add('index', index)
          ..add('lastName', lastName)
          ..add('firstName', firstName)
          ..add('statutProfile', statutProfile)
          ..add('hasDeleteRequest', hasDeleteRequest))
        .toString();
  }
}

class Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivableBuilder
    implements
        Builder<Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable,
            Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivableBuilder> {
  _$Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _index;
  double? get index => _$this._index;
  set index(double? index) => _$this._index = index;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _statutProfile;
  String? get statutProfile => _$this._statutProfile;
  set statutProfile(String? statutProfile) =>
      _$this._statutProfile = statutProfile;

  bool? _hasDeleteRequest;
  bool? get hasDeleteRequest => _$this._hasDeleteRequest;
  set hasDeleteRequest(bool? hasDeleteRequest) =>
      _$this._hasDeleteRequest = hasDeleteRequest;

  Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivableBuilder() {
    Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable
        ._initializeBuilder(this);
  }

  Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivableBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _index = $v.index;
      _lastName = $v.lastName;
      _firstName = $v.firstName;
      _statutProfile = $v.statutProfile;
      _hasDeleteRequest = $v.hasDeleteRequest;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable;
  }

  @override
  void update(
      void Function(
              Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivableBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable build() =>
      _build();

  _$Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable _build() {
    final _$result = _$v ??
        new _$Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable', 'G__typename'),
            index: BuiltValueNullFieldError.checkNotNull(
                index, r'Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable', 'index'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable', 'lastName'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable', 'firstName'),
            statutProfile: BuiltValueNullFieldError.checkNotNull(
                statutProfile,
                r'Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable',
                'statutProfile'),
            hasDeleteRequest: BuiltValueNullFieldError.checkNotNull(
                hasDeleteRequest,
                r'Gget_ads_a_ajouterData_getAccountFamily_profilsNonActivable',
                'hasDeleteRequest'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
