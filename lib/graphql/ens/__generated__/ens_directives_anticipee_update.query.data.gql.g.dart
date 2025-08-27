// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_directives_anticipee_update.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gpost_directives_anticipeesData>
    _$gpostDirectivesAnticipeesDataSerializer =
    new _$Gpost_directives_anticipeesDataSerializer();
Serializer<Gpost_directives_anticipeesData_postAdvanceDirectives>
    _$gpostDirectivesAnticipeesDataPostAdvanceDirectivesSerializer =
    new _$Gpost_directives_anticipeesData_postAdvanceDirectivesSerializer();
Serializer<Gpost_directives_anticipeesData_postAdvanceDirectives_document>
    _$gpostDirectivesAnticipeesDataPostAdvanceDirectivesDocumentSerializer =
    new _$Gpost_directives_anticipeesData_postAdvanceDirectives_documentSerializer();
Serializer<
        Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy>
    _$gpostDirectivesAnticipeesDataPostAdvanceDirectivesDocumentUploadedBySerializer =
    new _$Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBySerializer();
Serializer<
        Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder>
    _$gpostDirectivesAnticipeesDataPostAdvanceDirectivesDocumentFolderSerializer =
    new _$Gpost_directives_anticipeesData_postAdvanceDirectives_document_folderSerializer();

class _$Gpost_directives_anticipeesDataSerializer
    implements StructuredSerializer<Gpost_directives_anticipeesData> {
  @override
  final Iterable<Type> types = const [
    Gpost_directives_anticipeesData,
    _$Gpost_directives_anticipeesData
  ];
  @override
  final String wireName = 'Gpost_directives_anticipeesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gpost_directives_anticipeesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'postAdvanceDirectives',
      serializers.serialize(object.postAdvanceDirectives,
          specifiedType: const FullType(
              Gpost_directives_anticipeesData_postAdvanceDirectives)),
    ];

    return result;
  }

  @override
  Gpost_directives_anticipeesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gpost_directives_anticipeesDataBuilder();

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
        case 'postAdvanceDirectives':
          result.postAdvanceDirectives.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gpost_directives_anticipeesData_postAdvanceDirectives))!
              as Gpost_directives_anticipeesData_postAdvanceDirectives);
          break;
      }
    }

    return result.build();
  }
}

class _$Gpost_directives_anticipeesData_postAdvanceDirectivesSerializer
    implements
        StructuredSerializer<
            Gpost_directives_anticipeesData_postAdvanceDirectives> {
  @override
  final Iterable<Type> types = const [
    Gpost_directives_anticipeesData_postAdvanceDirectives,
    _$Gpost_directives_anticipeesData_postAdvanceDirectives
  ];
  @override
  final String wireName =
      'Gpost_directives_anticipeesData_postAdvanceDirectives';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gpost_directives_anticipeesData_postAdvanceDirectives object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(
              Gpost_directives_anticipeesData_postAdvanceDirectives_document)),
    ];

    return result;
  }

  @override
  Gpost_directives_anticipeesData_postAdvanceDirectives deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gpost_directives_anticipeesData_postAdvanceDirectivesBuilder();

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
                  specifiedType: const FullType(
                      Gpost_directives_anticipeesData_postAdvanceDirectives_document))!
              as Gpost_directives_anticipeesData_postAdvanceDirectives_document);
          break;
      }
    }

    return result.build();
  }
}

class _$Gpost_directives_anticipeesData_postAdvanceDirectives_documentSerializer
    implements
        StructuredSerializer<
            Gpost_directives_anticipeesData_postAdvanceDirectives_document> {
  @override
  final Iterable<Type> types = const [
    Gpost_directives_anticipeesData_postAdvanceDirectives_document,
    _$Gpost_directives_anticipeesData_postAdvanceDirectives_document
  ];
  @override
  final String wireName =
      'Gpost_directives_anticipeesData_postAdvanceDirectives_document';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gpost_directives_anticipeesData_postAdvanceDirectives_document object,
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
              Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy)),
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
            specifiedType: const FullType(
                Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder)));
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
  Gpost_directives_anticipeesData_postAdvanceDirectives_document deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gpost_directives_anticipeesData_postAdvanceDirectives_documentBuilder();

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
                      Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy))!
              as Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy);
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
                      Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder))!
              as Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder);
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

