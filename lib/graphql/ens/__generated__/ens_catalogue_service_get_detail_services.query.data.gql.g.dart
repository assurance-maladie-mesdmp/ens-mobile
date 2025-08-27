// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_catalogue_service_get_detail_services.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_detail_serviceData> _$ggetDetailServiceDataSerializer =
    new _$Gget_detail_serviceDataSerializer();
Serializer<Gget_detail_serviceData_fetchServiceById>
    _$ggetDetailServiceDataFetchServiceByIdSerializer =
    new _$Gget_detail_serviceData_fetchServiceByIdSerializer();
Serializer<Gget_detail_serviceData_fetchServiceById_editor>
    _$ggetDetailServiceDataFetchServiceByIdEditorSerializer =
    new _$Gget_detail_serviceData_fetchServiceById_editorSerializer();
Serializer<Gget_detail_serviceData_fetchServiceById_logo>
    _$ggetDetailServiceDataFetchServiceByIdLogoSerializer =
    new _$Gget_detail_serviceData_fetchServiceById_logoSerializer();
Serializer<Gget_detail_serviceData_fetchServiceById_screenshots>
    _$ggetDetailServiceDataFetchServiceByIdScreenshotsSerializer =
    new _$Gget_detail_serviceData_fetchServiceById_screenshotsSerializer();
Serializer<Gget_detail_serviceData_fetchServiceById_finalities>
    _$ggetDetailServiceDataFetchServiceByIdFinalitiesSerializer =
    new _$Gget_detail_serviceData_fetchServiceById_finalitiesSerializer();

