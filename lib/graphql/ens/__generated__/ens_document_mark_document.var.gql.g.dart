// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_document_mark_document.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gmark_documentVars> _$gmarkDocumentVarsSerializer =
    new _$Gmark_documentVarsSerializer();

class _$Gmark_documentVarsSerializer
    implements StructuredSerializer<Gmark_documentVars> {
  @override
  final Iterable<Type> types = const [Gmark_documentVars, _$Gmark_documentVars];
  @override
  final String wireName = 'Gmark_documentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gmark_documentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'documentMarkInput',
      serializers.serialize(object.documentMarkInput,
          specifiedType: const FullType(_i1.GSingleDocumentMarkInput)),
    ];

    return result;
  }

  @override
  Gmark_documentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gmark_documentVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'documentMarkInput':
          result.documentMarkInput.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GSingleDocumentMarkInput))!
              as _i1.GSingleDocumentMarkInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gmark_documentVars extends Gmark_documentVars {
  @override
  final _i1.GSingleDocumentMarkInput documentMarkInput;

  factory _$Gmark_documentVars(
          [void Function(Gmark_documentVarsBuilder)? updates]) =>
      (new Gmark_documentVarsBuilder()..update(updates))._build();

  _$Gmark_documentVars._({required this.documentMarkInput}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        documentMarkInput, r'Gmark_documentVars', 'documentMarkInput');
  }

  @override
  Gmark_documentVars rebuild(
          void Function(Gmark_documentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gmark_documentVarsBuilder toBuilder() =>
      new Gmark_documentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gmark_documentVars &&
        documentMarkInput == other.documentMarkInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, documentMarkInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gmark_documentVars')
          ..add('documentMarkInput', documentMarkInput))
        .toString();
  }
}

class Gmark_documentVarsBuilder
    implements Builder<Gmark_documentVars, Gmark_documentVarsBuilder> {
  _$Gmark_documentVars? _$v;

  _i1.GSingleDocumentMarkInputBuilder? _documentMarkInput;
  _i1.GSingleDocumentMarkInputBuilder get documentMarkInput =>
      _$this._documentMarkInput ??= new _i1.GSingleDocumentMarkInputBuilder();
  set documentMarkInput(
          _i1.GSingleDocumentMarkInputBuilder? documentMarkInput) =>
      _$this._documentMarkInput = documentMarkInput;

  Gmark_documentVarsBuilder();

  Gmark_documentVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _documentMarkInput = $v.documentMarkInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gmark_documentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gmark_documentVars;
  }

  @override
  void update(void Function(Gmark_documentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gmark_documentVars build() => _build();

  _$Gmark_documentVars _build() {
    _$Gmark_documentVars _$result;
    try {
      _$result = _$v ??
          new _$Gmark_documentVars._(
              documentMarkInput: documentMarkInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'documentMarkInput';
        documentMarkInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gmark_documentVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
