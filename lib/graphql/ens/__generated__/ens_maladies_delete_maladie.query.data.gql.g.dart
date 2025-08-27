// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_maladies_delete_maladie.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_maladieData> _$gdeleteMaladieDataSerializer =
    new _$Gdelete_maladieDataSerializer();
Serializer<Gdelete_maladieData_deleteDisease>
    _$gdeleteMaladieDataDeleteDiseaseSerializer =
    new _$Gdelete_maladieData_deleteDiseaseSerializer();

class _$Gdelete_maladieDataSerializer
    implements StructuredSerializer<Gdelete_maladieData> {
  @override
  final Iterable<Type> types = const [
    Gdelete_maladieData,
    _$Gdelete_maladieData
  ];
  @override
  final String wireName = 'Gdelete_maladieData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_maladieData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'deleteDisease',
      serializers.serialize(object.deleteDisease,
          specifiedType: const FullType(Gdelete_maladieData_deleteDisease)),
    ];

    return result;
  }

  @override
  Gdelete_maladieData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_maladieDataBuilder();

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
        case 'deleteDisease':
          result.deleteDisease.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gdelete_maladieData_deleteDisease))!
              as Gdelete_maladieData_deleteDisease);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_maladieData_deleteDiseaseSerializer
    implements StructuredSerializer<Gdelete_maladieData_deleteDisease> {
  @override
  final Iterable<Type> types = const [
    Gdelete_maladieData_deleteDisease,
    _$Gdelete_maladieData_deleteDisease
  ];
  @override
  final String wireName = 'Gdelete_maladieData_deleteDisease';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_maladieData_deleteDisease object,
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
  Gdelete_maladieData_deleteDisease deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_maladieData_deleteDiseaseBuilder();

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

class _$Gdelete_maladieData extends Gdelete_maladieData {
  @override
  final String G__typename;
  @override
  final Gdelete_maladieData_deleteDisease deleteDisease;

  factory _$Gdelete_maladieData(
          [void Function(Gdelete_maladieDataBuilder)? updates]) =>
      (new Gdelete_maladieDataBuilder()..update(updates))._build();

  _$Gdelete_maladieData._(
      {required this.G__typename, required this.deleteDisease})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_maladieData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        deleteDisease, r'Gdelete_maladieData', 'deleteDisease');
  }

  @override
  Gdelete_maladieData rebuild(
          void Function(Gdelete_maladieDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_maladieDataBuilder toBuilder() =>
      new Gdelete_maladieDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_maladieData &&
        G__typename == other.G__typename &&
        deleteDisease == other.deleteDisease;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deleteDisease.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_maladieData')
          ..add('G__typename', G__typename)
          ..add('deleteDisease', deleteDisease))
        .toString();
  }
}

class Gdelete_maladieDataBuilder
    implements Builder<Gdelete_maladieData, Gdelete_maladieDataBuilder> {
  _$Gdelete_maladieData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gdelete_maladieData_deleteDiseaseBuilder? _deleteDisease;
  Gdelete_maladieData_deleteDiseaseBuilder get deleteDisease =>
      _$this._deleteDisease ??= new Gdelete_maladieData_deleteDiseaseBuilder();
  set deleteDisease(Gdelete_maladieData_deleteDiseaseBuilder? deleteDisease) =>
      _$this._deleteDisease = deleteDisease;

  Gdelete_maladieDataBuilder() {
    Gdelete_maladieData._initializeBuilder(this);
  }

  Gdelete_maladieDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteDisease = $v.deleteDisease.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_maladieData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_maladieData;
  }

  @override
  void update(void Function(Gdelete_maladieDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_maladieData build() => _build();

  _$Gdelete_maladieData _build() {
    _$Gdelete_maladieData _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_maladieData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gdelete_maladieData', 'G__typename'),
              deleteDisease: deleteDisease.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteDisease';
        deleteDisease.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_maladieData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gdelete_maladieData_deleteDisease
    extends Gdelete_maladieData_deleteDisease {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gdelete_maladieData_deleteDisease(
          [void Function(Gdelete_maladieData_deleteDiseaseBuilder)? updates]) =>
      (new Gdelete_maladieData_deleteDiseaseBuilder()..update(updates))
          ._build();

  _$Gdelete_maladieData_deleteDisease._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_maladieData_deleteDisease', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gdelete_maladieData_deleteDisease', 'success');
  }

  @override
  Gdelete_maladieData_deleteDisease rebuild(
          void Function(Gdelete_maladieData_deleteDiseaseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_maladieData_deleteDiseaseBuilder toBuilder() =>
      new Gdelete_maladieData_deleteDiseaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_maladieData_deleteDisease &&
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
    return (newBuiltValueToStringHelper(r'Gdelete_maladieData_deleteDisease')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gdelete_maladieData_deleteDiseaseBuilder
    implements
        Builder<Gdelete_maladieData_deleteDisease,
            Gdelete_maladieData_deleteDiseaseBuilder> {
  _$Gdelete_maladieData_deleteDisease? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gdelete_maladieData_deleteDiseaseBuilder() {
    Gdelete_maladieData_deleteDisease._initializeBuilder(this);
  }

  Gdelete_maladieData_deleteDiseaseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_maladieData_deleteDisease other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_maladieData_deleteDisease;
  }

  @override
  void update(
      void Function(Gdelete_maladieData_deleteDiseaseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_maladieData_deleteDisease build() => _build();

  _$Gdelete_maladieData_deleteDisease _build() {
    final _$result = _$v ??
        new _$Gdelete_maladieData_deleteDisease._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gdelete_maladieData_deleteDisease', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'Gdelete_maladieData_deleteDisease', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
