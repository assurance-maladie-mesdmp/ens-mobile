// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ajout_ad_get_activation_profils_ads_result.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_activation_profils_ads_resultData>
    _$ggetActivationProfilsAdsResultDataSerializer =
    new _$Gget_activation_profils_ads_resultDataSerializer();
Serializer<Gget_activation_profils_ads_resultData_getAccountFamily>
    _$ggetActivationProfilsAdsResultDataGetAccountFamilySerializer =
    new _$Gget_activation_profils_ads_resultData_getAccountFamilySerializer();
Serializer<
        Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed>
    _$ggetActivationProfilsAdsResultDataGetAccountFamilyProfilsActivationSucceedSerializer =
    new _$Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceedSerializer();
Serializer<
        Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed>
    _$ggetActivationProfilsAdsResultDataGetAccountFamilyProfilsActivationFailedSerializer =
    new _$Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailedSerializer();

class _$Gget_activation_profils_ads_resultDataSerializer
    implements StructuredSerializer<Gget_activation_profils_ads_resultData> {
  @override
  final Iterable<Type> types = const [
    Gget_activation_profils_ads_resultData,
    _$Gget_activation_profils_ads_resultData
  ];
  @override
  final String wireName = 'Gget_activation_profils_ads_resultData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_activation_profils_ads_resultData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getAccountFamily',
      serializers.serialize(object.getAccountFamily,
          specifiedType: const FullType(
              Gget_activation_profils_ads_resultData_getAccountFamily)),
    ];

    return result;
  }

  @override
  Gget_activation_profils_ads_resultData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_activation_profils_ads_resultDataBuilder();

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
                  specifiedType: const FullType(
                      Gget_activation_profils_ads_resultData_getAccountFamily))!
              as Gget_activation_profils_ads_resultData_getAccountFamily);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_activation_profils_ads_resultData_getAccountFamilySerializer
    implements
        StructuredSerializer<
            Gget_activation_profils_ads_resultData_getAccountFamily> {
  @override
  final Iterable<Type> types = const [
    Gget_activation_profils_ads_resultData_getAccountFamily,
    _$Gget_activation_profils_ads_resultData_getAccountFamily
  ];
  @override
  final String wireName =
      'Gget_activation_profils_ads_resultData_getAccountFamily';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_activation_profils_ads_resultData_getAccountFamily object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.profilsActivationSucceed;
    if (value != null) {
      result
        ..add('profilsActivationSucceed')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed)
            ])));
    }
    value = object.profilsActivationFailed;
    if (value != null) {
      result
        ..add('profilsActivationFailed')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed)
            ])));
    }
    return result;
  }

  @override
  Gget_activation_profils_ads_resultData_getAccountFamily deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_activation_profils_ads_resultData_getAccountFamilyBuilder();

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
        case 'profilsActivationSucceed':
          result.profilsActivationSucceed.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed)
              ]))! as BuiltList<Object?>);
          break;
        case 'profilsActivationFailed':
          result.profilsActivationFailed.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceedSerializer
    implements
        StructuredSerializer<
            Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed> {
  @override
  final Iterable<Type> types = const [
    Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed,
    _$Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed
  ];
  @override
  final String wireName =
      'Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'index',
      serializers.serialize(object.index,
          specifiedType: const FullType(double)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.idEns;
    if (value != null) {
      result
        ..add('idEns')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceedBuilder();

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
        case 'idEns':
          result.idEns = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailedSerializer
    implements
        StructuredSerializer<
            Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed> {
  @override
  final Iterable<Type> types = const [
    Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed,
    _$Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed
  ];
  @override
  final String wireName =
      'Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'index',
      serializers.serialize(object.index,
          specifiedType: const FullType(double)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.idEns;
    if (value != null) {
      result
        ..add('idEns')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailedBuilder();

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
        case 'idEns':
          result.idEns = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_activation_profils_ads_resultData
    extends Gget_activation_profils_ads_resultData {
  @override
  final String G__typename;
  @override
  final Gget_activation_profils_ads_resultData_getAccountFamily
      getAccountFamily;

  factory _$Gget_activation_profils_ads_resultData(
          [void Function(Gget_activation_profils_ads_resultDataBuilder)?
              updates]) =>
      (new Gget_activation_profils_ads_resultDataBuilder()..update(updates))
          ._build();

  _$Gget_activation_profils_ads_resultData._(
      {required this.G__typename, required this.getAccountFamily})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_activation_profils_ads_resultData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(getAccountFamily,
        r'Gget_activation_profils_ads_resultData', 'getAccountFamily');
  }

  @override
  Gget_activation_profils_ads_resultData rebuild(
          void Function(Gget_activation_profils_ads_resultDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_activation_profils_ads_resultDataBuilder toBuilder() =>
      new Gget_activation_profils_ads_resultDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_activation_profils_ads_resultData &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_activation_profils_ads_resultData')
          ..add('G__typename', G__typename)
          ..add('getAccountFamily', getAccountFamily))
        .toString();
  }
}

class Gget_activation_profils_ads_resultDataBuilder
    implements
        Builder<Gget_activation_profils_ads_resultData,
            Gget_activation_profils_ads_resultDataBuilder> {
  _$Gget_activation_profils_ads_resultData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_activation_profils_ads_resultData_getAccountFamilyBuilder?
      _getAccountFamily;
  Gget_activation_profils_ads_resultData_getAccountFamilyBuilder
      get getAccountFamily => _$this._getAccountFamily ??=
          new Gget_activation_profils_ads_resultData_getAccountFamilyBuilder();
  set getAccountFamily(
          Gget_activation_profils_ads_resultData_getAccountFamilyBuilder?
              getAccountFamily) =>
      _$this._getAccountFamily = getAccountFamily;

  Gget_activation_profils_ads_resultDataBuilder() {
    Gget_activation_profils_ads_resultData._initializeBuilder(this);
  }

  Gget_activation_profils_ads_resultDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getAccountFamily = $v.getAccountFamily.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_activation_profils_ads_resultData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_activation_profils_ads_resultData;
  }

  @override
  void update(
      void Function(Gget_activation_profils_ads_resultDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_activation_profils_ads_resultData build() => _build();

  _$Gget_activation_profils_ads_resultData _build() {
    _$Gget_activation_profils_ads_resultData _$result;
    try {
      _$result = _$v ??
          new _$Gget_activation_profils_ads_resultData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_activation_profils_ads_resultData', 'G__typename'),
              getAccountFamily: getAccountFamily.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getAccountFamily';
        getAccountFamily.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_activation_profils_ads_resultData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_activation_profils_ads_resultData_getAccountFamily
    extends Gget_activation_profils_ads_resultData_getAccountFamily {
  @override
  final String G__typename;
  @override
  final BuiltList<
          Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed>?
      profilsActivationSucceed;
  @override
  final BuiltList<
          Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed>?
      profilsActivationFailed;

  factory _$Gget_activation_profils_ads_resultData_getAccountFamily(
          [void Function(
                  Gget_activation_profils_ads_resultData_getAccountFamilyBuilder)?
              updates]) =>
      (new Gget_activation_profils_ads_resultData_getAccountFamilyBuilder()
            ..update(updates))
          ._build();

  _$Gget_activation_profils_ads_resultData_getAccountFamily._(
      {required this.G__typename,
      this.profilsActivationSucceed,
      this.profilsActivationFailed})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_activation_profils_ads_resultData_getAccountFamily',
        'G__typename');
  }

  @override
  Gget_activation_profils_ads_resultData_getAccountFamily rebuild(
          void Function(
                  Gget_activation_profils_ads_resultData_getAccountFamilyBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_activation_profils_ads_resultData_getAccountFamilyBuilder toBuilder() =>
      new Gget_activation_profils_ads_resultData_getAccountFamilyBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_activation_profils_ads_resultData_getAccountFamily &&
        G__typename == other.G__typename &&
        profilsActivationSucceed == other.profilsActivationSucceed &&
        profilsActivationFailed == other.profilsActivationFailed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, profilsActivationSucceed.hashCode);
    _$hash = $jc(_$hash, profilsActivationFailed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_activation_profils_ads_resultData_getAccountFamily')
          ..add('G__typename', G__typename)
          ..add('profilsActivationSucceed', profilsActivationSucceed)
          ..add('profilsActivationFailed', profilsActivationFailed))
        .toString();
  }
}

class Gget_activation_profils_ads_resultData_getAccountFamilyBuilder
    implements
        Builder<Gget_activation_profils_ads_resultData_getAccountFamily,
            Gget_activation_profils_ads_resultData_getAccountFamilyBuilder> {
  _$Gget_activation_profils_ads_resultData_getAccountFamily? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<
          Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed>?
      _profilsActivationSucceed;
  ListBuilder<
          Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed>
      get profilsActivationSucceed =>
          _$this._profilsActivationSucceed ??= new ListBuilder<
              Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed>();
  set profilsActivationSucceed(
          ListBuilder<
                  Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed>?
              profilsActivationSucceed) =>
      _$this._profilsActivationSucceed = profilsActivationSucceed;

  ListBuilder<
          Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed>?
      _profilsActivationFailed;
  ListBuilder<
          Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed>
      get profilsActivationFailed =>
          _$this._profilsActivationFailed ??= new ListBuilder<
              Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed>();
  set profilsActivationFailed(
          ListBuilder<
                  Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed>?
              profilsActivationFailed) =>
      _$this._profilsActivationFailed = profilsActivationFailed;

  Gget_activation_profils_ads_resultData_getAccountFamilyBuilder() {
    Gget_activation_profils_ads_resultData_getAccountFamily._initializeBuilder(
        this);
  }

  Gget_activation_profils_ads_resultData_getAccountFamilyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _profilsActivationSucceed = $v.profilsActivationSucceed?.toBuilder();
      _profilsActivationFailed = $v.profilsActivationFailed?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_activation_profils_ads_resultData_getAccountFamily other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_activation_profils_ads_resultData_getAccountFamily;
  }

  @override
  void update(
      void Function(
              Gget_activation_profils_ads_resultData_getAccountFamilyBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_activation_profils_ads_resultData_getAccountFamily build() => _build();

  _$Gget_activation_profils_ads_resultData_getAccountFamily _build() {
    _$Gget_activation_profils_ads_resultData_getAccountFamily _$result;
    try {
      _$result = _$v ??
          new _$Gget_activation_profils_ads_resultData_getAccountFamily._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_activation_profils_ads_resultData_getAccountFamily',
                  'G__typename'),
              profilsActivationSucceed: _profilsActivationSucceed?.build(),
              profilsActivationFailed: _profilsActivationFailed?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'profilsActivationSucceed';
        _profilsActivationSucceed?.build();
        _$failedField = 'profilsActivationFailed';
        _profilsActivationFailed?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_activation_profils_ads_resultData_getAccountFamily',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed
    extends Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed {
  @override
  final String G__typename;
  @override
  final double index;
  @override
  final double? idEns;
  @override
  final String firstName;
  @override
  final String lastName;

  factory _$Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed(
          [void Function(
                  Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceedBuilder)?
              updates]) =>
      (new Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceedBuilder()
            ..update(updates))
          ._build();

  _$Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed._(
      {required this.G__typename,
      required this.index,
      this.idEns,
      required this.firstName,
      required this.lastName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        index,
        r'Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed',
        'index');
    BuiltValueNullFieldError.checkNotNull(
        firstName,
        r'Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed',
        'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName,
        r'Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed',
        'lastName');
  }

  @override
  Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed
      rebuild(
              void Function(
                      Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceedBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceedBuilder
      toBuilder() =>
          new Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceedBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed &&
        G__typename == other.G__typename &&
        index == other.index &&
        idEns == other.idEns &&
        firstName == other.firstName &&
        lastName == other.lastName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jc(_$hash, idEns.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed')
          ..add('G__typename', G__typename)
          ..add('index', index)
          ..add('idEns', idEns)
          ..add('firstName', firstName)
          ..add('lastName', lastName))
        .toString();
  }
}

class Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceedBuilder
    implements
        Builder<
            Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed,
            Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceedBuilder> {
  _$Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _index;
  double? get index => _$this._index;
  set index(double? index) => _$this._index = index;

  double? _idEns;
  double? get idEns => _$this._idEns;
  set idEns(double? idEns) => _$this._idEns = idEns;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceedBuilder() {
    Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed
        ._initializeBuilder(this);
  }

  Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceedBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _index = $v.index;
      _idEns = $v.idEns;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed;
  }

  @override
  void update(
      void Function(
              Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceedBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed
      build() => _build();

  _$Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed
      _build() {
    final _$result = _$v ??
        new _$Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed',
                'G__typename'),
            index: BuiltValueNullFieldError.checkNotNull(
                index,
                r'Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed',
                'index'),
            idEns: idEns,
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName,
                r'Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed',
                'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName,
                r'Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationSucceed',
                'lastName'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed
    extends Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed {
  @override
  final String G__typename;
  @override
  final double index;
  @override
  final double? idEns;
  @override
  final String firstName;
  @override
  final String lastName;

  factory _$Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed(
          [void Function(
                  Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailedBuilder)?
              updates]) =>
      (new Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailedBuilder()
            ..update(updates))
          ._build();

  _$Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed._(
      {required this.G__typename,
      required this.index,
      this.idEns,
      required this.firstName,
      required this.lastName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        index,
        r'Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed',
        'index');
    BuiltValueNullFieldError.checkNotNull(
        firstName,
        r'Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed',
        'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName,
        r'Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed',
        'lastName');
  }

  @override
  Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed
      rebuild(
              void Function(
                      Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailedBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailedBuilder
      toBuilder() =>
          new Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailedBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed &&
        G__typename == other.G__typename &&
        index == other.index &&
        idEns == other.idEns &&
        firstName == other.firstName &&
        lastName == other.lastName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jc(_$hash, idEns.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed')
          ..add('G__typename', G__typename)
          ..add('index', index)
          ..add('idEns', idEns)
          ..add('firstName', firstName)
          ..add('lastName', lastName))
        .toString();
  }
}

class Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailedBuilder
    implements
        Builder<
            Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed,
            Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailedBuilder> {
  _$Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _index;
  double? get index => _$this._index;
  set index(double? index) => _$this._index = index;

  double? _idEns;
  double? get idEns => _$this._idEns;
  set idEns(double? idEns) => _$this._idEns = idEns;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailedBuilder() {
    Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed
        ._initializeBuilder(this);
  }

  Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailedBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _index = $v.index;
      _idEns = $v.idEns;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed;
  }

  @override
  void update(
      void Function(
              Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailedBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed
      build() => _build();

  _$Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed
      _build() {
    final _$result = _$v ??
        new _$Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed',
                'G__typename'),
            index: BuiltValueNullFieldError.checkNotNull(
                index,
                r'Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed',
                'index'),
            idEns: idEns,
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName,
                r'Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed',
                'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName,
                r'Gget_activation_profils_ads_resultData_getAccountFamily_profilsActivationFailed',
                'lastName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
