// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_document_set_all_documents_confidentiality.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gset_all_documents_confidentialityVars>
    _$gsetAllDocumentsConfidentialityVarsSerializer =
    new _$Gset_all_documents_confidentialityVarsSerializer();

class _$Gset_all_documents_confidentialityVarsSerializer
    implements StructuredSerializer<Gset_all_documents_confidentialityVars> {
  @override
  final Iterable<Type> types = const [
    Gset_all_documents_confidentialityVars,
    _$Gset_all_documents_confidentialityVars
  ];
  @override
  final String wireName = 'Gset_all_documents_confidentialityVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gset_all_documents_confidentialityVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'documentsMaskedByDefault',
      serializers.serialize(object.documentsMaskedByDefault,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gset_all_documents_confidentialityVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gset_all_documents_confidentialityVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'documentsMaskedByDefault':
          result.documentsMaskedByDefault = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gset_all_documents_confidentialityVars
    extends Gset_all_documents_confidentialityVars {
  @override
  final String patientId;
  @override
  final bool documentsMaskedByDefault;

  factory _$Gset_all_documents_confidentialityVars(
          [void Function(Gset_all_documents_confidentialityVarsBuilder)?
              updates]) =>
      (new Gset_all_documents_confidentialityVarsBuilder()..update(updates))
          ._build();

  _$Gset_all_documents_confidentialityVars._(
      {required this.patientId, required this.documentsMaskedByDefault})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gset_all_documents_confidentialityVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(documentsMaskedByDefault,
        r'Gset_all_documents_confidentialityVars', 'documentsMaskedByDefault');
  }

  @override
  Gset_all_documents_confidentialityVars rebuild(
          void Function(Gset_all_documents_confidentialityVarsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gset_all_documents_confidentialityVarsBuilder toBuilder() =>
      new Gset_all_documents_confidentialityVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gset_all_documents_confidentialityVars &&
        patientId == other.patientId &&
        documentsMaskedByDefault == other.documentsMaskedByDefault;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, documentsMaskedByDefault.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gset_all_documents_confidentialityVars')
          ..add('patientId', patientId)
          ..add('documentsMaskedByDefault', documentsMaskedByDefault))
        .toString();
  }
}

class Gset_all_documents_confidentialityVarsBuilder
    implements
        Builder<Gset_all_documents_confidentialityVars,
            Gset_all_documents_confidentialityVarsBuilder> {
  _$Gset_all_documents_confidentialityVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  bool? _documentsMaskedByDefault;
  bool? get documentsMaskedByDefault => _$this._documentsMaskedByDefault;
  set documentsMaskedByDefault(bool? documentsMaskedByDefault) =>
      _$this._documentsMaskedByDefault = documentsMaskedByDefault;

  Gset_all_documents_confidentialityVarsBuilder();

  Gset_all_documents_confidentialityVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _documentsMaskedByDefault = $v.documentsMaskedByDefault;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gset_all_documents_confidentialityVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gset_all_documents_confidentialityVars;
  }

  @override
  void update(
      void Function(Gset_all_documents_confidentialityVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gset_all_documents_confidentialityVars build() => _build();

  _$Gset_all_documents_confidentialityVars _build() {
    final _$result = _$v ??
        new _$Gset_all_documents_confidentialityVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(patientId,
                r'Gset_all_documents_confidentialityVars', 'patientId'),
            documentsMaskedByDefault: BuiltValueNullFieldError.checkNotNull(
                documentsMaskedByDefault,
                r'Gset_all_documents_confidentialityVars',
                'documentsMaskedByDefault'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
