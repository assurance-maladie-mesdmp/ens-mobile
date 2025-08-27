// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_account_set_onboarding_done.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gset_onboarding_doneData> _$gsetOnboardingDoneDataSerializer =
    new _$Gset_onboarding_doneDataSerializer();
Serializer<Gset_onboarding_doneData_setOnboarding>
    _$gsetOnboardingDoneDataSetOnboardingSerializer =
    new _$Gset_onboarding_doneData_setOnboardingSerializer();
Serializer<Gset_onboarding_doneData_setPreferenceConfidentialityDate>
    _$gsetOnboardingDoneDataSetPreferenceConfidentialityDateSerializer =
    new _$Gset_onboarding_doneData_setPreferenceConfidentialityDateSerializer();

class _$Gset_onboarding_doneDataSerializer
    implements StructuredSerializer<Gset_onboarding_doneData> {
  @override
  final Iterable<Type> types = const [
    Gset_onboarding_doneData,
    _$Gset_onboarding_doneData
  ];
  @override
  final String wireName = 'Gset_onboarding_doneData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gset_onboarding_doneData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'setOnboarding',
      serializers.serialize(object.setOnboarding,
          specifiedType:
              const FullType(Gset_onboarding_doneData_setOnboarding)),
      'setPreferenceConfidentialityDate',
      serializers.serialize(object.setPreferenceConfidentialityDate,
          specifiedType: const FullType(
              Gset_onboarding_doneData_setPreferenceConfidentialityDate)),
    ];

    return result;
  }

  @override
  Gset_onboarding_doneData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gset_onboarding_doneDataBuilder();

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
        case 'setOnboarding':
          result.setOnboarding.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gset_onboarding_doneData_setOnboarding))!
              as Gset_onboarding_doneData_setOnboarding);
          break;
        case 'setPreferenceConfidentialityDate':
          result.setPreferenceConfidentialityDate.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Gset_onboarding_doneData_setPreferenceConfidentialityDate))!
              as Gset_onboarding_doneData_setPreferenceConfidentialityDate);
          break;
      }
    }

    return result.build();
  }
}

