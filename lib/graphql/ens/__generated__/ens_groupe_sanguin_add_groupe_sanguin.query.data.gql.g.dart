// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_groupe_sanguin_add_groupe_sanguin.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gadd_groupe_sanguinData> _$gaddGroupeSanguinDataSerializer =
    new _$Gadd_groupe_sanguinDataSerializer();
Serializer<Gadd_groupe_sanguinData_createBloodGroup>
    _$gaddGroupeSanguinDataCreateBloodGroupSerializer =
    new _$Gadd_groupe_sanguinData_createBloodGroupSerializer();

class _$Gadd_groupe_sanguinDataSerializer
    implements StructuredSerializer<Gadd_groupe_sanguinData> {
  @override
  final Iterable<Type> types = const [
    Gadd_groupe_sanguinData,
    _$Gadd_groupe_sanguinData
  ];
  @override
  final String wireName = 'Gadd_groupe_sanguinData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_groupe_sanguinData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'createBloodGroup',
      serializers.serialize(object.createBloodGroup,
          specifiedType:
              const FullType(Gadd_groupe_sanguinData_createBloodGroup)),
    ];

    return result;
  }

  @override
  Gadd_groupe_sanguinData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_groupe_sanguinDataBuilder();

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
        case 'createBloodGroup':
          result.createBloodGroup.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gadd_groupe_sanguinData_createBloodGroup))!
              as Gadd_groupe_sanguinData_createBloodGroup);
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_groupe_sanguinData_createBloodGroupSerializer
    implements StructuredSerializer<Gadd_groupe_sanguinData_createBloodGroup> {
  @override
  final Iterable<Type> types = const [
    Gadd_groupe_sanguinData_createBloodGroup,
    _$Gadd_groupe_sanguinData_createBloodGroup
  ];
  @override
  final String wireName = 'Gadd_groupe_sanguinData_createBloodGroup';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_groupe_sanguinData_createBloodGroup object,
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
  Gadd_groupe_sanguinData_createBloodGroup deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_groupe_sanguinData_createBloodGroupBuilder();

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

class _$Gadd_groupe_sanguinData extends Gadd_groupe_sanguinData {
  @override
  final String G__typename;
  @override
  final Gadd_groupe_sanguinData_createBloodGroup createBloodGroup;

  factory _$Gadd_groupe_sanguinData(
          [void Function(Gadd_groupe_sanguinDataBuilder)? updates]) =>
      (new Gadd_groupe_sanguinDataBuilder()..update(updates))._build();

  _$Gadd_groupe_sanguinData._(
      {required this.G__typename, required this.createBloodGroup})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gadd_groupe_sanguinData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        createBloodGroup, r'Gadd_groupe_sanguinData', 'createBloodGroup');
  }

  @override
  Gadd_groupe_sanguinData rebuild(
          void Function(Gadd_groupe_sanguinDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_groupe_sanguinDataBuilder toBuilder() =>
      new Gadd_groupe_sanguinDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_groupe_sanguinData &&
        G__typename == other.G__typename &&
        createBloodGroup == other.createBloodGroup;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createBloodGroup.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_groupe_sanguinData')
          ..add('G__typename', G__typename)
          ..add('createBloodGroup', createBloodGroup))
        .toString();
  }
}

class Gadd_groupe_sanguinDataBuilder
    implements
        Builder<Gadd_groupe_sanguinData, Gadd_groupe_sanguinDataBuilder> {
  _$Gadd_groupe_sanguinData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gadd_groupe_sanguinData_createBloodGroupBuilder? _createBloodGroup;
  Gadd_groupe_sanguinData_createBloodGroupBuilder get createBloodGroup =>
      _$this._createBloodGroup ??=
          new Gadd_groupe_sanguinData_createBloodGroupBuilder();
  set createBloodGroup(
          Gadd_groupe_sanguinData_createBloodGroupBuilder? createBloodGroup) =>
      _$this._createBloodGroup = createBloodGroup;

  Gadd_groupe_sanguinDataBuilder() {
    Gadd_groupe_sanguinData._initializeBuilder(this);
  }

  Gadd_groupe_sanguinDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createBloodGroup = $v.createBloodGroup.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_groupe_sanguinData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_groupe_sanguinData;
  }

  @override
  void update(void Function(Gadd_groupe_sanguinDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_groupe_sanguinData build() => _build();

  _$Gadd_groupe_sanguinData _build() {
    _$Gadd_groupe_sanguinData _$result;
    try {
      _$result = _$v ??
          new _$Gadd_groupe_sanguinData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gadd_groupe_sanguinData', 'G__typename'),
              createBloodGroup: createBloodGroup.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createBloodGroup';
        createBloodGroup.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_groupe_sanguinData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gadd_groupe_sanguinData_createBloodGroup
    extends Gadd_groupe_sanguinData_createBloodGroup {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gadd_groupe_sanguinData_createBloodGroup(
          [void Function(Gadd_groupe_sanguinData_createBloodGroupBuilder)?
              updates]) =>
      (new Gadd_groupe_sanguinData_createBloodGroupBuilder()..update(updates))
          ._build();

  _$Gadd_groupe_sanguinData_createBloodGroup._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gadd_groupe_sanguinData_createBloodGroup', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gadd_groupe_sanguinData_createBloodGroup', 'success');
  }

  @override
  Gadd_groupe_sanguinData_createBloodGroup rebuild(
          void Function(Gadd_groupe_sanguinData_createBloodGroupBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_groupe_sanguinData_createBloodGroupBuilder toBuilder() =>
      new Gadd_groupe_sanguinData_createBloodGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_groupe_sanguinData_createBloodGroup &&
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
            r'Gadd_groupe_sanguinData_createBloodGroup')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gadd_groupe_sanguinData_createBloodGroupBuilder
    implements
        Builder<Gadd_groupe_sanguinData_createBloodGroup,
            Gadd_groupe_sanguinData_createBloodGroupBuilder> {
  _$Gadd_groupe_sanguinData_createBloodGroup? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gadd_groupe_sanguinData_createBloodGroupBuilder() {
    Gadd_groupe_sanguinData_createBloodGroup._initializeBuilder(this);
  }

  Gadd_groupe_sanguinData_createBloodGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_groupe_sanguinData_createBloodGroup other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_groupe_sanguinData_createBloodGroup;
  }

  @override
  void update(
      void Function(Gadd_groupe_sanguinData_createBloodGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_groupe_sanguinData_createBloodGroup build() => _build();

  _$Gadd_groupe_sanguinData_createBloodGroup _build() {
    final _$result = _$v ??
        new _$Gadd_groupe_sanguinData_createBloodGroup._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gadd_groupe_sanguinData_createBloodGroup', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(success,
                r'Gadd_groupe_sanguinData_createBloodGroup', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
