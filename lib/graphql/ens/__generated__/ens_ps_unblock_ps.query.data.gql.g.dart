// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ps_unblock_ps.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gunblock_psData> _$gunblockPsDataSerializer =
    new _$Gunblock_psDataSerializer();
Serializer<Gunblock_psData_unblockPS> _$gunblockPsDataUnblockPSSerializer =
    new _$Gunblock_psData_unblockPSSerializer();

class _$Gunblock_psDataSerializer
    implements StructuredSerializer<Gunblock_psData> {
  @override
  final Iterable<Type> types = const [Gunblock_psData, _$Gunblock_psData];
  @override
  final String wireName = 'Gunblock_psData';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gunblock_psData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'unblockPS',
      serializers.serialize(object.unblockPS,
          specifiedType: const FullType(Gunblock_psData_unblockPS)),
    ];

    return result;
  }

  @override
  Gunblock_psData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gunblock_psDataBuilder();

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
        case 'unblockPS':
          result.unblockPS.replace(serializers.deserialize(value,
                  specifiedType: const FullType(Gunblock_psData_unblockPS))!
              as Gunblock_psData_unblockPS);
          break;
      }
    }

    return result.build();
  }
}

class _$Gunblock_psData_unblockPSSerializer
    implements StructuredSerializer<Gunblock_psData_unblockPS> {
  @override
  final Iterable<Type> types = const [
    Gunblock_psData_unblockPS,
    _$Gunblock_psData_unblockPS
  ];
  @override
  final String wireName = 'Gunblock_psData_unblockPS';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gunblock_psData_unblockPS object,
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
  Gunblock_psData_unblockPS deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gunblock_psData_unblockPSBuilder();

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

class _$Gunblock_psData extends Gunblock_psData {
  @override
  final String G__typename;
  @override
  final Gunblock_psData_unblockPS unblockPS;

  factory _$Gunblock_psData([void Function(Gunblock_psDataBuilder)? updates]) =>
      (new Gunblock_psDataBuilder()..update(updates))._build();

  _$Gunblock_psData._({required this.G__typename, required this.unblockPS})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gunblock_psData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        unblockPS, r'Gunblock_psData', 'unblockPS');
  }

  @override
  Gunblock_psData rebuild(void Function(Gunblock_psDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gunblock_psDataBuilder toBuilder() =>
      new Gunblock_psDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gunblock_psData &&
        G__typename == other.G__typename &&
        unblockPS == other.unblockPS;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, unblockPS.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gunblock_psData')
          ..add('G__typename', G__typename)
          ..add('unblockPS', unblockPS))
        .toString();
  }
}

class Gunblock_psDataBuilder
    implements Builder<Gunblock_psData, Gunblock_psDataBuilder> {
  _$Gunblock_psData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gunblock_psData_unblockPSBuilder? _unblockPS;
  Gunblock_psData_unblockPSBuilder get unblockPS =>
      _$this._unblockPS ??= new Gunblock_psData_unblockPSBuilder();
  set unblockPS(Gunblock_psData_unblockPSBuilder? unblockPS) =>
      _$this._unblockPS = unblockPS;

  Gunblock_psDataBuilder() {
    Gunblock_psData._initializeBuilder(this);
  }

  Gunblock_psDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _unblockPS = $v.unblockPS.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gunblock_psData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gunblock_psData;
  }

  @override
  void update(void Function(Gunblock_psDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gunblock_psData build() => _build();

  _$Gunblock_psData _build() {
    _$Gunblock_psData _$result;
    try {
      _$result = _$v ??
          new _$Gunblock_psData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gunblock_psData', 'G__typename'),
              unblockPS: unblockPS.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'unblockPS';
        unblockPS.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gunblock_psData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gunblock_psData_unblockPS extends Gunblock_psData_unblockPS {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gunblock_psData_unblockPS(
          [void Function(Gunblock_psData_unblockPSBuilder)? updates]) =>
      (new Gunblock_psData_unblockPSBuilder()..update(updates))._build();

  _$Gunblock_psData_unblockPS._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gunblock_psData_unblockPS', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gunblock_psData_unblockPS', 'success');
  }

  @override
  Gunblock_psData_unblockPS rebuild(
          void Function(Gunblock_psData_unblockPSBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gunblock_psData_unblockPSBuilder toBuilder() =>
      new Gunblock_psData_unblockPSBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gunblock_psData_unblockPS &&
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
    return (newBuiltValueToStringHelper(r'Gunblock_psData_unblockPS')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gunblock_psData_unblockPSBuilder
    implements
        Builder<Gunblock_psData_unblockPS, Gunblock_psData_unblockPSBuilder> {
  _$Gunblock_psData_unblockPS? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gunblock_psData_unblockPSBuilder() {
    Gunblock_psData_unblockPS._initializeBuilder(this);
  }

  Gunblock_psData_unblockPSBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gunblock_psData_unblockPS other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gunblock_psData_unblockPS;
  }

  @override
  void update(void Function(Gunblock_psData_unblockPSBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gunblock_psData_unblockPS build() => _build();

  _$Gunblock_psData_unblockPS _build() {
    final _$result = _$v ??
        new _$Gunblock_psData_unblockPS._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'Gunblock_psData_unblockPS', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'Gunblock_psData_unblockPS', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
