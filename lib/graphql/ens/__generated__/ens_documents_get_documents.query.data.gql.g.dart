// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_documents_get_documents.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_documentsData> _$ggetDocumentsDataSerializer =
    new _$Gget_documentsDataSerializer();
Serializer<Gget_documentsData_documents>
    _$ggetDocumentsDataDocumentsSerializer =
    new _$Gget_documentsData_documentsSerializer();
Serializer<Gget_documentsData_documents_documents>
    _$ggetDocumentsDataDocumentsDocumentsSerializer =
    new _$Gget_documentsData_documents_documentsSerializer();
Serializer<Gget_documentsData_documents_documents_uploadedBy>
    _$ggetDocumentsDataDocumentsDocumentsUploadedBySerializer =
    new _$Gget_documentsData_documents_documents_uploadedBySerializer();
Serializer<Gget_documentsData_documents_documents_folder>
    _$ggetDocumentsDataDocumentsDocumentsFolderSerializer =
    new _$Gget_documentsData_documents_documents_folderSerializer();
Serializer<Gget_documentsData_fetchAllFolders>
    _$ggetDocumentsDataFetchAllFoldersSerializer =
    new _$Gget_documentsData_fetchAllFoldersSerializer();

class _$Gget_documentsDataSerializer
    implements StructuredSerializer<Gget_documentsData> {
  @override
  final Iterable<Type> types = const [Gget_documentsData, _$Gget_documentsData];
  @override
  final String wireName = 'Gget_documentsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_documentsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.documents;
    if (value != null) {
      result
        ..add('documents')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Gget_documentsData_documents)));
    }
    value = object.fetchAllFolders;
    if (value != null) {
      result
        ..add('fetchAllFolders')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(Gget_documentsData_fetchAllFolders)])));
    }
    return result;
  }

  @override
  Gget_documentsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_documentsDataBuilder();

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
        case 'documents':
          result.documents.replace(serializers.deserialize(value,
                  specifiedType: const FullType(Gget_documentsData_documents))!
              as Gget_documentsData_documents);
          break;
        case 'fetchAllFolders':
          result.fetchAllFolders.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gget_documentsData_fetchAllFolders)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_documentsData_documentsSerializer
    implements StructuredSerializer<Gget_documentsData_documents> {
  @override
  final Iterable<Type> types = const [
    Gget_documentsData_documents,
    _$Gget_documentsData_documents
  ];
  @override
  final String wireName = 'Gget_documentsData_documents';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_documentsData_documents object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'documents',
      serializers.serialize(object.documents,
          specifiedType: const FullType(BuiltList,
              const [const FullType(Gget_documentsData_documents_documents)])),
    ];

    return result;
  }

  @override
  Gget_documentsData_documents deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_documentsData_documentsBuilder();

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
        case 'documents':
          result.documents.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gget_documentsData_documents_documents)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_documentsData_documents_documentsSerializer
    implements StructuredSerializer<Gget_documentsData_documents_documents> {
  @override
  final Iterable<Type> types = const [
    Gget_documentsData_documents_documents,
    _$Gget_documentsData_documents_documents
  ];
  @override
  final String wireName = 'Gget_documentsData_documents_documents';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_documentsData_documents_documents object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'uploadedBy',
      serializers.serialize(object.uploadedBy,
          specifiedType: const FullType(
              Gget_documentsData_documents_documents_uploadedBy)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
      'category',
      serializers.serialize(object.category,
          specifiedType: const FullType(_i3.GCategory)),
      'confidentialities',
      serializers.serialize(object.confidentialities,
          specifiedType: const FullType(
              BuiltList, const [const FullType(_i3.GConfidentiality)])),
      'canOwnerDelete',
      serializers.serialize(object.canOwnerDelete,
          specifiedType: const FullType(bool)),
      'covidCertificate',
      serializers.serialize(object.covidCertificate,
          specifiedType: const FullType(bool)),
      'canUpdateCategory',
      serializers.serialize(object.canUpdateCategory,
          specifiedType: const FullType(bool)),
      'canUpdateConfidentialityOnly',
      serializers.serialize(object.canUpdateConfidentialityOnly,
          specifiedType: const FullType(bool)),
      'canUpdateTitle',
      serializers.serialize(object.canUpdateTitle,
          specifiedType: const FullType(bool)),
      'canUpdateCreatedAt',
      serializers.serialize(object.canUpdateCreatedAt,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.reportDate;
    if (value != null) {
      result
        ..add('reportDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pinned;
    if (value != null) {
      result
        ..add('pinned')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.folder;
    if (value != null) {
      result
        ..add('folder')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(Gget_documentsData_documents_documents_folder)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_documentsData_documents_documents deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_documentsData_documents_documentsBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'uploadedBy':
          result.uploadedBy.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_documentsData_documents_documents_uploadedBy))!
              as Gget_documentsData_documents_documents_uploadedBy);
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'reportDate':
          result.reportDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(_i3.GCategory))! as _i3.GCategory;
          break;
        case 'pinned':
          result.pinned = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'confidentialities':
          result.confidentialities.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(_i3.GConfidentiality)]))!
              as BuiltList<Object?>);
          break;
        case 'canOwnerDelete':
          result.canOwnerDelete = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'covidCertificate':
          result.covidCertificate = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'canUpdateCategory':
          result.canUpdateCategory = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'canUpdateConfidentialityOnly':
          result.canUpdateConfidentialityOnly = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'canUpdateTitle':
          result.canUpdateTitle = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'canUpdateCreatedAt':
          result.canUpdateCreatedAt = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'folder':
          result.folder.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_documentsData_documents_documents_folder))!
              as Gget_documentsData_documents_documents_folder);
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_documentsData_documents_documents_uploadedBySerializer
    implements
        StructuredSerializer<
            Gget_documentsData_documents_documents_uploadedBy> {
  @override
  final Iterable<Type> types = const [
    Gget_documentsData_documents_documents_uploadedBy,
    _$Gget_documentsData_documents_documents_uploadedBy
  ];
  @override
  final String wireName = 'Gget_documentsData_documents_documents_uploadedBy';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_documentsData_documents_documents_uploadedBy object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'sourceAuthor',
      serializers.serialize(object.sourceAuthor,
          specifiedType: const FullType(_i3.GSourceAuthor)),
      'isPsClickable',
      serializers.serialize(object.isPsClickable,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.firstName;
    if (value != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_documentsData_documents_documents_uploadedBy deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_documentsData_documents_documents_uploadedByBuilder();

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
        case 'sourceAuthor':
          result.sourceAuthor = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GSourceAuthor))!
              as _i3.GSourceAuthor;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isPsClickable':
          result.isPsClickable = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_documentsData_documents_documents_folderSerializer
    implements
        StructuredSerializer<Gget_documentsData_documents_documents_folder> {
  @override
  final Iterable<Type> types = const [
    Gget_documentsData_documents_documents_folder,
    _$Gget_documentsData_documents_documents_folder
  ];
  @override
  final String wireName = 'Gget_documentsData_documents_documents_folder';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_documentsData_documents_documents_folder object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_documentsData_documents_documents_folder deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_documentsData_documents_documents_folderBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_documentsData_fetchAllFoldersSerializer
    implements StructuredSerializer<Gget_documentsData_fetchAllFolders> {
  @override
  final Iterable<Type> types = const [
    Gget_documentsData_fetchAllFolders,
    _$Gget_documentsData_fetchAllFolders
  ];
  @override
  final String wireName = 'Gget_documentsData_fetchAllFolders';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_documentsData_fetchAllFolders object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_documentsData_fetchAllFolders deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_documentsData_fetchAllFoldersBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_documentsData extends Gget_documentsData {
  @override
  final String G__typename;
  @override
  final Gget_documentsData_documents? documents;
  @override
  final BuiltList<Gget_documentsData_fetchAllFolders>? fetchAllFolders;

  factory _$Gget_documentsData(
          [void Function(Gget_documentsDataBuilder)? updates]) =>
      (new Gget_documentsDataBuilder()..update(updates))._build();

  _$Gget_documentsData._(
      {required this.G__typename, this.documents, this.fetchAllFolders})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_documentsData', 'G__typename');
  }

  @override
  Gget_documentsData rebuild(
          void Function(Gget_documentsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_documentsDataBuilder toBuilder() =>
      new Gget_documentsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_documentsData &&
        G__typename == other.G__typename &&
        documents == other.documents &&
        fetchAllFolders == other.fetchAllFolders;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, documents.hashCode);
    _$hash = $jc(_$hash, fetchAllFolders.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_documentsData')
          ..add('G__typename', G__typename)
          ..add('documents', documents)
          ..add('fetchAllFolders', fetchAllFolders))
        .toString();
  }
}

class Gget_documentsDataBuilder
    implements Builder<Gget_documentsData, Gget_documentsDataBuilder> {
  _$Gget_documentsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_documentsData_documentsBuilder? _documents;
  Gget_documentsData_documentsBuilder get documents =>
      _$this._documents ??= new Gget_documentsData_documentsBuilder();
  set documents(Gget_documentsData_documentsBuilder? documents) =>
      _$this._documents = documents;

  ListBuilder<Gget_documentsData_fetchAllFolders>? _fetchAllFolders;
  ListBuilder<Gget_documentsData_fetchAllFolders> get fetchAllFolders =>
      _$this._fetchAllFolders ??=
          new ListBuilder<Gget_documentsData_fetchAllFolders>();
  set fetchAllFolders(
          ListBuilder<Gget_documentsData_fetchAllFolders>? fetchAllFolders) =>
      _$this._fetchAllFolders = fetchAllFolders;

  Gget_documentsDataBuilder() {
    Gget_documentsData._initializeBuilder(this);
  }

  Gget_documentsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _documents = $v.documents?.toBuilder();
      _fetchAllFolders = $v.fetchAllFolders?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_documentsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_documentsData;
  }

  @override
  void update(void Function(Gget_documentsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_documentsData build() => _build();

  _$Gget_documentsData _build() {
    _$Gget_documentsData _$result;
    try {
      _$result = _$v ??
          new _$Gget_documentsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_documentsData', 'G__typename'),
              documents: _documents?.build(),
              fetchAllFolders: _fetchAllFolders?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'documents';
        _documents?.build();
        _$failedField = 'fetchAllFolders';
        _fetchAllFolders?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_documentsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_documentsData_documents extends Gget_documentsData_documents {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_documentsData_documents_documents> documents;

  factory _$Gget_documentsData_documents(
          [void Function(Gget_documentsData_documentsBuilder)? updates]) =>
      (new Gget_documentsData_documentsBuilder()..update(updates))._build();

  _$Gget_documentsData_documents._(
      {required this.G__typename, required this.documents})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_documentsData_documents', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        documents, r'Gget_documentsData_documents', 'documents');
  }

  @override
  Gget_documentsData_documents rebuild(
          void Function(Gget_documentsData_documentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_documentsData_documentsBuilder toBuilder() =>
      new Gget_documentsData_documentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_documentsData_documents &&
        G__typename == other.G__typename &&
        documents == other.documents;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, documents.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_documentsData_documents')
          ..add('G__typename', G__typename)
          ..add('documents', documents))
        .toString();
  }
}

class Gget_documentsData_documentsBuilder
    implements
        Builder<Gget_documentsData_documents,
            Gget_documentsData_documentsBuilder> {
  _$Gget_documentsData_documents? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_documentsData_documents_documents>? _documents;
  ListBuilder<Gget_documentsData_documents_documents> get documents =>
      _$this._documents ??=
          new ListBuilder<Gget_documentsData_documents_documents>();
  set documents(
          ListBuilder<Gget_documentsData_documents_documents>? documents) =>
      _$this._documents = documents;

  Gget_documentsData_documentsBuilder() {
    Gget_documentsData_documents._initializeBuilder(this);
  }

  Gget_documentsData_documentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _documents = $v.documents.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_documentsData_documents other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_documentsData_documents;
  }

  @override
  void update(void Function(Gget_documentsData_documentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_documentsData_documents build() => _build();

  _$Gget_documentsData_documents _build() {
    _$Gget_documentsData_documents _$result;
    try {
      _$result = _$v ??
          new _$Gget_documentsData_documents._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_documentsData_documents', 'G__typename'),
              documents: documents.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'documents';
        documents.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_documentsData_documents', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_documentsData_documents_documents
    extends Gget_documentsData_documents_documents {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String title;
  @override
  final Gget_documentsData_documents_documents_uploadedBy uploadedBy;
  @override
  final String createdAt;
  @override
  final String? reportDate;
  @override
  final _i3.GCategory category;
  @override
  final bool? pinned;
  @override
  final BuiltList<_i3.GConfidentiality> confidentialities;
  @override
  final bool canOwnerDelete;
  @override
  final bool covidCertificate;
  @override
  final bool canUpdateCategory;
  @override
  final bool canUpdateConfidentialityOnly;
  @override
  final bool canUpdateTitle;
  @override
  final bool canUpdateCreatedAt;
  @override
  final Gget_documentsData_documents_documents_folder? folder;
  @override
  final String? type;

  factory _$Gget_documentsData_documents_documents(
          [void Function(Gget_documentsData_documents_documentsBuilder)?
              updates]) =>
      (new Gget_documentsData_documents_documentsBuilder()..update(updates))
          ._build();

  _$Gget_documentsData_documents_documents._(
      {required this.G__typename,
      required this.id,
      required this.title,
      required this.uploadedBy,
      required this.createdAt,
      this.reportDate,
      required this.category,
      this.pinned,
      required this.confidentialities,
      required this.canOwnerDelete,
      required this.covidCertificate,
      required this.canUpdateCategory,
      required this.canUpdateConfidentialityOnly,
      required this.canUpdateTitle,
      required this.canUpdateCreatedAt,
      this.folder,
      this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_documentsData_documents_documents', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gget_documentsData_documents_documents', 'id');
    BuiltValueNullFieldError.checkNotNull(
        title, r'Gget_documentsData_documents_documents', 'title');
    BuiltValueNullFieldError.checkNotNull(
        uploadedBy, r'Gget_documentsData_documents_documents', 'uploadedBy');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'Gget_documentsData_documents_documents', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        category, r'Gget_documentsData_documents_documents', 'category');
    BuiltValueNullFieldError.checkNotNull(confidentialities,
        r'Gget_documentsData_documents_documents', 'confidentialities');
    BuiltValueNullFieldError.checkNotNull(canOwnerDelete,
        r'Gget_documentsData_documents_documents', 'canOwnerDelete');
    BuiltValueNullFieldError.checkNotNull(covidCertificate,
        r'Gget_documentsData_documents_documents', 'covidCertificate');
    BuiltValueNullFieldError.checkNotNull(canUpdateCategory,
        r'Gget_documentsData_documents_documents', 'canUpdateCategory');
    BuiltValueNullFieldError.checkNotNull(
        canUpdateConfidentialityOnly,
        r'Gget_documentsData_documents_documents',
        'canUpdateConfidentialityOnly');
    BuiltValueNullFieldError.checkNotNull(canUpdateTitle,
        r'Gget_documentsData_documents_documents', 'canUpdateTitle');
    BuiltValueNullFieldError.checkNotNull(canUpdateCreatedAt,
        r'Gget_documentsData_documents_documents', 'canUpdateCreatedAt');
  }

  @override
  Gget_documentsData_documents_documents rebuild(
          void Function(Gget_documentsData_documents_documentsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_documentsData_documents_documentsBuilder toBuilder() =>
      new Gget_documentsData_documents_documentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_documentsData_documents_documents &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        uploadedBy == other.uploadedBy &&
        createdAt == other.createdAt &&
        reportDate == other.reportDate &&
        category == other.category &&
        pinned == other.pinned &&
        confidentialities == other.confidentialities &&
        canOwnerDelete == other.canOwnerDelete &&
        covidCertificate == other.covidCertificate &&
        canUpdateCategory == other.canUpdateCategory &&
        canUpdateConfidentialityOnly == other.canUpdateConfidentialityOnly &&
        canUpdateTitle == other.canUpdateTitle &&
        canUpdateCreatedAt == other.canUpdateCreatedAt &&
        folder == other.folder &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, uploadedBy.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, reportDate.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, pinned.hashCode);
    _$hash = $jc(_$hash, confidentialities.hashCode);
    _$hash = $jc(_$hash, canOwnerDelete.hashCode);
    _$hash = $jc(_$hash, covidCertificate.hashCode);
    _$hash = $jc(_$hash, canUpdateCategory.hashCode);
    _$hash = $jc(_$hash, canUpdateConfidentialityOnly.hashCode);
    _$hash = $jc(_$hash, canUpdateTitle.hashCode);
    _$hash = $jc(_$hash, canUpdateCreatedAt.hashCode);
    _$hash = $jc(_$hash, folder.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_documentsData_documents_documents')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('uploadedBy', uploadedBy)
          ..add('createdAt', createdAt)
          ..add('reportDate', reportDate)
          ..add('category', category)
          ..add('pinned', pinned)
          ..add('confidentialities', confidentialities)
          ..add('canOwnerDelete', canOwnerDelete)
          ..add('covidCertificate', covidCertificate)
          ..add('canUpdateCategory', canUpdateCategory)
          ..add('canUpdateConfidentialityOnly', canUpdateConfidentialityOnly)
          ..add('canUpdateTitle', canUpdateTitle)
          ..add('canUpdateCreatedAt', canUpdateCreatedAt)
          ..add('folder', folder)
          ..add('type', type))
        .toString();
  }
}

class Gget_documentsData_documents_documentsBuilder
    implements
        Builder<Gget_documentsData_documents_documents,
            Gget_documentsData_documents_documentsBuilder> {
  _$Gget_documentsData_documents_documents? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  Gget_documentsData_documents_documents_uploadedByBuilder? _uploadedBy;
  Gget_documentsData_documents_documents_uploadedByBuilder get uploadedBy =>
      _$this._uploadedBy ??=
          new Gget_documentsData_documents_documents_uploadedByBuilder();
  set uploadedBy(
          Gget_documentsData_documents_documents_uploadedByBuilder?
              uploadedBy) =>
      _$this._uploadedBy = uploadedBy;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _reportDate;
  String? get reportDate => _$this._reportDate;
  set reportDate(String? reportDate) => _$this._reportDate = reportDate;

  _i3.GCategory? _category;
  _i3.GCategory? get category => _$this._category;
  set category(_i3.GCategory? category) => _$this._category = category;

  bool? _pinned;
  bool? get pinned => _$this._pinned;
  set pinned(bool? pinned) => _$this._pinned = pinned;

  ListBuilder<_i3.GConfidentiality>? _confidentialities;
  ListBuilder<_i3.GConfidentiality> get confidentialities =>
      _$this._confidentialities ??= new ListBuilder<_i3.GConfidentiality>();
  set confidentialities(ListBuilder<_i3.GConfidentiality>? confidentialities) =>
      _$this._confidentialities = confidentialities;

  bool? _canOwnerDelete;
  bool? get canOwnerDelete => _$this._canOwnerDelete;
  set canOwnerDelete(bool? canOwnerDelete) =>
      _$this._canOwnerDelete = canOwnerDelete;

  bool? _covidCertificate;
  bool? get covidCertificate => _$this._covidCertificate;
  set covidCertificate(bool? covidCertificate) =>
      _$this._covidCertificate = covidCertificate;

  bool? _canUpdateCategory;
  bool? get canUpdateCategory => _$this._canUpdateCategory;
  set canUpdateCategory(bool? canUpdateCategory) =>
      _$this._canUpdateCategory = canUpdateCategory;

  bool? _canUpdateConfidentialityOnly;
  bool? get canUpdateConfidentialityOnly =>
      _$this._canUpdateConfidentialityOnly;
  set canUpdateConfidentialityOnly(bool? canUpdateConfidentialityOnly) =>
      _$this._canUpdateConfidentialityOnly = canUpdateConfidentialityOnly;

  bool? _canUpdateTitle;
  bool? get canUpdateTitle => _$this._canUpdateTitle;
  set canUpdateTitle(bool? canUpdateTitle) =>
      _$this._canUpdateTitle = canUpdateTitle;

  bool? _canUpdateCreatedAt;
  bool? get canUpdateCreatedAt => _$this._canUpdateCreatedAt;
  set canUpdateCreatedAt(bool? canUpdateCreatedAt) =>
      _$this._canUpdateCreatedAt = canUpdateCreatedAt;

  Gget_documentsData_documents_documents_folderBuilder? _folder;
  Gget_documentsData_documents_documents_folderBuilder get folder =>
      _$this._folder ??=
          new Gget_documentsData_documents_documents_folderBuilder();
  set folder(Gget_documentsData_documents_documents_folderBuilder? folder) =>
      _$this._folder = folder;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  Gget_documentsData_documents_documentsBuilder() {
    Gget_documentsData_documents_documents._initializeBuilder(this);
  }

  Gget_documentsData_documents_documentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title;
      _uploadedBy = $v.uploadedBy.toBuilder();
      _createdAt = $v.createdAt;
      _reportDate = $v.reportDate;
      _category = $v.category;
      _pinned = $v.pinned;
      _confidentialities = $v.confidentialities.toBuilder();
      _canOwnerDelete = $v.canOwnerDelete;
      _covidCertificate = $v.covidCertificate;
      _canUpdateCategory = $v.canUpdateCategory;
      _canUpdateConfidentialityOnly = $v.canUpdateConfidentialityOnly;
      _canUpdateTitle = $v.canUpdateTitle;
      _canUpdateCreatedAt = $v.canUpdateCreatedAt;
      _folder = $v.folder?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_documentsData_documents_documents other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_documentsData_documents_documents;
  }

  @override
  void update(
      void Function(Gget_documentsData_documents_documentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_documentsData_documents_documents build() => _build();

  _$Gget_documentsData_documents_documents _build() {
    _$Gget_documentsData_documents_documents _$result;
    try {
      _$result = _$v ??
          new _$Gget_documentsData_documents_documents._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_documentsData_documents_documents', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gget_documentsData_documents_documents', 'id'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'Gget_documentsData_documents_documents', 'title'),
              uploadedBy: uploadedBy.build(),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, r'Gget_documentsData_documents_documents', 'createdAt'),
              reportDate: reportDate,
              category: BuiltValueNullFieldError.checkNotNull(
                  category, r'Gget_documentsData_documents_documents', 'category'),
              pinned: pinned,
              confidentialities: confidentialities.build(),
              canOwnerDelete: BuiltValueNullFieldError.checkNotNull(
                  canOwnerDelete, r'Gget_documentsData_documents_documents', 'canOwnerDelete'),
              covidCertificate: BuiltValueNullFieldError.checkNotNull(
                  covidCertificate, r'Gget_documentsData_documents_documents', 'covidCertificate'),
              canUpdateCategory: BuiltValueNullFieldError.checkNotNull(canUpdateCategory, r'Gget_documentsData_documents_documents', 'canUpdateCategory'),
              canUpdateConfidentialityOnly: BuiltValueNullFieldError.checkNotNull(canUpdateConfidentialityOnly, r'Gget_documentsData_documents_documents', 'canUpdateConfidentialityOnly'),
              canUpdateTitle: BuiltValueNullFieldError.checkNotNull(canUpdateTitle, r'Gget_documentsData_documents_documents', 'canUpdateTitle'),
              canUpdateCreatedAt: BuiltValueNullFieldError.checkNotNull(canUpdateCreatedAt, r'Gget_documentsData_documents_documents', 'canUpdateCreatedAt'),
              folder: _folder?.build(),
              type: type);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'uploadedBy';
        uploadedBy.build();

        _$failedField = 'confidentialities';
        confidentialities.build();

        _$failedField = 'folder';
        _folder?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_documentsData_documents_documents',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_documentsData_documents_documents_uploadedBy
    extends Gget_documentsData_documents_documents_uploadedBy {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final _i3.GSourceAuthor sourceAuthor;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final bool isPsClickable;

  factory _$Gget_documentsData_documents_documents_uploadedBy(
          [void Function(
                  Gget_documentsData_documents_documents_uploadedByBuilder)?
              updates]) =>
      (new Gget_documentsData_documents_documents_uploadedByBuilder()
            ..update(updates))
          ._build();

  _$Gget_documentsData_documents_documents_uploadedBy._(
      {required this.G__typename,
      required this.id,
      required this.sourceAuthor,
      this.firstName,
      this.lastName,
      required this.isPsClickable})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_documentsData_documents_documents_uploadedBy', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gget_documentsData_documents_documents_uploadedBy', 'id');
    BuiltValueNullFieldError.checkNotNull(sourceAuthor,
        r'Gget_documentsData_documents_documents_uploadedBy', 'sourceAuthor');
    BuiltValueNullFieldError.checkNotNull(isPsClickable,
        r'Gget_documentsData_documents_documents_uploadedBy', 'isPsClickable');
  }

  @override
  Gget_documentsData_documents_documents_uploadedBy rebuild(
          void Function(
                  Gget_documentsData_documents_documents_uploadedByBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_documentsData_documents_documents_uploadedByBuilder toBuilder() =>
      new Gget_documentsData_documents_documents_uploadedByBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_documentsData_documents_documents_uploadedBy &&
        G__typename == other.G__typename &&
        id == other.id &&
        sourceAuthor == other.sourceAuthor &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        isPsClickable == other.isPsClickable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, sourceAuthor.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, isPsClickable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_documentsData_documents_documents_uploadedBy')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('sourceAuthor', sourceAuthor)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('isPsClickable', isPsClickable))
        .toString();
  }
}

class Gget_documentsData_documents_documents_uploadedByBuilder
    implements
        Builder<Gget_documentsData_documents_documents_uploadedBy,
            Gget_documentsData_documents_documents_uploadedByBuilder> {
  _$Gget_documentsData_documents_documents_uploadedBy? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i3.GSourceAuthor? _sourceAuthor;
  _i3.GSourceAuthor? get sourceAuthor => _$this._sourceAuthor;
  set sourceAuthor(_i3.GSourceAuthor? sourceAuthor) =>
      _$this._sourceAuthor = sourceAuthor;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  bool? _isPsClickable;
  bool? get isPsClickable => _$this._isPsClickable;
  set isPsClickable(bool? isPsClickable) =>
      _$this._isPsClickable = isPsClickable;

  Gget_documentsData_documents_documents_uploadedByBuilder() {
    Gget_documentsData_documents_documents_uploadedBy._initializeBuilder(this);
  }

  Gget_documentsData_documents_documents_uploadedByBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _sourceAuthor = $v.sourceAuthor;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _isPsClickable = $v.isPsClickable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_documentsData_documents_documents_uploadedBy other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_documentsData_documents_documents_uploadedBy;
  }

  @override
  void update(
      void Function(Gget_documentsData_documents_documents_uploadedByBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_documentsData_documents_documents_uploadedBy build() => _build();

  _$Gget_documentsData_documents_documents_uploadedBy _build() {
    final _$result = _$v ??
        new _$Gget_documentsData_documents_documents_uploadedBy._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_documentsData_documents_documents_uploadedBy',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Gget_documentsData_documents_documents_uploadedBy', 'id'),
            sourceAuthor: BuiltValueNullFieldError.checkNotNull(
                sourceAuthor,
                r'Gget_documentsData_documents_documents_uploadedBy',
                'sourceAuthor'),
            firstName: firstName,
            lastName: lastName,
            isPsClickable: BuiltValueNullFieldError.checkNotNull(
                isPsClickable,
                r'Gget_documentsData_documents_documents_uploadedBy',
                'isPsClickable'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_documentsData_documents_documents_folder
    extends Gget_documentsData_documents_documents_folder {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String title;

  factory _$Gget_documentsData_documents_documents_folder(
          [void Function(Gget_documentsData_documents_documents_folderBuilder)?
              updates]) =>
      (new Gget_documentsData_documents_documents_folderBuilder()
            ..update(updates))
          ._build();

  _$Gget_documentsData_documents_documents_folder._(
      {required this.G__typename, required this.id, required this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_documentsData_documents_documents_folder', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gget_documentsData_documents_documents_folder', 'id');
    BuiltValueNullFieldError.checkNotNull(
        title, r'Gget_documentsData_documents_documents_folder', 'title');
  }

  @override
  Gget_documentsData_documents_documents_folder rebuild(
          void Function(Gget_documentsData_documents_documents_folderBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_documentsData_documents_documents_folderBuilder toBuilder() =>
      new Gget_documentsData_documents_documents_folderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_documentsData_documents_documents_folder &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_documentsData_documents_documents_folder')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title))
        .toString();
  }
}

class Gget_documentsData_documents_documents_folderBuilder
    implements
        Builder<Gget_documentsData_documents_documents_folder,
            Gget_documentsData_documents_documents_folderBuilder> {
  _$Gget_documentsData_documents_documents_folder? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  Gget_documentsData_documents_documents_folderBuilder() {
    Gget_documentsData_documents_documents_folder._initializeBuilder(this);
  }

  Gget_documentsData_documents_documents_folderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_documentsData_documents_documents_folder other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_documentsData_documents_documents_folder;
  }

  @override
  void update(
      void Function(Gget_documentsData_documents_documents_folderBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_documentsData_documents_documents_folder build() => _build();

  _$Gget_documentsData_documents_documents_folder _build() {
    final _$result = _$v ??
        new _$Gget_documentsData_documents_documents_folder._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_documentsData_documents_documents_folder',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Gget_documentsData_documents_documents_folder', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(title,
                r'Gget_documentsData_documents_documents_folder', 'title'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_documentsData_fetchAllFolders
    extends Gget_documentsData_fetchAllFolders {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String title;

  factory _$Gget_documentsData_fetchAllFolders(
          [void Function(Gget_documentsData_fetchAllFoldersBuilder)?
              updates]) =>
      (new Gget_documentsData_fetchAllFoldersBuilder()..update(updates))
          ._build();

  _$Gget_documentsData_fetchAllFolders._(
      {required this.G__typename, required this.id, required this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_documentsData_fetchAllFolders', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gget_documentsData_fetchAllFolders', 'id');
    BuiltValueNullFieldError.checkNotNull(
        title, r'Gget_documentsData_fetchAllFolders', 'title');
  }

  @override
  Gget_documentsData_fetchAllFolders rebuild(
          void Function(Gget_documentsData_fetchAllFoldersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_documentsData_fetchAllFoldersBuilder toBuilder() =>
      new Gget_documentsData_fetchAllFoldersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_documentsData_fetchAllFolders &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_documentsData_fetchAllFolders')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title))
        .toString();
  }
}

class Gget_documentsData_fetchAllFoldersBuilder
    implements
        Builder<Gget_documentsData_fetchAllFolders,
            Gget_documentsData_fetchAllFoldersBuilder> {
  _$Gget_documentsData_fetchAllFolders? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  Gget_documentsData_fetchAllFoldersBuilder() {
    Gget_documentsData_fetchAllFolders._initializeBuilder(this);
  }

  Gget_documentsData_fetchAllFoldersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_documentsData_fetchAllFolders other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_documentsData_fetchAllFolders;
  }

  @override
  void update(
      void Function(Gget_documentsData_fetchAllFoldersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_documentsData_fetchAllFolders build() => _build();

  _$Gget_documentsData_fetchAllFolders _build() {
    final _$result = _$v ??
        new _$Gget_documentsData_fetchAllFolders._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gget_documentsData_fetchAllFolders', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Gget_documentsData_fetchAllFolders', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'Gget_documentsData_fetchAllFolders', 'title'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
