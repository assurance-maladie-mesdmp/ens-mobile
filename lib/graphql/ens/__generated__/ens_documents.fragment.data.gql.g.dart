// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_documents.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GensDocumentData> _$gensDocumentDataSerializer =
    new _$GensDocumentDataSerializer();
Serializer<GensDocumentData_uploadedBy> _$gensDocumentDataUploadedBySerializer =
    new _$GensDocumentData_uploadedBySerializer();
Serializer<GensDocumentData_folder> _$gensDocumentDataFolderSerializer =
    new _$GensDocumentData_folderSerializer();

class _$GensDocumentDataSerializer
    implements StructuredSerializer<GensDocumentData> {
  @override
  final Iterable<Type> types = const [GensDocumentData, _$GensDocumentData];
  @override
  final String wireName = 'GensDocumentData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GensDocumentData object,
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
          specifiedType: const FullType(GensDocumentData_uploadedBy)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
      'category',
      serializers.serialize(object.category,
          specifiedType: const FullType(_i1.GCategory)),
      'confidentialities',
      serializers.serialize(object.confidentialities,
          specifiedType: const FullType(
              BuiltList, const [const FullType(_i1.GConfidentiality)])),
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
            specifiedType: const FullType(GensDocumentData_folder)));
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
  GensDocumentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GensDocumentDataBuilder();

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
                  specifiedType: const FullType(GensDocumentData_uploadedBy))!
              as GensDocumentData_uploadedBy);
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
              specifiedType: const FullType(_i1.GCategory))! as _i1.GCategory;
          break;
        case 'pinned':
          result.pinned = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'confidentialities':
          result.confidentialities.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(_i1.GConfidentiality)]))!
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
                  specifiedType: const FullType(GensDocumentData_folder))!
              as GensDocumentData_folder);
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

class _$GensDocumentData_uploadedBySerializer
    implements StructuredSerializer<GensDocumentData_uploadedBy> {
  @override
  final Iterable<Type> types = const [
    GensDocumentData_uploadedBy,
    _$GensDocumentData_uploadedBy
  ];
  @override
  final String wireName = 'GensDocumentData_uploadedBy';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GensDocumentData_uploadedBy object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'sourceAuthor',
      serializers.serialize(object.sourceAuthor,
          specifiedType: const FullType(_i1.GSourceAuthor)),
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
  GensDocumentData_uploadedBy deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GensDocumentData_uploadedByBuilder();

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
                  specifiedType: const FullType(_i1.GSourceAuthor))!
              as _i1.GSourceAuthor;
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

