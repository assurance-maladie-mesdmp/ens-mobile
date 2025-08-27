// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_groupe_sanguin_update_groupe_sanguin.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_groupe_sanguinData> _$gupdateGroupeSanguinDataSerializer =
    new _$Gupdate_groupe_sanguinDataSerializer();
Serializer<Gupdate_groupe_sanguinData_updateBloodGroup>
    _$gupdateGroupeSanguinDataUpdateBloodGroupSerializer =
    new _$Gupdate_groupe_sanguinData_updateBloodGroupSerializer();

class _$Gupdate_groupe_sanguinDataSerializer
    implements StructuredSerializer<Gupdate_groupe_sanguinData> {
  @override
  final Iterable<Type> types = const [
    Gupdate_groupe_sanguinData,
    _$Gupdate_groupe_sanguinData
  ];
  @override
  final String wireName = 'Gupdate_groupe_sanguinData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_groupe_sanguinData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'updateBloodGroup',
      serializers.serialize(object.updateBloodGroup,
          specifiedType:
              const FullType(Gupdate_groupe_sanguinData_updateBloodGroup)),
    ];

    return result;
  }

  @override
  Gupdate_groupe_sanguinData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_groupe_sanguinDataBuilder();

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
        case 'updateBloodGroup':
          result.updateBloodGroup.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gupdate_groupe_sanguinData_updateBloodGroup))!
              as Gupdate_groupe_sanguinData_updateBloodGroup);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_groupe_sanguinData_updateBloodGroupSerializer
    implements
        StructuredSerializer<Gupdate_groupe_sanguinData_updateBloodGroup> {
  @override
  final Iterable<Type> types = const [
    Gupdate_groupe_sanguinData_updateBloodGroup,
    _$Gupdate_groupe_sanguinData_updateBloodGroup
  ];
  @override
  final String wireName = 'Gupdate_groupe_sanguinData_updateBloodGroup';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gupdate_groupe_sanguinData_updateBloodGroup object,
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
  Gupdate_groupe_sanguinData_updateBloodGroup deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_groupe_sanguinData_updateBloodGroupBuilder();

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

class _$Gupdate_groupe_sanguinData extends Gupdate_groupe_sanguinData {
  @override
  final String G__typename;
  @override
  final Gupdate_groupe_sanguinData_updateBloodGroup updateBloodGroup;

  factory _$Gupdate_groupe_sanguinData(
          [void Function(Gupdate_groupe_sanguinDataBuilder)? updates]) =>
      (new Gupdate_groupe_sanguinDataBuilder()..update(updates))._build();

  _$Gupdate_groupe_sanguinData._(
      {required this.G__typename, required this.updateBloodGroup})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_groupe_sanguinData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        updateBloodGroup, r'Gupdate_groupe_sanguinData', 'updateBloodGroup');
  }

  @override
  Gupdate_groupe_sanguinData rebuild(
          void Function(Gupdate_groupe_sanguinDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_groupe_sanguinDataBuilder toBuilder() =>
      new Gupdate_groupe_sanguinDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_groupe_sanguinData &&
        G__typename == other.G__typename &&
        updateBloodGroup == other.updateBloodGroup;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, updateBloodGroup.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_groupe_sanguinData')
          ..add('G__typename', G__typename)
          ..add('updateBloodGroup', updateBloodGroup))
        .toString();
  }
}

class Gupdate_groupe_sanguinDataBuilder
    implements
        Builder<Gupdate_groupe_sanguinData, Gupdate_groupe_sanguinDataBuilder> {
  _$Gupdate_groupe_sanguinData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gupdate_groupe_sanguinData_updateBloodGroupBuilder? _updateBloodGroup;
  Gupdate_groupe_sanguinData_updateBloodGroupBuilder get updateBloodGroup =>
      _$this._updateBloodGroup ??=
          new Gupdate_groupe_sanguinData_updateBloodGroupBuilder();
  set updateBloodGroup(
          Gupdate_groupe_sanguinData_updateBloodGroupBuilder?
              updateBloodGroup) =>
      _$this._updateBloodGroup = updateBloodGroup;

  Gupdate_groupe_sanguinDataBuilder() {
    Gupdate_groupe_sanguinData._initializeBuilder(this);
  }

  Gupdate_groupe_sanguinDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateBloodGroup = $v.updateBloodGroup.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_groupe_sanguinData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_groupe_sanguinData;
  }

  @override
  void update(void Function(Gupdate_groupe_sanguinDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_groupe_sanguinData build() => _build();

  _$Gupdate_groupe_sanguinData _build() {
    _$Gupdate_groupe_sanguinData _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_groupe_sanguinData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gupdate_groupe_sanguinData', 'G__typename'),
              updateBloodGroup: updateBloodGroup.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateBloodGroup';
        updateBloodGroup.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_groupe_sanguinData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_groupe_sanguinData_updateBloodGroup
    extends Gupdate_groupe_sanguinData_updateBloodGroup {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gupdate_groupe_sanguinData_updateBloodGroup(
          [void Function(Gupdate_groupe_sanguinData_updateBloodGroupBuilder)?
              updates]) =>
      (new Gupdate_groupe_sanguinData_updateBloodGroupBuilder()
            ..update(updates))
          ._build();

  _$Gupdate_groupe_sanguinData_updateBloodGroup._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gupdate_groupe_sanguinData_updateBloodGroup', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gupdate_groupe_sanguinData_updateBloodGroup', 'success');
  }

  @override
  Gupdate_groupe_sanguinData_updateBloodGroup rebuild(
          void Function(Gupdate_groupe_sanguinData_updateBloodGroupBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_groupe_sanguinData_updateBloodGroupBuilder toBuilder() =>
      new Gupdate_groupe_sanguinData_updateBloodGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_groupe_sanguinData_updateBloodGroup &&
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
            r'Gupdate_groupe_sanguinData_updateBloodGroup')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gupdate_groupe_sanguinData_updateBloodGroupBuilder
    implements
        Builder<Gupdate_groupe_sanguinData_updateBloodGroup,
            Gupdate_groupe_sanguinData_updateBloodGroupBuilder> {
  _$Gupdate_groupe_sanguinData_updateBloodGroup? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gupdate_groupe_sanguinData_updateBloodGroupBuilder() {
    Gupdate_groupe_sanguinData_updateBloodGroup._initializeBuilder(this);
  }

  Gupdate_groupe_sanguinData_updateBloodGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_groupe_sanguinData_updateBloodGroup other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_groupe_sanguinData_updateBloodGroup;
  }

  @override
  void update(
      void Function(Gupdate_groupe_sanguinData_updateBloodGroupBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_groupe_sanguinData_updateBloodGroup build() => _build();

  _$Gupdate_groupe_sanguinData_updateBloodGroup _build() {
    final _$result = _$v ??
        new _$Gupdate_groupe_sanguinData_updateBloodGroup._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gupdate_groupe_sanguinData_updateBloodGroup', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(success,
                r'Gupdate_groupe_sanguinData_updateBloodGroup', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
