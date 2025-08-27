// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_directives_anticipee_get.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_directives_anticipeesData>
    _$ggetDirectivesAnticipeesDataSerializer =
    new _$Gget_directives_anticipeesDataSerializer();
Serializer<Gget_directives_anticipeesData_advanceDirectives>
    _$ggetDirectivesAnticipeesDataAdvanceDirectivesSerializer =
    new _$Gget_directives_anticipeesData_advanceDirectivesSerializer();
Serializer<Gget_directives_anticipeesData_advanceDirectives_document>
    _$ggetDirectivesAnticipeesDataAdvanceDirectivesDocumentSerializer =
    new _$Gget_directives_anticipeesData_advanceDirectives_documentSerializer();
Serializer<Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy>
    _$ggetDirectivesAnticipeesDataAdvanceDirectivesDocumentUploadedBySerializer =
    new _$Gget_directives_anticipeesData_advanceDirectives_document_uploadedBySerializer();
Serializer<Gget_directives_anticipeesData_advanceDirectives_document_folder>
    _$ggetDirectivesAnticipeesDataAdvanceDirectivesDocumentFolderSerializer =
    new _$Gget_directives_anticipeesData_advanceDirectives_document_folderSerializer();

class _$Gget_directives_anticipeesDataSerializer
    implements StructuredSerializer<Gget_directives_anticipeesData> {
  @override
  final Iterable<Type> types = const [
    Gget_directives_anticipeesData,
    _$Gget_directives_anticipeesData
  ];
  @override
  final String wireName = 'Gget_directives_anticipeesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_directives_anticipeesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'advanceDirectives',
      serializers.serialize(object.advanceDirectives,
          specifiedType:
              const FullType(Gget_directives_anticipeesData_advanceDirectives)),
    ];

    return result;
  }

  @override
  Gget_directives_anticipeesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_directives_anticipeesDataBuilder();

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
        case 'advanceDirectives':
          result.advanceDirectives.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_directives_anticipeesData_advanceDirectives))!
              as Gget_directives_anticipeesData_advanceDirectives);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_directives_anticipeesData_advanceDirectivesSerializer
    implements
        StructuredSerializer<Gget_directives_anticipeesData_advanceDirectives> {
  @override
  final Iterable<Type> types = const [
    Gget_directives_anticipeesData_advanceDirectives,
    _$Gget_directives_anticipeesData_advanceDirectives
  ];
  @override
  final String wireName = 'Gget_directives_anticipeesData_advanceDirectives';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_directives_anticipeesData_advanceDirectives object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(
              Gget_directives_anticipeesData_advanceDirectives_document)),
    ];

    return result;
  }

  @override
  Gget_directives_anticipeesData_advanceDirectives deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_directives_anticipeesData_advanceDirectivesBuilder();

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
                      Gget_directives_anticipeesData_advanceDirectives_document))!
              as Gget_directives_anticipeesData_advanceDirectives_document);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_directives_anticipeesData_advanceDirectives_documentSerializer
    implements
        StructuredSerializer<
            Gget_directives_anticipeesData_advanceDirectives_document> {
  @override
  final Iterable<Type> types = const [
    Gget_directives_anticipeesData_advanceDirectives_document,
    _$Gget_directives_anticipeesData_advanceDirectives_document
  ];
  @override
  final String wireName =
      'Gget_directives_anticipeesData_advanceDirectives_document';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_directives_anticipeesData_advanceDirectives_document object,
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
              Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy)),
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
                Gget_directives_anticipeesData_advanceDirectives_document_folder)));
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
  Gget_directives_anticipeesData_advanceDirectives_document deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_directives_anticipeesData_advanceDirectives_documentBuilder();

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
                      Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy))!
              as Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy);
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
                      Gget_directives_anticipeesData_advanceDirectives_document_folder))!
              as Gget_directives_anticipeesData_advanceDirectives_document_folder);
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

