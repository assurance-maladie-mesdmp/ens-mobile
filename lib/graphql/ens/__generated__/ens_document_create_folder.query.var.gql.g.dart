// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_document_create_folder.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gcreate_folderVars> _$gcreateFolderVarsSerializer =
    new _$Gcreate_folderVarsSerializer();

class _$Gcreate_folderVarsSerializer
    implements StructuredSerializer<Gcreate_folderVars> {
  @override
  final Iterable<Type> types = const [Gcreate_folderVars, _$Gcreate_folderVars];
  @override
  final String wireName = 'Gcreate_folderVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gcreate_folderVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'createFolderInputs',
      serializers.serialize(object.createFolderInputs,
          specifiedType: const FullType(_i1.GCreateFolderInputs)),
    ];

    return result;
  }

  @override
  Gcreate_folderVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcreate_folderVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'createFolderInputs':
          result.createFolderInputs.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GCreateFolderInputs))!
              as _i1.GCreateFolderInputs);
          break;
      }
    }

    return result.build();
  }
}

class _$Gcreate_folderVars extends Gcreate_folderVars {
  @override
  final _i1.GCreateFolderInputs createFolderInputs;

  factory _$Gcreate_folderVars(
          [void Function(Gcreate_folderVarsBuilder)? updates]) =>
      (new Gcreate_folderVarsBuilder()..update(updates))._build();

  _$Gcreate_folderVars._({required this.createFolderInputs}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        createFolderInputs, r'Gcreate_folderVars', 'createFolderInputs');
  }

  @override
  Gcreate_folderVars rebuild(
          void Function(Gcreate_folderVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_folderVarsBuilder toBuilder() =>
      new Gcreate_folderVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcreate_folderVars &&
        createFolderInputs == other.createFolderInputs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createFolderInputs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gcreate_folderVars')
          ..add('createFolderInputs', createFolderInputs))
        .toString();
  }
}

class Gcreate_folderVarsBuilder
    implements Builder<Gcreate_folderVars, Gcreate_folderVarsBuilder> {
  _$Gcreate_folderVars? _$v;

  _i1.GCreateFolderInputsBuilder? _createFolderInputs;
  _i1.GCreateFolderInputsBuilder get createFolderInputs =>
      _$this._createFolderInputs ??= new _i1.GCreateFolderInputsBuilder();
  set createFolderInputs(_i1.GCreateFolderInputsBuilder? createFolderInputs) =>
      _$this._createFolderInputs = createFolderInputs;

  Gcreate_folderVarsBuilder();

  Gcreate_folderVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createFolderInputs = $v.createFolderInputs.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gcreate_folderVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_folderVars;
  }

  @override
  void update(void Function(Gcreate_folderVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_folderVars build() => _build();

  _$Gcreate_folderVars _build() {
    _$Gcreate_folderVars _$result;
    try {
      _$result = _$v ??
          new _$Gcreate_folderVars._(
              createFolderInputs: createFolderInputs.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createFolderInputs';
        createFolderInputs.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gcreate_folderVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
