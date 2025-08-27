// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_document_rename_folder.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Grename_folderVars> _$grenameFolderVarsSerializer =
    new _$Grename_folderVarsSerializer();

class _$Grename_folderVarsSerializer
    implements StructuredSerializer<Grename_folderVars> {
  @override
  final Iterable<Type> types = const [Grename_folderVars, _$Grename_folderVars];
  @override
  final String wireName = 'Grename_folderVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Grename_folderVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'renameFolderInputs',
      serializers.serialize(object.renameFolderInputs,
          specifiedType: const FullType(_i1.GRenameFolderInputs)),
    ];

    return result;
  }

  @override
  Grename_folderVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Grename_folderVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'renameFolderInputs':
          result.renameFolderInputs.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GRenameFolderInputs))!
              as _i1.GRenameFolderInputs);
          break;
      }
    }

    return result.build();
  }
}

class _$Grename_folderVars extends Grename_folderVars {
  @override
  final _i1.GRenameFolderInputs renameFolderInputs;

  factory _$Grename_folderVars(
          [void Function(Grename_folderVarsBuilder)? updates]) =>
      (new Grename_folderVarsBuilder()..update(updates))._build();

  _$Grename_folderVars._({required this.renameFolderInputs}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        renameFolderInputs, r'Grename_folderVars', 'renameFolderInputs');
  }

  @override
  Grename_folderVars rebuild(
          void Function(Grename_folderVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Grename_folderVarsBuilder toBuilder() =>
      new Grename_folderVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Grename_folderVars &&
        renameFolderInputs == other.renameFolderInputs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, renameFolderInputs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Grename_folderVars')
          ..add('renameFolderInputs', renameFolderInputs))
        .toString();
  }
}

class Grename_folderVarsBuilder
    implements Builder<Grename_folderVars, Grename_folderVarsBuilder> {
  _$Grename_folderVars? _$v;

  _i1.GRenameFolderInputsBuilder? _renameFolderInputs;
  _i1.GRenameFolderInputsBuilder get renameFolderInputs =>
      _$this._renameFolderInputs ??= new _i1.GRenameFolderInputsBuilder();
  set renameFolderInputs(_i1.GRenameFolderInputsBuilder? renameFolderInputs) =>
      _$this._renameFolderInputs = renameFolderInputs;

  Grename_folderVarsBuilder();

  Grename_folderVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _renameFolderInputs = $v.renameFolderInputs.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Grename_folderVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Grename_folderVars;
  }

  @override
  void update(void Function(Grename_folderVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Grename_folderVars build() => _build();

  _$Grename_folderVars _build() {
    _$Grename_folderVars _$result;
    try {
      _$result = _$v ??
          new _$Grename_folderVars._(
              renameFolderInputs: renameFolderInputs.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'renameFolderInputs';
        renameFolderInputs.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Grename_folderVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
