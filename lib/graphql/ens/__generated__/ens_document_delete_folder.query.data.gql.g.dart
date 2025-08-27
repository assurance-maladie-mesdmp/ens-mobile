// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_document_delete_folder.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_folderData> _$gdeleteFolderDataSerializer =
    new _$Gdelete_folderDataSerializer();
Serializer<Gdelete_folderData_deleteFolder>
    _$gdeleteFolderDataDeleteFolderSerializer =
    new _$Gdelete_folderData_deleteFolderSerializer();

class _$Gdelete_folderDataSerializer
    implements StructuredSerializer<Gdelete_folderData> {
  @override
  final Iterable<Type> types = const [Gdelete_folderData, _$Gdelete_folderData];
  @override
  final String wireName = 'Gdelete_folderData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_folderData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'deleteFolder',
      serializers.serialize(object.deleteFolder,
          specifiedType: const FullType(Gdelete_folderData_deleteFolder)),
    ];

    return result;
  }

  @override
  Gdelete_folderData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_folderDataBuilder();

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
        case 'deleteFolder':
          result.deleteFolder.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gdelete_folderData_deleteFolder))!
              as Gdelete_folderData_deleteFolder);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_folderData_deleteFolderSerializer
    implements StructuredSerializer<Gdelete_folderData_deleteFolder> {
  @override
  final Iterable<Type> types = const [
    Gdelete_folderData_deleteFolder,
    _$Gdelete_folderData_deleteFolder
  ];
  @override
  final String wireName = 'Gdelete_folderData_deleteFolder';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_folderData_deleteFolder object,
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
  Gdelete_folderData_deleteFolder deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_folderData_deleteFolderBuilder();

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

class _$Gdelete_folderData extends Gdelete_folderData {
  @override
  final String G__typename;
  @override
  final Gdelete_folderData_deleteFolder deleteFolder;

  factory _$Gdelete_folderData(
          [void Function(Gdelete_folderDataBuilder)? updates]) =>
      (new Gdelete_folderDataBuilder()..update(updates))._build();

  _$Gdelete_folderData._(
      {required this.G__typename, required this.deleteFolder})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_folderData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        deleteFolder, r'Gdelete_folderData', 'deleteFolder');
  }

  @override
  Gdelete_folderData rebuild(
          void Function(Gdelete_folderDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_folderDataBuilder toBuilder() =>
      new Gdelete_folderDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_folderData &&
        G__typename == other.G__typename &&
        deleteFolder == other.deleteFolder;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deleteFolder.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_folderData')
          ..add('G__typename', G__typename)
          ..add('deleteFolder', deleteFolder))
        .toString();
  }
}

class Gdelete_folderDataBuilder
    implements Builder<Gdelete_folderData, Gdelete_folderDataBuilder> {
  _$Gdelete_folderData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gdelete_folderData_deleteFolderBuilder? _deleteFolder;
  Gdelete_folderData_deleteFolderBuilder get deleteFolder =>
      _$this._deleteFolder ??= new Gdelete_folderData_deleteFolderBuilder();
  set deleteFolder(Gdelete_folderData_deleteFolderBuilder? deleteFolder) =>
      _$this._deleteFolder = deleteFolder;

  Gdelete_folderDataBuilder() {
    Gdelete_folderData._initializeBuilder(this);
  }

  Gdelete_folderDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteFolder = $v.deleteFolder.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_folderData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_folderData;
  }

  @override
  void update(void Function(Gdelete_folderDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_folderData build() => _build();

  _$Gdelete_folderData _build() {
    _$Gdelete_folderData _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_folderData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gdelete_folderData', 'G__typename'),
              deleteFolder: deleteFolder.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteFolder';
        deleteFolder.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_folderData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gdelete_folderData_deleteFolder
    extends Gdelete_folderData_deleteFolder {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gdelete_folderData_deleteFolder(
          [void Function(Gdelete_folderData_deleteFolderBuilder)? updates]) =>
      (new Gdelete_folderData_deleteFolderBuilder()..update(updates))._build();

  _$Gdelete_folderData_deleteFolder._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_folderData_deleteFolder', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gdelete_folderData_deleteFolder', 'success');
  }

  @override
  Gdelete_folderData_deleteFolder rebuild(
          void Function(Gdelete_folderData_deleteFolderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_folderData_deleteFolderBuilder toBuilder() =>
      new Gdelete_folderData_deleteFolderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_folderData_deleteFolder &&
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
    return (newBuiltValueToStringHelper(r'Gdelete_folderData_deleteFolder')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gdelete_folderData_deleteFolderBuilder
    implements
        Builder<Gdelete_folderData_deleteFolder,
            Gdelete_folderData_deleteFolderBuilder> {
  _$Gdelete_folderData_deleteFolder? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gdelete_folderData_deleteFolderBuilder() {
    Gdelete_folderData_deleteFolder._initializeBuilder(this);
  }

  Gdelete_folderData_deleteFolderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_folderData_deleteFolder other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_folderData_deleteFolder;
  }

  @override
  void update(void Function(Gdelete_folderData_deleteFolderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_folderData_deleteFolder build() => _build();

  _$Gdelete_folderData_deleteFolder _build() {
    final _$result = _$v ??
        new _$Gdelete_folderData_deleteFolder._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'Gdelete_folderData_deleteFolder', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'Gdelete_folderData_deleteFolder', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
