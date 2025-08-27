// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_document_move_documents.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gmove_documentsVars> _$gmoveDocumentsVarsSerializer =
    new _$Gmove_documentsVarsSerializer();

class _$Gmove_documentsVarsSerializer
    implements StructuredSerializer<Gmove_documentsVars> {
  @override
  final Iterable<Type> types = const [
    Gmove_documentsVars,
    _$Gmove_documentsVars
  ];
  @override
  final String wireName = 'Gmove_documentsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gmove_documentsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'documentsMoveInput',
      serializers.serialize(object.documentsMoveInput,
          specifiedType: const FullType(_i1.GMultipleDocumentsPatchInput)),
    ];

    return result;
  }

  @override
  Gmove_documentsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gmove_documentsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'documentsMoveInput':
          result.documentsMoveInput.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GMultipleDocumentsPatchInput))!
              as _i1.GMultipleDocumentsPatchInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gmove_documentsVars extends Gmove_documentsVars {
  @override
  final _i1.GMultipleDocumentsPatchInput documentsMoveInput;

  factory _$Gmove_documentsVars(
          [void Function(Gmove_documentsVarsBuilder)? updates]) =>
      (new Gmove_documentsVarsBuilder()..update(updates))._build();

  _$Gmove_documentsVars._({required this.documentsMoveInput}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        documentsMoveInput, r'Gmove_documentsVars', 'documentsMoveInput');
  }

  @override
  Gmove_documentsVars rebuild(
          void Function(Gmove_documentsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gmove_documentsVarsBuilder toBuilder() =>
      new Gmove_documentsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gmove_documentsVars &&
        documentsMoveInput == other.documentsMoveInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, documentsMoveInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gmove_documentsVars')
          ..add('documentsMoveInput', documentsMoveInput))
        .toString();
  }
}

class Gmove_documentsVarsBuilder
    implements Builder<Gmove_documentsVars, Gmove_documentsVarsBuilder> {
  _$Gmove_documentsVars? _$v;

  _i1.GMultipleDocumentsPatchInputBuilder? _documentsMoveInput;
  _i1.GMultipleDocumentsPatchInputBuilder get documentsMoveInput =>
      _$this._documentsMoveInput ??=
          new _i1.GMultipleDocumentsPatchInputBuilder();
  set documentsMoveInput(
          _i1.GMultipleDocumentsPatchInputBuilder? documentsMoveInput) =>
      _$this._documentsMoveInput = documentsMoveInput;

  Gmove_documentsVarsBuilder();

  Gmove_documentsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _documentsMoveInput = $v.documentsMoveInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gmove_documentsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gmove_documentsVars;
  }

  @override
  void update(void Function(Gmove_documentsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gmove_documentsVars build() => _build();

  _$Gmove_documentsVars _build() {
    _$Gmove_documentsVars _$result;
    try {
      _$result = _$v ??
          new _$Gmove_documentsVars._(
              documentsMoveInput: documentsMoveInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'documentsMoveInput';
        documentsMoveInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gmove_documentsVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
