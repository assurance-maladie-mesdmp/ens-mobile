// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_handicap_update.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_handicapData> _$gupdateHandicapDataSerializer =
    new _$Gupdate_handicapDataSerializer();
Serializer<Gupdate_handicapData_updateDisability>
    _$gupdateHandicapDataUpdateDisabilitySerializer =
    new _$Gupdate_handicapData_updateDisabilitySerializer();

class _$Gupdate_handicapDataSerializer
    implements StructuredSerializer<Gupdate_handicapData> {
  @override
  final Iterable<Type> types = const [
    Gupdate_handicapData,
    _$Gupdate_handicapData
  ];
  @override
  final String wireName = 'Gupdate_handicapData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_handicapData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'updateDisability',
      serializers.serialize(object.updateDisability,
          specifiedType: const FullType(Gupdate_handicapData_updateDisability)),
    ];

    return result;
  }

  @override
  Gupdate_handicapData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_handicapDataBuilder();

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
        case 'updateDisability':
          result.updateDisability.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gupdate_handicapData_updateDisability))!
              as Gupdate_handicapData_updateDisability);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_handicapData_updateDisabilitySerializer
    implements StructuredSerializer<Gupdate_handicapData_updateDisability> {
  @override
  final Iterable<Type> types = const [
    Gupdate_handicapData_updateDisability,
    _$Gupdate_handicapData_updateDisability
  ];
  @override
  final String wireName = 'Gupdate_handicapData_updateDisability';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_handicapData_updateDisability object,
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
  Gupdate_handicapData_updateDisability deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_handicapData_updateDisabilityBuilder();

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

class _$Gupdate_handicapData extends Gupdate_handicapData {
  @override
  final String G__typename;
  @override
  final Gupdate_handicapData_updateDisability updateDisability;

  factory _$Gupdate_handicapData(
          [void Function(Gupdate_handicapDataBuilder)? updates]) =>
      (new Gupdate_handicapDataBuilder()..update(updates))._build();

  _$Gupdate_handicapData._(
      {required this.G__typename, required this.updateDisability})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_handicapData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        updateDisability, r'Gupdate_handicapData', 'updateDisability');
  }

  @override
  Gupdate_handicapData rebuild(
          void Function(Gupdate_handicapDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_handicapDataBuilder toBuilder() =>
      new Gupdate_handicapDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_handicapData &&
        G__typename == other.G__typename &&
        updateDisability == other.updateDisability;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, updateDisability.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_handicapData')
          ..add('G__typename', G__typename)
          ..add('updateDisability', updateDisability))
        .toString();
  }
}

class Gupdate_handicapDataBuilder
    implements Builder<Gupdate_handicapData, Gupdate_handicapDataBuilder> {
  _$Gupdate_handicapData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gupdate_handicapData_updateDisabilityBuilder? _updateDisability;
  Gupdate_handicapData_updateDisabilityBuilder get updateDisability =>
      _$this._updateDisability ??=
          new Gupdate_handicapData_updateDisabilityBuilder();
  set updateDisability(
          Gupdate_handicapData_updateDisabilityBuilder? updateDisability) =>
      _$this._updateDisability = updateDisability;

  Gupdate_handicapDataBuilder() {
    Gupdate_handicapData._initializeBuilder(this);
  }

  Gupdate_handicapDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateDisability = $v.updateDisability.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_handicapData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_handicapData;
  }

  @override
  void update(void Function(Gupdate_handicapDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_handicapData build() => _build();

  _$Gupdate_handicapData _build() {
    _$Gupdate_handicapData _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_handicapData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gupdate_handicapData', 'G__typename'),
              updateDisability: updateDisability.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateDisability';
        updateDisability.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_handicapData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_handicapData_updateDisability
    extends Gupdate_handicapData_updateDisability {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gupdate_handicapData_updateDisability(
          [void Function(Gupdate_handicapData_updateDisabilityBuilder)?
              updates]) =>
      (new Gupdate_handicapData_updateDisabilityBuilder()..update(updates))
          ._build();

  _$Gupdate_handicapData_updateDisability._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_handicapData_updateDisability', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gupdate_handicapData_updateDisability', 'success');
  }

  @override
  Gupdate_handicapData_updateDisability rebuild(
          void Function(Gupdate_handicapData_updateDisabilityBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_handicapData_updateDisabilityBuilder toBuilder() =>
      new Gupdate_handicapData_updateDisabilityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_handicapData_updateDisability &&
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
            r'Gupdate_handicapData_updateDisability')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gupdate_handicapData_updateDisabilityBuilder
    implements
        Builder<Gupdate_handicapData_updateDisability,
            Gupdate_handicapData_updateDisabilityBuilder> {
  _$Gupdate_handicapData_updateDisability? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gupdate_handicapData_updateDisabilityBuilder() {
    Gupdate_handicapData_updateDisability._initializeBuilder(this);
  }

  Gupdate_handicapData_updateDisabilityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_handicapData_updateDisability other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_handicapData_updateDisability;
  }

  @override
  void update(
      void Function(Gupdate_handicapData_updateDisabilityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_handicapData_updateDisability build() => _build();

  _$Gupdate_handicapData_updateDisability _build() {
    final _$result = _$v ??
        new _$Gupdate_handicapData_updateDisability._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gupdate_handicapData_updateDisability', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'Gupdate_handicapData_updateDisability', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
