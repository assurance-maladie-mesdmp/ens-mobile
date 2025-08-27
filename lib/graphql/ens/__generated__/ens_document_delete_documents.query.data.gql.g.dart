// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_document_delete_documents.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_documentsData> _$gdeleteDocumentsDataSerializer =
    new _$Gdelete_documentsDataSerializer();
Serializer<Gdelete_documentsData_deleteDocuments>
    _$gdeleteDocumentsDataDeleteDocumentsSerializer =
    new _$Gdelete_documentsData_deleteDocumentsSerializer();

class _$Gdelete_documentsDataSerializer
    implements StructuredSerializer<Gdelete_documentsData> {
  @override
  final Iterable<Type> types = const [
    Gdelete_documentsData,
    _$Gdelete_documentsData
  ];
  @override
  final String wireName = 'Gdelete_documentsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_documentsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'deleteDocuments',
      serializers.serialize(object.deleteDocuments,
          specifiedType: const FullType(Gdelete_documentsData_deleteDocuments)),
    ];

    return result;
  }

  @override
  Gdelete_documentsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_documentsDataBuilder();

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
        case 'deleteDocuments':
          result.deleteDocuments.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gdelete_documentsData_deleteDocuments))!
              as Gdelete_documentsData_deleteDocuments);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_documentsData_deleteDocumentsSerializer
    implements StructuredSerializer<Gdelete_documentsData_deleteDocuments> {
  @override
  final Iterable<Type> types = const [
    Gdelete_documentsData_deleteDocuments,
    _$Gdelete_documentsData_deleteDocuments
  ];
  @override
  final String wireName = 'Gdelete_documentsData_deleteDocuments';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_documentsData_deleteDocuments object,
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
  Gdelete_documentsData_deleteDocuments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_documentsData_deleteDocumentsBuilder();

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

class _$Gdelete_documentsData extends Gdelete_documentsData {
  @override
  final String G__typename;
  @override
  final Gdelete_documentsData_deleteDocuments deleteDocuments;

  factory _$Gdelete_documentsData(
          [void Function(Gdelete_documentsDataBuilder)? updates]) =>
      (new Gdelete_documentsDataBuilder()..update(updates))._build();

  _$Gdelete_documentsData._(
      {required this.G__typename, required this.deleteDocuments})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_documentsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        deleteDocuments, r'Gdelete_documentsData', 'deleteDocuments');
  }

  @override
  Gdelete_documentsData rebuild(
          void Function(Gdelete_documentsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_documentsDataBuilder toBuilder() =>
      new Gdelete_documentsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_documentsData &&
        G__typename == other.G__typename &&
        deleteDocuments == other.deleteDocuments;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deleteDocuments.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_documentsData')
          ..add('G__typename', G__typename)
          ..add('deleteDocuments', deleteDocuments))
        .toString();
  }
}

class Gdelete_documentsDataBuilder
    implements Builder<Gdelete_documentsData, Gdelete_documentsDataBuilder> {
  _$Gdelete_documentsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gdelete_documentsData_deleteDocumentsBuilder? _deleteDocuments;
  Gdelete_documentsData_deleteDocumentsBuilder get deleteDocuments =>
      _$this._deleteDocuments ??=
          new Gdelete_documentsData_deleteDocumentsBuilder();
  set deleteDocuments(
          Gdelete_documentsData_deleteDocumentsBuilder? deleteDocuments) =>
      _$this._deleteDocuments = deleteDocuments;

  Gdelete_documentsDataBuilder() {
    Gdelete_documentsData._initializeBuilder(this);
  }

  Gdelete_documentsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteDocuments = $v.deleteDocuments.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_documentsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_documentsData;
  }

  @override
  void update(void Function(Gdelete_documentsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_documentsData build() => _build();

  _$Gdelete_documentsData _build() {
    _$Gdelete_documentsData _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_documentsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gdelete_documentsData', 'G__typename'),
              deleteDocuments: deleteDocuments.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteDocuments';
        deleteDocuments.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_documentsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gdelete_documentsData_deleteDocuments
    extends Gdelete_documentsData_deleteDocuments {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gdelete_documentsData_deleteDocuments(
          [void Function(Gdelete_documentsData_deleteDocumentsBuilder)?
              updates]) =>
      (new Gdelete_documentsData_deleteDocumentsBuilder()..update(updates))
          ._build();

  _$Gdelete_documentsData_deleteDocuments._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_documentsData_deleteDocuments', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gdelete_documentsData_deleteDocuments', 'success');
  }

  @override
  Gdelete_documentsData_deleteDocuments rebuild(
          void Function(Gdelete_documentsData_deleteDocumentsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_documentsData_deleteDocumentsBuilder toBuilder() =>
      new Gdelete_documentsData_deleteDocumentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_documentsData_deleteDocuments &&
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
            r'Gdelete_documentsData_deleteDocuments')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gdelete_documentsData_deleteDocumentsBuilder
    implements
        Builder<Gdelete_documentsData_deleteDocuments,
            Gdelete_documentsData_deleteDocumentsBuilder> {
  _$Gdelete_documentsData_deleteDocuments? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gdelete_documentsData_deleteDocumentsBuilder() {
    Gdelete_documentsData_deleteDocuments._initializeBuilder(this);
  }

  Gdelete_documentsData_deleteDocumentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_documentsData_deleteDocuments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_documentsData_deleteDocuments;
  }

  @override
  void update(
      void Function(Gdelete_documentsData_deleteDocumentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_documentsData_deleteDocuments build() => _build();

  _$Gdelete_documentsData_deleteDocuments _build() {
    final _$result = _$v ??
        new _$Gdelete_documentsData_deleteDocuments._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gdelete_documentsData_deleteDocuments', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'Gdelete_documentsData_deleteDocuments', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
