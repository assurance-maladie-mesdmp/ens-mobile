// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_allergies_update_allergie.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_allergieData> _$gupdateAllergieDataSerializer =
    new _$Gupdate_allergieDataSerializer();
Serializer<Gupdate_allergieData_putAllergy>
    _$gupdateAllergieDataPutAllergySerializer =
    new _$Gupdate_allergieData_putAllergySerializer();

class _$Gupdate_allergieDataSerializer
    implements StructuredSerializer<Gupdate_allergieData> {
  @override
  final Iterable<Type> types = const [
    Gupdate_allergieData,
    _$Gupdate_allergieData
  ];
  @override
  final String wireName = 'Gupdate_allergieData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_allergieData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'putAllergy',
      serializers.serialize(object.putAllergy,
          specifiedType: const FullType(Gupdate_allergieData_putAllergy)),
    ];

    return result;
  }

  @override
  Gupdate_allergieData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_allergieDataBuilder();

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
        case 'putAllergy':
          result.putAllergy.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gupdate_allergieData_putAllergy))!
              as Gupdate_allergieData_putAllergy);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_allergieData_putAllergySerializer
    implements StructuredSerializer<Gupdate_allergieData_putAllergy> {
  @override
  final Iterable<Type> types = const [
    Gupdate_allergieData_putAllergy,
    _$Gupdate_allergieData_putAllergy
  ];
  @override
  final String wireName = 'Gupdate_allergieData_putAllergy';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_allergieData_putAllergy object,
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
  Gupdate_allergieData_putAllergy deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_allergieData_putAllergyBuilder();

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

class _$Gupdate_allergieData extends Gupdate_allergieData {
  @override
  final String G__typename;
  @override
  final Gupdate_allergieData_putAllergy putAllergy;

  factory _$Gupdate_allergieData(
          [void Function(Gupdate_allergieDataBuilder)? updates]) =>
      (new Gupdate_allergieDataBuilder()..update(updates))._build();

  _$Gupdate_allergieData._(
      {required this.G__typename, required this.putAllergy})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_allergieData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        putAllergy, r'Gupdate_allergieData', 'putAllergy');
  }

  @override
  Gupdate_allergieData rebuild(
          void Function(Gupdate_allergieDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_allergieDataBuilder toBuilder() =>
      new Gupdate_allergieDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_allergieData &&
        G__typename == other.G__typename &&
        putAllergy == other.putAllergy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, putAllergy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_allergieData')
          ..add('G__typename', G__typename)
          ..add('putAllergy', putAllergy))
        .toString();
  }
}

class Gupdate_allergieDataBuilder
    implements Builder<Gupdate_allergieData, Gupdate_allergieDataBuilder> {
  _$Gupdate_allergieData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gupdate_allergieData_putAllergyBuilder? _putAllergy;
  Gupdate_allergieData_putAllergyBuilder get putAllergy =>
      _$this._putAllergy ??= new Gupdate_allergieData_putAllergyBuilder();
  set putAllergy(Gupdate_allergieData_putAllergyBuilder? putAllergy) =>
      _$this._putAllergy = putAllergy;

  Gupdate_allergieDataBuilder() {
    Gupdate_allergieData._initializeBuilder(this);
  }

  Gupdate_allergieDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _putAllergy = $v.putAllergy.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_allergieData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_allergieData;
  }

  @override
  void update(void Function(Gupdate_allergieDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_allergieData build() => _build();

  _$Gupdate_allergieData _build() {
    _$Gupdate_allergieData _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_allergieData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gupdate_allergieData', 'G__typename'),
              putAllergy: putAllergy.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'putAllergy';
        putAllergy.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_allergieData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_allergieData_putAllergy
    extends Gupdate_allergieData_putAllergy {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gupdate_allergieData_putAllergy(
          [void Function(Gupdate_allergieData_putAllergyBuilder)? updates]) =>
      (new Gupdate_allergieData_putAllergyBuilder()..update(updates))._build();

  _$Gupdate_allergieData_putAllergy._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_allergieData_putAllergy', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gupdate_allergieData_putAllergy', 'success');
  }

  @override
  Gupdate_allergieData_putAllergy rebuild(
          void Function(Gupdate_allergieData_putAllergyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_allergieData_putAllergyBuilder toBuilder() =>
      new Gupdate_allergieData_putAllergyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_allergieData_putAllergy &&
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
    return (newBuiltValueToStringHelper(r'Gupdate_allergieData_putAllergy')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gupdate_allergieData_putAllergyBuilder
    implements
        Builder<Gupdate_allergieData_putAllergy,
            Gupdate_allergieData_putAllergyBuilder> {
  _$Gupdate_allergieData_putAllergy? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gupdate_allergieData_putAllergyBuilder() {
    Gupdate_allergieData_putAllergy._initializeBuilder(this);
  }

  Gupdate_allergieData_putAllergyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_allergieData_putAllergy other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_allergieData_putAllergy;
  }

  @override
  void update(void Function(Gupdate_allergieData_putAllergyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_allergieData_putAllergy build() => _build();

  _$Gupdate_allergieData_putAllergy _build() {
    final _$result = _$v ??
        new _$Gupdate_allergieData_putAllergy._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'Gupdate_allergieData_putAllergy', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'Gupdate_allergieData_putAllergy', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
