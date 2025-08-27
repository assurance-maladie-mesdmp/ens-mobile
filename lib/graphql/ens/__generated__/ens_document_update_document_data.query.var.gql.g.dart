// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_document_update_document_data.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_document_dataVars> _$gupdateDocumentDataVarsSerializer =
    new _$Gupdate_document_dataVarsSerializer();

class _$Gupdate_document_dataVarsSerializer
    implements StructuredSerializer<Gupdate_document_dataVars> {
  @override
  final Iterable<Type> types = const [
    Gupdate_document_dataVars,
    _$Gupdate_document_dataVars
  ];
  @override
  final String wireName = 'Gupdate_document_dataVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_document_dataVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'documentUpdateInput',
      serializers.serialize(object.documentUpdateInput,
          specifiedType: const FullType(_i1.GDocumentUpdateInput)),
    ];

    return result;
  }

  @override
  Gupdate_document_dataVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_document_dataVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'documentUpdateInput':
          result.documentUpdateInput.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GDocumentUpdateInput))!
              as _i1.GDocumentUpdateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_document_dataVars extends Gupdate_document_dataVars {
  @override
  final _i1.GDocumentUpdateInput documentUpdateInput;

  factory _$Gupdate_document_dataVars(
          [void Function(Gupdate_document_dataVarsBuilder)? updates]) =>
      (new Gupdate_document_dataVarsBuilder()..update(updates))._build();

  _$Gupdate_document_dataVars._({required this.documentUpdateInput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(documentUpdateInput,
        r'Gupdate_document_dataVars', 'documentUpdateInput');
  }

  @override
  Gupdate_document_dataVars rebuild(
          void Function(Gupdate_document_dataVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_document_dataVarsBuilder toBuilder() =>
      new Gupdate_document_dataVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_document_dataVars &&
        documentUpdateInput == other.documentUpdateInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, documentUpdateInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_document_dataVars')
          ..add('documentUpdateInput', documentUpdateInput))
        .toString();
  }
}

class Gupdate_document_dataVarsBuilder
    implements
        Builder<Gupdate_document_dataVars, Gupdate_document_dataVarsBuilder> {
  _$Gupdate_document_dataVars? _$v;

  _i1.GDocumentUpdateInputBuilder? _documentUpdateInput;
  _i1.GDocumentUpdateInputBuilder get documentUpdateInput =>
      _$this._documentUpdateInput ??= new _i1.GDocumentUpdateInputBuilder();
  set documentUpdateInput(
          _i1.GDocumentUpdateInputBuilder? documentUpdateInput) =>
      _$this._documentUpdateInput = documentUpdateInput;

  Gupdate_document_dataVarsBuilder();

  Gupdate_document_dataVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _documentUpdateInput = $v.documentUpdateInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_document_dataVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_document_dataVars;
  }

  @override
  void update(void Function(Gupdate_document_dataVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_document_dataVars build() => _build();

  _$Gupdate_document_dataVars _build() {
    _$Gupdate_document_dataVars _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_document_dataVars._(
              documentUpdateInput: documentUpdateInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'documentUpdateInput';
        documentUpdateInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_document_dataVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
