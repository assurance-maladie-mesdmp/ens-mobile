// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_catalogue_service_detail.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GdetailServiceData> _$gdetailServiceDataSerializer =
    new _$GdetailServiceDataSerializer();
Serializer<GdetailServiceData_editor> _$gdetailServiceDataEditorSerializer =
    new _$GdetailServiceData_editorSerializer();
Serializer<GdetailServiceData_logo> _$gdetailServiceDataLogoSerializer =
    new _$GdetailServiceData_logoSerializer();
Serializer<GdetailServiceData_screenshots>
    _$gdetailServiceDataScreenshotsSerializer =
    new _$GdetailServiceData_screenshotsSerializer();
Serializer<GdetailServiceData_finalities>
    _$gdetailServiceDataFinalitiesSerializer =
    new _$GdetailServiceData_finalitiesSerializer();

class _$GdetailServiceDataSerializer
    implements StructuredSerializer<GdetailServiceData> {
  @override
  final Iterable<Type> types = const [GdetailServiceData, _$GdetailServiceData];
  @override
  final String wireName = 'GdetailServiceData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GdetailServiceData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'editor',
      serializers.serialize(object.editor,
          specifiedType: const FullType(GdetailServiceData_editor)),
      'hasEchangeDonnees',
      serializers.serialize(object.hasEchangeDonnees,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.longDescription;
    if (value != null) {
      result
        ..add('longDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.logo;
    if (value != null) {
      result
        ..add('logo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GdetailServiceData_logo)));
    }
    value = object.webUrl;
    if (value != null) {
      result
        ..add('webUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.iOsUrl;
    if (value != null) {
      result
        ..add('iOsUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.androidUrl;
    if (value != null) {
      result
        ..add('androidUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.consumerDevice;
    if (value != null) {
      result
        ..add('consumerDevice')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.medicalDevice;
    if (value != null) {
      result
        ..add('medicalDevice')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.economicalModel;
    if (value != null) {
      result
        ..add('economicalModel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.screenshots;
    if (value != null) {
      result
        ..add('screenshots')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GdetailServiceData_screenshots)])));
    }
    value = object.cguUrl;
    if (value != null) {
      result
        ..add('cguUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.finalities;
    if (value != null) {
      result
        ..add('finalities')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GdetailServiceData_finalities)])));
    }
    value = object.urlSynchronisation;
    if (value != null) {
      result
        ..add('urlSynchronisation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GServiceStatusEnum)));
    }
    return result;
  }

  @override
  GdetailServiceData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdetailServiceDataBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'longDescription':
          result.longDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'editor':
          result.editor.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GdetailServiceData_editor))!
              as GdetailServiceData_editor);
          break;
        case 'logo':
          result.logo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GdetailServiceData_logo))!
              as GdetailServiceData_logo);
          break;
        case 'webUrl':
          result.webUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'iOsUrl':
          result.iOsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'androidUrl':
          result.androidUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'consumerDevice':
          result.consumerDevice = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'medicalDevice':
          result.medicalDevice = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'economicalModel':
          result.economicalModel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'screenshots':
          result.screenshots.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GdetailServiceData_screenshots)
              ]))! as BuiltList<Object?>);
          break;
        case 'cguUrl':
          result.cguUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'hasEchangeDonnees':
          result.hasEchangeDonnees = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'finalities':
          result.finalities.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GdetailServiceData_finalities)
              ]))! as BuiltList<Object?>);
          break;
        case 'urlSynchronisation':
          result.urlSynchronisation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GServiceStatusEnum))
              as _i1.GServiceStatusEnum?;
          break;
      }
    }

    return result.build();
  }
}