class _$GensDocumentData_folderSerializer
    implements StructuredSerializer<GensDocumentData_folder> {
  @override
  final Iterable<Type> types = const [
    GensDocumentData_folder,
    _$GensDocumentData_folder
  ];
  @override
  final String wireName = 'GensDocumentData_folder';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GensDocumentData_folder object,
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
  GensDocumentData_folder deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GensDocumentData_folderBuilder();

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

class _$GensDocumentData extends GensDocumentData {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String title;
  @override
  final GensDocumentData_uploadedBy uploadedBy;
  @override
  final String createdAt;
  @override
  final String? reportDate;
  @override
  final _i1.GCategory category;
  @override
  final bool? pinned;
  @override
  final BuiltList<_i1.GConfidentiality> confidentialities;
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
  final GensDocumentData_folder? folder;
  @override
  final String? type;

  factory _$GensDocumentData(
          [void Function(GensDocumentDataBuilder)? updates]) =>
      (new GensDocumentDataBuilder()..update(updates))._build();

  _$GensDocumentData._(
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
        G__typename, r'GensDocumentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GensDocumentData', 'id');
    BuiltValueNullFieldError.checkNotNull(title, r'GensDocumentData', 'title');
    BuiltValueNullFieldError.checkNotNull(
        uploadedBy, r'GensDocumentData', 'uploadedBy');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'GensDocumentData', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        category, r'GensDocumentData', 'category');
    BuiltValueNullFieldError.checkNotNull(
        confidentialities, r'GensDocumentData', 'confidentialities');
    BuiltValueNullFieldError.checkNotNull(
        canOwnerDelete, r'GensDocumentData', 'canOwnerDelete');
    BuiltValueNullFieldError.checkNotNull(
        covidCertificate, r'GensDocumentData', 'covidCertificate');
    BuiltValueNullFieldError.checkNotNull(
        canUpdateCategory, r'GensDocumentData', 'canUpdateCategory');
    BuiltValueNullFieldError.checkNotNull(canUpdateConfidentialityOnly,
        r'GensDocumentData', 'canUpdateConfidentialityOnly');
    BuiltValueNullFieldError.checkNotNull(
        canUpdateTitle, r'GensDocumentData', 'canUpdateTitle');
    BuiltValueNullFieldError.checkNotNull(
        canUpdateCreatedAt, r'GensDocumentData', 'canUpdateCreatedAt');
  }

  @override
  GensDocumentData rebuild(void Function(GensDocumentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GensDocumentDataBuilder toBuilder() =>
      new GensDocumentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GensDocumentData &&
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
    return (newBuiltValueToStringHelper(r'GensDocumentData')
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

class GensDocumentDataBuilder
    implements Builder<GensDocumentData, GensDocumentDataBuilder> {
  _$GensDocumentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  GensDocumentData_uploadedByBuilder? _uploadedBy;
  GensDocumentData_uploadedByBuilder get uploadedBy =>
      _$this._uploadedBy ??= new GensDocumentData_uploadedByBuilder();
  set uploadedBy(GensDocumentData_uploadedByBuilder? uploadedBy) =>
      _$this._uploadedBy = uploadedBy;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _reportDate;
  String? get reportDate => _$this._reportDate;
  set reportDate(String? reportDate) => _$this._reportDate = reportDate;

  _i1.GCategory? _category;
  _i1.GCategory? get category => _$this._category;
  set category(_i1.GCategory? category) => _$this._category = category;

  bool? _pinned;
  bool? get pinned => _$this._pinned;
  set pinned(bool? pinned) => _$this._pinned = pinned;

  ListBuilder<_i1.GConfidentiality>? _confidentialities;
  ListBuilder<_i1.GConfidentiality> get confidentialities =>
      _$this._confidentialities ??= new ListBuilder<_i1.GConfidentiality>();
  set confidentialities(ListBuilder<_i1.GConfidentiality>? confidentialities) =>
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

  GensDocumentData_folderBuilder? _folder;
  GensDocumentData_folderBuilder get folder =>
      _$this._folder ??= new GensDocumentData_folderBuilder();
  set folder(GensDocumentData_folderBuilder? folder) => _$this._folder = folder;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  GensDocumentDataBuilder() {
    GensDocumentData._initializeBuilder(this);
  }

  GensDocumentDataBuilder get _$this {
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
  void replace(GensDocumentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GensDocumentData;
  }

  @override
  void update(void Function(GensDocumentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GensDocumentData build() => _build();

  _$GensDocumentData _build() {
    _$GensDocumentData _$result;
    try {
      _$result = _$v ??
          new _$GensDocumentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GensDocumentData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GensDocumentData', 'id'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'GensDocumentData', 'title'),
              uploadedBy: uploadedBy.build(),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, r'GensDocumentData', 'createdAt'),
              reportDate: reportDate,
              category: BuiltValueNullFieldError.checkNotNull(
                  category, r'GensDocumentData', 'category'),
              pinned: pinned,
              confidentialities: confidentialities.build(),
              canOwnerDelete: BuiltValueNullFieldError.checkNotNull(
                  canOwnerDelete, r'GensDocumentData', 'canOwnerDelete'),
              covidCertificate: BuiltValueNullFieldError.checkNotNull(
                  covidCertificate, r'GensDocumentData', 'covidCertificate'),
              canUpdateCategory: BuiltValueNullFieldError.checkNotNull(
                  canUpdateCategory, r'GensDocumentData', 'canUpdateCategory'),
              canUpdateConfidentialityOnly:
                  BuiltValueNullFieldError.checkNotNull(canUpdateConfidentialityOnly, r'GensDocumentData', 'canUpdateConfidentialityOnly'),
              canUpdateTitle: BuiltValueNullFieldError.checkNotNull(canUpdateTitle, r'GensDocumentData', 'canUpdateTitle'),
              canUpdateCreatedAt: BuiltValueNullFieldError.checkNotNull(canUpdateCreatedAt, r'GensDocumentData', 'canUpdateCreatedAt'),
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
            r'GensDocumentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GensDocumentData_uploadedBy extends GensDocumentData_uploadedBy {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final _i1.GSourceAuthor sourceAuthor;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final bool isPsClickable;

  factory _$GensDocumentData_uploadedBy(
          [void Function(GensDocumentData_uploadedByBuilder)? updates]) =>
      (new GensDocumentData_uploadedByBuilder()..update(updates))._build();

  _$GensDocumentData_uploadedBy._(
      {required this.G__typename,
      required this.id,
      required this.sourceAuthor,
      this.firstName,
      this.lastName,
      required this.isPsClickable})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GensDocumentData_uploadedBy', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GensDocumentData_uploadedBy', 'id');
    BuiltValueNullFieldError.checkNotNull(
        sourceAuthor, r'GensDocumentData_uploadedBy', 'sourceAuthor');
    BuiltValueNullFieldError.checkNotNull(
        isPsClickable, r'GensDocumentData_uploadedBy', 'isPsClickable');
  }

  @override
  GensDocumentData_uploadedBy rebuild(
          void Function(GensDocumentData_uploadedByBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GensDocumentData_uploadedByBuilder toBuilder() =>
      new GensDocumentData_uploadedByBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GensDocumentData_uploadedBy &&
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
    return (newBuiltValueToStringHelper(r'GensDocumentData_uploadedBy')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('sourceAuthor', sourceAuthor)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('isPsClickable', isPsClickable))
        .toString();
  }
}

class GensDocumentData_uploadedByBuilder
    implements
        Builder<GensDocumentData_uploadedBy,
            GensDocumentData_uploadedByBuilder> {
  _$GensDocumentData_uploadedBy? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i1.GSourceAuthor? _sourceAuthor;
  _i1.GSourceAuthor? get sourceAuthor => _$this._sourceAuthor;
  set sourceAuthor(_i1.GSourceAuthor? sourceAuthor) =>
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

  GensDocumentData_uploadedByBuilder() {
    GensDocumentData_uploadedBy._initializeBuilder(this);
  }

  GensDocumentData_uploadedByBuilder get _$this {
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
  void replace(GensDocumentData_uploadedBy other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GensDocumentData_uploadedBy;
  }

  @override
  void update(void Function(GensDocumentData_uploadedByBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GensDocumentData_uploadedBy build() => _build();

  _$GensDocumentData_uploadedBy _build() {
    final _$result = _$v ??
        new _$GensDocumentData_uploadedBy._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GensDocumentData_uploadedBy', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GensDocumentData_uploadedBy', 'id'),
            sourceAuthor: BuiltValueNullFieldError.checkNotNull(
                sourceAuthor, r'GensDocumentData_uploadedBy', 'sourceAuthor'),
            firstName: firstName,
            lastName: lastName,
            isPsClickable: BuiltValueNullFieldError.checkNotNull(isPsClickable,
                r'GensDocumentData_uploadedBy', 'isPsClickable'));
    replace(_$result);
    return _$result;
  }
}

class _$GensDocumentData_folder extends GensDocumentData_folder {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String title;

  factory _$GensDocumentData_folder(
          [void Function(GensDocumentData_folderBuilder)? updates]) =>
      (new GensDocumentData_folderBuilder()..update(updates))._build();

  _$GensDocumentData_folder._(
      {required this.G__typename, required this.id, required this.title})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GensDocumentData_folder', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GensDocumentData_folder', 'id');
    BuiltValueNullFieldError.checkNotNull(
        title, r'GensDocumentData_folder', 'title');
  }

  @override
  GensDocumentData_folder rebuild(
          void Function(GensDocumentData_folderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GensDocumentData_folderBuilder toBuilder() =>
      new GensDocumentData_folderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GensDocumentData_folder &&
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
    return (newBuiltValueToStringHelper(r'GensDocumentData_folder')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title))
        .toString();
  }
}

class GensDocumentData_folderBuilder
    implements
        Builder<GensDocumentData_folder, GensDocumentData_folderBuilder> {
  _$GensDocumentData_folder? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  GensDocumentData_folderBuilder() {
    GensDocumentData_folder._initializeBuilder(this);
  }

  GensDocumentData_folderBuilder get _$this {
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
  void replace(GensDocumentData_folder other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GensDocumentData_folder;
  }

  @override
  void update(void Function(GensDocumentData_folderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GensDocumentData_folder build() => _build();

  _$GensDocumentData_folder _build() {
    final _$result = _$v ??
        new _$GensDocumentData_folder._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GensDocumentData_folder', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GensDocumentData_folder', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'GensDocumentData_folder', 'title'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
