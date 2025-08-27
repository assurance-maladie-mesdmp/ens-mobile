// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_document_update_document_confidentiality_only.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_document_confidentiality_onlyVars>
    _$gupdateDocumentConfidentialityOnlyVarsSerializer =
    new _$Gupdate_document_confidentiality_onlyVarsSerializer();

class _$Gupdate_document_confidentiality_onlyVarsSerializer
    implements StructuredSerializer<Gupdate_document_confidentiality_onlyVars> {
  @override
  final Iterable<Type> types = const [
    Gupdate_document_confidentiality_onlyVars,
    _$Gupdate_document_confidentiality_onlyVars
  ];
  @override
  final String wireName = 'Gupdate_document_confidentiality_onlyVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_document_confidentiality_onlyVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'documentUpdateConfidentialityInput',
      serializers.serialize(object.documentUpdateConfidentialityInput,
          specifiedType:
              const FullType(_i1.GDocumentUpdateConfidentialityInput)),
    ];

    return result;
  }

  @override
  Gupdate_document_confidentiality_onlyVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_document_confidentiality_onlyVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'documentUpdateConfidentialityInput':
          result.documentUpdateConfidentialityInput.replace(serializers
                  .deserialize(value,
                      specifiedType: const FullType(
                          _i1.GDocumentUpdateConfidentialityInput))!
              as _i1.GDocumentUpdateConfidentialityInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_document_confidentiality_onlyVars
    extends Gupdate_document_confidentiality_onlyVars {
  @override
  final _i1.GDocumentUpdateConfidentialityInput
      documentUpdateConfidentialityInput;

  factory _$Gupdate_document_confidentiality_onlyVars(
          [void Function(Gupdate_document_confidentiality_onlyVarsBuilder)?
              updates]) =>
      (new Gupdate_document_confidentiality_onlyVarsBuilder()..update(updates))
          ._build();

  _$Gupdate_document_confidentiality_onlyVars._(
      {required this.documentUpdateConfidentialityInput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        documentUpdateConfidentialityInput,
        r'Gupdate_document_confidentiality_onlyVars',
        'documentUpdateConfidentialityInput');
  }

  @override
  Gupdate_document_confidentiality_onlyVars rebuild(
          void Function(Gupdate_document_confidentiality_onlyVarsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_document_confidentiality_onlyVarsBuilder toBuilder() =>
      new Gupdate_document_confidentiality_onlyVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_document_confidentiality_onlyVars &&
        documentUpdateConfidentialityInput ==
            other.documentUpdateConfidentialityInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, documentUpdateConfidentialityInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gupdate_document_confidentiality_onlyVars')
          ..add('documentUpdateConfidentialityInput',
              documentUpdateConfidentialityInput))
        .toString();
  }
}

class Gupdate_document_confidentiality_onlyVarsBuilder
    implements
        Builder<Gupdate_document_confidentiality_onlyVars,
            Gupdate_document_confidentiality_onlyVarsBuilder> {
  _$Gupdate_document_confidentiality_onlyVars? _$v;

  _i1.GDocumentUpdateConfidentialityInputBuilder?
      _documentUpdateConfidentialityInput;
  _i1.GDocumentUpdateConfidentialityInputBuilder
      get documentUpdateConfidentialityInput =>
          _$this._documentUpdateConfidentialityInput ??=
              new _i1.GDocumentUpdateConfidentialityInputBuilder();
  set documentUpdateConfidentialityInput(
          _i1.GDocumentUpdateConfidentialityInputBuilder?
              documentUpdateConfidentialityInput) =>
      _$this._documentUpdateConfidentialityInput =
          documentUpdateConfidentialityInput;

  Gupdate_document_confidentiality_onlyVarsBuilder();

  Gupdate_document_confidentiality_onlyVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _documentUpdateConfidentialityInput =
          $v.documentUpdateConfidentialityInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_document_confidentiality_onlyVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_document_confidentiality_onlyVars;
  }

  @override
  void update(
      void Function(Gupdate_document_confidentiality_onlyVarsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_document_confidentiality_onlyVars build() => _build();

  _$Gupdate_document_confidentiality_onlyVars _build() {
    _$Gupdate_document_confidentiality_onlyVars _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_document_confidentiality_onlyVars._(
              documentUpdateConfidentialityInput:
                  documentUpdateConfidentialityInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'documentUpdateConfidentialityInput';
        documentUpdateConfidentialityInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_document_confidentiality_onlyVars',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
