// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_document_create_folder.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gcreate_folderData> _$gcreateFolderDataSerializer =
    new _$Gcreate_folderDataSerializer();
Serializer<Gcreate_folderData_createFolderV2>
    _$gcreateFolderDataCreateFolderV2Serializer =
    new _$Gcreate_folderData_createFolderV2Serializer();

class _$Gcreate_folderDataSerializer
    implements StructuredSerializer<Gcreate_folderData> {
  @override
  final Iterable<Type> types = const [Gcreate_folderData, _$Gcreate_folderData];
  @override
  final String wireName = 'Gcreate_folderData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gcreate_folderData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'createFolderV2',
      serializers.serialize(object.createFolderV2,
          specifiedType: const FullType(Gcreate_folderData_createFolderV2)),
    ];

    return result;
  }

  @override
  Gcreate_folderData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcreate_folderDataBuilder();

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
        case 'createFolderV2':
          result.createFolderV2.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gcreate_folderData_createFolderV2))!
              as Gcreate_folderData_createFolderV2);
          break;
      }
    }

    return result.build();
  }
}

class _$Gcreate_folderData_createFolderV2Serializer
    implements StructuredSerializer<Gcreate_folderData_createFolderV2> {
  @override
  final Iterable<Type> types = const [
    Gcreate_folderData_createFolderV2,
    _$Gcreate_folderData_createFolderV2
  ];
  @override
  final String wireName = 'Gcreate_folderData_createFolderV2';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gcreate_folderData_createFolderV2 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gcreate_folderData_createFolderV2 deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcreate_folderData_createFolderV2Builder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gcreate_folderData extends Gcreate_folderData {
  @override
  final String G__typename;
  @override
  final Gcreate_folderData_createFolderV2 createFolderV2;

  factory _$Gcreate_folderData(
          [void Function(Gcreate_folderDataBuilder)? updates]) =>
      (new Gcreate_folderDataBuilder()..update(updates))._build();

  _$Gcreate_folderData._(
      {required this.G__typename, required this.createFolderV2})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gcreate_folderData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        createFolderV2, r'Gcreate_folderData', 'createFolderV2');
  }

  @override
  Gcreate_folderData rebuild(
          void Function(Gcreate_folderDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_folderDataBuilder toBuilder() =>
      new Gcreate_folderDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcreate_folderData &&
        G__typename == other.G__typename &&
        createFolderV2 == other.createFolderV2;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createFolderV2.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gcreate_folderData')
          ..add('G__typename', G__typename)
          ..add('createFolderV2', createFolderV2))
        .toString();
  }
}

class Gcreate_folderDataBuilder
    implements Builder<Gcreate_folderData, Gcreate_folderDataBuilder> {
  _$Gcreate_folderData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gcreate_folderData_createFolderV2Builder? _createFolderV2;
  Gcreate_folderData_createFolderV2Builder get createFolderV2 =>
      _$this._createFolderV2 ??= new Gcreate_folderData_createFolderV2Builder();
  set createFolderV2(
          Gcreate_folderData_createFolderV2Builder? createFolderV2) =>
      _$this._createFolderV2 = createFolderV2;

  Gcreate_folderDataBuilder() {
    Gcreate_folderData._initializeBuilder(this);
  }

  Gcreate_folderDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createFolderV2 = $v.createFolderV2.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gcreate_folderData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_folderData;
  }

  @override
  void update(void Function(Gcreate_folderDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_folderData build() => _build();

  _$Gcreate_folderData _build() {
    _$Gcreate_folderData _$result;
    try {
      _$result = _$v ??
          new _$Gcreate_folderData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gcreate_folderData', 'G__typename'),
              createFolderV2: createFolderV2.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createFolderV2';
        createFolderV2.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gcreate_folderData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gcreate_folderData_createFolderV2
    extends Gcreate_folderData_createFolderV2 {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$Gcreate_folderData_createFolderV2(
          [void Function(Gcreate_folderData_createFolderV2Builder)? updates]) =>
      (new Gcreate_folderData_createFolderV2Builder()..update(updates))
          ._build();

  _$Gcreate_folderData_createFolderV2._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gcreate_folderData_createFolderV2', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gcreate_folderData_createFolderV2', 'id');
  }

  @override
  Gcreate_folderData_createFolderV2 rebuild(
          void Function(Gcreate_folderData_createFolderV2Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_folderData_createFolderV2Builder toBuilder() =>
      new Gcreate_folderData_createFolderV2Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcreate_folderData_createFolderV2 &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gcreate_folderData_createFolderV2')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class Gcreate_folderData_createFolderV2Builder
    implements
        Builder<Gcreate_folderData_createFolderV2,
            Gcreate_folderData_createFolderV2Builder> {
  _$Gcreate_folderData_createFolderV2? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  Gcreate_folderData_createFolderV2Builder() {
    Gcreate_folderData_createFolderV2._initializeBuilder(this);
  }

  Gcreate_folderData_createFolderV2Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gcreate_folderData_createFolderV2 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_folderData_createFolderV2;
  }

  @override
  void update(
      void Function(Gcreate_folderData_createFolderV2Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_folderData_createFolderV2 build() => _build();

  _$Gcreate_folderData_createFolderV2 _build() {
    final _$result = _$v ??
        new _$Gcreate_folderData_createFolderV2._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gcreate_folderData_createFolderV2', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Gcreate_folderData_createFolderV2', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