class _$GdetailServiceData_editorSerializer
    implements StructuredSerializer<GdetailServiceData_editor> {
  @override
  final Iterable<Type> types = const [
    GdetailServiceData_editor,
    _$GdetailServiceData_editor
  ];
  @override
  final String wireName = 'GdetailServiceData_editor';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GdetailServiceData_editor object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GdetailServiceData_editor deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdetailServiceData_editorBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GdetailServiceData_logoSerializer
    implements StructuredSerializer<GdetailServiceData_logo> {
  @override
  final Iterable<Type> types = const [
    GdetailServiceData_logo,
    _$GdetailServiceData_logo
  ];
  @override
  final String wireName = 'GdetailServiceData_logo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GdetailServiceData_logo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.file;
    if (value != null) {
      result
        ..add('file')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  GdetailServiceData_logo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdetailServiceData_logoBuilder();

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
        case 'file':
          result.file = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$GdetailServiceData_screenshotsSerializer
    implements StructuredSerializer<GdetailServiceData_screenshots> {
  @override
  final Iterable<Type> types = const [
    GdetailServiceData_screenshots,
    _$GdetailServiceData_screenshots
  ];
  @override
  final String wireName = 'GdetailServiceData_screenshots';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GdetailServiceData_screenshots object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.file;
    if (value != null) {
      result
        ..add('file')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  GdetailServiceData_screenshots deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdetailServiceData_screenshotsBuilder();

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
        case 'file':
          result.file = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$GdetailServiceData_finalitiesSerializer
    implements StructuredSerializer<GdetailServiceData_finalities> {
  @override
  final Iterable<Type> types = const [
    GdetailServiceData_finalities,
    _$GdetailServiceData_finalities
  ];
  @override
  final String wireName = 'GdetailServiceData_finalities';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GdetailServiceData_finalities object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'libelle',
      serializers.serialize(object.libelle,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'icone',
      serializers.serialize(object.icone,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GdetailServiceData_finalities deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdetailServiceData_finalitiesBuilder();

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
        case 'libelle':
          result.libelle = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'icone':
          result.icone = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GdetailServiceData extends GdetailServiceData {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String? longDescription;
  @override
  final GdetailServiceData_editor editor;
  @override
  final GdetailServiceData_logo? logo;
  @override
  final String? webUrl;
  @override
  final String? iOsUrl;
  @override
  final String? androidUrl;
  @override
  final bool? consumerDevice;
  @override
  final bool? medicalDevice;
  @override
  final String? economicalModel;
  @override
  final BuiltList<GdetailServiceData_screenshots>? screenshots;
  @override
  final String? cguUrl;
  @override
  final bool hasEchangeDonnees;
  @override
  final BuiltList<GdetailServiceData_finalities>? finalities;
  @override
  final String? urlSynchronisation;
  @override
  final _i1.GServiceStatusEnum? status;

  factory _$GdetailServiceData(
          [void Function(GdetailServiceDataBuilder)? updates]) =>
      (new GdetailServiceDataBuilder()..update(updates))._build();

  _$GdetailServiceData._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.description,
      this.longDescription,
      required this.editor,
      this.logo,
      this.webUrl,
      this.iOsUrl,
      this.androidUrl,
      this.consumerDevice,
      this.medicalDevice,
      this.economicalModel,
      this.screenshots,
      this.cguUrl,
      required this.hasEchangeDonnees,
      this.finalities,
      this.urlSynchronisation,
      this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GdetailServiceData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GdetailServiceData', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'GdetailServiceData', 'name');
    BuiltValueNullFieldError.checkNotNull(
        editor, r'GdetailServiceData', 'editor');
    BuiltValueNullFieldError.checkNotNull(
        hasEchangeDonnees, r'GdetailServiceData', 'hasEchangeDonnees');
  }

  @override
  GdetailServiceData rebuild(
          void Function(GdetailServiceDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdetailServiceDataBuilder toBuilder() =>
      new GdetailServiceDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdetailServiceData &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        longDescription == other.longDescription &&
        editor == other.editor &&
        logo == other.logo &&
        webUrl == other.webUrl &&
        iOsUrl == other.iOsUrl &&
        androidUrl == other.androidUrl &&
        consumerDevice == other.consumerDevice &&
        medicalDevice == other.medicalDevice &&
        economicalModel == other.economicalModel &&
        screenshots == other.screenshots &&
        cguUrl == other.cguUrl &&
        hasEchangeDonnees == other.hasEchangeDonnees &&
        finalities == other.finalities &&
        urlSynchronisation == other.urlSynchronisation &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, longDescription.hashCode);
    _$hash = $jc(_$hash, editor.hashCode);
    _$hash = $jc(_$hash, logo.hashCode);
    _$hash = $jc(_$hash, webUrl.hashCode);
    _$hash = $jc(_$hash, iOsUrl.hashCode);
    _$hash = $jc(_$hash, androidUrl.hashCode);
    _$hash = $jc(_$hash, consumerDevice.hashCode);
    _$hash = $jc(_$hash, medicalDevice.hashCode);
    _$hash = $jc(_$hash, economicalModel.hashCode);
    _$hash = $jc(_$hash, screenshots.hashCode);
    _$hash = $jc(_$hash, cguUrl.hashCode);
    _$hash = $jc(_$hash, hasEchangeDonnees.hashCode);
    _$hash = $jc(_$hash, finalities.hashCode);
    _$hash = $jc(_$hash, urlSynchronisation.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GdetailServiceData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('longDescription', longDescription)
          ..add('editor', editor)
          ..add('logo', logo)
          ..add('webUrl', webUrl)
          ..add('iOsUrl', iOsUrl)
          ..add('androidUrl', androidUrl)
          ..add('consumerDevice', consumerDevice)
          ..add('medicalDevice', medicalDevice)
          ..add('economicalModel', economicalModel)
          ..add('screenshots', screenshots)
          ..add('cguUrl', cguUrl)
          ..add('hasEchangeDonnees', hasEchangeDonnees)
          ..add('finalities', finalities)
          ..add('urlSynchronisation', urlSynchronisation)
          ..add('status', status))
        .toString();
  }
}

class GdetailServiceDataBuilder
    implements Builder<GdetailServiceData, GdetailServiceDataBuilder> {
  _$GdetailServiceData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _longDescription;
  String? get longDescription => _$this._longDescription;
  set longDescription(String? longDescription) =>
      _$this._longDescription = longDescription;

  GdetailServiceData_editorBuilder? _editor;
  GdetailServiceData_editorBuilder get editor =>
      _$this._editor ??= new GdetailServiceData_editorBuilder();
  set editor(GdetailServiceData_editorBuilder? editor) =>
      _$this._editor = editor;

  GdetailServiceData_logoBuilder? _logo;
  GdetailServiceData_logoBuilder get logo =>
      _$this._logo ??= new GdetailServiceData_logoBuilder();
  set logo(GdetailServiceData_logoBuilder? logo) => _$this._logo = logo;

  String? _webUrl;
  String? get webUrl => _$this._webUrl;
  set webUrl(String? webUrl) => _$this._webUrl = webUrl;

  String? _iOsUrl;
  String? get iOsUrl => _$this._iOsUrl;
  set iOsUrl(String? iOsUrl) => _$this._iOsUrl = iOsUrl;

  String? _androidUrl;
  String? get androidUrl => _$this._androidUrl;
  set androidUrl(String? androidUrl) => _$this._androidUrl = androidUrl;

  bool? _consumerDevice;
  bool? get consumerDevice => _$this._consumerDevice;
  set consumerDevice(bool? consumerDevice) =>
      _$this._consumerDevice = consumerDevice;

  bool? _medicalDevice;
  bool? get medicalDevice => _$this._medicalDevice;
  set medicalDevice(bool? medicalDevice) =>
      _$this._medicalDevice = medicalDevice;

  String? _economicalModel;
  String? get economicalModel => _$this._economicalModel;
  set economicalModel(String? economicalModel) =>
      _$this._economicalModel = economicalModel;

  ListBuilder<GdetailServiceData_screenshots>? _screenshots;
  ListBuilder<GdetailServiceData_screenshots> get screenshots =>
      _$this._screenshots ??= new ListBuilder<GdetailServiceData_screenshots>();
  set screenshots(ListBuilder<GdetailServiceData_screenshots>? screenshots) =>
      _$this._screenshots = screenshots;

  String? _cguUrl;
  String? get cguUrl => _$this._cguUrl;
  set cguUrl(String? cguUrl) => _$this._cguUrl = cguUrl;

  bool? _hasEchangeDonnees;
  bool? get hasEchangeDonnees => _$this._hasEchangeDonnees;
  set hasEchangeDonnees(bool? hasEchangeDonnees) =>
      _$this._hasEchangeDonnees = hasEchangeDonnees;

  ListBuilder<GdetailServiceData_finalities>? _finalities;
  ListBuilder<GdetailServiceData_finalities> get finalities =>
      _$this._finalities ??= new ListBuilder<GdetailServiceData_finalities>();
  set finalities(ListBuilder<GdetailServiceData_finalities>? finalities) =>
      _$this._finalities = finalities;

  String? _urlSynchronisation;
  String? get urlSynchronisation => _$this._urlSynchronisation;
  set urlSynchronisation(String? urlSynchronisation) =>
      _$this._urlSynchronisation = urlSynchronisation;

  _i1.GServiceStatusEnum? _status;
  _i1.GServiceStatusEnum? get status => _$this._status;
  set status(_i1.GServiceStatusEnum? status) => _$this._status = status;

  GdetailServiceDataBuilder() {
    GdetailServiceData._initializeBuilder(this);
  }

  GdetailServiceDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _longDescription = $v.longDescription;
      _editor = $v.editor.toBuilder();
      _logo = $v.logo?.toBuilder();
      _webUrl = $v.webUrl;
      _iOsUrl = $v.iOsUrl;
      _androidUrl = $v.androidUrl;
      _consumerDevice = $v.consumerDevice;
      _medicalDevice = $v.medicalDevice;
      _economicalModel = $v.economicalModel;
      _screenshots = $v.screenshots?.toBuilder();
      _cguUrl = $v.cguUrl;
      _hasEchangeDonnees = $v.hasEchangeDonnees;
      _finalities = $v.finalities?.toBuilder();
      _urlSynchronisation = $v.urlSynchronisation;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GdetailServiceData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdetailServiceData;
  }

  @override
  void update(void Function(GdetailServiceDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdetailServiceData build() => _build();

  _$GdetailServiceData _build() {
    _$GdetailServiceData _$result;
    try {
      _$result = _$v ??
          new _$GdetailServiceData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GdetailServiceData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GdetailServiceData', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GdetailServiceData', 'name'),
              description: description,
              longDescription: longDescription,
              editor: editor.build(),
              logo: _logo?.build(),
              webUrl: webUrl,
              iOsUrl: iOsUrl,
              androidUrl: androidUrl,
              consumerDevice: consumerDevice,
              medicalDevice: medicalDevice,
              economicalModel: economicalModel,
              screenshots: _screenshots?.build(),
              cguUrl: cguUrl,
              hasEchangeDonnees: BuiltValueNullFieldError.checkNotNull(
                  hasEchangeDonnees,
                  r'GdetailServiceData',
                  'hasEchangeDonnees'),
              finalities: _finalities?.build(),
              urlSynchronisation: urlSynchronisation,
              status: status);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'editor';
        editor.build();
        _$failedField = 'logo';
        _logo?.build();

        _$failedField = 'screenshots';
        _screenshots?.build();

        _$failedField = 'finalities';
        _finalities?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GdetailServiceData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GdetailServiceData_editor extends GdetailServiceData_editor {
  @override
  final String G__typename;
  @override
  final String name;

  factory _$GdetailServiceData_editor(
          [void Function(GdetailServiceData_editorBuilder)? updates]) =>
      (new GdetailServiceData_editorBuilder()..update(updates))._build();

  _$GdetailServiceData_editor._({required this.G__typename, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GdetailServiceData_editor', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GdetailServiceData_editor', 'name');
  }

  @override
  GdetailServiceData_editor rebuild(
          void Function(GdetailServiceData_editorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdetailServiceData_editorBuilder toBuilder() =>
      new GdetailServiceData_editorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdetailServiceData_editor &&
        G__typename == other.G__typename &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GdetailServiceData_editor')
          ..add('G__typename', G__typename)
          ..add('name', name))
        .toString();
  }
}

class GdetailServiceData_editorBuilder
    implements
        Builder<GdetailServiceData_editor, GdetailServiceData_editorBuilder> {
  _$GdetailServiceData_editor? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GdetailServiceData_editorBuilder() {
    GdetailServiceData_editor._initializeBuilder(this);
  }

  GdetailServiceData_editorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GdetailServiceData_editor other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdetailServiceData_editor;
  }

  @override
  void update(void Function(GdetailServiceData_editorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdetailServiceData_editor build() => _build();

  _$GdetailServiceData_editor _build() {
    final _$result = _$v ??
        new _$GdetailServiceData_editor._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GdetailServiceData_editor', 'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GdetailServiceData_editor', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GdetailServiceData_logo extends GdetailServiceData_logo {
  @override
  final String G__typename;
  @override
  final String? file;
  @override
  final String? type;

  factory _$GdetailServiceData_logo(
          [void Function(GdetailServiceData_logoBuilder)? updates]) =>
      (new GdetailServiceData_logoBuilder()..update(updates))._build();

  _$GdetailServiceData_logo._({required this.G__typename, this.file, this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GdetailServiceData_logo', 'G__typename');
  }

  @override
  GdetailServiceData_logo rebuild(
          void Function(GdetailServiceData_logoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdetailServiceData_logoBuilder toBuilder() =>
      new GdetailServiceData_logoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdetailServiceData_logo &&
        G__typename == other.G__typename &&
        file == other.file &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, file.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GdetailServiceData_logo')
          ..add('G__typename', G__typename)
          ..add('file', file)
          ..add('type', type))
        .toString();
  }
}

class GdetailServiceData_logoBuilder
    implements
        Builder<GdetailServiceData_logo, GdetailServiceData_logoBuilder> {
  _$GdetailServiceData_logo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _file;
  String? get file => _$this._file;
  set file(String? file) => _$this._file = file;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  GdetailServiceData_logoBuilder() {
    GdetailServiceData_logo._initializeBuilder(this);
  }

  GdetailServiceData_logoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _file = $v.file;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GdetailServiceData_logo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdetailServiceData_logo;
  }

  @override
  void update(void Function(GdetailServiceData_logoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdetailServiceData_logo build() => _build();

  _$GdetailServiceData_logo _build() {
    final _$result = _$v ??
        new _$GdetailServiceData_logo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GdetailServiceData_logo', 'G__typename'),
            file: file,
            type: type);
    replace(_$result);
    return _$result;
  }
}

class _$GdetailServiceData_screenshots extends GdetailServiceData_screenshots {
  @override
  final String G__typename;
  @override
  final String? file;
  @override
  final String? type;

  factory _$GdetailServiceData_screenshots(
          [void Function(GdetailServiceData_screenshotsBuilder)? updates]) =>
      (new GdetailServiceData_screenshotsBuilder()..update(updates))._build();

  _$GdetailServiceData_screenshots._(
      {required this.G__typename, this.file, this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GdetailServiceData_screenshots', 'G__typename');
  }

  @override
  GdetailServiceData_screenshots rebuild(
          void Function(GdetailServiceData_screenshotsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdetailServiceData_screenshotsBuilder toBuilder() =>
      new GdetailServiceData_screenshotsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdetailServiceData_screenshots &&
        G__typename == other.G__typename &&
        file == other.file &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, file.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GdetailServiceData_screenshots')
          ..add('G__typename', G__typename)
          ..add('file', file)
          ..add('type', type))
        .toString();
  }
}

class GdetailServiceData_screenshotsBuilder
    implements
        Builder<GdetailServiceData_screenshots,
            GdetailServiceData_screenshotsBuilder> {
  _$GdetailServiceData_screenshots? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _file;
  String? get file => _$this._file;
  set file(String? file) => _$this._file = file;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  GdetailServiceData_screenshotsBuilder() {
    GdetailServiceData_screenshots._initializeBuilder(this);
  }

  GdetailServiceData_screenshotsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _file = $v.file;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GdetailServiceData_screenshots other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdetailServiceData_screenshots;
  }

  @override
  void update(void Function(GdetailServiceData_screenshotsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdetailServiceData_screenshots build() => _build();

  _$GdetailServiceData_screenshots _build() {
    final _$result = _$v ??
        new _$GdetailServiceData_screenshots._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GdetailServiceData_screenshots', 'G__typename'),
            file: file,
            type: type);
    replace(_$result);
    return _$result;
  }
}

class _$GdetailServiceData_finalities extends GdetailServiceData_finalities {
  @override
  final String G__typename;
  @override
  final String libelle;
  @override
  final String description;
  @override
  final String icone;

  factory _$GdetailServiceData_finalities(
          [void Function(GdetailServiceData_finalitiesBuilder)? updates]) =>
      (new GdetailServiceData_finalitiesBuilder()..update(updates))._build();

  _$GdetailServiceData_finalities._(
      {required this.G__typename,
      required this.libelle,
      required this.description,
      required this.icone})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GdetailServiceData_finalities', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        libelle, r'GdetailServiceData_finalities', 'libelle');
    BuiltValueNullFieldError.checkNotNull(
        description, r'GdetailServiceData_finalities', 'description');
    BuiltValueNullFieldError.checkNotNull(
        icone, r'GdetailServiceData_finalities', 'icone');
  }

  @override
  GdetailServiceData_finalities rebuild(
          void Function(GdetailServiceData_finalitiesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdetailServiceData_finalitiesBuilder toBuilder() =>
      new GdetailServiceData_finalitiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdetailServiceData_finalities &&
        G__typename == other.G__typename &&
        libelle == other.libelle &&
        description == other.description &&
        icone == other.icone;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, libelle.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, icone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GdetailServiceData_finalities')
          ..add('G__typename', G__typename)
          ..add('libelle', libelle)
          ..add('description', description)
          ..add('icone', icone))
        .toString();
  }
}

class GdetailServiceData_finalitiesBuilder
    implements
        Builder<GdetailServiceData_finalities,
            GdetailServiceData_finalitiesBuilder> {
  _$GdetailServiceData_finalities? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _libelle;
  String? get libelle => _$this._libelle;
  set libelle(String? libelle) => _$this._libelle = libelle;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _icone;
  String? get icone => _$this._icone;
  set icone(String? icone) => _$this._icone = icone;

  GdetailServiceData_finalitiesBuilder() {
    GdetailServiceData_finalities._initializeBuilder(this);
  }

  GdetailServiceData_finalitiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _libelle = $v.libelle;
      _description = $v.description;
      _icone = $v.icone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GdetailServiceData_finalities other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdetailServiceData_finalities;
  }

  @override
  void update(void Function(GdetailServiceData_finalitiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdetailServiceData_finalities build() => _build();

  _$GdetailServiceData_finalities _build() {
    final _$result = _$v ??
        new _$GdetailServiceData_finalities._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GdetailServiceData_finalities', 'G__typename'),
            libelle: BuiltValueNullFieldError.checkNotNull(
                libelle, r'GdetailServiceData_finalities', 'libelle'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'GdetailServiceData_finalities', 'description'),
            icone: BuiltValueNullFieldError.checkNotNull(
                icone, r'GdetailServiceData_finalities', 'icone'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
