// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_document_get_document_attachment.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_document_attachmentData>
    _$ggetDocumentAttachmentDataSerializer =
    new _$Gget_document_attachmentDataSerializer();
Serializer<Gget_document_attachmentData_document>
    _$ggetDocumentAttachmentDataDocumentSerializer =
    new _$Gget_document_attachmentData_documentSerializer();

class _$Gget_document_attachmentDataSerializer
    implements StructuredSerializer<Gget_document_attachmentData> {
  @override
  final Iterable<Type> types = const [
    Gget_document_attachmentData,
    _$Gget_document_attachmentData
  ];
  @override
  final String wireName = 'Gget_document_attachmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_document_attachmentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(Gget_document_attachmentData_document)),
    ];

    return result;
  }

  @override
  Gget_document_attachmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_document_attachmentDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'document':
          result.document.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gget_document_attachmentData_document))!
              as Gget_document_attachmentData_document);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_document_attachmentData_documentSerializer
    implements StructuredSerializer<Gget_document_attachmentData_document> {
  @override
  final Iterable<Type> types = const [
    Gget_document_attachmentData_document,
    _$Gget_document_attachmentData_document
  ];
  @override
  final String wireName = 'Gget_document_attachmentData_document';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_document_attachmentData_document object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'attachment',
      serializers.serialize(object.attachment,
          specifiedType: const FullType(String)),
      'mimeType',
      serializers.serialize(object.mimeType,
          specifiedType: const FullType(String)),
      'measureIds',
      serializers.serialize(object.measureIds,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  Gget_document_attachmentData_document deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_document_attachmentData_documentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'attachment':
          result.attachment = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'mimeType':
          result.mimeType = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'measureIds':
          result.measureIds.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_document_attachmentData extends Gget_document_attachmentData {
  @override
  final String G__typename;
  @override
  final Gget_document_attachmentData_document document;

  factory _$Gget_document_attachmentData(
          [void Function(Gget_document_attachmentDataBuilder)? updates]) =>
      (new Gget_document_attachmentDataBuilder()..update(updates))._build();

  _$Gget_document_attachmentData._(
      {required this.G__typename, required this.document})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_document_attachmentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        document, r'Gget_document_attachmentData', 'document');
  }

  @override
  Gget_document_attachmentData rebuild(
          void Function(Gget_document_attachmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_document_attachmentDataBuilder toBuilder() =>
      new Gget_document_attachmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_document_attachmentData &&
        G__typename == other.G__typename &&
        document == other.document;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_document_attachmentData')
          ..add('G__typename', G__typename)
          ..add('document', document))
        .toString();
  }
}

class Gget_document_attachmentDataBuilder
    implements
        Builder<Gget_document_attachmentData,
            Gget_document_attachmentDataBuilder> {
  _$Gget_document_attachmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_document_attachmentData_documentBuilder? _document;
  Gget_document_attachmentData_documentBuilder get document =>
      _$this._document ??= new Gget_document_attachmentData_documentBuilder();
  set document(Gget_document_attachmentData_documentBuilder? document) =>
      _$this._document = document;

  Gget_document_attachmentDataBuilder() {
    Gget_document_attachmentData._initializeBuilder(this);
  }

  Gget_document_attachmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _document = $v.document.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_document_attachmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_document_attachmentData;
  }

  @override
  void update(void Function(Gget_document_attachmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_document_attachmentData build() => _build();

  _$Gget_document_attachmentData _build() {
    _$Gget_document_attachmentData _$result;
    try {
      _$result = _$v ??
          new _$Gget_document_attachmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_document_attachmentData', 'G__typename'),
              document: document.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'document';
        document.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_document_attachmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_document_attachmentData_document
    extends Gget_document_attachmentData_document {
  @override
  final String G__typename;
  @override
  final String attachment;
  @override
  final String mimeType;
  @override
  final BuiltList<String> measureIds;

  factory _$Gget_document_attachmentData_document(
          [void Function(Gget_document_attachmentData_documentBuilder)?
              updates]) =>
      (new Gget_document_attachmentData_documentBuilder()..update(updates))
          ._build();

  _$Gget_document_attachmentData_document._(
      {required this.G__typename,
      required this.attachment,
      required this.mimeType,
      required this.measureIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_document_attachmentData_document', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        attachment, r'Gget_document_attachmentData_document', 'attachment');
    BuiltValueNullFieldError.checkNotNull(
        mimeType, r'Gget_document_attachmentData_document', 'mimeType');
    BuiltValueNullFieldError.checkNotNull(
        measureIds, r'Gget_document_attachmentData_document', 'measureIds');
  }

  @override
  Gget_document_attachmentData_document rebuild(
          void Function(Gget_document_attachmentData_documentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_document_attachmentData_documentBuilder toBuilder() =>
      new Gget_document_attachmentData_documentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_document_attachmentData_document &&
        G__typename == other.G__typename &&
        attachment == other.attachment &&
        mimeType == other.mimeType &&
        measureIds == other.measureIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, attachment.hashCode);
    _$hash = $jc(_$hash, mimeType.hashCode);
    _$hash = $jc(_$hash, measureIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_document_attachmentData_document')
          ..add('G__typename', G__typename)
          ..add('attachment', attachment)
          ..add('mimeType', mimeType)
          ..add('measureIds', measureIds))
        .toString();
  }
}

class Gget_document_attachmentData_documentBuilder
    implements
        Builder<Gget_document_attachmentData_document,
            Gget_document_attachmentData_documentBuilder> {
  _$Gget_document_attachmentData_document? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _attachment;
  String? get attachment => _$this._attachment;
  set attachment(String? attachment) => _$this._attachment = attachment;

  String? _mimeType;
  String? get mimeType => _$this._mimeType;
  set mimeType(String? mimeType) => _$this._mimeType = mimeType;

  ListBuilder<String>? _measureIds;
  ListBuilder<String> get measureIds =>
      _$this._measureIds ??= new ListBuilder<String>();
  set measureIds(ListBuilder<String>? measureIds) =>
      _$this._measureIds = measureIds;

  Gget_document_attachmentData_documentBuilder() {
    Gget_document_attachmentData_document._initializeBuilder(this);
  }

  Gget_document_attachmentData_documentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _attachment = $v.attachment;
      _mimeType = $v.mimeType;
      _measureIds = $v.measureIds.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_document_attachmentData_document other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_document_attachmentData_document;
  }

  @override
  void update(
      void Function(Gget_document_attachmentData_documentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_document_attachmentData_document build() => _build();

  _$Gget_document_attachmentData_document _build() {
    _$Gget_document_attachmentData_document _$result;
    try {
      _$result = _$v ??
          new _$Gget_document_attachmentData_document._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_document_attachmentData_document', 'G__typename'),
              attachment: BuiltValueNullFieldError.checkNotNull(attachment,
                  r'Gget_document_attachmentData_document', 'attachment'),
              mimeType: BuiltValueNullFieldError.checkNotNull(mimeType,
                  r'Gget_document_attachmentData_document', 'mimeType'),
              measureIds: measureIds.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'measureIds';
        measureIds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_document_attachmentData_document',
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