class _$Gget_detail_serviceDataSerializer
    implements StructuredSerializer<Gget_detail_serviceData> {
  @override
  final Iterable<Type> types = const [
    Gget_detail_serviceData,
    _$Gget_detail_serviceData
  ];
  @override
  final String wireName = 'Gget_detail_serviceData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_detail_serviceData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'fetchServiceById',
      serializers.serialize(object.fetchServiceById,
          specifiedType:
              const FullType(Gget_detail_serviceData_fetchServiceById)),
    ];

    return result;
  }

  @override
  Gget_detail_serviceData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_detail_serviceDataBuilder();

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
        case 'fetchServiceById':
          result.fetchServiceById.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gget_detail_serviceData_fetchServiceById))!
              as Gget_detail_serviceData_fetchServiceById);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_detail_serviceData_fetchServiceByIdSerializer
    implements StructuredSerializer<Gget_detail_serviceData_fetchServiceById> {
  @override
  final Iterable<Type> types = const [
    Gget_detail_serviceData_fetchServiceById,
    _$Gget_detail_serviceData_fetchServiceById
  ];
  @override
  final String wireName = 'Gget_detail_serviceData_fetchServiceById';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_detail_serviceData_fetchServiceById object,
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
          specifiedType:
              const FullType(Gget_detail_serviceData_fetchServiceById_editor)),
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
            specifiedType:
                const FullType(Gget_detail_serviceData_fetchServiceById_logo)));
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
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_detail_serviceData_fetchServiceById_screenshots)
            ])));
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
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_detail_serviceData_fetchServiceById_finalities)
            ])));
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
            specifiedType: const FullType(_i3.GServiceStatusEnum)));
    }
    return result;
  }

  @override
  Gget_detail_serviceData_fetchServiceById deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_detail_serviceData_fetchServiceByIdBuilder();

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
                  specifiedType: const FullType(
                      Gget_detail_serviceData_fetchServiceById_editor))!
              as Gget_detail_serviceData_fetchServiceById_editor);
          break;
        case 'logo':
          result.logo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_detail_serviceData_fetchServiceById_logo))!
              as Gget_detail_serviceData_fetchServiceById_logo);
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
                const FullType(
                    Gget_detail_serviceData_fetchServiceById_screenshots)
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
                const FullType(
                    Gget_detail_serviceData_fetchServiceById_finalities)
              ]))! as BuiltList<Object?>);
          break;
        case 'urlSynchronisation':
          result.urlSynchronisation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GServiceStatusEnum))
              as _i3.GServiceStatusEnum?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_detail_serviceData_fetchServiceById_editorSerializer
    implements
        StructuredSerializer<Gget_detail_serviceData_fetchServiceById_editor> {
  @override
  final Iterable<Type> types = const [
    Gget_detail_serviceData_fetchServiceById_editor,
    _$Gget_detail_serviceData_fetchServiceById_editor
  ];
  @override
  final String wireName = 'Gget_detail_serviceData_fetchServiceById_editor';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_detail_serviceData_fetchServiceById_editor object,
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
  Gget_detail_serviceData_fetchServiceById_editor deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_detail_serviceData_fetchServiceById_editorBuilder();

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

class _$Gget_detail_serviceData_fetchServiceById_logoSerializer
    implements
        StructuredSerializer<Gget_detail_serviceData_fetchServiceById_logo> {
  @override
  final Iterable<Type> types = const [
    Gget_detail_serviceData_fetchServiceById_logo,
    _$Gget_detail_serviceData_fetchServiceById_logo
  ];
  @override
  final String wireName = 'Gget_detail_serviceData_fetchServiceById_logo';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_detail_serviceData_fetchServiceById_logo object,
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
  Gget_detail_serviceData_fetchServiceById_logo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_detail_serviceData_fetchServiceById_logoBuilder();

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

class _$Gget_detail_serviceData_fetchServiceById_screenshotsSerializer
    implements
        StructuredSerializer<
            Gget_detail_serviceData_fetchServiceById_screenshots> {
  @override
  final Iterable<Type> types = const [
    Gget_detail_serviceData_fetchServiceById_screenshots,
    _$Gget_detail_serviceData_fetchServiceById_screenshots
  ];
  @override
  final String wireName =
      'Gget_detail_serviceData_fetchServiceById_screenshots';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_detail_serviceData_fetchServiceById_screenshots object,
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
  Gget_detail_serviceData_fetchServiceById_screenshots deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_detail_serviceData_fetchServiceById_screenshotsBuilder();

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

class _$Gget_detail_serviceData_fetchServiceById_finalitiesSerializer
    implements
        StructuredSerializer<
            Gget_detail_serviceData_fetchServiceById_finalities> {
  @override
  final Iterable<Type> types = const [
    Gget_detail_serviceData_fetchServiceById_finalities,
    _$Gget_detail_serviceData_fetchServiceById_finalities
  ];
  @override
  final String wireName = 'Gget_detail_serviceData_fetchServiceById_finalities';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_detail_serviceData_fetchServiceById_finalities object,
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
  Gget_detail_serviceData_fetchServiceById_finalities deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_detail_serviceData_fetchServiceById_finalitiesBuilder();

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

class _$Gget_detail_serviceData extends Gget_detail_serviceData {
  @override
  final String G__typename;
  @override
  final Gget_detail_serviceData_fetchServiceById fetchServiceById;

  factory _$Gget_detail_serviceData(
          [void Function(Gget_detail_serviceDataBuilder)? updates]) =>
      (new Gget_detail_serviceDataBuilder()..update(updates))._build();

  _$Gget_detail_serviceData._(
      {required this.G__typename, required this.fetchServiceById})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_detail_serviceData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        fetchServiceById, r'Gget_detail_serviceData', 'fetchServiceById');
  }

  @override
  Gget_detail_serviceData rebuild(
          void Function(Gget_detail_serviceDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_detail_serviceDataBuilder toBuilder() =>
      new Gget_detail_serviceDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_detail_serviceData &&
        G__typename == other.G__typename &&
        fetchServiceById == other.fetchServiceById;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, fetchServiceById.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_detail_serviceData')
          ..add('G__typename', G__typename)
          ..add('fetchServiceById', fetchServiceById))
        .toString();
  }
}

class Gget_detail_serviceDataBuilder
    implements
        Builder<Gget_detail_serviceData, Gget_detail_serviceDataBuilder> {
  _$Gget_detail_serviceData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_detail_serviceData_fetchServiceByIdBuilder? _fetchServiceById;
  Gget_detail_serviceData_fetchServiceByIdBuilder get fetchServiceById =>
      _$this._fetchServiceById ??=
          new Gget_detail_serviceData_fetchServiceByIdBuilder();
  set fetchServiceById(
          Gget_detail_serviceData_fetchServiceByIdBuilder? fetchServiceById) =>
      _$this._fetchServiceById = fetchServiceById;

  Gget_detail_serviceDataBuilder() {
    Gget_detail_serviceData._initializeBuilder(this);
  }

  Gget_detail_serviceDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _fetchServiceById = $v.fetchServiceById.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_detail_serviceData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_detail_serviceData;
  }

  @override
  void update(void Function(Gget_detail_serviceDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_detail_serviceData build() => _build();

  _$Gget_detail_serviceData _build() {
    _$Gget_detail_serviceData _$result;
    try {
      _$result = _$v ??
          new _$Gget_detail_serviceData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_detail_serviceData', 'G__typename'),
              fetchServiceById: fetchServiceById.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fetchServiceById';
        fetchServiceById.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_detail_serviceData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_detail_serviceData_fetchServiceById
    extends Gget_detail_serviceData_fetchServiceById {
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
  final Gget_detail_serviceData_fetchServiceById_editor editor;
  @override
  final Gget_detail_serviceData_fetchServiceById_logo? logo;
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
  final BuiltList<Gget_detail_serviceData_fetchServiceById_screenshots>?
      screenshots;
  @override
  final String? cguUrl;
  @override
  final bool hasEchangeDonnees;
  @override
  final BuiltList<Gget_detail_serviceData_fetchServiceById_finalities>?
      finalities;
  @override
  final String? urlSynchronisation;
  @override
  final _i3.GServiceStatusEnum? status;

  factory _$Gget_detail_serviceData_fetchServiceById(
          [void Function(Gget_detail_serviceData_fetchServiceByIdBuilder)?
              updates]) =>
      (new Gget_detail_serviceData_fetchServiceByIdBuilder()..update(updates))
          ._build();

  _$Gget_detail_serviceData_fetchServiceById._(
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
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_detail_serviceData_fetchServiceById', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gget_detail_serviceData_fetchServiceById', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'Gget_detail_serviceData_fetchServiceById', 'name');
    BuiltValueNullFieldError.checkNotNull(
        editor, r'Gget_detail_serviceData_fetchServiceById', 'editor');
    BuiltValueNullFieldError.checkNotNull(hasEchangeDonnees,
        r'Gget_detail_serviceData_fetchServiceById', 'hasEchangeDonnees');
  }

  @override
  Gget_detail_serviceData_fetchServiceById rebuild(
          void Function(Gget_detail_serviceData_fetchServiceByIdBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_detail_serviceData_fetchServiceByIdBuilder toBuilder() =>
      new Gget_detail_serviceData_fetchServiceByIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_detail_serviceData_fetchServiceById &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_detail_serviceData_fetchServiceById')
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

class Gget_detail_serviceData_fetchServiceByIdBuilder
    implements
        Builder<Gget_detail_serviceData_fetchServiceById,
            Gget_detail_serviceData_fetchServiceByIdBuilder> {
  _$Gget_detail_serviceData_fetchServiceById? _$v;

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

  Gget_detail_serviceData_fetchServiceById_editorBuilder? _editor;
  Gget_detail_serviceData_fetchServiceById_editorBuilder get editor =>
      _$this._editor ??=
          new Gget_detail_serviceData_fetchServiceById_editorBuilder();
  set editor(Gget_detail_serviceData_fetchServiceById_editorBuilder? editor) =>
      _$this._editor = editor;

  Gget_detail_serviceData_fetchServiceById_logoBuilder? _logo;
  Gget_detail_serviceData_fetchServiceById_logoBuilder get logo =>
      _$this._logo ??=
          new Gget_detail_serviceData_fetchServiceById_logoBuilder();
  set logo(Gget_detail_serviceData_fetchServiceById_logoBuilder? logo) =>
      _$this._logo = logo;

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

  ListBuilder<Gget_detail_serviceData_fetchServiceById_screenshots>?
      _screenshots;
  ListBuilder<Gget_detail_serviceData_fetchServiceById_screenshots>
      get screenshots => _$this._screenshots ??= new ListBuilder<
          Gget_detail_serviceData_fetchServiceById_screenshots>();
  set screenshots(
          ListBuilder<Gget_detail_serviceData_fetchServiceById_screenshots>?
              screenshots) =>
      _$this._screenshots = screenshots;

  String? _cguUrl;
  String? get cguUrl => _$this._cguUrl;
  set cguUrl(String? cguUrl) => _$this._cguUrl = cguUrl;

  bool? _hasEchangeDonnees;
  bool? get hasEchangeDonnees => _$this._hasEchangeDonnees;
  set hasEchangeDonnees(bool? hasEchangeDonnees) =>
      _$this._hasEchangeDonnees = hasEchangeDonnees;

  ListBuilder<Gget_detail_serviceData_fetchServiceById_finalities>? _finalities;
  ListBuilder<Gget_detail_serviceData_fetchServiceById_finalities>
      get finalities => _$this._finalities ??= new ListBuilder<
          Gget_detail_serviceData_fetchServiceById_finalities>();
  set finalities(
          ListBuilder<Gget_detail_serviceData_fetchServiceById_finalities>?
              finalities) =>
      _$this._finalities = finalities;

  String? _urlSynchronisation;
  String? get urlSynchronisation => _$this._urlSynchronisation;
  set urlSynchronisation(String? urlSynchronisation) =>
      _$this._urlSynchronisation = urlSynchronisation;

  _i3.GServiceStatusEnum? _status;
  _i3.GServiceStatusEnum? get status => _$this._status;
  set status(_i3.GServiceStatusEnum? status) => _$this._status = status;

  Gget_detail_serviceData_fetchServiceByIdBuilder() {
    Gget_detail_serviceData_fetchServiceById._initializeBuilder(this);
  }

  Gget_detail_serviceData_fetchServiceByIdBuilder get _$this {
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
  void replace(Gget_detail_serviceData_fetchServiceById other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_detail_serviceData_fetchServiceById;
  }

  @override
  void update(
      void Function(Gget_detail_serviceData_fetchServiceByIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_detail_serviceData_fetchServiceById build() => _build();

  _$Gget_detail_serviceData_fetchServiceById _build() {
    _$Gget_detail_serviceData_fetchServiceById _$result;
    try {
      _$result = _$v ??
          new _$Gget_detail_serviceData_fetchServiceById._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_detail_serviceData_fetchServiceById', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gget_detail_serviceData_fetchServiceById', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'Gget_detail_serviceData_fetchServiceById', 'name'),
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
                  r'Gget_detail_serviceData_fetchServiceById',
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
            r'Gget_detail_serviceData_fetchServiceById',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_detail_serviceData_fetchServiceById_editor
    extends Gget_detail_serviceData_fetchServiceById_editor {
  @override
  final String G__typename;
  @override
  final String name;

  factory _$Gget_detail_serviceData_fetchServiceById_editor(
          [void Function(
                  Gget_detail_serviceData_fetchServiceById_editorBuilder)?
              updates]) =>
      (new Gget_detail_serviceData_fetchServiceById_editorBuilder()
            ..update(updates))
          ._build();

  _$Gget_detail_serviceData_fetchServiceById_editor._(
      {required this.G__typename, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_detail_serviceData_fetchServiceById_editor', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'Gget_detail_serviceData_fetchServiceById_editor', 'name');
  }

  @override
  Gget_detail_serviceData_fetchServiceById_editor rebuild(
          void Function(Gget_detail_serviceData_fetchServiceById_editorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_detail_serviceData_fetchServiceById_editorBuilder toBuilder() =>
      new Gget_detail_serviceData_fetchServiceById_editorBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_detail_serviceData_fetchServiceById_editor &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_detail_serviceData_fetchServiceById_editor')
          ..add('G__typename', G__typename)
          ..add('name', name))
        .toString();
  }
}

class Gget_detail_serviceData_fetchServiceById_editorBuilder
    implements
        Builder<Gget_detail_serviceData_fetchServiceById_editor,
            Gget_detail_serviceData_fetchServiceById_editorBuilder> {
  _$Gget_detail_serviceData_fetchServiceById_editor? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  Gget_detail_serviceData_fetchServiceById_editorBuilder() {
    Gget_detail_serviceData_fetchServiceById_editor._initializeBuilder(this);
  }

  Gget_detail_serviceData_fetchServiceById_editorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_detail_serviceData_fetchServiceById_editor other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_detail_serviceData_fetchServiceById_editor;
  }

  @override
  void update(
      void Function(Gget_detail_serviceData_fetchServiceById_editorBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_detail_serviceData_fetchServiceById_editor build() => _build();

  _$Gget_detail_serviceData_fetchServiceById_editor _build() {
    final _$result = _$v ??
        new _$Gget_detail_serviceData_fetchServiceById_editor._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_detail_serviceData_fetchServiceById_editor',
                'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(name,
                r'Gget_detail_serviceData_fetchServiceById_editor', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_detail_serviceData_fetchServiceById_logo
    extends Gget_detail_serviceData_fetchServiceById_logo {
  @override
  final String G__typename;
  @override
  final String? file;
  @override
  final String? type;

  factory _$Gget_detail_serviceData_fetchServiceById_logo(
          [void Function(Gget_detail_serviceData_fetchServiceById_logoBuilder)?
              updates]) =>
      (new Gget_detail_serviceData_fetchServiceById_logoBuilder()
            ..update(updates))
          ._build();

  _$Gget_detail_serviceData_fetchServiceById_logo._(
      {required this.G__typename, this.file, this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_detail_serviceData_fetchServiceById_logo', 'G__typename');
  }

  @override
  Gget_detail_serviceData_fetchServiceById_logo rebuild(
          void Function(Gget_detail_serviceData_fetchServiceById_logoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_detail_serviceData_fetchServiceById_logoBuilder toBuilder() =>
      new Gget_detail_serviceData_fetchServiceById_logoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_detail_serviceData_fetchServiceById_logo &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_detail_serviceData_fetchServiceById_logo')
          ..add('G__typename', G__typename)
          ..add('file', file)
          ..add('type', type))
        .toString();
  }
}

class Gget_detail_serviceData_fetchServiceById_logoBuilder
    implements
        Builder<Gget_detail_serviceData_fetchServiceById_logo,
            Gget_detail_serviceData_fetchServiceById_logoBuilder> {
  _$Gget_detail_serviceData_fetchServiceById_logo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _file;
  String? get file => _$this._file;
  set file(String? file) => _$this._file = file;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  Gget_detail_serviceData_fetchServiceById_logoBuilder() {
    Gget_detail_serviceData_fetchServiceById_logo._initializeBuilder(this);
  }

  Gget_detail_serviceData_fetchServiceById_logoBuilder get _$this {
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
  void replace(Gget_detail_serviceData_fetchServiceById_logo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_detail_serviceData_fetchServiceById_logo;
  }

  @override
  void update(
      void Function(Gget_detail_serviceData_fetchServiceById_logoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_detail_serviceData_fetchServiceById_logo build() => _build();

  _$Gget_detail_serviceData_fetchServiceById_logo _build() {
    final _$result = _$v ??
        new _$Gget_detail_serviceData_fetchServiceById_logo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_detail_serviceData_fetchServiceById_logo',
                'G__typename'),
            file: file,
            type: type);
    replace(_$result);
    return _$result;
  }
}

class _$Gget_detail_serviceData_fetchServiceById_screenshots
    extends Gget_detail_serviceData_fetchServiceById_screenshots {
  @override
  final String G__typename;
  @override
  final String? file;
  @override
  final String? type;

  factory _$Gget_detail_serviceData_fetchServiceById_screenshots(
          [void Function(
                  Gget_detail_serviceData_fetchServiceById_screenshotsBuilder)?
              updates]) =>
      (new Gget_detail_serviceData_fetchServiceById_screenshotsBuilder()
            ..update(updates))
          ._build();

  _$Gget_detail_serviceData_fetchServiceById_screenshots._(
      {required this.G__typename, this.file, this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_detail_serviceData_fetchServiceById_screenshots', 'G__typename');
  }

  @override
  Gget_detail_serviceData_fetchServiceById_screenshots rebuild(
          void Function(
                  Gget_detail_serviceData_fetchServiceById_screenshotsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_detail_serviceData_fetchServiceById_screenshotsBuilder toBuilder() =>
      new Gget_detail_serviceData_fetchServiceById_screenshotsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_detail_serviceData_fetchServiceById_screenshots &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_detail_serviceData_fetchServiceById_screenshots')
          ..add('G__typename', G__typename)
          ..add('file', file)
          ..add('type', type))
        .toString();
  }
}

class Gget_detail_serviceData_fetchServiceById_screenshotsBuilder
    implements
        Builder<Gget_detail_serviceData_fetchServiceById_screenshots,
            Gget_detail_serviceData_fetchServiceById_screenshotsBuilder> {
  _$Gget_detail_serviceData_fetchServiceById_screenshots? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _file;
  String? get file => _$this._file;
  set file(String? file) => _$this._file = file;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  Gget_detail_serviceData_fetchServiceById_screenshotsBuilder() {
    Gget_detail_serviceData_fetchServiceById_screenshots._initializeBuilder(
        this);
  }

  Gget_detail_serviceData_fetchServiceById_screenshotsBuilder get _$this {
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
  void replace(Gget_detail_serviceData_fetchServiceById_screenshots other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_detail_serviceData_fetchServiceById_screenshots;
  }

  @override
  void update(
      void Function(
              Gget_detail_serviceData_fetchServiceById_screenshotsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_detail_serviceData_fetchServiceById_screenshots build() => _build();

  _$Gget_detail_serviceData_fetchServiceById_screenshots _build() {
    final _$result = _$v ??
        new _$Gget_detail_serviceData_fetchServiceById_screenshots._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_detail_serviceData_fetchServiceById_screenshots',
                'G__typename'),
            file: file,
            type: type);
    replace(_$result);
    return _$result;
  }
}

class _$Gget_detail_serviceData_fetchServiceById_finalities
    extends Gget_detail_serviceData_fetchServiceById_finalities {
  @override
  final String G__typename;
  @override
  final String libelle;
  @override
  final String description;
  @override
  final String icone;

  factory _$Gget_detail_serviceData_fetchServiceById_finalities(
          [void Function(
                  Gget_detail_serviceData_fetchServiceById_finalitiesBuilder)?
              updates]) =>
      (new Gget_detail_serviceData_fetchServiceById_finalitiesBuilder()
            ..update(updates))
          ._build();

  _$Gget_detail_serviceData_fetchServiceById_finalities._(
      {required this.G__typename,
      required this.libelle,
      required this.description,
      required this.icone})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_detail_serviceData_fetchServiceById_finalities', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(libelle,
        r'Gget_detail_serviceData_fetchServiceById_finalities', 'libelle');
    BuiltValueNullFieldError.checkNotNull(description,
        r'Gget_detail_serviceData_fetchServiceById_finalities', 'description');
    BuiltValueNullFieldError.checkNotNull(
        icone, r'Gget_detail_serviceData_fetchServiceById_finalities', 'icone');
  }

  @override
  Gget_detail_serviceData_fetchServiceById_finalities rebuild(
          void Function(
                  Gget_detail_serviceData_fetchServiceById_finalitiesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_detail_serviceData_fetchServiceById_finalitiesBuilder toBuilder() =>
      new Gget_detail_serviceData_fetchServiceById_finalitiesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_detail_serviceData_fetchServiceById_finalities &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_detail_serviceData_fetchServiceById_finalities')
          ..add('G__typename', G__typename)
          ..add('libelle', libelle)
          ..add('description', description)
          ..add('icone', icone))
        .toString();
  }
}

class Gget_detail_serviceData_fetchServiceById_finalitiesBuilder
    implements
        Builder<Gget_detail_serviceData_fetchServiceById_finalities,
            Gget_detail_serviceData_fetchServiceById_finalitiesBuilder> {
  _$Gget_detail_serviceData_fetchServiceById_finalities? _$v;

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

  Gget_detail_serviceData_fetchServiceById_finalitiesBuilder() {
    Gget_detail_serviceData_fetchServiceById_finalities._initializeBuilder(
        this);
  }

  Gget_detail_serviceData_fetchServiceById_finalitiesBuilder get _$this {
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
  void replace(Gget_detail_serviceData_fetchServiceById_finalities other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_detail_serviceData_fetchServiceById_finalities;
  }

  @override
  void update(
      void Function(Gget_detail_serviceData_fetchServiceById_finalitiesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_detail_serviceData_fetchServiceById_finalities build() => _build();

  _$Gget_detail_serviceData_fetchServiceById_finalities _build() {
    final _$result = _$v ??
        new _$Gget_detail_serviceData_fetchServiceById_finalities._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_detail_serviceData_fetchServiceById_finalities',
                'G__typename'),
            libelle: BuiltValueNullFieldError.checkNotNull(
                libelle,
                r'Gget_detail_serviceData_fetchServiceById_finalities',
                'libelle'),
            description: BuiltValueNullFieldError.checkNotNull(
                description,
                r'Gget_detail_serviceData_fetchServiceById_finalities',
                'description'),
            icone: BuiltValueNullFieldError.checkNotNull(
                icone,
                r'Gget_detail_serviceData_fetchServiceById_finalities',
                'icone'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
