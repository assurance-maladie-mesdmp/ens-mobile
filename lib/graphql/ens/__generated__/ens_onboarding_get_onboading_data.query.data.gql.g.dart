// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_onboarding_get_onboading_data.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_onboarding_dataData> _$ggetOnboardingDataDataSerializer =
    new _$Gget_onboarding_dataDataSerializer();
Serializer<Gget_onboarding_dataData_getDmpConsentement>
    _$ggetOnboardingDataDataGetDmpConsentementSerializer =
    new _$Gget_onboarding_dataData_getDmpConsentementSerializer();
Serializer<Gget_onboarding_dataData_getDefaultConfidentiality>
    _$ggetOnboardingDataDataGetDefaultConfidentialitySerializer =
    new _$Gget_onboarding_dataData_getDefaultConfidentialitySerializer();

class _$Gget_onboarding_dataDataSerializer
    implements StructuredSerializer<Gget_onboarding_dataData> {
  @override
  final Iterable<Type> types = const [
    Gget_onboarding_dataData,
    _$Gget_onboarding_dataData
  ];
  @override
  final String wireName = 'Gget_onboarding_dataData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_onboarding_dataData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getDmpConsentement',
      serializers.serialize(object.getDmpConsentement,
          specifiedType: const FullType(BuiltList, const [
            const FullType(Gget_onboarding_dataData_getDmpConsentement)
          ])),
    ];
    Object? value;
    value = object.getDefaultConfidentiality;
    if (value != null) {
      result
        ..add('getDefaultConfidentiality')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_onboarding_dataData_getDefaultConfidentiality)));
    }
    return result;
  }

  @override
  Gget_onboarding_dataData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_onboarding_dataDataBuilder();

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
        case 'getDmpConsentement':
          result.getDmpConsentement.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gget_onboarding_dataData_getDmpConsentement)
              ]))! as BuiltList<Object?>);
          break;
        case 'getDefaultConfidentiality':
          result.getDefaultConfidentiality.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Gget_onboarding_dataData_getDefaultConfidentiality))!
              as Gget_onboarding_dataData_getDefaultConfidentiality);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_onboarding_dataData_getDmpConsentementSerializer
    implements
        StructuredSerializer<Gget_onboarding_dataData_getDmpConsentement> {
  @override
  final Iterable<Type> types = const [
    Gget_onboarding_dataData_getDmpConsentement,
    _$Gget_onboarding_dataData_getDmpConsentement
  ];
  @override
  final String wireName = 'Gget_onboarding_dataData_getDmpConsentement';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_onboarding_dataData_getDmpConsentement object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'identifier',
      serializers.serialize(object.identifier,
          specifiedType: const FullType(String)),
      'purpose',
      serializers.serialize(object.purpose,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_onboarding_dataData_getDmpConsentement deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_onboarding_dataData_getDmpConsentementBuilder();

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
        case 'identifier':
          result.identifier = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'purpose':
          result.purpose = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_onboarding_dataData_getDefaultConfidentialitySerializer
    implements
        StructuredSerializer<
            Gget_onboarding_dataData_getDefaultConfidentiality> {
  @override
  final Iterable<Type> types = const [
    Gget_onboarding_dataData_getDefaultConfidentiality,
    _$Gget_onboarding_dataData_getDefaultConfidentiality
  ];
  @override
  final String wireName = 'Gget_onboarding_dataData_getDefaultConfidentiality';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_onboarding_dataData_getDefaultConfidentiality object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'masked',
      serializers.serialize(object.masked, specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gget_onboarding_dataData_getDefaultConfidentiality deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_onboarding_dataData_getDefaultConfidentialityBuilder();

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
        case 'masked':
          result.masked = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_onboarding_dataData extends Gget_onboarding_dataData {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_onboarding_dataData_getDmpConsentement>
      getDmpConsentement;
  @override
  final Gget_onboarding_dataData_getDefaultConfidentiality?
      getDefaultConfidentiality;

  factory _$Gget_onboarding_dataData(
          [void Function(Gget_onboarding_dataDataBuilder)? updates]) =>
      (new Gget_onboarding_dataDataBuilder()..update(updates))._build();

  _$Gget_onboarding_dataData._(
      {required this.G__typename,
      required this.getDmpConsentement,
      this.getDefaultConfidentiality})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_onboarding_dataData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getDmpConsentement, r'Gget_onboarding_dataData', 'getDmpConsentement');
  }

  @override
  Gget_onboarding_dataData rebuild(
          void Function(Gget_onboarding_dataDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_onboarding_dataDataBuilder toBuilder() =>
      new Gget_onboarding_dataDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_onboarding_dataData &&
        G__typename == other.G__typename &&
        getDmpConsentement == other.getDmpConsentement &&
        getDefaultConfidentiality == other.getDefaultConfidentiality;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getDmpConsentement.hashCode);
    _$hash = $jc(_$hash, getDefaultConfidentiality.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_onboarding_dataData')
          ..add('G__typename', G__typename)
          ..add('getDmpConsentement', getDmpConsentement)
          ..add('getDefaultConfidentiality', getDefaultConfidentiality))
        .toString();
  }
}

class Gget_onboarding_dataDataBuilder
    implements
        Builder<Gget_onboarding_dataData, Gget_onboarding_dataDataBuilder> {
  _$Gget_onboarding_dataData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_onboarding_dataData_getDmpConsentement>? _getDmpConsentement;
  ListBuilder<Gget_onboarding_dataData_getDmpConsentement>
      get getDmpConsentement => _$this._getDmpConsentement ??=
          new ListBuilder<Gget_onboarding_dataData_getDmpConsentement>();
  set getDmpConsentement(
          ListBuilder<Gget_onboarding_dataData_getDmpConsentement>?
              getDmpConsentement) =>
      _$this._getDmpConsentement = getDmpConsentement;

  Gget_onboarding_dataData_getDefaultConfidentialityBuilder?
      _getDefaultConfidentiality;
  Gget_onboarding_dataData_getDefaultConfidentialityBuilder
      get getDefaultConfidentiality => _$this._getDefaultConfidentiality ??=
          new Gget_onboarding_dataData_getDefaultConfidentialityBuilder();
  set getDefaultConfidentiality(
          Gget_onboarding_dataData_getDefaultConfidentialityBuilder?
              getDefaultConfidentiality) =>
      _$this._getDefaultConfidentiality = getDefaultConfidentiality;

  Gget_onboarding_dataDataBuilder() {
    Gget_onboarding_dataData._initializeBuilder(this);
  }

  Gget_onboarding_dataDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getDmpConsentement = $v.getDmpConsentement.toBuilder();
      _getDefaultConfidentiality = $v.getDefaultConfidentiality?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_onboarding_dataData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_onboarding_dataData;
  }

  @override
  void update(void Function(Gget_onboarding_dataDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_onboarding_dataData build() => _build();

  _$Gget_onboarding_dataData _build() {
    _$Gget_onboarding_dataData _$result;
    try {
      _$result = _$v ??
          new _$Gget_onboarding_dataData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_onboarding_dataData', 'G__typename'),
              getDmpConsentement: getDmpConsentement.build(),
              getDefaultConfidentiality: _getDefaultConfidentiality?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getDmpConsentement';
        getDmpConsentement.build();
        _$failedField = 'getDefaultConfidentiality';
        _getDefaultConfidentiality?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_onboarding_dataData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_onboarding_dataData_getDmpConsentement
    extends Gget_onboarding_dataData_getDmpConsentement {
  @override
  final String G__typename;
  @override
  final String identifier;
  @override
  final String purpose;
  @override
  final String type;

  factory _$Gget_onboarding_dataData_getDmpConsentement(
          [void Function(Gget_onboarding_dataData_getDmpConsentementBuilder)?
              updates]) =>
      (new Gget_onboarding_dataData_getDmpConsentementBuilder()
            ..update(updates))
          ._build();

  _$Gget_onboarding_dataData_getDmpConsentement._(
      {required this.G__typename,
      required this.identifier,
      required this.purpose,
      required this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_onboarding_dataData_getDmpConsentement', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(identifier,
        r'Gget_onboarding_dataData_getDmpConsentement', 'identifier');
    BuiltValueNullFieldError.checkNotNull(
        purpose, r'Gget_onboarding_dataData_getDmpConsentement', 'purpose');
    BuiltValueNullFieldError.checkNotNull(
        type, r'Gget_onboarding_dataData_getDmpConsentement', 'type');
  }

  @override
  Gget_onboarding_dataData_getDmpConsentement rebuild(
          void Function(Gget_onboarding_dataData_getDmpConsentementBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_onboarding_dataData_getDmpConsentementBuilder toBuilder() =>
      new Gget_onboarding_dataData_getDmpConsentementBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_onboarding_dataData_getDmpConsentement &&
        G__typename == other.G__typename &&
        identifier == other.identifier &&
        purpose == other.purpose &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, identifier.hashCode);
    _$hash = $jc(_$hash, purpose.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_onboarding_dataData_getDmpConsentement')
          ..add('G__typename', G__typename)
          ..add('identifier', identifier)
          ..add('purpose', purpose)
          ..add('type', type))
        .toString();
  }
}

class Gget_onboarding_dataData_getDmpConsentementBuilder
    implements
        Builder<Gget_onboarding_dataData_getDmpConsentement,
            Gget_onboarding_dataData_getDmpConsentementBuilder> {
  _$Gget_onboarding_dataData_getDmpConsentement? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _identifier;
  String? get identifier => _$this._identifier;
  set identifier(String? identifier) => _$this._identifier = identifier;

  String? _purpose;
  String? get purpose => _$this._purpose;
  set purpose(String? purpose) => _$this._purpose = purpose;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  Gget_onboarding_dataData_getDmpConsentementBuilder() {
    Gget_onboarding_dataData_getDmpConsentement._initializeBuilder(this);
  }

  Gget_onboarding_dataData_getDmpConsentementBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _identifier = $v.identifier;
      _purpose = $v.purpose;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_onboarding_dataData_getDmpConsentement other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_onboarding_dataData_getDmpConsentement;
  }

  @override
  void update(
      void Function(Gget_onboarding_dataData_getDmpConsentementBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_onboarding_dataData_getDmpConsentement build() => _build();

  _$Gget_onboarding_dataData_getDmpConsentement _build() {
    final _$result = _$v ??
        new _$Gget_onboarding_dataData_getDmpConsentement._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gget_onboarding_dataData_getDmpConsentement', 'G__typename'),
            identifier: BuiltValueNullFieldError.checkNotNull(identifier,
                r'Gget_onboarding_dataData_getDmpConsentement', 'identifier'),
            purpose: BuiltValueNullFieldError.checkNotNull(purpose,
                r'Gget_onboarding_dataData_getDmpConsentement', 'purpose'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'Gget_onboarding_dataData_getDmpConsentement', 'type'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_onboarding_dataData_getDefaultConfidentiality
    extends Gget_onboarding_dataData_getDefaultConfidentiality {
  @override
  final String G__typename;
  @override
  final bool masked;

  factory _$Gget_onboarding_dataData_getDefaultConfidentiality(
          [void Function(
                  Gget_onboarding_dataData_getDefaultConfidentialityBuilder)?
              updates]) =>
      (new Gget_onboarding_dataData_getDefaultConfidentialityBuilder()
            ..update(updates))
          ._build();

  _$Gget_onboarding_dataData_getDefaultConfidentiality._(
      {required this.G__typename, required this.masked})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_onboarding_dataData_getDefaultConfidentiality', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(masked,
        r'Gget_onboarding_dataData_getDefaultConfidentiality', 'masked');
  }

  @override
  Gget_onboarding_dataData_getDefaultConfidentiality rebuild(
          void Function(
                  Gget_onboarding_dataData_getDefaultConfidentialityBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_onboarding_dataData_getDefaultConfidentialityBuilder toBuilder() =>
      new Gget_onboarding_dataData_getDefaultConfidentialityBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_onboarding_dataData_getDefaultConfidentiality &&
        G__typename == other.G__typename &&
        masked == other.masked;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, masked.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_onboarding_dataData_getDefaultConfidentiality')
          ..add('G__typename', G__typename)
          ..add('masked', masked))
        .toString();
  }
}

class Gget_onboarding_dataData_getDefaultConfidentialityBuilder
    implements
        Builder<Gget_onboarding_dataData_getDefaultConfidentiality,
            Gget_onboarding_dataData_getDefaultConfidentialityBuilder> {
  _$Gget_onboarding_dataData_getDefaultConfidentiality? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _masked;
  bool? get masked => _$this._masked;
  set masked(bool? masked) => _$this._masked = masked;

  Gget_onboarding_dataData_getDefaultConfidentialityBuilder() {
    Gget_onboarding_dataData_getDefaultConfidentiality._initializeBuilder(this);
  }

  Gget_onboarding_dataData_getDefaultConfidentialityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _masked = $v.masked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_onboarding_dataData_getDefaultConfidentiality other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_onboarding_dataData_getDefaultConfidentiality;
  }

  @override
  void update(
      void Function(Gget_onboarding_dataData_getDefaultConfidentialityBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_onboarding_dataData_getDefaultConfidentiality build() => _build();

  _$Gget_onboarding_dataData_getDefaultConfidentiality _build() {
    final _$result = _$v ??
        new _$Gget_onboarding_dataData_getDefaultConfidentiality._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_onboarding_dataData_getDefaultConfidentiality',
                'G__typename'),
            masked: BuiltValueNullFieldError.checkNotNull(
                masked,
                r'Gget_onboarding_dataData_getDefaultConfidentiality',
                'masked'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
