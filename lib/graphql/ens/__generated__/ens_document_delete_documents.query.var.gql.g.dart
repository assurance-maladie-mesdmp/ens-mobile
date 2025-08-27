// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_document_delete_documents.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_documentsVars> _$gdeleteDocumentsVarsSerializer =
    new _$Gdelete_documentsVarsSerializer();

class _$Gdelete_documentsVarsSerializer
    implements StructuredSerializer<Gdelete_documentsVars> {
  @override
  final Iterable<Type> types = const [
    Gdelete_documentsVars,
    _$Gdelete_documentsVars
  ];
  @override
  final String wireName = 'Gdelete_documentsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_documentsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GDocumentsDeletionInput)),
    ];

    return result;
  }

  @override
  Gdelete_documentsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_documentsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GDocumentsDeletionInput))!
              as _i1.GDocumentsDeletionInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_documentsVars extends Gdelete_documentsVars {
  @override
  final _i1.GDocumentsDeletionInput input;

  factory _$Gdelete_documentsVars(
          [void Function(Gdelete_documentsVarsBuilder)? updates]) =>
      (new Gdelete_documentsVarsBuilder()..update(updates))._build();

  _$Gdelete_documentsVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        input, r'Gdelete_documentsVars', 'input');
  }

  @override
  Gdelete_documentsVars rebuild(
          void Function(Gdelete_documentsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_documentsVarsBuilder toBuilder() =>
      new Gdelete_documentsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_documentsVars && input == other.input;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_documentsVars')
          ..add('input', input))
        .toString();
  }
}

class Gdelete_documentsVarsBuilder
    implements Builder<Gdelete_documentsVars, Gdelete_documentsVarsBuilder> {
  _$Gdelete_documentsVars? _$v;

  _i1.GDocumentsDeletionInputBuilder? _input;
  _i1.GDocumentsDeletionInputBuilder get input =>
      _$this._input ??= new _i1.GDocumentsDeletionInputBuilder();
  set input(_i1.GDocumentsDeletionInputBuilder? input) => _$this._input = input;

  Gdelete_documentsVarsBuilder();

  Gdelete_documentsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_documentsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_documentsVars;
  }

  @override
  void update(void Function(Gdelete_documentsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_documentsVars build() => _build();

  _$Gdelete_documentsVars _build() {
    _$Gdelete_documentsVars _$result;
    try {
      _$result = _$v ?? new _$Gdelete_documentsVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_documentsVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
