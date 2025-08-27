// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_allergies_delete_allergie.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_allergieData> _$gdeleteAllergieDataSerializer =
    new _$Gdelete_allergieDataSerializer();
Serializer<Gdelete_allergieData_deleteAllergy>
    _$gdeleteAllergieDataDeleteAllergySerializer =
    new _$Gdelete_allergieData_deleteAllergySerializer();

class _$Gdelete_allergieDataSerializer
    implements StructuredSerializer<Gdelete_allergieData> {
  @override
  final Iterable<Type> types = const [
    Gdelete_allergieData,
    _$Gdelete_allergieData
  ];
  @override
  final String wireName = 'Gdelete_allergieData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_allergieData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'deleteAllergy',
      serializers.serialize(object.deleteAllergy,
          specifiedType: const FullType(Gdelete_allergieData_deleteAllergy)),
    ];

    return result;
  }

  @override
  Gdelete_allergieData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_allergieDataBuilder();

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
        case 'deleteAllergy':
          result.deleteAllergy.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gdelete_allergieData_deleteAllergy))!
              as Gdelete_allergieData_deleteAllergy);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_allergieData_deleteAllergySerializer
    implements StructuredSerializer<Gdelete_allergieData_deleteAllergy> {
  @override
  final Iterable<Type> types = const [
    Gdelete_allergieData_deleteAllergy,
    _$Gdelete_allergieData_deleteAllergy
  ];
  @override
  final String wireName = 'Gdelete_allergieData_deleteAllergy';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_allergieData_deleteAllergy object,
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
  Gdelete_allergieData_deleteAllergy deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_allergieData_deleteAllergyBuilder();

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

class _$Gdelete_allergieData extends Gdelete_allergieData {
  @override
  final String G__typename;
  @override
  final Gdelete_allergieData_deleteAllergy deleteAllergy;

  factory _$Gdelete_allergieData(
          [void Function(Gdelete_allergieDataBuilder)? updates]) =>
      (new Gdelete_allergieDataBuilder()..update(updates))._build();

  _$Gdelete_allergieData._(
      {required this.G__typename, required this.deleteAllergy})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_allergieData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        deleteAllergy, r'Gdelete_allergieData', 'deleteAllergy');
  }

  @override
  Gdelete_allergieData rebuild(
          void Function(Gdelete_allergieDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_allergieDataBuilder toBuilder() =>
      new Gdelete_allergieDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_allergieData &&
        G__typename == other.G__typename &&
        deleteAllergy == other.deleteAllergy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deleteAllergy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_allergieData')
          ..add('G__typename', G__typename)
          ..add('deleteAllergy', deleteAllergy))
        .toString();
  }
}

class Gdelete_allergieDataBuilder
    implements Builder<Gdelete_allergieData, Gdelete_allergieDataBuilder> {
  _$Gdelete_allergieData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gdelete_allergieData_deleteAllergyBuilder? _deleteAllergy;
  Gdelete_allergieData_deleteAllergyBuilder get deleteAllergy =>
      _$this._deleteAllergy ??= new Gdelete_allergieData_deleteAllergyBuilder();
  set deleteAllergy(Gdelete_allergieData_deleteAllergyBuilder? deleteAllergy) =>
      _$this._deleteAllergy = deleteAllergy;

  Gdelete_allergieDataBuilder() {
    Gdelete_allergieData._initializeBuilder(this);
  }

  Gdelete_allergieDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteAllergy = $v.deleteAllergy.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_allergieData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_allergieData;
  }

  @override
  void update(void Function(Gdelete_allergieDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_allergieData build() => _build();

  _$Gdelete_allergieData _build() {
    _$Gdelete_allergieData _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_allergieData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gdelete_allergieData', 'G__typename'),
              deleteAllergy: deleteAllergy.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteAllergy';
        deleteAllergy.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_allergieData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gdelete_allergieData_deleteAllergy
    extends Gdelete_allergieData_deleteAllergy {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gdelete_allergieData_deleteAllergy(
          [void Function(Gdelete_allergieData_deleteAllergyBuilder)?
              updates]) =>
      (new Gdelete_allergieData_deleteAllergyBuilder()..update(updates))
          ._build();

  _$Gdelete_allergieData_deleteAllergy._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_allergieData_deleteAllergy', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gdelete_allergieData_deleteAllergy', 'success');
  }

  @override
  Gdelete_allergieData_deleteAllergy rebuild(
          void Function(Gdelete_allergieData_deleteAllergyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_allergieData_deleteAllergyBuilder toBuilder() =>
      new Gdelete_allergieData_deleteAllergyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_allergieData_deleteAllergy &&
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
    return (newBuiltValueToStringHelper(r'Gdelete_allergieData_deleteAllergy')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gdelete_allergieData_deleteAllergyBuilder
    implements
        Builder<Gdelete_allergieData_deleteAllergy,
            Gdelete_allergieData_deleteAllergyBuilder> {
  _$Gdelete_allergieData_deleteAllergy? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gdelete_allergieData_deleteAllergyBuilder() {
    Gdelete_allergieData_deleteAllergy._initializeBuilder(this);
  }

  Gdelete_allergieData_deleteAllergyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_allergieData_deleteAllergy other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_allergieData_deleteAllergy;
  }

  @override
  void update(
      void Function(Gdelete_allergieData_deleteAllergyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_allergieData_deleteAllergy build() => _build();

  _$Gdelete_allergieData_deleteAllergy _build() {
    final _$result = _$v ??
        new _$Gdelete_allergieData_deleteAllergy._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gdelete_allergieData_deleteAllergy', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'Gdelete_allergieData_deleteAllergy', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