class _$Gset_onboarding_doneData_setOnboardingSerializer
    implements StructuredSerializer<Gset_onboarding_doneData_setOnboarding> {
  @override
  final Iterable<Type> types = const [
    Gset_onboarding_doneData_setOnboarding,
    _$Gset_onboarding_doneData_setOnboarding
  ];
  @override
  final String wireName = 'Gset_onboarding_doneData_setOnboarding';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gset_onboarding_doneData_setOnboarding object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'success',
      serializers.serialize(object.success,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gset_onboarding_doneData_setOnboarding deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gset_onboarding_doneData_setOnboardingBuilder();

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
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gset_onboarding_doneData_setPreferenceConfidentialityDateSerializer
    implements
        StructuredSerializer<
            Gset_onboarding_doneData_setPreferenceConfidentialityDate> {
  @override
  final Iterable<Type> types = const [
    Gset_onboarding_doneData_setPreferenceConfidentialityDate,
    _$Gset_onboarding_doneData_setPreferenceConfidentialityDate
  ];
  @override
  final String wireName =
      'Gset_onboarding_doneData_setPreferenceConfidentialityDate';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gset_onboarding_doneData_setPreferenceConfidentialityDate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'success',
      serializers.serialize(object.success,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gset_onboarding_doneData_setPreferenceConfidentialityDate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gset_onboarding_doneData_setPreferenceConfidentialityDateBuilder();

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
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gset_onboarding_doneData extends Gset_onboarding_doneData {
  @override
  final String G__typename;
  @override
  final Gset_onboarding_doneData_setOnboarding setOnboarding;
  @override
  final Gset_onboarding_doneData_setPreferenceConfidentialityDate
      setPreferenceConfidentialityDate;

  factory _$Gset_onboarding_doneData(
          [void Function(Gset_onboarding_doneDataBuilder)? updates]) =>
      (new Gset_onboarding_doneDataBuilder()..update(updates))._build();

  _$Gset_onboarding_doneData._(
      {required this.G__typename,
      required this.setOnboarding,
      required this.setPreferenceConfidentialityDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gset_onboarding_doneData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        setOnboarding, r'Gset_onboarding_doneData', 'setOnboarding');
    BuiltValueNullFieldError.checkNotNull(setPreferenceConfidentialityDate,
        r'Gset_onboarding_doneData', 'setPreferenceConfidentialityDate');
  }

  @override
  Gset_onboarding_doneData rebuild(
          void Function(Gset_onboarding_doneDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gset_onboarding_doneDataBuilder toBuilder() =>
      new Gset_onboarding_doneDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gset_onboarding_doneData &&
        G__typename == other.G__typename &&
        setOnboarding == other.setOnboarding &&
        setPreferenceConfidentialityDate ==
            other.setPreferenceConfidentialityDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, setOnboarding.hashCode);
    _$hash = $jc(_$hash, setPreferenceConfidentialityDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gset_onboarding_doneData')
          ..add('G__typename', G__typename)
          ..add('setOnboarding', setOnboarding)
          ..add('setPreferenceConfidentialityDate',
              setPreferenceConfidentialityDate))
        .toString();
  }
}

class Gset_onboarding_doneDataBuilder
    implements
        Builder<Gset_onboarding_doneData, Gset_onboarding_doneDataBuilder> {
  _$Gset_onboarding_doneData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gset_onboarding_doneData_setOnboardingBuilder? _setOnboarding;
  Gset_onboarding_doneData_setOnboardingBuilder get setOnboarding =>
      _$this._setOnboarding ??=
          new Gset_onboarding_doneData_setOnboardingBuilder();
  set setOnboarding(
          Gset_onboarding_doneData_setOnboardingBuilder? setOnboarding) =>
      _$this._setOnboarding = setOnboarding;

  Gset_onboarding_doneData_setPreferenceConfidentialityDateBuilder?
      _setPreferenceConfidentialityDate;
  Gset_onboarding_doneData_setPreferenceConfidentialityDateBuilder
      get setPreferenceConfidentialityDate => _$this
              ._setPreferenceConfidentialityDate ??=
          new Gset_onboarding_doneData_setPreferenceConfidentialityDateBuilder();
  set setPreferenceConfidentialityDate(
          Gset_onboarding_doneData_setPreferenceConfidentialityDateBuilder?
              setPreferenceConfidentialityDate) =>
      _$this._setPreferenceConfidentialityDate =
          setPreferenceConfidentialityDate;

  Gset_onboarding_doneDataBuilder() {
    Gset_onboarding_doneData._initializeBuilder(this);
  }

  Gset_onboarding_doneDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _setOnboarding = $v.setOnboarding.toBuilder();
      _setPreferenceConfidentialityDate =
          $v.setPreferenceConfidentialityDate.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gset_onboarding_doneData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gset_onboarding_doneData;
  }

  @override
  void update(void Function(Gset_onboarding_doneDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gset_onboarding_doneData build() => _build();

  _$Gset_onboarding_doneData _build() {
    _$Gset_onboarding_doneData _$result;
    try {
      _$result = _$v ??
          new _$Gset_onboarding_doneData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gset_onboarding_doneData', 'G__typename'),
              setOnboarding: setOnboarding.build(),
              setPreferenceConfidentialityDate:
                  setPreferenceConfidentialityDate.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'setOnboarding';
        setOnboarding.build();
        _$failedField = 'setPreferenceConfidentialityDate';
        setPreferenceConfidentialityDate.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gset_onboarding_doneData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gset_onboarding_doneData_setOnboarding
    extends Gset_onboarding_doneData_setOnboarding {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gset_onboarding_doneData_setOnboarding(
          [void Function(Gset_onboarding_doneData_setOnboardingBuilder)?
              updates]) =>
      (new Gset_onboarding_doneData_setOnboardingBuilder()..update(updates))
          ._build();

  _$Gset_onboarding_doneData_setOnboarding._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gset_onboarding_doneData_setOnboarding', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gset_onboarding_doneData_setOnboarding', 'success');
  }

  @override
  Gset_onboarding_doneData_setOnboarding rebuild(
          void Function(Gset_onboarding_doneData_setOnboardingBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gset_onboarding_doneData_setOnboardingBuilder toBuilder() =>
      new Gset_onboarding_doneData_setOnboardingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gset_onboarding_doneData_setOnboarding &&
        G__typename == other.G__typename &&
        success == other.success;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gset_onboarding_doneData_setOnboarding')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gset_onboarding_doneData_setOnboardingBuilder
    implements
        Builder<Gset_onboarding_doneData_setOnboarding,
            Gset_onboarding_doneData_setOnboardingBuilder> {
  _$Gset_onboarding_doneData_setOnboarding? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gset_onboarding_doneData_setOnboardingBuilder() {
    Gset_onboarding_doneData_setOnboarding._initializeBuilder(this);
  }

  Gset_onboarding_doneData_setOnboardingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gset_onboarding_doneData_setOnboarding other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gset_onboarding_doneData_setOnboarding;
  }

  @override
  void update(
      void Function(Gset_onboarding_doneData_setOnboardingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gset_onboarding_doneData_setOnboarding build() => _build();

  _$Gset_onboarding_doneData_setOnboarding _build() {
    final _$result = _$v ??
        new _$Gset_onboarding_doneData_setOnboarding._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gset_onboarding_doneData_setOnboarding', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'Gset_onboarding_doneData_setOnboarding', 'success'));
    replace(_$result);
    return _$result;
  }
}

class _$Gset_onboarding_doneData_setPreferenceConfidentialityDate
    extends Gset_onboarding_doneData_setPreferenceConfidentialityDate {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gset_onboarding_doneData_setPreferenceConfidentialityDate(
          [void Function(
                  Gset_onboarding_doneData_setPreferenceConfidentialityDateBuilder)?
              updates]) =>
      (new Gset_onboarding_doneData_setPreferenceConfidentialityDateBuilder()
            ..update(updates))
          ._build();

  _$Gset_onboarding_doneData_setPreferenceConfidentialityDate._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gset_onboarding_doneData_setPreferenceConfidentialityDate',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success,
        r'Gset_onboarding_doneData_setPreferenceConfidentialityDate',
        'success');
  }

  @override
  Gset_onboarding_doneData_setPreferenceConfidentialityDate rebuild(
          void Function(
                  Gset_onboarding_doneData_setPreferenceConfidentialityDateBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gset_onboarding_doneData_setPreferenceConfidentialityDateBuilder
      toBuilder() =>
          new Gset_onboarding_doneData_setPreferenceConfidentialityDateBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gset_onboarding_doneData_setPreferenceConfidentialityDate &&
        G__typename == other.G__typename &&
        success == other.success;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gset_onboarding_doneData_setPreferenceConfidentialityDate')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gset_onboarding_doneData_setPreferenceConfidentialityDateBuilder
    implements
        Builder<Gset_onboarding_doneData_setPreferenceConfidentialityDate,
            Gset_onboarding_doneData_setPreferenceConfidentialityDateBuilder> {
  _$Gset_onboarding_doneData_setPreferenceConfidentialityDate? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gset_onboarding_doneData_setPreferenceConfidentialityDateBuilder() {
    Gset_onboarding_doneData_setPreferenceConfidentialityDate
        ._initializeBuilder(this);
  }

  Gset_onboarding_doneData_setPreferenceConfidentialityDateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gset_onboarding_doneData_setPreferenceConfidentialityDate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gset_onboarding_doneData_setPreferenceConfidentialityDate;
  }

  @override
  void update(
      void Function(
              Gset_onboarding_doneData_setPreferenceConfidentialityDateBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gset_onboarding_doneData_setPreferenceConfidentialityDate build() => _build();

  _$Gset_onboarding_doneData_setPreferenceConfidentialityDate _build() {
    final _$result = _$v ??
        new _$Gset_onboarding_doneData_setPreferenceConfidentialityDate._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gset_onboarding_doneData_setPreferenceConfidentialityDate',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gset_onboarding_doneData_setPreferenceConfidentialityDate',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
