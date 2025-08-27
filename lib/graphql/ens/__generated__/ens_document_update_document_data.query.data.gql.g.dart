// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_document_update_document_data.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_document_dataData> _$gupdateDocumentDataDataSerializer =
    new _$Gupdate_document_dataDataSerializer();
Serializer<Gupdate_document_dataData_updateDocument>
    _$gupdateDocumentDataDataUpdateDocumentSerializer =
    new _$Gupdate_document_dataData_updateDocumentSerializer();

class _$Gupdate_document_dataDataSerializer
    implements StructuredSerializer<Gupdate_document_dataData> {
  @override
  final Iterable<Type> types = const [
    Gupdate_document_dataData,
    _$Gupdate_document_dataData
  ];
  @override
  final String wireName = 'Gupdate_document_dataData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_document_dataData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'updateDocument',
      serializers.serialize(object.updateDocument,
          specifiedType:
              const FullType(Gupdate_document_dataData_updateDocument)),
    ];

    return result;
  }

  @override
  Gupdate_document_dataData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_document_dataDataBuilder();

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
        case 'updateDocument':
          result.updateDocument.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gupdate_document_dataData_updateDocument))!
              as Gupdate_document_dataData_updateDocument);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_document_dataData_updateDocumentSerializer
    implements StructuredSerializer<Gupdate_document_dataData_updateDocument> {
  @override
  final Iterable<Type> types = const [
    Gupdate_document_dataData_updateDocument,
    _$Gupdate_document_dataData_updateDocument
  ];
  @override
  final String wireName = 'Gupdate_document_dataData_updateDocument';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_document_dataData_updateDocument object,
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
  Gupdate_document_dataData_updateDocument deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_document_dataData_updateDocumentBuilder();

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

class _$Gupdate_document_dataData extends Gupdate_document_dataData {
  @override
  final String G__typename;
  @override
  final Gupdate_document_dataData_updateDocument updateDocument;

  factory _$Gupdate_document_dataData(
          [void Function(Gupdate_document_dataDataBuilder)? updates]) =>
      (new Gupdate_document_dataDataBuilder()..update(updates))._build();

  _$Gupdate_document_dataData._(
      {required this.G__typename, required this.updateDocument})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_document_dataData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        updateDocument, r'Gupdate_document_dataData', 'updateDocument');
  }

  @override
  Gupdate_document_dataData rebuild(
          void Function(Gupdate_document_dataDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_document_dataDataBuilder toBuilder() =>
      new Gupdate_document_dataDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_document_dataData &&
        G__typename == other.G__typename &&
        updateDocument == other.updateDocument;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, updateDocument.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_document_dataData')
          ..add('G__typename', G__typename)
          ..add('updateDocument', updateDocument))
        .toString();
  }
}

class Gupdate_document_dataDataBuilder
    implements
        Builder<Gupdate_document_dataData, Gupdate_document_dataDataBuilder> {
  _$Gupdate_document_dataData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gupdate_document_dataData_updateDocumentBuilder? _updateDocument;
  Gupdate_document_dataData_updateDocumentBuilder get updateDocument =>
      _$this._updateDocument ??=
          new Gupdate_document_dataData_updateDocumentBuilder();
  set updateDocument(
          Gupdate_document_dataData_updateDocumentBuilder? updateDocument) =>
      _$this._updateDocument = updateDocument;

  Gupdate_document_dataDataBuilder() {
    Gupdate_document_dataData._initializeBuilder(this);
  }

  Gupdate_document_dataDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateDocument = $v.updateDocument.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_document_dataData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_document_dataData;
  }

  @override
  void update(void Function(Gupdate_document_dataDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_document_dataData build() => _build();

  _$Gupdate_document_dataData _build() {
    _$Gupdate_document_dataData _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_document_dataData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gupdate_document_dataData', 'G__typename'),
              updateDocument: updateDocument.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateDocument';
        updateDocument.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_document_dataData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_document_dataData_updateDocument
    extends Gupdate_document_dataData_updateDocument {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gupdate_document_dataData_updateDocument(
          [void Function(Gupdate_document_dataData_updateDocumentBuilder)?
              updates]) =>
      (new Gupdate_document_dataData_updateDocumentBuilder()..update(updates))
          ._build();

  _$Gupdate_document_dataData_updateDocument._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gupdate_document_dataData_updateDocument', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gupdate_document_dataData_updateDocument', 'success');
  }

  @override
  Gupdate_document_dataData_updateDocument rebuild(
          void Function(Gupdate_document_dataData_updateDocumentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_document_dataData_updateDocumentBuilder toBuilder() =>
      new Gupdate_document_dataData_updateDocumentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_document_dataData_updateDocument &&
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
    return (newBuiltValueToStringHelper(
            r'Gupdate_document_dataData_updateDocument')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gupdate_document_dataData_updateDocumentBuilder
    implements
        Builder<Gupdate_document_dataData_updateDocument,
            Gupdate_document_dataData_updateDocumentBuilder> {
  _$Gupdate_document_dataData_updateDocument? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gupdate_document_dataData_updateDocumentBuilder() {
    Gupdate_document_dataData_updateDocument._initializeBuilder(this);
  }

  Gupdate_document_dataData_updateDocumentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_document_dataData_updateDocument other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_document_dataData_updateDocument;
  }

  @override
  void update(
      void Function(Gupdate_document_dataData_updateDocumentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_document_dataData_updateDocument build() => _build();

  _$Gupdate_document_dataData_updateDocument _build() {
    final _$result = _$v ??
        new _$Gupdate_document_dataData_updateDocument._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gupdate_document_dataData_updateDocument', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(success,
                r'Gupdate_document_dataData_updateDocument', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
