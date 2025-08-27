// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_document_get_document_attachment.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_document_attachmentVars>
    _$ggetDocumentAttachmentVarsSerializer =
    new _$Gget_document_attachmentVarsSerializer();

class _$Gget_document_attachmentVarsSerializer
    implements StructuredSerializer<Gget_document_attachmentVars> {
  @override
  final Iterable<Type> types = const [
    Gget_document_attachmentVars,
    _$Gget_document_attachmentVars
  ];
  @override
  final String wireName = 'Gget_document_attachmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_document_attachmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'documentId',
      serializers.serialize(object.documentId,
          specifiedType: const FullType(String)),
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_document_attachmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_document_attachmentVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'documentId':
          result.documentId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_document_attachmentVars extends Gget_document_attachmentVars {
  @override
  final String documentId;
  @override
  final String patientId;

  factory _$Gget_document_attachmentVars(
          [void Function(Gget_document_attachmentVarsBuilder)? updates]) =>
      (new Gget_document_attachmentVarsBuilder()..update(updates))._build();

  _$Gget_document_attachmentVars._(
      {required this.documentId, required this.patientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        documentId, r'Gget_document_attachmentVars', 'documentId');
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_document_attachmentVars', 'patientId');
  }

  @override
  Gget_document_attachmentVars rebuild(
          void Function(Gget_document_attachmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_document_attachmentVarsBuilder toBuilder() =>
      new Gget_document_attachmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_document_attachmentVars &&
        documentId == other.documentId &&
        patientId == other.patientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, documentId.hashCode);
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_document_attachmentVars')
          ..add('documentId', documentId)
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_document_attachmentVarsBuilder
    implements
        Builder<Gget_document_attachmentVars,
            Gget_document_attachmentVarsBuilder> {
  _$Gget_document_attachmentVars? _$v;

  String? _documentId;
  String? get documentId => _$this._documentId;
  set documentId(String? documentId) => _$this._documentId = documentId;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_document_attachmentVarsBuilder();

  Gget_document_attachmentVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _documentId = $v.documentId;
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_document_attachmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_document_attachmentVars;
  }

  @override
  void update(void Function(Gget_document_attachmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_document_attachmentVars build() => _build();

  _$Gget_document_attachmentVars _build() {
    final _$result = _$v ??
        new _$Gget_document_attachmentVars._(
            documentId: BuiltValueNullFieldError.checkNotNull(
                documentId, r'Gget_document_attachmentVars', 'documentId'),
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_document_attachmentVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
