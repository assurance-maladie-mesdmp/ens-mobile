// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_document_delete_folder.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_folderVars> _$gdeleteFolderVarsSerializer =
    new _$Gdelete_folderVarsSerializer();

class _$Gdelete_folderVarsSerializer
    implements StructuredSerializer<Gdelete_folderVars> {
  @override
  final Iterable<Type> types = const [Gdelete_folderVars, _$Gdelete_folderVars];
  @override
  final String wireName = 'Gdelete_folderVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_folderVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'deleteFolderInputs',
      serializers.serialize(object.deleteFolderInputs,
          specifiedType: const FullType(_i1.GDeleteFolderInputs)),
    ];

    return result;
  }

  @override
  Gdelete_folderVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_folderVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'deleteFolderInputs':
          result.deleteFolderInputs.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GDeleteFolderInputs))!
              as _i1.GDeleteFolderInputs);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_folderVars extends Gdelete_folderVars {
  @override
  final _i1.GDeleteFolderInputs deleteFolderInputs;

  factory _$Gdelete_folderVars(
          [void Function(Gdelete_folderVarsBuilder)? updates]) =>
      (new Gdelete_folderVarsBuilder()..update(updates))._build();

  _$Gdelete_folderVars._({required this.deleteFolderInputs}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        deleteFolderInputs, r'Gdelete_folderVars', 'deleteFolderInputs');
  }

  @override
  Gdelete_folderVars rebuild(
          void Function(Gdelete_folderVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_folderVarsBuilder toBuilder() =>
      new Gdelete_folderVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_folderVars &&
        deleteFolderInputs == other.deleteFolderInputs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deleteFolderInputs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_folderVars')
          ..add('deleteFolderInputs', deleteFolderInputs))
        .toString();
  }
}

class Gdelete_folderVarsBuilder
    implements Builder<Gdelete_folderVars, Gdelete_folderVarsBuilder> {
  _$Gdelete_folderVars? _$v;

  _i1.GDeleteFolderInputsBuilder? _deleteFolderInputs;
  _i1.GDeleteFolderInputsBuilder get deleteFolderInputs =>
      _$this._deleteFolderInputs ??= new _i1.GDeleteFolderInputsBuilder();
  set deleteFolderInputs(_i1.GDeleteFolderInputsBuilder? deleteFolderInputs) =>
      _$this._deleteFolderInputs = deleteFolderInputs;

  Gdelete_folderVarsBuilder();

  Gdelete_folderVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deleteFolderInputs = $v.deleteFolderInputs.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_folderVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_folderVars;
  }

  @override
  void update(void Function(Gdelete_folderVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_folderVars build() => _build();

  _$Gdelete_folderVars _build() {
    _$Gdelete_folderVars _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_folderVars._(
              deleteFolderInputs: deleteFolderInputs.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteFolderInputs';
        deleteFolderInputs.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_folderVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
