// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_groupe_sanguin_delete_groupe_sanguin.mutation.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_groupe_sanguinData> _$gdeleteGroupeSanguinDataSerializer =
    new _$Gdelete_groupe_sanguinDataSerializer();
Serializer<Gdelete_groupe_sanguinData_removeBloodGroup>
    _$gdeleteGroupeSanguinDataRemoveBloodGroupSerializer =
    new _$Gdelete_groupe_sanguinData_removeBloodGroupSerializer();

class _$Gdelete_groupe_sanguinDataSerializer
    implements StructuredSerializer<Gdelete_groupe_sanguinData> {
  @override
  final Iterable<Type> types = const [
    Gdelete_groupe_sanguinData,
    _$Gdelete_groupe_sanguinData
  ];
  @override
  final String wireName = 'Gdelete_groupe_sanguinData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_groupe_sanguinData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'removeBloodGroup',
      serializers.serialize(object.removeBloodGroup,
          specifiedType:
              const FullType(Gdelete_groupe_sanguinData_removeBloodGroup)),
    ];

    return result;
  }

  @override
  Gdelete_groupe_sanguinData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_groupe_sanguinDataBuilder();

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
        case 'removeBloodGroup':
          result.removeBloodGroup.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gdelete_groupe_sanguinData_removeBloodGroup))!
              as Gdelete_groupe_sanguinData_removeBloodGroup);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_groupe_sanguinData_removeBloodGroupSerializer
    implements
        StructuredSerializer<Gdelete_groupe_sanguinData_removeBloodGroup> {
  @override
  final Iterable<Type> types = const [
    Gdelete_groupe_sanguinData_removeBloodGroup,
    _$Gdelete_groupe_sanguinData_removeBloodGroup
  ];
  @override
  final String wireName = 'Gdelete_groupe_sanguinData_removeBloodGroup';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gdelete_groupe_sanguinData_removeBloodGroup object,
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
  Gdelete_groupe_sanguinData_removeBloodGroup deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_groupe_sanguinData_removeBloodGroupBuilder();

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

class _$Gdelete_groupe_sanguinData extends Gdelete_groupe_sanguinData {
  @override
  final String G__typename;
  @override
  final Gdelete_groupe_sanguinData_removeBloodGroup removeBloodGroup;

  factory _$Gdelete_groupe_sanguinData(
          [void Function(Gdelete_groupe_sanguinDataBuilder)? updates]) =>
      (new Gdelete_groupe_sanguinDataBuilder()..update(updates))._build();

  _$Gdelete_groupe_sanguinData._(
      {required this.G__typename, required this.removeBloodGroup})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_groupe_sanguinData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        removeBloodGroup, r'Gdelete_groupe_sanguinData', 'removeBloodGroup');
  }

  @override
  Gdelete_groupe_sanguinData rebuild(
          void Function(Gdelete_groupe_sanguinDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_groupe_sanguinDataBuilder toBuilder() =>
      new Gdelete_groupe_sanguinDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_groupe_sanguinData &&
        G__typename == other.G__typename &&
        removeBloodGroup == other.removeBloodGroup;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, removeBloodGroup.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_groupe_sanguinData')
          ..add('G__typename', G__typename)
          ..add('removeBloodGroup', removeBloodGroup))
        .toString();
  }
}

class Gdelete_groupe_sanguinDataBuilder
    implements
        Builder<Gdelete_groupe_sanguinData, Gdelete_groupe_sanguinDataBuilder> {
  _$Gdelete_groupe_sanguinData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gdelete_groupe_sanguinData_removeBloodGroupBuilder? _removeBloodGroup;
  Gdelete_groupe_sanguinData_removeBloodGroupBuilder get removeBloodGroup =>
      _$this._removeBloodGroup ??=
          new Gdelete_groupe_sanguinData_removeBloodGroupBuilder();
  set removeBloodGroup(
          Gdelete_groupe_sanguinData_removeBloodGroupBuilder?
              removeBloodGroup) =>
      _$this._removeBloodGroup = removeBloodGroup;

  Gdelete_groupe_sanguinDataBuilder() {
    Gdelete_groupe_sanguinData._initializeBuilder(this);
  }

  Gdelete_groupe_sanguinDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _removeBloodGroup = $v.removeBloodGroup.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_groupe_sanguinData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_groupe_sanguinData;
  }

  @override
  void update(void Function(Gdelete_groupe_sanguinDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_groupe_sanguinData build() => _build();

  _$Gdelete_groupe_sanguinData _build() {
    _$Gdelete_groupe_sanguinData _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_groupe_sanguinData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gdelete_groupe_sanguinData', 'G__typename'),
              removeBloodGroup: removeBloodGroup.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'removeBloodGroup';
        removeBloodGroup.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_groupe_sanguinData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gdelete_groupe_sanguinData_removeBloodGroup
    extends Gdelete_groupe_sanguinData_removeBloodGroup {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gdelete_groupe_sanguinData_removeBloodGroup(
          [void Function(Gdelete_groupe_sanguinData_removeBloodGroupBuilder)?
              updates]) =>
      (new Gdelete_groupe_sanguinData_removeBloodGroupBuilder()
            ..update(updates))
          ._build();

  _$Gdelete_groupe_sanguinData_removeBloodGroup._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gdelete_groupe_sanguinData_removeBloodGroup', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gdelete_groupe_sanguinData_removeBloodGroup', 'success');
  }

  @override
  Gdelete_groupe_sanguinData_removeBloodGroup rebuild(
          void Function(Gdelete_groupe_sanguinData_removeBloodGroupBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_groupe_sanguinData_removeBloodGroupBuilder toBuilder() =>
      new Gdelete_groupe_sanguinData_removeBloodGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_groupe_sanguinData_removeBloodGroup &&
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
            r'Gdelete_groupe_sanguinData_removeBloodGroup')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gdelete_groupe_sanguinData_removeBloodGroupBuilder
    implements
        Builder<Gdelete_groupe_sanguinData_removeBloodGroup,
            Gdelete_groupe_sanguinData_removeBloodGroupBuilder> {
  _$Gdelete_groupe_sanguinData_removeBloodGroup? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gdelete_groupe_sanguinData_removeBloodGroupBuilder() {
    Gdelete_groupe_sanguinData_removeBloodGroup._initializeBuilder(this);
  }

  Gdelete_groupe_sanguinData_removeBloodGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_groupe_sanguinData_removeBloodGroup other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_groupe_sanguinData_removeBloodGroup;
  }

  @override
  void update(
      void Function(Gdelete_groupe_sanguinData_removeBloodGroupBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_groupe_sanguinData_removeBloodGroup build() => _build();

  _$Gdelete_groupe_sanguinData_removeBloodGroup _build() {
    final _$result = _$v ??
        new _$Gdelete_groupe_sanguinData_removeBloodGroup._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gdelete_groupe_sanguinData_removeBloodGroup', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(success,
                r'Gdelete_groupe_sanguinData_removeBloodGroup', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