class _$Gget_directives_anticipeesData_advanceDirectives_document_uploadedBySerializer
    implements
        StructuredSerializer<
            Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy> {
  @override
  final Iterable<Type> types = const [
    Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy,
    _$Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy
  ];
  @override
  final String wireName =
      'Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy
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
  Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_directives_anticipeesData_advanceDirectives_document_uploadedByBuilder();

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

class _$Gget_directives_anticipeesData_advanceDirectives_document_folderSerializer
    implements
        StructuredSerializer<
            Gget_directives_anticipeesData_advanceDirectives_document_folder> {
  @override
  final Iterable<Type> types = const [
    Gget_directives_anticipeesData_advanceDirectives_document_folder,
    _$Gget_directives_anticipeesData_advanceDirectives_document_folder
  ];
  @override
  final String wireName =
      'Gget_directives_anticipeesData_advanceDirectives_document_folder';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_directives_anticipeesData_advanceDirectives_document_folder object,
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
  Gget_directives_anticipeesData_advanceDirectives_document_folder deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_directives_anticipeesData_advanceDirectives_document_folderBuilder();

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

class _$Gget_directives_anticipeesData extends Gget_directives_anticipeesData {
  @override
  final String G__typename;
  @override
  final Gget_directives_anticipeesData_advanceDirectives advanceDirectives;

  factory _$Gget_directives_anticipeesData(
          [void Function(Gget_directives_anticipeesDataBuilder)? updates]) =>
      (new Gget_directives_anticipeesDataBuilder()..update(updates))._build();

  _$Gget_directives_anticipeesData._(
      {required this.G__typename, required this.advanceDirectives})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_directives_anticipeesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(advanceDirectives,
        r'Gget_directives_anticipeesData', 'advanceDirectives');
  }

  @override
  Gget_directives_anticipeesData rebuild(
          void Function(Gget_directives_anticipeesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_directives_anticipeesDataBuilder toBuilder() =>
      new Gget_directives_anticipeesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_directives_anticipeesData &&
        G__typename == other.G__typename &&
        advanceDirectives == other.advanceDirectives;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, advanceDirectives.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_directives_anticipeesData')
          ..add('G__typename', G__typename)
          ..add('advanceDirectives', advanceDirectives))
        .toString();
  }
}

class Gget_directives_anticipeesDataBuilder
    implements
        Builder<Gget_directives_anticipeesData,
            Gget_directives_anticipeesDataBuilder> {
  _$Gget_directives_anticipeesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_directives_anticipeesData_advanceDirectivesBuilder? _advanceDirectives;
  Gget_directives_anticipeesData_advanceDirectivesBuilder
      get advanceDirectives => _$this._advanceDirectives ??=
          new Gget_directives_anticipeesData_advanceDirectivesBuilder();
  set advanceDirectives(
          Gget_directives_anticipeesData_advanceDirectivesBuilder?
              advanceDirectives) =>
      _$this._advanceDirectives = advanceDirectives;

  Gget_directives_anticipeesDataBuilder() {
    Gget_directives_anticipeesData._initializeBuilder(this);
  }

  Gget_directives_anticipeesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _advanceDirectives = $v.advanceDirectives.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_directives_anticipeesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_directives_anticipeesData;
  }

  @override
  void update(void Function(Gget_directives_anticipeesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_directives_anticipeesData build() => _build();

  _$Gget_directives_anticipeesData _build() {
    _$Gget_directives_anticipeesData _$result;
    try {
      _$result = _$v ??
          new _$Gget_directives_anticipeesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_directives_anticipeesData', 'G__typename'),
              advanceDirectives: advanceDirectives.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'advanceDirectives';
        advanceDirectives.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_directives_anticipeesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_directives_anticipeesData_advanceDirectives
    extends Gget_directives_anticipeesData_advanceDirectives {
  @override
  final String G__typename;
  @override
  final Gget_directives_anticipeesData_advanceDirectives_document document;

  factory _$Gget_directives_anticipeesData_advanceDirectives(
          [void Function(
                  Gget_directives_anticipeesData_advanceDirectivesBuilder)?
              updates]) =>
      (new Gget_directives_anticipeesData_advanceDirectivesBuilder()
            ..update(updates))
          ._build();

  _$Gget_directives_anticipeesData_advanceDirectives._(
      {required this.G__typename, required this.document})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_directives_anticipeesData_advanceDirectives', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(document,
        r'Gget_directives_anticipeesData_advanceDirectives', 'document');
  }

  @override
  Gget_directives_anticipeesData_advanceDirectives rebuild(
          void Function(Gget_directives_anticipeesData_advanceDirectivesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_directives_anticipeesData_advanceDirectivesBuilder toBuilder() =>
      new Gget_directives_anticipeesData_advanceDirectivesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_directives_anticipeesData_advanceDirectives &&
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
            r'Gget_directives_anticipeesData_advanceDirectives')
          ..add('G__typename', G__typename)
          ..add('document', document))
        .toString();
  }
}

class Gget_directives_anticipeesData_advanceDirectivesBuilder
    implements
        Builder<Gget_directives_anticipeesData_advanceDirectives,
            Gget_directives_anticipeesData_advanceDirectivesBuilder> {
  _$Gget_directives_anticipeesData_advanceDirectives? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_directives_anticipeesData_advanceDirectives_documentBuilder? _document;
  Gget_directives_anticipeesData_advanceDirectives_documentBuilder
      get document => _$this._document ??=
          new Gget_directives_anticipeesData_advanceDirectives_documentBuilder();
  set document(
          Gget_directives_anticipeesData_advanceDirectives_documentBuilder?
              document) =>
      _$this._document = document;

  Gget_directives_anticipeesData_advanceDirectivesBuilder() {
    Gget_directives_anticipeesData_advanceDirectives._initializeBuilder(this);
  }

  Gget_directives_anticipeesData_advanceDirectivesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _document = $v.document.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_directives_anticipeesData_advanceDirectives other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_directives_anticipeesData_advanceDirectives;
  }

  @override
  void update(
      void Function(Gget_directives_anticipeesData_advanceDirectivesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_directives_anticipeesData_advanceDirectives build() => _build();

  _$Gget_directives_anticipeesData_advanceDirectives _build() {
    _$Gget_directives_anticipeesData_advanceDirectives _$result;
    try {
      _$result = _$v ??
          new _$Gget_directives_anticipeesData_advanceDirectives._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_directives_anticipeesData_advanceDirectives',
                  'G__typename'),
              document: document.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'document';
        document.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_directives_anticipeesData_advanceDirectives',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_directives_anticipeesData_advanceDirectives_document
    extends Gget_directives_anticipeesData_advanceDirectives_document {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String title;
  @override
  final Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy
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
  final Gget_directives_anticipeesData_advanceDirectives_document_folder?
      folder;
  @override
  final String? type;

  factory _$Gget_directives_anticipeesData_advanceDirectives_document(
          [void Function(
                  Gget_directives_anticipeesData_advanceDirectives_documentBuilder)?
              updates]) =>
      (new Gget_directives_anticipeesData_advanceDirectives_documentBuilder()
            ..update(updates))
          ._build();

  _$Gget_directives_anticipeesData_advanceDirectives_document._(
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
        r'Gget_directives_anticipeesData_advanceDirectives_document',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gget_directives_anticipeesData_advanceDirectives_document', 'id');
    BuiltValueNullFieldError.checkNotNull(title,
        r'Gget_directives_anticipeesData_advanceDirectives_document', 'title');
    BuiltValueNullFieldError.checkNotNull(
        uploadedBy,
        r'Gget_directives_anticipeesData_advanceDirectives_document',
        'uploadedBy');
    BuiltValueNullFieldError.checkNotNull(
        createdAt,
        r'Gget_directives_anticipeesData_advanceDirectives_document',
        'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        category,
        r'Gget_directives_anticipeesData_advanceDirectives_document',
        'category');
    BuiltValueNullFieldError.checkNotNull(
        confidentialities,
        r'Gget_directives_anticipeesData_advanceDirectives_document',
        'confidentialities');
    BuiltValueNullFieldError.checkNotNull(
        canOwnerDelete,
        r'Gget_directives_anticipeesData_advanceDirectives_document',
        'canOwnerDelete');
    BuiltValueNullFieldError.checkNotNull(
        covidCertificate,
        r'Gget_directives_anticipeesData_advanceDirectives_document',
        'covidCertificate');
    BuiltValueNullFieldError.checkNotNull(
        canUpdateCategory,
        r'Gget_directives_anticipeesData_advanceDirectives_document',
        'canUpdateCategory');
    BuiltValueNullFieldError.checkNotNull(
        canUpdateConfidentialityOnly,
        r'Gget_directives_anticipeesData_advanceDirectives_document',
        'canUpdateConfidentialityOnly');
    BuiltValueNullFieldError.checkNotNull(
        canUpdateTitle,
        r'Gget_directives_anticipeesData_advanceDirectives_document',
        'canUpdateTitle');
    BuiltValueNullFieldError.checkNotNull(
        canUpdateCreatedAt,
        r'Gget_directives_anticipeesData_advanceDirectives_document',
        'canUpdateCreatedAt');
  }

  @override
  Gget_directives_anticipeesData_advanceDirectives_document rebuild(
          void Function(
                  Gget_directives_anticipeesData_advanceDirectives_documentBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_directives_anticipeesData_advanceDirectives_documentBuilder
      toBuilder() =>
          new Gget_directives_anticipeesData_advanceDirectives_documentBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_directives_anticipeesData_advanceDirectives_document &&
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
            r'Gget_directives_anticipeesData_advanceDirectives_document')
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

class Gget_directives_anticipeesData_advanceDirectives_documentBuilder
    implements
        Builder<Gget_directives_anticipeesData_advanceDirectives_document,
            Gget_directives_anticipeesData_advanceDirectives_documentBuilder> {
  _$Gget_directives_anticipeesData_advanceDirectives_document? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  Gget_directives_anticipeesData_advanceDirectives_document_uploadedByBuilder?
      _uploadedBy;
  Gget_directives_anticipeesData_advanceDirectives_document_uploadedByBuilder
      get uploadedBy => _$this._uploadedBy ??=
          new Gget_directives_anticipeesData_advanceDirectives_document_uploadedByBuilder();
  set uploadedBy(
          Gget_directives_anticipeesData_advanceDirectives_document_uploadedByBuilder?
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

  Gget_directives_anticipeesData_advanceDirectives_document_folderBuilder?
      _folder;
  Gget_directives_anticipeesData_advanceDirectives_document_folderBuilder
      get folder => _$this._folder ??=
          new Gget_directives_anticipeesData_advanceDirectives_document_folderBuilder();
  set folder(
          Gget_directives_anticipeesData_advanceDirectives_document_folderBuilder?
              folder) =>
      _$this._folder = folder;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  Gget_directives_anticipeesData_advanceDirectives_documentBuilder() {
    Gget_directives_anticipeesData_advanceDirectives_document
        ._initializeBuilder(this);
  }

  Gget_directives_anticipeesData_advanceDirectives_documentBuilder get _$this {
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
      Gget_directives_anticipeesData_advanceDirectives_document other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_directives_anticipeesData_advanceDirectives_document;
  }

  @override
  void update(
      void Function(
              Gget_directives_anticipeesData_advanceDirectives_documentBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_directives_anticipeesData_advanceDirectives_document build() => _build();

  _$Gget_directives_anticipeesData_advanceDirectives_document _build() {
    _$Gget_directives_anticipeesData_advanceDirectives_document _$result;
    try {
      _$result = _$v ??
          new _$Gget_directives_anticipeesData_advanceDirectives_document._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_directives_anticipeesData_advanceDirectives_document', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gget_directives_anticipeesData_advanceDirectives_document', 'id'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'Gget_directives_anticipeesData_advanceDirectives_document', 'title'),
              uploadedBy: uploadedBy.build(),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, r'Gget_directives_anticipeesData_advanceDirectives_document', 'createdAt'),
              reportDate: reportDate,
              category: BuiltValueNullFieldError.checkNotNull(
                  category, r'Gget_directives_anticipeesData_advanceDirectives_document', 'category'),
              pinned: pinned,
              confidentialities: confidentialities.build(),
              canOwnerDelete: BuiltValueNullFieldError.checkNotNull(
                  canOwnerDelete,
                  r'Gget_directives_anticipeesData_advanceDirectives_document',
                  'canOwnerDelete'),
              covidCertificate: BuiltValueNullFieldError.checkNotNull(covidCertificate, r'Gget_directives_anticipeesData_advanceDirectives_document', 'covidCertificate'),
              canUpdateCategory: BuiltValueNullFieldError.checkNotNull(canUpdateCategory, r'Gget_directives_anticipeesData_advanceDirectives_document', 'canUpdateCategory'),
              canUpdateConfidentialityOnly: BuiltValueNullFieldError.checkNotNull(canUpdateConfidentialityOnly, r'Gget_directives_anticipeesData_advanceDirectives_document', 'canUpdateConfidentialityOnly'),
              canUpdateTitle: BuiltValueNullFieldError.checkNotNull(canUpdateTitle, r'Gget_directives_anticipeesData_advanceDirectives_document', 'canUpdateTitle'),
              canUpdateCreatedAt: BuiltValueNullFieldError.checkNotNull(canUpdateCreatedAt, r'Gget_directives_anticipeesData_advanceDirectives_document', 'canUpdateCreatedAt'),
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
            r'Gget_directives_anticipeesData_advanceDirectives_document',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy
    extends Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy {
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

  factory _$Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy(
          [void Function(
                  Gget_directives_anticipeesData_advanceDirectives_document_uploadedByBuilder)?
              updates]) =>
      (new Gget_directives_anticipeesData_advanceDirectives_document_uploadedByBuilder()
            ..update(updates))
          ._build();

  _$Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy._(
      {required this.G__typename,
      required this.id,
      required this.sourceAuthor,
      this.firstName,
      this.lastName,
      required this.isPsClickable})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        sourceAuthor,
        r'Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy',
        'sourceAuthor');
    BuiltValueNullFieldError.checkNotNull(
        isPsClickable,
        r'Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy',
        'isPsClickable');
  }

  @override
  Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy rebuild(
          void Function(
                  Gget_directives_anticipeesData_advanceDirectives_document_uploadedByBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_directives_anticipeesData_advanceDirectives_document_uploadedByBuilder
      toBuilder() =>
          new Gget_directives_anticipeesData_advanceDirectives_document_uploadedByBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy &&
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
            r'Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('sourceAuthor', sourceAuthor)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('isPsClickable', isPsClickable))
        .toString();
  }
}

class Gget_directives_anticipeesData_advanceDirectives_document_uploadedByBuilder
    implements
        Builder<
            Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy,
            Gget_directives_anticipeesData_advanceDirectives_document_uploadedByBuilder> {
  _$Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy? _$v;

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

  Gget_directives_anticipeesData_advanceDirectives_document_uploadedByBuilder() {
    Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy
        ._initializeBuilder(this);
  }

  Gget_directives_anticipeesData_advanceDirectives_document_uploadedByBuilder
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
      Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy;
  }

  @override
  void update(
      void Function(
              Gget_directives_anticipeesData_advanceDirectives_document_uploadedByBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy
      build() => _build();

  _$Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy
      _build() {
    final _$result = _$v ??
        new _$Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy',
                'id'),
            sourceAuthor: BuiltValueNullFieldError.checkNotNull(
                sourceAuthor,
                r'Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy',
                'sourceAuthor'),
            firstName: firstName,
            lastName: lastName,
            isPsClickable: BuiltValueNullFieldError.checkNotNull(
                isPsClickable,
                r'Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy',
                'isPsClickable'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_directives_anticipeesData_advanceDirectives_document_folder
    extends Gget_directives_anticipeesData_advanceDirectives_document_folder {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String title;

  factory _$Gget_directives_anticipeesData_advanceDirectives_document_folder(
          [void Function(
                  Gget_directives_anticipeesData_advanceDirectives_document_folderBuilder)?
              updates]) =>
      (new Gget_directives_anticipeesData_advanceDirectives_document_folderBuilder()
            ..update(updates))
          ._build();

  _$Gget_directives_anticipeesData_advanceDirectives_document_folder._(
      {required this.G__typename, required this.id, required this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_directives_anticipeesData_advanceDirectives_document_folder',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gget_directives_anticipeesData_advanceDirectives_document_folder',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        title,
        r'Gget_directives_anticipeesData_advanceDirectives_document_folder',
        'title');
  }

  @override
  Gget_directives_anticipeesData_advanceDirectives_document_folder rebuild(
          void Function(
                  Gget_directives_anticipeesData_advanceDirectives_document_folderBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_directives_anticipeesData_advanceDirectives_document_folderBuilder
      toBuilder() =>
          new Gget_directives_anticipeesData_advanceDirectives_document_folderBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_directives_anticipeesData_advanceDirectives_document_folder &&
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
            r'Gget_directives_anticipeesData_advanceDirectives_document_folder')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title))
        .toString();
  }
}

class Gget_directives_anticipeesData_advanceDirectives_document_folderBuilder
    implements
        Builder<
            Gget_directives_anticipeesData_advanceDirectives_document_folder,
            Gget_directives_anticipeesData_advanceDirectives_document_folderBuilder> {
  _$Gget_directives_anticipeesData_advanceDirectives_document_folder? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  Gget_directives_anticipeesData_advanceDirectives_document_folderBuilder() {
    Gget_directives_anticipeesData_advanceDirectives_document_folder
        ._initializeBuilder(this);
  }

  Gget_directives_anticipeesData_advanceDirectives_document_folderBuilder
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
      Gget_directives_anticipeesData_advanceDirectives_document_folder other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_directives_anticipeesData_advanceDirectives_document_folder;
  }

  @override
  void update(
      void Function(
              Gget_directives_anticipeesData_advanceDirectives_document_folderBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_directives_anticipeesData_advanceDirectives_document_folder build() =>
      _build();

  _$Gget_directives_anticipeesData_advanceDirectives_document_folder _build() {
    final _$result = _$v ??
        new _$Gget_directives_anticipeesData_advanceDirectives_document_folder
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_directives_anticipeesData_advanceDirectives_document_folder',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                r'Gget_directives_anticipeesData_advanceDirectives_document_folder',
                'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title,
                r'Gget_directives_anticipeesData_advanceDirectives_document_folder',
                'title'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
