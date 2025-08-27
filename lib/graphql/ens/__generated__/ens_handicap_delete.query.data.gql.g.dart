// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_handicap_delete.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_handicapData> _$gdeleteHandicapDataSerializer =
    new _$Gdelete_handicapDataSerializer();
Serializer<Gdelete_handicapData_removeDisability>
    _$gdeleteHandicapDataRemoveDisabilitySerializer =
    new _$Gdelete_handicapData_removeDisabilitySerializer();

class _$Gdelete_handicapDataSerializer
    implements StructuredSerializer<Gdelete_handicapData> {
  @override
  final Iterable<Type> types = const [
    Gdelete_handicapData,
    _$Gdelete_handicapData
  ];
  @override
  final String wireName = 'Gdelete_handicapData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_handicapData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'removeDisability',
      serializers.serialize(object.removeDisability,
          specifiedType: const FullType(Gdelete_handicapData_removeDisability)),
    ];

    return result;
  }

  @override
  Gdelete_handicapData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_handicapDataBuilder();

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
        case 'removeDisability':
          result.removeDisability.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gdelete_handicapData_removeDisability))!
              as Gdelete_handicapData_removeDisability);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_handicapData_removeDisabilitySerializer
    implements StructuredSerializer<Gdelete_handicapData_removeDisability> {
  @override
  final Iterable<Type> types = const [
    Gdelete_handicapData_removeDisability,
    _$Gdelete_handicapData_removeDisability
  ];
  @override
  final String wireName = 'Gdelete_handicapData_removeDisability';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_handicapData_removeDisability object,
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
  Gdelete_handicapData_removeDisability deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_handicapData_removeDisabilityBuilder();

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

class _$Gdelete_handicapData extends Gdelete_handicapData {
  @override
  final String G__typename;
  @override
  final Gdelete_handicapData_removeDisability removeDisability;

  factory _$Gdelete_handicapData(
          [void Function(Gdelete_handicapDataBuilder)? updates]) =>
      (new Gdelete_handicapDataBuilder()..update(updates))._build();

  _$Gdelete_handicapData._(
      {required this.G__typename, required this.removeDisability})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_handicapData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        removeDisability, r'Gdelete_handicapData', 'removeDisability');
  }

  @override
  Gdelete_handicapData rebuild(
          void Function(Gdelete_handicapDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_handicapDataBuilder toBuilder() =>
      new Gdelete_handicapDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_handicapData &&
        G__typename == other.G__typename &&
        removeDisability == other.removeDisability;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, removeDisability.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_handicapData')
          ..add('G__typename', G__typename)
          ..add('removeDisability', removeDisability))
        .toString();
  }
}

class Gdelete_handicapDataBuilder
    implements Builder<Gdelete_handicapData, Gdelete_handicapDataBuilder> {
  _$Gdelete_handicapData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gdelete_handicapData_removeDisabilityBuilder? _removeDisability;
  Gdelete_handicapData_removeDisabilityBuilder get removeDisability =>
      _$this._removeDisability ??=
          new Gdelete_handicapData_removeDisabilityBuilder();
  set removeDisability(
          Gdelete_handicapData_removeDisabilityBuilder? removeDisability) =>
      _$this._removeDisability = removeDisability;

  Gdelete_handicapDataBuilder() {
    Gdelete_handicapData._initializeBuilder(this);
  }

  Gdelete_handicapDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _removeDisability = $v.removeDisability.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_handicapData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_handicapData;
  }

  @override
  void update(void Function(Gdelete_handicapDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_handicapData build() => _build();

  _$Gdelete_handicapData _build() {
    _$Gdelete_handicapData _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_handicapData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gdelete_handicapData', 'G__typename'),
              removeDisability: removeDisability.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'removeDisability';
        removeDisability.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_handicapData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gdelete_handicapData_removeDisability
    extends Gdelete_handicapData_removeDisability {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gdelete_handicapData_removeDisability(
          [void Function(Gdelete_handicapData_removeDisabilityBuilder)?
              updates]) =>
      (new Gdelete_handicapData_removeDisabilityBuilder()..update(updates))
          ._build();

  _$Gdelete_handicapData_removeDisability._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_handicapData_removeDisability', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gdelete_handicapData_removeDisability', 'success');
  }

  @override
  Gdelete_handicapData_removeDisability rebuild(
          void Function(Gdelete_handicapData_removeDisabilityBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_handicapData_removeDisabilityBuilder toBuilder() =>
      new Gdelete_handicapData_removeDisabilityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_handicapData_removeDisability &&
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
            r'Gdelete_handicapData_removeDisability')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gdelete_handicapData_removeDisabilityBuilder
    implements
        Builder<Gdelete_handicapData_removeDisability,
            Gdelete_handicapData_removeDisabilityBuilder> {
  _$Gdelete_handicapData_removeDisability? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gdelete_handicapData_removeDisabilityBuilder() {
    Gdelete_handicapData_removeDisability._initializeBuilder(this);
  }

  Gdelete_handicapData_removeDisabilityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_handicapData_removeDisability other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_handicapData_removeDisability;
  }

  @override
  void update(
      void Function(Gdelete_handicapData_removeDisabilityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_handicapData_removeDisability build() => _build();

  _$Gdelete_handicapData_removeDisability _build() {
    final _$result = _$v ??
        new _$Gdelete_handicapData_removeDisability._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gdelete_handicapData_removeDisability', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'Gdelete_handicapData_removeDisability', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
