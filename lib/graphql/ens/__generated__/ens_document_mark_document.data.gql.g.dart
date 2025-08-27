// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_document_mark_document.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gmark_documentData> _$gmarkDocumentDataSerializer =
    new _$Gmark_documentDataSerializer();
Serializer<Gmark_documentData_markDocument>
    _$gmarkDocumentDataMarkDocumentSerializer =
    new _$Gmark_documentData_markDocumentSerializer();

class _$Gmark_documentDataSerializer
    implements StructuredSerializer<Gmark_documentData> {
  @override
  final Iterable<Type> types = const [Gmark_documentData, _$Gmark_documentData];
  @override
  final String wireName = 'Gmark_documentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gmark_documentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'markDocument',
      serializers.serialize(object.markDocument,
          specifiedType: const FullType(Gmark_documentData_markDocument)),
    ];

    return result;
  }

  @override
  Gmark_documentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gmark_documentDataBuilder();

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
        case 'markDocument':
          result.markDocument.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gmark_documentData_markDocument))!
              as Gmark_documentData_markDocument);
          break;
      }
    }

    return result.build();
  }
}

class _$Gmark_documentData_markDocumentSerializer
    implements StructuredSerializer<Gmark_documentData_markDocument> {
  @override
  final Iterable<Type> types = const [
    Gmark_documentData_markDocument,
    _$Gmark_documentData_markDocument
  ];
  @override
  final String wireName = 'Gmark_documentData_markDocument';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gmark_documentData_markDocument object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'success',
      serializers.serialize(object.success,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gmark_documentData_markDocument deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gmark_documentData_markDocumentBuilder();

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
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gmark_documentData extends Gmark_documentData {
  @override
  final String G__typename;
  @override
  final Gmark_documentData_markDocument markDocument;

  factory _$Gmark_documentData(
          [void Function(Gmark_documentDataBuilder)? updates]) =>
      (new Gmark_documentDataBuilder()..update(updates))._build();

  _$Gmark_documentData._(
      {required this.G__typename, required this.markDocument})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gmark_documentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        markDocument, r'Gmark_documentData', 'markDocument');
  }

  @override
  Gmark_documentData rebuild(
          void Function(Gmark_documentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gmark_documentDataBuilder toBuilder() =>
      new Gmark_documentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gmark_documentData &&
        G__typename == other.G__typename &&
        markDocument == other.markDocument;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, markDocument.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gmark_documentData')
          ..add('G__typename', G__typename)
          ..add('markDocument', markDocument))
        .toString();
  }
}

class Gmark_documentDataBuilder
    implements Builder<Gmark_documentData, Gmark_documentDataBuilder> {
  _$Gmark_documentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gmark_documentData_markDocumentBuilder? _markDocument;
  Gmark_documentData_markDocumentBuilder get markDocument =>
      _$this._markDocument ??= new Gmark_documentData_markDocumentBuilder();
  set markDocument(Gmark_documentData_markDocumentBuilder? markDocument) =>
      _$this._markDocument = markDocument;

  Gmark_documentDataBuilder() {
    Gmark_documentData._initializeBuilder(this);
  }

  Gmark_documentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _markDocument = $v.markDocument.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gmark_documentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gmark_documentData;
  }

  @override
  void update(void Function(Gmark_documentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gmark_documentData build() => _build();

  _$Gmark_documentData _build() {
    _$Gmark_documentData _$result;
    try {
      _$result = _$v ??
          new _$Gmark_documentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gmark_documentData', 'G__typename'),
              markDocument: markDocument.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'markDocument';
        markDocument.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gmark_documentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gmark_documentData_markDocument
    extends Gmark_documentData_markDocument {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gmark_documentData_markDocument(
          [void Function(Gmark_documentData_markDocumentBuilder)? updates]) =>
      (new Gmark_documentData_markDocumentBuilder()..update(updates))._build();

  _$Gmark_documentData_markDocument._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gmark_documentData_markDocument', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gmark_documentData_markDocument', 'success');
  }

  @override
  Gmark_documentData_markDocument rebuild(
          void Function(Gmark_documentData_markDocumentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gmark_documentData_markDocumentBuilder toBuilder() =>
      new Gmark_documentData_markDocumentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gmark_documentData_markDocument &&
        G__typename == other.G__typename &&
        success == other.success;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gmark_documentData_markDocument')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gmark_documentData_markDocumentBuilder
    implements
        Builder<Gmark_documentData_markDocument,
            Gmark_documentData_markDocumentBuilder> {
  _$Gmark_documentData_markDocument? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gmark_documentData_markDocumentBuilder() {
    Gmark_documentData_markDocument._initializeBuilder(this);
  }

  Gmark_documentData_markDocumentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gmark_documentData_markDocument other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gmark_documentData_markDocument;
  }

  @override
  void update(void Function(Gmark_documentData_markDocumentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gmark_documentData_markDocument build() => _build();

  _$Gmark_documentData_markDocument _build() {
    final _$result = _$v ??
        new _$Gmark_documentData_markDocument._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'Gmark_documentData_markDocument', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'Gmark_documentData_markDocument', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
