// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_allergies_add_allergie.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gadd_allergieData> _$gaddAllergieDataSerializer =
    new _$Gadd_allergieDataSerializer();
Serializer<Gadd_allergieData_postAllergy>
    _$gaddAllergieDataPostAllergySerializer =
    new _$Gadd_allergieData_postAllergySerializer();

class _$Gadd_allergieDataSerializer
    implements StructuredSerializer<Gadd_allergieData> {
  @override
  final Iterable<Type> types = const [Gadd_allergieData, _$Gadd_allergieData];
  @override
  final String wireName = 'Gadd_allergieData';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gadd_allergieData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'postAllergy',
      serializers.serialize(object.postAllergy,
          specifiedType: const FullType(Gadd_allergieData_postAllergy)),
    ];

    return result;
  }

  @override
  Gadd_allergieData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_allergieDataBuilder();

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
        case 'postAllergy':
          result.postAllergy.replace(serializers.deserialize(value,
                  specifiedType: const FullType(Gadd_allergieData_postAllergy))!
              as Gadd_allergieData_postAllergy);
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_allergieData_postAllergySerializer
    implements StructuredSerializer<Gadd_allergieData_postAllergy> {
  @override
  final Iterable<Type> types = const [
    Gadd_allergieData_postAllergy,
    _$Gadd_allergieData_postAllergy
  ];
  @override
  final String wireName = 'Gadd_allergieData_postAllergy';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_allergieData_postAllergy object,
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
  Gadd_allergieData_postAllergy deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_allergieData_postAllergyBuilder();

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

class _$Gadd_allergieData extends Gadd_allergieData {
  @override
  final String G__typename;
  @override
  final Gadd_allergieData_postAllergy postAllergy;

  factory _$Gadd_allergieData(
          [void Function(Gadd_allergieDataBuilder)? updates]) =>
      (new Gadd_allergieDataBuilder()..update(updates))._build();

  _$Gadd_allergieData._({required this.G__typename, required this.postAllergy})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gadd_allergieData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        postAllergy, r'Gadd_allergieData', 'postAllergy');
  }

  @override
  Gadd_allergieData rebuild(void Function(Gadd_allergieDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_allergieDataBuilder toBuilder() =>
      new Gadd_allergieDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_allergieData &&
        G__typename == other.G__typename &&
        postAllergy == other.postAllergy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, postAllergy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_allergieData')
          ..add('G__typename', G__typename)
          ..add('postAllergy', postAllergy))
        .toString();
  }
}

class Gadd_allergieDataBuilder
    implements Builder<Gadd_allergieData, Gadd_allergieDataBuilder> {
  _$Gadd_allergieData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gadd_allergieData_postAllergyBuilder? _postAllergy;
  Gadd_allergieData_postAllergyBuilder get postAllergy =>
      _$this._postAllergy ??= new Gadd_allergieData_postAllergyBuilder();
  set postAllergy(Gadd_allergieData_postAllergyBuilder? postAllergy) =>
      _$this._postAllergy = postAllergy;

  Gadd_allergieDataBuilder() {
    Gadd_allergieData._initializeBuilder(this);
  }

  Gadd_allergieDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _postAllergy = $v.postAllergy.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_allergieData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_allergieData;
  }

  @override
  void update(void Function(Gadd_allergieDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_allergieData build() => _build();

  _$Gadd_allergieData _build() {
    _$Gadd_allergieData _$result;
    try {
      _$result = _$v ??
          new _$Gadd_allergieData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gadd_allergieData', 'G__typename'),
              postAllergy: postAllergy.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'postAllergy';
        postAllergy.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_allergieData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gadd_allergieData_postAllergy extends Gadd_allergieData_postAllergy {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gadd_allergieData_postAllergy(
          [void Function(Gadd_allergieData_postAllergyBuilder)? updates]) =>
      (new Gadd_allergieData_postAllergyBuilder()..update(updates))._build();

  _$Gadd_allergieData_postAllergy._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gadd_allergieData_postAllergy', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gadd_allergieData_postAllergy', 'success');
  }

  @override
  Gadd_allergieData_postAllergy rebuild(
          void Function(Gadd_allergieData_postAllergyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_allergieData_postAllergyBuilder toBuilder() =>
      new Gadd_allergieData_postAllergyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_allergieData_postAllergy &&
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
    return (newBuiltValueToStringHelper(r'Gadd_allergieData_postAllergy')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gadd_allergieData_postAllergyBuilder
    implements
        Builder<Gadd_allergieData_postAllergy,
            Gadd_allergieData_postAllergyBuilder> {
  _$Gadd_allergieData_postAllergy? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gadd_allergieData_postAllergyBuilder() {
    Gadd_allergieData_postAllergy._initializeBuilder(this);
  }

  Gadd_allergieData_postAllergyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_allergieData_postAllergy other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_allergieData_postAllergy;
  }

  @override
  void update(void Function(Gadd_allergieData_postAllergyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_allergieData_postAllergy build() => _build();

  _$Gadd_allergieData_postAllergy _build() {
    final _$result = _$v ??
        new _$Gadd_allergieData_postAllergy._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'Gadd_allergieData_postAllergy', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'Gadd_allergieData_postAllergy', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
