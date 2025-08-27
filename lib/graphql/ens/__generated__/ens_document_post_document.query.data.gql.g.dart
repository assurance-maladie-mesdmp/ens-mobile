// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_document_post_document.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gpost_documentData> _$gpostDocumentDataSerializer =
    new _$Gpost_documentDataSerializer();
Serializer<Gpost_documentData_postDocument>
    _$gpostDocumentDataPostDocumentSerializer =
    new _$Gpost_documentData_postDocumentSerializer();

class _$Gpost_documentDataSerializer
    implements StructuredSerializer<Gpost_documentData> {
  @override
  final Iterable<Type> types = const [Gpost_documentData, _$Gpost_documentData];
  @override
  final String wireName = 'Gpost_documentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gpost_documentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'postDocument',
      serializers.serialize(object.postDocument,
          specifiedType: const FullType(Gpost_documentData_postDocument)),
    ];

    return result;
  }

  @override
  Gpost_documentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gpost_documentDataBuilder();

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
        case 'postDocument':
          result.postDocument.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gpost_documentData_postDocument))!
              as Gpost_documentData_postDocument);
          break;
      }
    }

    return result.build();
  }
}

class _$Gpost_documentData_postDocumentSerializer
    implements StructuredSerializer<Gpost_documentData_postDocument> {
  @override
  final Iterable<Type> types = const [
    Gpost_documentData_postDocument,
    _$Gpost_documentData_postDocument
  ];
  @override
  final String wireName = 'Gpost_documentData_postDocument';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gpost_documentData_postDocument object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gpost_documentData_postDocument deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gpost_documentData_postDocumentBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gpost_documentData extends Gpost_documentData {
  @override
  final String G__typename;
  @override
  final Gpost_documentData_postDocument postDocument;

  factory _$Gpost_documentData(
          [void Function(Gpost_documentDataBuilder)? updates]) =>
      (new Gpost_documentDataBuilder()..update(updates))._build();

  _$Gpost_documentData._(
      {required this.G__typename, required this.postDocument})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gpost_documentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        postDocument, r'Gpost_documentData', 'postDocument');
  }

  @override
  Gpost_documentData rebuild(
          void Function(Gpost_documentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gpost_documentDataBuilder toBuilder() =>
      new Gpost_documentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gpost_documentData &&
        G__typename == other.G__typename &&
        postDocument == other.postDocument;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, postDocument.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gpost_documentData')
          ..add('G__typename', G__typename)
          ..add('postDocument', postDocument))
        .toString();
  }
}

class Gpost_documentDataBuilder
    implements Builder<Gpost_documentData, Gpost_documentDataBuilder> {
  _$Gpost_documentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gpost_documentData_postDocumentBuilder? _postDocument;
  Gpost_documentData_postDocumentBuilder get postDocument =>
      _$this._postDocument ??= new Gpost_documentData_postDocumentBuilder();
  set postDocument(Gpost_documentData_postDocumentBuilder? postDocument) =>
      _$this._postDocument = postDocument;

  Gpost_documentDataBuilder() {
    Gpost_documentData._initializeBuilder(this);
  }

  Gpost_documentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _postDocument = $v.postDocument.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gpost_documentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gpost_documentData;
  }

  @override
  void update(void Function(Gpost_documentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gpost_documentData build() => _build();

  _$Gpost_documentData _build() {
    _$Gpost_documentData _$result;
    try {
      _$result = _$v ??
          new _$Gpost_documentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gpost_documentData', 'G__typename'),
              postDocument: postDocument.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'postDocument';
        postDocument.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gpost_documentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gpost_documentData_postDocument
    extends Gpost_documentData_postDocument {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$Gpost_documentData_postDocument(
          [void Function(Gpost_documentData_postDocumentBuilder)? updates]) =>
      (new Gpost_documentData_postDocumentBuilder()..update(updates))._build();

  _$Gpost_documentData_postDocument._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gpost_documentData_postDocument', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gpost_documentData_postDocument', 'id');
  }

  @override
  Gpost_documentData_postDocument rebuild(
          void Function(Gpost_documentData_postDocumentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gpost_documentData_postDocumentBuilder toBuilder() =>
      new Gpost_documentData_postDocumentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gpost_documentData_postDocument &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gpost_documentData_postDocument')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class Gpost_documentData_postDocumentBuilder
    implements
        Builder<Gpost_documentData_postDocument,
            Gpost_documentData_postDocumentBuilder> {
  _$Gpost_documentData_postDocument? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  Gpost_documentData_postDocumentBuilder() {
    Gpost_documentData_postDocument._initializeBuilder(this);
  }

  Gpost_documentData_postDocumentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gpost_documentData_postDocument other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gpost_documentData_postDocument;
  }

  @override
  void update(void Function(Gpost_documentData_postDocumentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gpost_documentData_postDocument build() => _build();

  _$Gpost_documentData_postDocument _build() {
    final _$result = _$v ??
        new _$Gpost_documentData_postDocument._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'Gpost_documentData_postDocument', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Gpost_documentData_postDocument', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