class _$Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBySerializer
    implements
        StructuredSerializer<
            Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy> {
  @override
  final Iterable<Type> types = const [
    Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy,
    _$Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy
  ];
  @override
  final String wireName =
      'Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy
          object,
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
  Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedByBuilder();

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

class _$Gpost_directives_anticipeesData_postAdvanceDirectives_document_folderSerializer
    implements
        StructuredSerializer<
            Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder> {
  @override
  final Iterable<Type> types = const [
    Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder,
    _$Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder
  ];
  @override
  final String wireName =
      'Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder
          object,
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
  Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gpost_directives_anticipeesData_postAdvanceDirectives_document_folderBuilder();

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

class _$Gpost_directives_anticipeesData
    extends Gpost_directives_anticipeesData {
  @override
  final String G__typename;
  @override
  final Gpost_directives_anticipeesData_postAdvanceDirectives
      postAdvanceDirectives;

  factory _$Gpost_directives_anticipeesData(
          [void Function(Gpost_directives_anticipeesDataBuilder)? updates]) =>
      (new Gpost_directives_anticipeesDataBuilder()..update(updates))._build();

  _$Gpost_directives_anticipeesData._(
      {required this.G__typename, required this.postAdvanceDirectives})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gpost_directives_anticipeesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(postAdvanceDirectives,
        r'Gpost_directives_anticipeesData', 'postAdvanceDirectives');
  }

  @override
  Gpost_directives_anticipeesData rebuild(
          void Function(Gpost_directives_anticipeesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gpost_directives_anticipeesDataBuilder toBuilder() =>
      new Gpost_directives_anticipeesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gpost_directives_anticipeesData &&
        G__typename == other.G__typename &&
        postAdvanceDirectives == other.postAdvanceDirectives;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, postAdvanceDirectives.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gpost_directives_anticipeesData')
          ..add('G__typename', G__typename)
          ..add('postAdvanceDirectives', postAdvanceDirectives))
        .toString();
  }
}

class Gpost_directives_anticipeesDataBuilder
    implements
        Builder<Gpost_directives_anticipeesData,
            Gpost_directives_anticipeesDataBuilder> {
  _$Gpost_directives_anticipeesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gpost_directives_anticipeesData_postAdvanceDirectivesBuilder?
      _postAdvanceDirectives;
  Gpost_directives_anticipeesData_postAdvanceDirectivesBuilder
      get postAdvanceDirectives => _$this._postAdvanceDirectives ??=
          new Gpost_directives_anticipeesData_postAdvanceDirectivesBuilder();
  set postAdvanceDirectives(
          Gpost_directives_anticipeesData_postAdvanceDirectivesBuilder?
              postAdvanceDirectives) =>
      _$this._postAdvanceDirectives = postAdvanceDirectives;

  Gpost_directives_anticipeesDataBuilder() {
    Gpost_directives_anticipeesData._initializeBuilder(this);
  }

  Gpost_directives_anticipeesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _postAdvanceDirectives = $v.postAdvanceDirectives.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gpost_directives_anticipeesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gpost_directives_anticipeesData;
  }

  @override
  void update(void Function(Gpost_directives_anticipeesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gpost_directives_anticipeesData build() => _build();

  _$Gpost_directives_anticipeesData _build() {
    _$Gpost_directives_anticipeesData _$result;
    try {
      _$result = _$v ??
          new _$Gpost_directives_anticipeesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gpost_directives_anticipeesData', 'G__typename'),
              postAdvanceDirectives: postAdvanceDirectives.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'postAdvanceDirectives';
        postAdvanceDirectives.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gpost_directives_anticipeesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gpost_directives_anticipeesData_postAdvanceDirectives
    extends Gpost_directives_anticipeesData_postAdvanceDirectives {
  @override
  final String G__typename;
  @override
  final Gpost_directives_anticipeesData_postAdvanceDirectives_document document;

  factory _$Gpost_directives_anticipeesData_postAdvanceDirectives(
          [void Function(
                  Gpost_directives_anticipeesData_postAdvanceDirectivesBuilder)?
              updates]) =>
      (new Gpost_directives_anticipeesData_postAdvanceDirectivesBuilder()
            ..update(updates))
          ._build();

  _$Gpost_directives_anticipeesData_postAdvanceDirectives._(
      {required this.G__typename, required this.document})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gpost_directives_anticipeesData_postAdvanceDirectives',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(document,
        r'Gpost_directives_anticipeesData_postAdvanceDirectives', 'document');
  }

  @override
  Gpost_directives_anticipeesData_postAdvanceDirectives rebuild(
          void Function(
                  Gpost_directives_anticipeesData_postAdvanceDirectivesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gpost_directives_anticipeesData_postAdvanceDirectivesBuilder toBuilder() =>
      new Gpost_directives_anticipeesData_postAdvanceDirectivesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gpost_directives_anticipeesData_postAdvanceDirectives &&
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
    return (newBuiltValueToStringHelper(
            r'Gpost_directives_anticipeesData_postAdvanceDirectives')
          ..add('G__typename', G__typename)
          ..add('document', document))
        .toString();
  }
}

class Gpost_directives_anticipeesData_postAdvanceDirectivesBuilder
    implements
        Builder<Gpost_directives_anticipeesData_postAdvanceDirectives,
            Gpost_directives_anticipeesData_postAdvanceDirectivesBuilder> {
  _$Gpost_directives_anticipeesData_postAdvanceDirectives? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gpost_directives_anticipeesData_postAdvanceDirectives_documentBuilder?
      _document;
  Gpost_directives_anticipeesData_postAdvanceDirectives_documentBuilder
      get document => _$this._document ??=
          new Gpost_directives_anticipeesData_postAdvanceDirectives_documentBuilder();
  set document(
          Gpost_directives_anticipeesData_postAdvanceDirectives_documentBuilder?
              document) =>
      _$this._document = document;

  Gpost_directives_anticipeesData_postAdvanceDirectivesBuilder() {
    Gpost_directives_anticipeesData_postAdvanceDirectives._initializeBuilder(
        this);
  }

  Gpost_directives_anticipeesData_postAdvanceDirectivesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _document = $v.document.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gpost_directives_anticipeesData_postAdvanceDirectives other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gpost_directives_anticipeesData_postAdvanceDirectives;
  }

  @override
  void update(
      void Function(
              Gpost_directives_anticipeesData_postAdvanceDirectivesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gpost_directives_anticipeesData_postAdvanceDirectives build() => _build();

  _$Gpost_directives_anticipeesData_postAdvanceDirectives _build() {
    _$Gpost_directives_anticipeesData_postAdvanceDirectives _$result;
    try {
      _$result = _$v ??
          new _$Gpost_directives_anticipeesData_postAdvanceDirectives._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gpost_directives_anticipeesData_postAdvanceDirectives',
                  'G__typename'),
              document: document.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'document';
        document.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gpost_directives_anticipeesData_postAdvanceDirectives',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gpost_directives_anticipeesData_postAdvanceDirectives_document
    extends Gpost_directives_anticipeesData_postAdvanceDirectives_document {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String title;
  @override
  final Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy
      uploadedBy;
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
  final Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder?
      folder;
  @override
  final String? type;

  factory _$Gpost_directives_anticipeesData_postAdvanceDirectives_document(
          [void Function(
                  Gpost_directives_anticipeesData_postAdvanceDirectives_documentBuilder)?
              updates]) =>
      (new Gpost_directives_anticipeesData_postAdvanceDirectives_documentBuilder()
            ..update(updates))
          ._build();

  _$Gpost_directives_anticipeesData_postAdvanceDirectives_document._(
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
        G__typename,
        r'Gpost_directives_anticipeesData_postAdvanceDirectives_document',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gpost_directives_anticipeesData_postAdvanceDirectives_document',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        title,
        r'Gpost_directives_anticipeesData_postAdvanceDirectives_document',
        'title');
    BuiltValueNullFieldError.checkNotNull(
        uploadedBy,
        r'Gpost_directives_anticipeesData_postAdvanceDirectives_document',
        'uploadedBy');
    BuiltValueNullFieldError.checkNotNull(
        createdAt,
        r'Gpost_directives_anticipeesData_postAdvanceDirectives_document',
        'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        category,
        r'Gpost_directives_anticipeesData_postAdvanceDirectives_document',
        'category');
    BuiltValueNullFieldError.checkNotNull(
        confidentialities,
        r'Gpost_directives_anticipeesData_postAdvanceDirectives_document',
        'confidentialities');
    BuiltValueNullFieldError.checkNotNull(
        canOwnerDelete,
        r'Gpost_directives_anticipeesData_postAdvanceDirectives_document',
        'canOwnerDelete');
    BuiltValueNullFieldError.checkNotNull(
        covidCertificate,
        r'Gpost_directives_anticipeesData_postAdvanceDirectives_document',
        'covidCertificate');
    BuiltValueNullFieldError.checkNotNull(
        canUpdateCategory,
        r'Gpost_directives_anticipeesData_postAdvanceDirectives_document',
        'canUpdateCategory');
    BuiltValueNullFieldError.checkNotNull(
        canUpdateConfidentialityOnly,
        r'Gpost_directives_anticipeesData_postAdvanceDirectives_document',
        'canUpdateConfidentialityOnly');
    BuiltValueNullFieldError.checkNotNull(
        canUpdateTitle,
        r'Gpost_directives_anticipeesData_postAdvanceDirectives_document',
        'canUpdateTitle');
    BuiltValueNullFieldError.checkNotNull(
        canUpdateCreatedAt,
        r'Gpost_directives_anticipeesData_postAdvanceDirectives_document',
        'canUpdateCreatedAt');
  }

  @override
  Gpost_directives_anticipeesData_postAdvanceDirectives_document rebuild(
          void Function(
                  Gpost_directives_anticipeesData_postAdvanceDirectives_documentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gpost_directives_anticipeesData_postAdvanceDirectives_documentBuilder
      toBuilder() =>
          new Gpost_directives_anticipeesData_postAdvanceDirectives_documentBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gpost_directives_anticipeesData_postAdvanceDirectives_document &&
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
            r'Gpost_directives_anticipeesData_postAdvanceDirectives_document')
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

class Gpost_directives_anticipeesData_postAdvanceDirectives_documentBuilder
    implements
        Builder<Gpost_directives_anticipeesData_postAdvanceDirectives_document,
            Gpost_directives_anticipeesData_postAdvanceDirectives_documentBuilder> {
  _$Gpost_directives_anticipeesData_postAdvanceDirectives_document? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedByBuilder?
      _uploadedBy;
  Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedByBuilder
      get uploadedBy => _$this._uploadedBy ??=
          new Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedByBuilder();
  set uploadedBy(
          Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedByBuilder?
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

  Gpost_directives_anticipeesData_postAdvanceDirectives_document_folderBuilder?
      _folder;
  Gpost_directives_anticipeesData_postAdvanceDirectives_document_folderBuilder
      get folder => _$this._folder ??=
          new Gpost_directives_anticipeesData_postAdvanceDirectives_document_folderBuilder();
  set folder(
          Gpost_directives_anticipeesData_postAdvanceDirectives_document_folderBuilder?
              folder) =>
      _$this._folder = folder;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  Gpost_directives_anticipeesData_postAdvanceDirectives_documentBuilder() {
    Gpost_directives_anticipeesData_postAdvanceDirectives_document
        ._initializeBuilder(this);
  }

  Gpost_directives_anticipeesData_postAdvanceDirectives_documentBuilder
      get _$this {
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
  void replace(
      Gpost_directives_anticipeesData_postAdvanceDirectives_document other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gpost_directives_anticipeesData_postAdvanceDirectives_document;
  }

  @override
  void update(
      void Function(
              Gpost_directives_anticipeesData_postAdvanceDirectives_documentBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gpost_directives_anticipeesData_postAdvanceDirectives_document build() =>
      _build();

  _$Gpost_directives_anticipeesData_postAdvanceDirectives_document _build() {
    _$Gpost_directives_anticipeesData_postAdvanceDirectives_document _$result;
    try {
      _$result = _$v ??
          new _$Gpost_directives_anticipeesData_postAdvanceDirectives_document._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gpost_directives_anticipeesData_postAdvanceDirectives_document', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gpost_directives_anticipeesData_postAdvanceDirectives_document', 'id'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'Gpost_directives_anticipeesData_postAdvanceDirectives_document', 'title'),
              uploadedBy: uploadedBy.build(),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, r'Gpost_directives_anticipeesData_postAdvanceDirectives_document', 'createdAt'),
              reportDate: reportDate,
              category: BuiltValueNullFieldError.checkNotNull(
                  category, r'Gpost_directives_anticipeesData_postAdvanceDirectives_document', 'category'),
              pinned: pinned,
              confidentialities: confidentialities.build(),
              canOwnerDelete: BuiltValueNullFieldError.checkNotNull(
                  canOwnerDelete,
                  r'Gpost_directives_anticipeesData_postAdvanceDirectives_document',
                  'canOwnerDelete'),
              covidCertificate: BuiltValueNullFieldError.checkNotNull(covidCertificate, r'Gpost_directives_anticipeesData_postAdvanceDirectives_document', 'covidCertificate'),
              canUpdateCategory: BuiltValueNullFieldError.checkNotNull(canUpdateCategory, r'Gpost_directives_anticipeesData_postAdvanceDirectives_document', 'canUpdateCategory'),
              canUpdateConfidentialityOnly: BuiltValueNullFieldError.checkNotNull(canUpdateConfidentialityOnly, r'Gpost_directives_anticipeesData_postAdvanceDirectives_document', 'canUpdateConfidentialityOnly'),
              canUpdateTitle: BuiltValueNullFieldError.checkNotNull(canUpdateTitle, r'Gpost_directives_anticipeesData_postAdvanceDirectives_document', 'canUpdateTitle'),
              canUpdateCreatedAt: BuiltValueNullFieldError.checkNotNull(canUpdateCreatedAt, r'Gpost_directives_anticipeesData_postAdvanceDirectives_document', 'canUpdateCreatedAt'),
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
            r'Gpost_directives_anticipeesData_postAdvanceDirectives_document',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy
    extends Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy {
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

  factory _$Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy(
          [void Function(
                  Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedByBuilder)?
              updates]) =>
      (new Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedByBuilder()
            ..update(updates))
          ._build();

  _$Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy._(
      {required this.G__typename,
      required this.id,
      required this.sourceAuthor,
      this.firstName,
      this.lastName,
      required this.isPsClickable})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        sourceAuthor,
        r'Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy',
        'sourceAuthor');
    BuiltValueNullFieldError.checkNotNull(
        isPsClickable,
        r'Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy',
        'isPsClickable');
  }

  @override
  Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy rebuild(
          void Function(
                  Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedByBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedByBuilder
      toBuilder() =>
          new Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedByBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy &&
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
            r'Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('sourceAuthor', sourceAuthor)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('isPsClickable', isPsClickable))
        .toString();
  }
}

class Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedByBuilder
    implements
        Builder<
            Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy,
            Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedByBuilder> {
  _$Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy?
      _$v;

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

  Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedByBuilder() {
    Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy
        ._initializeBuilder(this);
  }

  Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedByBuilder
      get _$this {
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
  void replace(
      Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy;
  }

  @override
  void update(
      void Function(
              Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedByBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy
      build() => _build();

  _$Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy
      _build() {
    final _$result = _$v ??
        new _$Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy',
                'id'),
            sourceAuthor: BuiltValueNullFieldError.checkNotNull(
                sourceAuthor,
                r'Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy',
                'sourceAuthor'),
            firstName: firstName,
            lastName: lastName,
            isPsClickable: BuiltValueNullFieldError.checkNotNull(
                isPsClickable,
                r'Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy',
                'isPsClickable'));
    replace(_$result);
    return _$result;
  }
}

class _$Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder
    extends Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String title;

  factory _$Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder(
          [void Function(
                  Gpost_directives_anticipeesData_postAdvanceDirectives_document_folderBuilder)?
              updates]) =>
      (new Gpost_directives_anticipeesData_postAdvanceDirectives_document_folderBuilder()
            ..update(updates))
          ._build();

  _$Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder._(
      {required this.G__typename, required this.id, required this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        title,
        r'Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder',
        'title');
  }

  @override
  Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder rebuild(
          void Function(
                  Gpost_directives_anticipeesData_postAdvanceDirectives_document_folderBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gpost_directives_anticipeesData_postAdvanceDirectives_document_folderBuilder
      toBuilder() =>
          new Gpost_directives_anticipeesData_postAdvanceDirectives_document_folderBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder &&
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
            r'Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title))
        .toString();
  }
}

class Gpost_directives_anticipeesData_postAdvanceDirectives_document_folderBuilder
    implements
        Builder<
            Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder,
            Gpost_directives_anticipeesData_postAdvanceDirectives_document_folderBuilder> {
  _$Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  Gpost_directives_anticipeesData_postAdvanceDirectives_document_folderBuilder() {
    Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder
        ._initializeBuilder(this);
  }

  Gpost_directives_anticipeesData_postAdvanceDirectives_document_folderBuilder
      get _$this {
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
  void replace(
      Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder;
  }

  @override
  void update(
      void Function(
              Gpost_directives_anticipeesData_postAdvanceDirectives_document_folderBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder
      build() => _build();

  _$Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder
      _build() {
    final _$result = _$v ??
        new _$Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder',
                'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title,
                r'Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder',
                'title'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
