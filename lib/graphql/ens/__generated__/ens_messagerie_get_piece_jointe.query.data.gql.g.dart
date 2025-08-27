// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_messagerie_get_piece_jointe.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_piece_jointeData> _$ggetPieceJointeDataSerializer =
    new _$Gget_piece_jointeDataSerializer();
Serializer<Gget_piece_jointeData_getMessageFile>
    _$ggetPieceJointeDataGetMessageFileSerializer =
    new _$Gget_piece_jointeData_getMessageFileSerializer();

class _$Gget_piece_jointeDataSerializer
    implements StructuredSerializer<Gget_piece_jointeData> {
  @override
  final Iterable<Type> types = const [
    Gget_piece_jointeData,
    _$Gget_piece_jointeData
  ];
  @override
  final String wireName = 'Gget_piece_jointeData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_piece_jointeData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getMessageFile',
      serializers.serialize(object.getMessageFile,
          specifiedType: const FullType(Gget_piece_jointeData_getMessageFile)),
    ];

    return result;
  }

  @override
  Gget_piece_jointeData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_piece_jointeDataBuilder();

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
        case 'getMessageFile':
          result.getMessageFile.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gget_piece_jointeData_getMessageFile))!
              as Gget_piece_jointeData_getMessageFile);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_piece_jointeData_getMessageFileSerializer
    implements StructuredSerializer<Gget_piece_jointeData_getMessageFile> {
  @override
  final Iterable<Type> types = const [
    Gget_piece_jointeData_getMessageFile,
    _$Gget_piece_jointeData_getMessageFile
  ];
  @override
  final String wireName = 'Gget_piece_jointeData_getMessageFile';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_piece_jointeData_getMessageFile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'attachment',
      serializers.serialize(object.attachment,
          specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
      'mimeType',
      serializers.serialize(object.mimeType,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'canAddToDMP',
      serializers.serialize(object.canAddToDMP,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gget_piece_jointeData_getMessageFile deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_piece_jointeData_getMessageFileBuilder();

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
        case 'attachment':
          result.attachment = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'mimeType':
          result.mimeType = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'canAddToDMP':
          result.canAddToDMP = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_piece_jointeData extends Gget_piece_jointeData {
  @override
  final String G__typename;
  @override
  final Gget_piece_jointeData_getMessageFile getMessageFile;

  factory _$Gget_piece_jointeData(
          [void Function(Gget_piece_jointeDataBuilder)? updates]) =>
      (new Gget_piece_jointeDataBuilder()..update(updates))._build();

  _$Gget_piece_jointeData._(
      {required this.G__typename, required this.getMessageFile})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_piece_jointeData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getMessageFile, r'Gget_piece_jointeData', 'getMessageFile');
  }

  @override
  Gget_piece_jointeData rebuild(
          void Function(Gget_piece_jointeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_piece_jointeDataBuilder toBuilder() =>
      new Gget_piece_jointeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_piece_jointeData &&
        G__typename == other.G__typename &&
        getMessageFile == other.getMessageFile;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getMessageFile.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_piece_jointeData')
          ..add('G__typename', G__typename)
          ..add('getMessageFile', getMessageFile))
        .toString();
  }
}

class Gget_piece_jointeDataBuilder
    implements Builder<Gget_piece_jointeData, Gget_piece_jointeDataBuilder> {
  _$Gget_piece_jointeData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_piece_jointeData_getMessageFileBuilder? _getMessageFile;
  Gget_piece_jointeData_getMessageFileBuilder get getMessageFile =>
      _$this._getMessageFile ??=
          new Gget_piece_jointeData_getMessageFileBuilder();
  set getMessageFile(
          Gget_piece_jointeData_getMessageFileBuilder? getMessageFile) =>
      _$this._getMessageFile = getMessageFile;

  Gget_piece_jointeDataBuilder() {
    Gget_piece_jointeData._initializeBuilder(this);
  }

  Gget_piece_jointeDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getMessageFile = $v.getMessageFile.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_piece_jointeData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_piece_jointeData;
  }

  @override
  void update(void Function(Gget_piece_jointeDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_piece_jointeData build() => _build();

  _$Gget_piece_jointeData _build() {
    _$Gget_piece_jointeData _$result;
    try {
      _$result = _$v ??
          new _$Gget_piece_jointeData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_piece_jointeData', 'G__typename'),
              getMessageFile: getMessageFile.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getMessageFile';
        getMessageFile.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_piece_jointeData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_piece_jointeData_getMessageFile
    extends Gget_piece_jointeData_getMessageFile {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String attachment;
  @override
  final String createdAt;
  @override
  final String mimeType;
  @override
  final String name;
  @override
  final bool canAddToDMP;

  factory _$Gget_piece_jointeData_getMessageFile(
          [void Function(Gget_piece_jointeData_getMessageFileBuilder)?
              updates]) =>
      (new Gget_piece_jointeData_getMessageFileBuilder()..update(updates))
          ._build();

  _$Gget_piece_jointeData_getMessageFile._(
      {required this.G__typename,
      required this.id,
      required this.attachment,
      required this.createdAt,
      required this.mimeType,
      required this.name,
      required this.canAddToDMP})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_piece_jointeData_getMessageFile', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gget_piece_jointeData_getMessageFile', 'id');
    BuiltValueNullFieldError.checkNotNull(
        attachment, r'Gget_piece_jointeData_getMessageFile', 'attachment');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'Gget_piece_jointeData_getMessageFile', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        mimeType, r'Gget_piece_jointeData_getMessageFile', 'mimeType');
    BuiltValueNullFieldError.checkNotNull(
        name, r'Gget_piece_jointeData_getMessageFile', 'name');
    BuiltValueNullFieldError.checkNotNull(
        canAddToDMP, r'Gget_piece_jointeData_getMessageFile', 'canAddToDMP');
  }

  @override
  Gget_piece_jointeData_getMessageFile rebuild(
          void Function(Gget_piece_jointeData_getMessageFileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_piece_jointeData_getMessageFileBuilder toBuilder() =>
      new Gget_piece_jointeData_getMessageFileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_piece_jointeData_getMessageFile &&
        G__typename == other.G__typename &&
        id == other.id &&
        attachment == other.attachment &&
        createdAt == other.createdAt &&
        mimeType == other.mimeType &&
        name == other.name &&
        canAddToDMP == other.canAddToDMP;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, attachment.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, mimeType.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, canAddToDMP.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_piece_jointeData_getMessageFile')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('attachment', attachment)
          ..add('createdAt', createdAt)
          ..add('mimeType', mimeType)
          ..add('name', name)
          ..add('canAddToDMP', canAddToDMP))
        .toString();
  }
}

class Gget_piece_jointeData_getMessageFileBuilder
    implements
        Builder<Gget_piece_jointeData_getMessageFile,
            Gget_piece_jointeData_getMessageFileBuilder> {
  _$Gget_piece_jointeData_getMessageFile? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _attachment;
  String? get attachment => _$this._attachment;
  set attachment(String? attachment) => _$this._attachment = attachment;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _mimeType;
  String? get mimeType => _$this._mimeType;
  set mimeType(String? mimeType) => _$this._mimeType = mimeType;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _canAddToDMP;
  bool? get canAddToDMP => _$this._canAddToDMP;
  set canAddToDMP(bool? canAddToDMP) => _$this._canAddToDMP = canAddToDMP;

  Gget_piece_jointeData_getMessageFileBuilder() {
    Gget_piece_jointeData_getMessageFile._initializeBuilder(this);
  }

  Gget_piece_jointeData_getMessageFileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _attachment = $v.attachment;
      _createdAt = $v.createdAt;
      _mimeType = $v.mimeType;
      _name = $v.name;
      _canAddToDMP = $v.canAddToDMP;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_piece_jointeData_getMessageFile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_piece_jointeData_getMessageFile;
  }

  @override
  void update(
      void Function(Gget_piece_jointeData_getMessageFileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_piece_jointeData_getMessageFile build() => _build();

  _$Gget_piece_jointeData_getMessageFile _build() {
    final _$result = _$v ??
        new _$Gget_piece_jointeData_getMessageFile._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'Gget_piece_jointeData_getMessageFile', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Gget_piece_jointeData_getMessageFile', 'id'),
            attachment: BuiltValueNullFieldError.checkNotNull(
                attachment, r'Gget_piece_jointeData_getMessageFile', 'attachment'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'Gget_piece_jointeData_getMessageFile', 'createdAt'),
            mimeType: BuiltValueNullFieldError.checkNotNull(
                mimeType, r'Gget_piece_jointeData_getMessageFile', 'mimeType'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'Gget_piece_jointeData_getMessageFile', 'name'),
            canAddToDMP: BuiltValueNullFieldError.checkNotNull(canAddToDMP,
                r'Gget_piece_jointeData_getMessageFile', 'canAddToDMP'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
