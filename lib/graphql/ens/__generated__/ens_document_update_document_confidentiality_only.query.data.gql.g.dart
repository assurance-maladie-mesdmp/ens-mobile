// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_document_update_document_confidentiality_only.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_document_confidentiality_onlyData>
    _$gupdateDocumentConfidentialityOnlyDataSerializer =
    new _$Gupdate_document_confidentiality_onlyDataSerializer();
Serializer<
        Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument>
    _$gupdateDocumentConfidentialityOnlyDataUpdateConfidentialityDocumentSerializer =
    new _$Gupdate_document_confidentiality_onlyData_updateConfidentialityDocumentSerializer();

class _$Gupdate_document_confidentiality_onlyDataSerializer
    implements StructuredSerializer<Gupdate_document_confidentiality_onlyData> {
  @override
  final Iterable<Type> types = const [
    Gupdate_document_confidentiality_onlyData,
    _$Gupdate_document_confidentiality_onlyData
  ];
  @override
  final String wireName = 'Gupdate_document_confidentiality_onlyData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_document_confidentiality_onlyData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'updateConfidentialityDocument',
      serializers.serialize(object.updateConfidentialityDocument,
          specifiedType: const FullType(
              Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument)),
    ];

    return result;
  }

  @override
  Gupdate_document_confidentiality_onlyData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_document_confidentiality_onlyDataBuilder();

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
        case 'updateConfidentialityDocument':
          result.updateConfidentialityDocument.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument))!
              as Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_document_confidentiality_onlyData_updateConfidentialityDocumentSerializer
    implements
        StructuredSerializer<
            Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument> {
  @override
  final Iterable<Type> types = const [
    Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument,
    _$Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument
  ];
  @override
  final String wireName =
      'Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument
          object,
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
  Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gupdate_document_confidentiality_onlyData_updateConfidentialityDocumentBuilder();

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

class _$Gupdate_document_confidentiality_onlyData
    extends Gupdate_document_confidentiality_onlyData {
  @override
  final String G__typename;
  @override
  final Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument
      updateConfidentialityDocument;

  factory _$Gupdate_document_confidentiality_onlyData(
          [void Function(Gupdate_document_confidentiality_onlyDataBuilder)?
              updates]) =>
      (new Gupdate_document_confidentiality_onlyDataBuilder()..update(updates))
          ._build();

  _$Gupdate_document_confidentiality_onlyData._(
      {required this.G__typename, required this.updateConfidentialityDocument})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gupdate_document_confidentiality_onlyData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        updateConfidentialityDocument,
        r'Gupdate_document_confidentiality_onlyData',
        'updateConfidentialityDocument');
  }

  @override
  Gupdate_document_confidentiality_onlyData rebuild(
          void Function(Gupdate_document_confidentiality_onlyDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_document_confidentiality_onlyDataBuilder toBuilder() =>
      new Gupdate_document_confidentiality_onlyDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_document_confidentiality_onlyData &&
        G__typename == other.G__typename &&
        updateConfidentialityDocument == other.updateConfidentialityDocument;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, updateConfidentialityDocument.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gupdate_document_confidentiality_onlyData')
          ..add('G__typename', G__typename)
          ..add('updateConfidentialityDocument', updateConfidentialityDocument))
        .toString();
  }
}

class Gupdate_document_confidentiality_onlyDataBuilder
    implements
        Builder<Gupdate_document_confidentiality_onlyData,
            Gupdate_document_confidentiality_onlyDataBuilder> {
  _$Gupdate_document_confidentiality_onlyData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gupdate_document_confidentiality_onlyData_updateConfidentialityDocumentBuilder?
      _updateConfidentialityDocument;
  Gupdate_document_confidentiality_onlyData_updateConfidentialityDocumentBuilder
      get updateConfidentialityDocument => _$this
              ._updateConfidentialityDocument ??=
          new Gupdate_document_confidentiality_onlyData_updateConfidentialityDocumentBuilder();
  set updateConfidentialityDocument(
          Gupdate_document_confidentiality_onlyData_updateConfidentialityDocumentBuilder?
              updateConfidentialityDocument) =>
      _$this._updateConfidentialityDocument = updateConfidentialityDocument;

  Gupdate_document_confidentiality_onlyDataBuilder() {
    Gupdate_document_confidentiality_onlyData._initializeBuilder(this);
  }

  Gupdate_document_confidentiality_onlyDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateConfidentialityDocument =
          $v.updateConfidentialityDocument.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_document_confidentiality_onlyData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_document_confidentiality_onlyData;
  }

  @override
  void update(
      void Function(Gupdate_document_confidentiality_onlyDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_document_confidentiality_onlyData build() => _build();

  _$Gupdate_document_confidentiality_onlyData _build() {
    _$Gupdate_document_confidentiality_onlyData _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_document_confidentiality_onlyData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gupdate_document_confidentiality_onlyData', 'G__typename'),
              updateConfidentialityDocument:
                  updateConfidentialityDocument.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateConfidentialityDocument';
        updateConfidentialityDocument.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_document_confidentiality_onlyData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument
    extends Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument(
          [void Function(
                  Gupdate_document_confidentiality_onlyData_updateConfidentialityDocumentBuilder)?
              updates]) =>
      (new Gupdate_document_confidentiality_onlyData_updateConfidentialityDocumentBuilder()
            ..update(updates))
          ._build();

  _$Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success,
        r'Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument',
        'success');
  }

  @override
  Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument rebuild(
          void Function(
                  Gupdate_document_confidentiality_onlyData_updateConfidentialityDocumentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_document_confidentiality_onlyData_updateConfidentialityDocumentBuilder
      toBuilder() =>
          new Gupdate_document_confidentiality_onlyData_updateConfidentialityDocumentBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument &&
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
            r'Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gupdate_document_confidentiality_onlyData_updateConfidentialityDocumentBuilder
    implements
        Builder<
            Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument,
            Gupdate_document_confidentiality_onlyData_updateConfidentialityDocumentBuilder> {
  _$Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gupdate_document_confidentiality_onlyData_updateConfidentialityDocumentBuilder() {
    Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument
        ._initializeBuilder(this);
  }

  Gupdate_document_confidentiality_onlyData_updateConfidentialityDocumentBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument;
  }

  @override
  void update(
      void Function(
              Gupdate_document_confidentiality_onlyData_updateConfidentialityDocumentBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument
      build() => _build();

  _$Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument
      _build() {
    final _$result = _$v ??
        new _$Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
