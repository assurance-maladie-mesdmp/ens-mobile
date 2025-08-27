// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_document_rename_folder.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Grename_folderData> _$grenameFolderDataSerializer =
    new _$Grename_folderDataSerializer();
Serializer<Grename_folderData_renameFolderV2>
    _$grenameFolderDataRenameFolderV2Serializer =
    new _$Grename_folderData_renameFolderV2Serializer();

class _$Grename_folderDataSerializer
    implements StructuredSerializer<Grename_folderData> {
  @override
  final Iterable<Type> types = const [Grename_folderData, _$Grename_folderData];
  @override
  final String wireName = 'Grename_folderData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Grename_folderData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'renameFolderV2',
      serializers.serialize(object.renameFolderV2,
          specifiedType: const FullType(Grename_folderData_renameFolderV2)),
    ];

    return result;
  }

  @override
  Grename_folderData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Grename_folderDataBuilder();

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
        case 'renameFolderV2':
          result.renameFolderV2.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Grename_folderData_renameFolderV2))!
              as Grename_folderData_renameFolderV2);
          break;
      }
    }

    return result.build();
  }
}

class _$Grename_folderData_renameFolderV2Serializer
    implements StructuredSerializer<Grename_folderData_renameFolderV2> {
  @override
  final Iterable<Type> types = const [
    Grename_folderData_renameFolderV2,
    _$Grename_folderData_renameFolderV2
  ];
  @override
  final String wireName = 'Grename_folderData_renameFolderV2';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Grename_folderData_renameFolderV2 object,
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
  Grename_folderData_renameFolderV2 deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Grename_folderData_renameFolderV2Builder();

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

class _$Grename_folderData extends Grename_folderData {
  @override
  final String G__typename;
  @override
  final Grename_folderData_renameFolderV2 renameFolderV2;

  factory _$Grename_folderData(
          [void Function(Grename_folderDataBuilder)? updates]) =>
      (new Grename_folderDataBuilder()..update(updates))._build();

  _$Grename_folderData._(
      {required this.G__typename, required this.renameFolderV2})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Grename_folderData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        renameFolderV2, r'Grename_folderData', 'renameFolderV2');
  }

  @override
  Grename_folderData rebuild(
          void Function(Grename_folderDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Grename_folderDataBuilder toBuilder() =>
      new Grename_folderDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Grename_folderData &&
        G__typename == other.G__typename &&
        renameFolderV2 == other.renameFolderV2;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, renameFolderV2.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Grename_folderData')
          ..add('G__typename', G__typename)
          ..add('renameFolderV2', renameFolderV2))
        .toString();
  }
}

class Grename_folderDataBuilder
    implements Builder<Grename_folderData, Grename_folderDataBuilder> {
  _$Grename_folderData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Grename_folderData_renameFolderV2Builder? _renameFolderV2;
  Grename_folderData_renameFolderV2Builder get renameFolderV2 =>
      _$this._renameFolderV2 ??= new Grename_folderData_renameFolderV2Builder();
  set renameFolderV2(
          Grename_folderData_renameFolderV2Builder? renameFolderV2) =>
      _$this._renameFolderV2 = renameFolderV2;

  Grename_folderDataBuilder() {
    Grename_folderData._initializeBuilder(this);
  }

  Grename_folderDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _renameFolderV2 = $v.renameFolderV2.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Grename_folderData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Grename_folderData;
  }

  @override
  void update(void Function(Grename_folderDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Grename_folderData build() => _build();

  _$Grename_folderData _build() {
    _$Grename_folderData _$result;
    try {
      _$result = _$v ??
          new _$Grename_folderData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Grename_folderData', 'G__typename'),
              renameFolderV2: renameFolderV2.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'renameFolderV2';
        renameFolderV2.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Grename_folderData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Grename_folderData_renameFolderV2
    extends Grename_folderData_renameFolderV2 {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Grename_folderData_renameFolderV2(
          [void Function(Grename_folderData_renameFolderV2Builder)? updates]) =>
      (new Grename_folderData_renameFolderV2Builder()..update(updates))
          ._build();

  _$Grename_folderData_renameFolderV2._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Grename_folderData_renameFolderV2', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Grename_folderData_renameFolderV2', 'success');
  }

  @override
  Grename_folderData_renameFolderV2 rebuild(
          void Function(Grename_folderData_renameFolderV2Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Grename_folderData_renameFolderV2Builder toBuilder() =>
      new Grename_folderData_renameFolderV2Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Grename_folderData_renameFolderV2 &&
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
    return (newBuiltValueToStringHelper(r'Grename_folderData_renameFolderV2')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Grename_folderData_renameFolderV2Builder
    implements
        Builder<Grename_folderData_renameFolderV2,
            Grename_folderData_renameFolderV2Builder> {
  _$Grename_folderData_renameFolderV2? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Grename_folderData_renameFolderV2Builder() {
    Grename_folderData_renameFolderV2._initializeBuilder(this);
  }

  Grename_folderData_renameFolderV2Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Grename_folderData_renameFolderV2 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Grename_folderData_renameFolderV2;
  }

  @override
  void update(
      void Function(Grename_folderData_renameFolderV2Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Grename_folderData_renameFolderV2 build() => _build();

  _$Grename_folderData_renameFolderV2 _build() {
    final _$result = _$v ??
        new _$Grename_folderData_renameFolderV2._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Grename_folderData_renameFolderV2', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'Grename_folderData_renameFolderV2', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
