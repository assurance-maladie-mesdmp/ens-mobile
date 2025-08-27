// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_catalogue_service_get_services_without_synchro.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_services_without_synchroData>
    _$ggetServicesWithoutSynchroDataSerializer =
    new _$Gget_services_without_synchroDataSerializer();
Serializer<Gget_services_without_synchroData_fetchCatalogueServices>
    _$ggetServicesWithoutSynchroDataFetchCatalogueServicesSerializer =
    new _$Gget_services_without_synchroData_fetchCatalogueServicesSerializer();
Serializer<Gget_services_without_synchroData_fetchCatalogueServices_services>
    _$ggetServicesWithoutSynchroDataFetchCatalogueServicesServicesSerializer =
    new _$Gget_services_without_synchroData_fetchCatalogueServices_servicesSerializer();
Serializer<
        Gget_services_without_synchroData_fetchCatalogueServices_services_editor>
    _$ggetServicesWithoutSynchroDataFetchCatalogueServicesServicesEditorSerializer =
    new _$Gget_services_without_synchroData_fetchCatalogueServices_services_editorSerializer();
Serializer<
        Gget_services_without_synchroData_fetchCatalogueServices_services_logo>
    _$ggetServicesWithoutSynchroDataFetchCatalogueServicesServicesLogoSerializer =
    new _$Gget_services_without_synchroData_fetchCatalogueServices_services_logoSerializer();
Serializer<
        Gget_services_without_synchroData_fetchCatalogueServices_services_finalities>
    _$ggetServicesWithoutSynchroDataFetchCatalogueServicesServicesFinalitiesSerializer =
    new _$Gget_services_without_synchroData_fetchCatalogueServices_services_finalitiesSerializer();
Serializer<Gget_services_without_synchroData_fetchCatalogueServices_regions>
    _$ggetServicesWithoutSynchroDataFetchCatalogueServicesRegionsSerializer =
    new _$Gget_services_without_synchroData_fetchCatalogueServices_regionsSerializer();
Serializer<Gget_services_without_synchroData_fetchCatalogueServices_thematics>
    _$ggetServicesWithoutSynchroDataFetchCatalogueServicesThematicsSerializer =
    new _$Gget_services_without_synchroData_fetchCatalogueServices_thematicsSerializer();

class _$Gget_services_without_synchroDataSerializer
    implements StructuredSerializer<Gget_services_without_synchroData> {
  @override
  final Iterable<Type> types = const [
    Gget_services_without_synchroData,
    _$Gget_services_without_synchroData
  ];
  @override
  final String wireName = 'Gget_services_without_synchroData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_services_without_synchroData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'fetchCatalogueServices',
      serializers.serialize(object.fetchCatalogueServices,
          specifiedType: const FullType(
              Gget_services_without_synchroData_fetchCatalogueServices)),
    ];

    return result;
  }

  @override
  Gget_services_without_synchroData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_services_without_synchroDataBuilder();

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
        case 'fetchCatalogueServices':
          result.fetchCatalogueServices.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_services_without_synchroData_fetchCatalogueServices))!
              as Gget_services_without_synchroData_fetchCatalogueServices);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_services_without_synchroData_fetchCatalogueServicesSerializer
    implements
        StructuredSerializer<
            Gget_services_without_synchroData_fetchCatalogueServices> {
  @override
  final Iterable<Type> types = const [
    Gget_services_without_synchroData_fetchCatalogueServices,
    _$Gget_services_without_synchroData_fetchCatalogueServices
  ];
  @override
  final String wireName =
      'Gget_services_without_synchroData_fetchCatalogueServices';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_services_without_synchroData_fetchCatalogueServices object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'services',
      serializers.serialize(object.services,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_services_without_synchroData_fetchCatalogueServices_services)
          ])),
      'regions',
      serializers.serialize(object.regions,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_services_without_synchroData_fetchCatalogueServices_regions)
          ])),
      'thematics',
      serializers.serialize(object.thematics,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_services_without_synchroData_fetchCatalogueServices_thematics)
          ])),
    ];

    return result;
  }

  @override
  Gget_services_without_synchroData_fetchCatalogueServices deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_services_without_synchroData_fetchCatalogueServicesBuilder();

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
        case 'services':
          result.services.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_services_without_synchroData_fetchCatalogueServices_services)
              ]))! as BuiltList<Object?>);
          break;
        case 'regions':
          result.regions.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_services_without_synchroData_fetchCatalogueServices_regions)
              ]))! as BuiltList<Object?>);
          break;
        case 'thematics':
          result.thematics.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_services_without_synchroData_fetchCatalogueServices_thematics)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_services_without_synchroData_fetchCatalogueServices_servicesSerializer
    implements
        StructuredSerializer<
            Gget_services_without_synchroData_fetchCatalogueServices_services> {
  @override
  final Iterable<Type> types = const [
    Gget_services_without_synchroData_fetchCatalogueServices_services,
    _$Gget_services_without_synchroData_fetchCatalogueServices_services
  ];
  @override
  final String wireName =
      'Gget_services_without_synchroData_fetchCatalogueServices_services';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_services_without_synchroData_fetchCatalogueServices_services object,
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
          specifiedType: const FullType(
              Gget_services_without_synchroData_fetchCatalogueServices_services_editor)),
      'codesRegions',
      serializers.serialize(object.codesRegions,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'thematics',
      serializers.serialize(object.thematics,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    Object? value;
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.logo;
    if (value != null) {
      result
        ..add('logo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_services_without_synchroData_fetchCatalogueServices_services_logo)));
    }
    value = object.finalities;
    if (value != null) {
      result
        ..add('finalities')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_services_without_synchroData_fetchCatalogueServices_services_finalities)
            ])));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GServiceStatusEnum)));
    }
    value = object.cguUrl;
    if (value != null) {
      result
        ..add('cguUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_services_without_synchroData_fetchCatalogueServices_services deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_services_without_synchroData_fetchCatalogueServices_servicesBuilder();

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
        case 'editor':
          result.editor.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_services_without_synchroData_fetchCatalogueServices_services_editor))!
              as Gget_services_without_synchroData_fetchCatalogueServices_services_editor);
          break;
        case 'logo':
          result.logo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_services_without_synchroData_fetchCatalogueServices_services_logo))!
              as Gget_services_without_synchroData_fetchCatalogueServices_services_logo);
          break;
        case 'finalities':
          result.finalities.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_services_without_synchroData_fetchCatalogueServices_services_finalities)
              ]))! as BuiltList<Object?>);
          break;
        case 'codesRegions':
          result.codesRegions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'thematics':
          result.thematics.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GServiceStatusEnum))
              as _i3.GServiceStatusEnum?;
          break;
        case 'cguUrl':
          result.cguUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_services_without_synchroData_fetchCatalogueServices_services_editorSerializer
    implements
        StructuredSerializer<
            Gget_services_without_synchroData_fetchCatalogueServices_services_editor> {
  @override
  final Iterable<Type> types = const [
    Gget_services_without_synchroData_fetchCatalogueServices_services_editor,
    _$Gget_services_without_synchroData_fetchCatalogueServices_services_editor
  ];
  @override
  final String wireName =
      'Gget_services_without_synchroData_fetchCatalogueServices_services_editor';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_services_without_synchroData_fetchCatalogueServices_services_editor
          object,
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
  Gget_services_without_synchroData_fetchCatalogueServices_services_editor
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_services_without_synchroData_fetchCatalogueServices_services_editorBuilder();

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

class _$Gget_services_without_synchroData_fetchCatalogueServices_services_logoSerializer
    implements
        StructuredSerializer<
            Gget_services_without_synchroData_fetchCatalogueServices_services_logo> {
  @override
  final Iterable<Type> types = const [
    Gget_services_without_synchroData_fetchCatalogueServices_services_logo,
    _$Gget_services_without_synchroData_fetchCatalogueServices_services_logo
  ];
  @override
  final String wireName =
      'Gget_services_without_synchroData_fetchCatalogueServices_services_logo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_services_without_synchroData_fetchCatalogueServices_services_logo
          object,
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
  Gget_services_without_synchroData_fetchCatalogueServices_services_logo
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_services_without_synchroData_fetchCatalogueServices_services_logoBuilder();

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

class _$Gget_services_without_synchroData_fetchCatalogueServices_services_finalitiesSerializer
    implements
        StructuredSerializer<
            Gget_services_without_synchroData_fetchCatalogueServices_services_finalities> {
  @override
  final Iterable<Type> types = const [
    Gget_services_without_synchroData_fetchCatalogueServices_services_finalities,
    _$Gget_services_without_synchroData_fetchCatalogueServices_services_finalities
  ];
  @override
  final String wireName =
      'Gget_services_without_synchroData_fetchCatalogueServices_services_finalities';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_services_without_synchroData_fetchCatalogueServices_services_finalities
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'icone',
      serializers.serialize(object.icone,
          specifiedType: const FullType(String)),
      'libelle',
      serializers.serialize(object.libelle,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_services_without_synchroData_fetchCatalogueServices_services_finalities
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_services_without_synchroData_fetchCatalogueServices_services_finalitiesBuilder();

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
        case 'icone':
          result.icone = serializers.deserialize(value,
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
      }
    }

    return result.build();
  }
}

class _$Gget_services_without_synchroData_fetchCatalogueServices_regionsSerializer
    implements
        StructuredSerializer<
            Gget_services_without_synchroData_fetchCatalogueServices_regions> {
  @override
  final Iterable<Type> types = const [
    Gget_services_without_synchroData_fetchCatalogueServices_regions,
    _$Gget_services_without_synchroData_fetchCatalogueServices_regions
  ];
  @override
  final String wireName =
      'Gget_services_without_synchroData_fetchCatalogueServices_regions';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_services_without_synchroData_fetchCatalogueServices_regions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_services_without_synchroData_fetchCatalogueServices_regions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_services_without_synchroData_fetchCatalogueServices_regionsBuilder();

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
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_services_without_synchroData_fetchCatalogueServices_thematicsSerializer
    implements
        StructuredSerializer<
            Gget_services_without_synchroData_fetchCatalogueServices_thematics> {
  @override
  final Iterable<Type> types = const [
    Gget_services_without_synchroData_fetchCatalogueServices_thematics,
    _$Gget_services_without_synchroData_fetchCatalogueServices_thematics
  ];
  @override
  final String wireName =
      'Gget_services_without_synchroData_fetchCatalogueServices_thematics';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_services_without_synchroData_fetchCatalogueServices_thematics object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_services_without_synchroData_fetchCatalogueServices_thematics
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_services_without_synchroData_fetchCatalogueServices_thematicsBuilder();

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
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_services_without_synchroData
    extends Gget_services_without_synchroData {
  @override
  final String G__typename;
  @override
  final Gget_services_without_synchroData_fetchCatalogueServices
      fetchCatalogueServices;

  factory _$Gget_services_without_synchroData(
          [void Function(Gget_services_without_synchroDataBuilder)? updates]) =>
      (new Gget_services_without_synchroDataBuilder()..update(updates))
          ._build();

  _$Gget_services_without_synchroData._(
      {required this.G__typename, required this.fetchCatalogueServices})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_services_without_synchroData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(fetchCatalogueServices,
        r'Gget_services_without_synchroData', 'fetchCatalogueServices');
  }

  @override
  Gget_services_without_synchroData rebuild(
          void Function(Gget_services_without_synchroDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_services_without_synchroDataBuilder toBuilder() =>
      new Gget_services_without_synchroDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_services_without_synchroData &&
        G__typename == other.G__typename &&
        fetchCatalogueServices == other.fetchCatalogueServices;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, fetchCatalogueServices.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_services_without_synchroData')
          ..add('G__typename', G__typename)
          ..add('fetchCatalogueServices', fetchCatalogueServices))
        .toString();
  }
}

class Gget_services_without_synchroDataBuilder
    implements
        Builder<Gget_services_without_synchroData,
            Gget_services_without_synchroDataBuilder> {
  _$Gget_services_without_synchroData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_services_without_synchroData_fetchCatalogueServicesBuilder?
      _fetchCatalogueServices;
  Gget_services_without_synchroData_fetchCatalogueServicesBuilder
      get fetchCatalogueServices => _$this._fetchCatalogueServices ??=
          new Gget_services_without_synchroData_fetchCatalogueServicesBuilder();
  set fetchCatalogueServices(
          Gget_services_without_synchroData_fetchCatalogueServicesBuilder?
              fetchCatalogueServices) =>
      _$this._fetchCatalogueServices = fetchCatalogueServices;

  Gget_services_without_synchroDataBuilder() {
    Gget_services_without_synchroData._initializeBuilder(this);
  }

  Gget_services_without_synchroDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _fetchCatalogueServices = $v.fetchCatalogueServices.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_services_without_synchroData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_services_without_synchroData;
  }

  @override
  void update(
      void Function(Gget_services_without_synchroDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_services_without_synchroData build() => _build();

  _$Gget_services_without_synchroData _build() {
    _$Gget_services_without_synchroData _$result;
    try {
      _$result = _$v ??
          new _$Gget_services_without_synchroData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_services_without_synchroData', 'G__typename'),
              fetchCatalogueServices: fetchCatalogueServices.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fetchCatalogueServices';
        fetchCatalogueServices.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_services_without_synchroData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_services_without_synchroData_fetchCatalogueServices
    extends Gget_services_without_synchroData_fetchCatalogueServices {
  @override
  final String G__typename;
  @override
  final BuiltList<
          Gget_services_without_synchroData_fetchCatalogueServices_services>
      services;
  @override
  final BuiltList<
      Gget_services_without_synchroData_fetchCatalogueServices_regions> regions;
  @override
  final BuiltList<
          Gget_services_without_synchroData_fetchCatalogueServices_thematics>
      thematics;

  factory _$Gget_services_without_synchroData_fetchCatalogueServices(
          [void Function(
                  Gget_services_without_synchroData_fetchCatalogueServicesBuilder)?
              updates]) =>
      (new Gget_services_without_synchroData_fetchCatalogueServicesBuilder()
            ..update(updates))
          ._build();

  _$Gget_services_without_synchroData_fetchCatalogueServices._(
      {required this.G__typename,
      required this.services,
      required this.regions,
      required this.thematics})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_services_without_synchroData_fetchCatalogueServices',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        services,
        r'Gget_services_without_synchroData_fetchCatalogueServices',
        'services');
    BuiltValueNullFieldError.checkNotNull(regions,
        r'Gget_services_without_synchroData_fetchCatalogueServices', 'regions');
    BuiltValueNullFieldError.checkNotNull(
        thematics,
        r'Gget_services_without_synchroData_fetchCatalogueServices',
        'thematics');
  }

  @override
  Gget_services_without_synchroData_fetchCatalogueServices rebuild(
          void Function(
                  Gget_services_without_synchroData_fetchCatalogueServicesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_services_without_synchroData_fetchCatalogueServicesBuilder toBuilder() =>
      new Gget_services_without_synchroData_fetchCatalogueServicesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_services_without_synchroData_fetchCatalogueServices &&
        G__typename == other.G__typename &&
        services == other.services &&
        regions == other.regions &&
        thematics == other.thematics;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, services.hashCode);
    _$hash = $jc(_$hash, regions.hashCode);
    _$hash = $jc(_$hash, thematics.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_services_without_synchroData_fetchCatalogueServices')
          ..add('G__typename', G__typename)
          ..add('services', services)
          ..add('regions', regions)
          ..add('thematics', thematics))
        .toString();
  }
}

class Gget_services_without_synchroData_fetchCatalogueServicesBuilder
    implements
        Builder<Gget_services_without_synchroData_fetchCatalogueServices,
            Gget_services_without_synchroData_fetchCatalogueServicesBuilder> {
  _$Gget_services_without_synchroData_fetchCatalogueServices? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<
          Gget_services_without_synchroData_fetchCatalogueServices_services>?
      _services;
  ListBuilder<Gget_services_without_synchroData_fetchCatalogueServices_services>
      get services => _$this._services ??= new ListBuilder<
          Gget_services_without_synchroData_fetchCatalogueServices_services>();
  set services(
          ListBuilder<
                  Gget_services_without_synchroData_fetchCatalogueServices_services>?
              services) =>
      _$this._services = services;

  ListBuilder<Gget_services_without_synchroData_fetchCatalogueServices_regions>?
      _regions;
  ListBuilder<Gget_services_without_synchroData_fetchCatalogueServices_regions>
      get regions => _$this._regions ??= new ListBuilder<
          Gget_services_without_synchroData_fetchCatalogueServices_regions>();
  set regions(
          ListBuilder<
                  Gget_services_without_synchroData_fetchCatalogueServices_regions>?
              regions) =>
      _$this._regions = regions;

  ListBuilder<
          Gget_services_without_synchroData_fetchCatalogueServices_thematics>?
      _thematics;
  ListBuilder<
          Gget_services_without_synchroData_fetchCatalogueServices_thematics>
      get thematics => _$this._thematics ??= new ListBuilder<
          Gget_services_without_synchroData_fetchCatalogueServices_thematics>();
  set thematics(
          ListBuilder<
                  Gget_services_without_synchroData_fetchCatalogueServices_thematics>?
              thematics) =>
      _$this._thematics = thematics;

  Gget_services_without_synchroData_fetchCatalogueServicesBuilder() {
    Gget_services_without_synchroData_fetchCatalogueServices._initializeBuilder(
        this);
  }

  Gget_services_without_synchroData_fetchCatalogueServicesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _services = $v.services.toBuilder();
      _regions = $v.regions.toBuilder();
      _thematics = $v.thematics.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_services_without_synchroData_fetchCatalogueServices other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_services_without_synchroData_fetchCatalogueServices;
  }

  @override
  void update(
      void Function(
              Gget_services_without_synchroData_fetchCatalogueServicesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_services_without_synchroData_fetchCatalogueServices build() => _build();

  _$Gget_services_without_synchroData_fetchCatalogueServices _build() {
    _$Gget_services_without_synchroData_fetchCatalogueServices _$result;
    try {
      _$result = _$v ??
          new _$Gget_services_without_synchroData_fetchCatalogueServices._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_services_without_synchroData_fetchCatalogueServices',
                  'G__typename'),
              services: services.build(),
              regions: regions.build(),
              thematics: thematics.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'services';
        services.build();
        _$failedField = 'regions';
        regions.build();
        _$failedField = 'thematics';
        thematics.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_services_without_synchroData_fetchCatalogueServices',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_services_without_synchroData_fetchCatalogueServices_services
    extends Gget_services_without_synchroData_fetchCatalogueServices_services {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final Gget_services_without_synchroData_fetchCatalogueServices_services_editor
      editor;
  @override
  final Gget_services_without_synchroData_fetchCatalogueServices_services_logo?
      logo;
  @override
  final BuiltList<
          Gget_services_without_synchroData_fetchCatalogueServices_services_finalities>?
      finalities;
  @override
  final BuiltList<String> codesRegions;
  @override
  final BuiltList<String> thematics;
  @override
  final _i3.GServiceStatusEnum? status;
  @override
  final String? cguUrl;

  factory _$Gget_services_without_synchroData_fetchCatalogueServices_services(
          [void Function(
                  Gget_services_without_synchroData_fetchCatalogueServices_servicesBuilder)?
              updates]) =>
      (new Gget_services_without_synchroData_fetchCatalogueServices_servicesBuilder()
            ..update(updates))
          ._build();

  _$Gget_services_without_synchroData_fetchCatalogueServices_services._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.description,
      required this.editor,
      this.logo,
      this.finalities,
      required this.codesRegions,
      required this.thematics,
      this.status,
      this.cguUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_services_without_synchroData_fetchCatalogueServices_services',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gget_services_without_synchroData_fetchCatalogueServices_services',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'Gget_services_without_synchroData_fetchCatalogueServices_services',
        'name');
    BuiltValueNullFieldError.checkNotNull(
        editor,
        r'Gget_services_without_synchroData_fetchCatalogueServices_services',
        'editor');
    BuiltValueNullFieldError.checkNotNull(
        codesRegions,
        r'Gget_services_without_synchroData_fetchCatalogueServices_services',
        'codesRegions');
    BuiltValueNullFieldError.checkNotNull(
        thematics,
        r'Gget_services_without_synchroData_fetchCatalogueServices_services',
        'thematics');
  }

  @override
  Gget_services_without_synchroData_fetchCatalogueServices_services rebuild(
          void Function(
                  Gget_services_without_synchroData_fetchCatalogueServices_servicesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_services_without_synchroData_fetchCatalogueServices_servicesBuilder
      toBuilder() =>
          new Gget_services_without_synchroData_fetchCatalogueServices_servicesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_services_without_synchroData_fetchCatalogueServices_services &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        editor == other.editor &&
        logo == other.logo &&
        finalities == other.finalities &&
        codesRegions == other.codesRegions &&
        thematics == other.thematics &&
        status == other.status &&
        cguUrl == other.cguUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, editor.hashCode);
    _$hash = $jc(_$hash, logo.hashCode);
    _$hash = $jc(_$hash, finalities.hashCode);
    _$hash = $jc(_$hash, codesRegions.hashCode);
    _$hash = $jc(_$hash, thematics.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, cguUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_services_without_synchroData_fetchCatalogueServices_services')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('editor', editor)
          ..add('logo', logo)
          ..add('finalities', finalities)
          ..add('codesRegions', codesRegions)
          ..add('thematics', thematics)
          ..add('status', status)
          ..add('cguUrl', cguUrl))
        .toString();
  }
}

class Gget_services_without_synchroData_fetchCatalogueServices_servicesBuilder
    implements
        Builder<
            Gget_services_without_synchroData_fetchCatalogueServices_services,
            Gget_services_without_synchroData_fetchCatalogueServices_servicesBuilder> {
  _$Gget_services_without_synchroData_fetchCatalogueServices_services? _$v;

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

  Gget_services_without_synchroData_fetchCatalogueServices_services_editorBuilder?
      _editor;
  Gget_services_without_synchroData_fetchCatalogueServices_services_editorBuilder
      get editor => _$this._editor ??=
          new Gget_services_without_synchroData_fetchCatalogueServices_services_editorBuilder();
  set editor(
          Gget_services_without_synchroData_fetchCatalogueServices_services_editorBuilder?
              editor) =>
      _$this._editor = editor;

  Gget_services_without_synchroData_fetchCatalogueServices_services_logoBuilder?
      _logo;
  Gget_services_without_synchroData_fetchCatalogueServices_services_logoBuilder
      get logo => _$this._logo ??=
          new Gget_services_without_synchroData_fetchCatalogueServices_services_logoBuilder();
  set logo(
          Gget_services_without_synchroData_fetchCatalogueServices_services_logoBuilder?
              logo) =>
      _$this._logo = logo;

  ListBuilder<
          Gget_services_without_synchroData_fetchCatalogueServices_services_finalities>?
      _finalities;
  ListBuilder<
          Gget_services_without_synchroData_fetchCatalogueServices_services_finalities>
      get finalities => _$this._finalities ??= new ListBuilder<
          Gget_services_without_synchroData_fetchCatalogueServices_services_finalities>();
  set finalities(
          ListBuilder<
                  Gget_services_without_synchroData_fetchCatalogueServices_services_finalities>?
              finalities) =>
      _$this._finalities = finalities;

  ListBuilder<String>? _codesRegions;
  ListBuilder<String> get codesRegions =>
      _$this._codesRegions ??= new ListBuilder<String>();
  set codesRegions(ListBuilder<String>? codesRegions) =>
      _$this._codesRegions = codesRegions;

  ListBuilder<String>? _thematics;
  ListBuilder<String> get thematics =>
      _$this._thematics ??= new ListBuilder<String>();
  set thematics(ListBuilder<String>? thematics) =>
      _$this._thematics = thematics;

  _i3.GServiceStatusEnum? _status;
  _i3.GServiceStatusEnum? get status => _$this._status;
  set status(_i3.GServiceStatusEnum? status) => _$this._status = status;

  String? _cguUrl;
  String? get cguUrl => _$this._cguUrl;
  set cguUrl(String? cguUrl) => _$this._cguUrl = cguUrl;

  Gget_services_without_synchroData_fetchCatalogueServices_servicesBuilder() {
    Gget_services_without_synchroData_fetchCatalogueServices_services
        ._initializeBuilder(this);
  }

  Gget_services_without_synchroData_fetchCatalogueServices_servicesBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _editor = $v.editor.toBuilder();
      _logo = $v.logo?.toBuilder();
      _finalities = $v.finalities?.toBuilder();
      _codesRegions = $v.codesRegions.toBuilder();
      _thematics = $v.thematics.toBuilder();
      _status = $v.status;
      _cguUrl = $v.cguUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_services_without_synchroData_fetchCatalogueServices_services other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_services_without_synchroData_fetchCatalogueServices_services;
  }

  @override
  void update(
      void Function(
              Gget_services_without_synchroData_fetchCatalogueServices_servicesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_services_without_synchroData_fetchCatalogueServices_services build() =>
      _build();

  _$Gget_services_without_synchroData_fetchCatalogueServices_services _build() {
    _$Gget_services_without_synchroData_fetchCatalogueServices_services
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_services_without_synchroData_fetchCatalogueServices_services._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_services_without_synchroData_fetchCatalogueServices_services',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(id,
                  r'Gget_services_without_synchroData_fetchCatalogueServices_services', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name,
                  r'Gget_services_without_synchroData_fetchCatalogueServices_services',
                  'name'),
              description: description,
              editor: editor.build(),
              logo: _logo?.build(),
              finalities: _finalities?.build(),
              codesRegions: codesRegions.build(),
              thematics: thematics.build(),
              status: status,
              cguUrl: cguUrl);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'editor';
        editor.build();
        _$failedField = 'logo';
        _logo?.build();
        _$failedField = 'finalities';
        _finalities?.build();
        _$failedField = 'codesRegions';
        codesRegions.build();
        _$failedField = 'thematics';
        thematics.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_services_without_synchroData_fetchCatalogueServices_services',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_services_without_synchroData_fetchCatalogueServices_services_editor
    extends Gget_services_without_synchroData_fetchCatalogueServices_services_editor {
  @override
  final String G__typename;
  @override
  final String name;

  factory _$Gget_services_without_synchroData_fetchCatalogueServices_services_editor(
          [void Function(
                  Gget_services_without_synchroData_fetchCatalogueServices_services_editorBuilder)?
              updates]) =>
      (new Gget_services_without_synchroData_fetchCatalogueServices_services_editorBuilder()
            ..update(updates))
          ._build();

  _$Gget_services_without_synchroData_fetchCatalogueServices_services_editor._(
      {required this.G__typename, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_services_without_synchroData_fetchCatalogueServices_services_editor',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'Gget_services_without_synchroData_fetchCatalogueServices_services_editor',
        'name');
  }

  @override
  Gget_services_without_synchroData_fetchCatalogueServices_services_editor rebuild(
          void Function(
                  Gget_services_without_synchroData_fetchCatalogueServices_services_editorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_services_without_synchroData_fetchCatalogueServices_services_editorBuilder
      toBuilder() =>
          new Gget_services_without_synchroData_fetchCatalogueServices_services_editorBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_services_without_synchroData_fetchCatalogueServices_services_editor &&
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
            r'Gget_services_without_synchroData_fetchCatalogueServices_services_editor')
          ..add('G__typename', G__typename)
          ..add('name', name))
        .toString();
  }
}

class Gget_services_without_synchroData_fetchCatalogueServices_services_editorBuilder
    implements
        Builder<
            Gget_services_without_synchroData_fetchCatalogueServices_services_editor,
            Gget_services_without_synchroData_fetchCatalogueServices_services_editorBuilder> {
  _$Gget_services_without_synchroData_fetchCatalogueServices_services_editor?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  Gget_services_without_synchroData_fetchCatalogueServices_services_editorBuilder() {
    Gget_services_without_synchroData_fetchCatalogueServices_services_editor
        ._initializeBuilder(this);
  }

  Gget_services_without_synchroData_fetchCatalogueServices_services_editorBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_services_without_synchroData_fetchCatalogueServices_services_editor
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_services_without_synchroData_fetchCatalogueServices_services_editor;
  }

  @override
  void update(
      void Function(
              Gget_services_without_synchroData_fetchCatalogueServices_services_editorBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_services_without_synchroData_fetchCatalogueServices_services_editor
      build() => _build();

  _$Gget_services_without_synchroData_fetchCatalogueServices_services_editor
      _build() {
    final _$result = _$v ??
        new _$Gget_services_without_synchroData_fetchCatalogueServices_services_editor
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_services_without_synchroData_fetchCatalogueServices_services_editor',
                'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'Gget_services_without_synchroData_fetchCatalogueServices_services_editor',
                'name'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_services_without_synchroData_fetchCatalogueServices_services_logo
    extends Gget_services_without_synchroData_fetchCatalogueServices_services_logo {
  @override
  final String G__typename;
  @override
  final String? file;
  @override
  final String? type;

  factory _$Gget_services_without_synchroData_fetchCatalogueServices_services_logo(
          [void Function(
                  Gget_services_without_synchroData_fetchCatalogueServices_services_logoBuilder)?
              updates]) =>
      (new Gget_services_without_synchroData_fetchCatalogueServices_services_logoBuilder()
            ..update(updates))
          ._build();

  _$Gget_services_without_synchroData_fetchCatalogueServices_services_logo._(
      {required this.G__typename, this.file, this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_services_without_synchroData_fetchCatalogueServices_services_logo',
        'G__typename');
  }

  @override
  Gget_services_without_synchroData_fetchCatalogueServices_services_logo rebuild(
          void Function(
                  Gget_services_without_synchroData_fetchCatalogueServices_services_logoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_services_without_synchroData_fetchCatalogueServices_services_logoBuilder
      toBuilder() =>
          new Gget_services_without_synchroData_fetchCatalogueServices_services_logoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_services_without_synchroData_fetchCatalogueServices_services_logo &&
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
            r'Gget_services_without_synchroData_fetchCatalogueServices_services_logo')
          ..add('G__typename', G__typename)
          ..add('file', file)
          ..add('type', type))
        .toString();
  }
}

class Gget_services_without_synchroData_fetchCatalogueServices_services_logoBuilder
    implements
        Builder<
            Gget_services_without_synchroData_fetchCatalogueServices_services_logo,
            Gget_services_without_synchroData_fetchCatalogueServices_services_logoBuilder> {
  _$Gget_services_without_synchroData_fetchCatalogueServices_services_logo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _file;
  String? get file => _$this._file;
  set file(String? file) => _$this._file = file;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  Gget_services_without_synchroData_fetchCatalogueServices_services_logoBuilder() {
    Gget_services_without_synchroData_fetchCatalogueServices_services_logo
        ._initializeBuilder(this);
  }

  Gget_services_without_synchroData_fetchCatalogueServices_services_logoBuilder
      get _$this {
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
  void replace(
      Gget_services_without_synchroData_fetchCatalogueServices_services_logo
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_services_without_synchroData_fetchCatalogueServices_services_logo;
  }

  @override
  void update(
      void Function(
              Gget_services_without_synchroData_fetchCatalogueServices_services_logoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_services_without_synchroData_fetchCatalogueServices_services_logo
      build() => _build();

  _$Gget_services_without_synchroData_fetchCatalogueServices_services_logo
      _build() {
    final _$result = _$v ??
        new _$Gget_services_without_synchroData_fetchCatalogueServices_services_logo
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_services_without_synchroData_fetchCatalogueServices_services_logo',
                'G__typename'),
            file: file,
            type: type);
    replace(_$result);
    return _$result;
  }
}

class _$Gget_services_without_synchroData_fetchCatalogueServices_services_finalities
    extends Gget_services_without_synchroData_fetchCatalogueServices_services_finalities {
  @override
  final String G__typename;
  @override
  final String icone;
  @override
  final String libelle;
  @override
  final String description;

  factory _$Gget_services_without_synchroData_fetchCatalogueServices_services_finalities(
          [void Function(
                  Gget_services_without_synchroData_fetchCatalogueServices_services_finalitiesBuilder)?
              updates]) =>
      (new Gget_services_without_synchroData_fetchCatalogueServices_services_finalitiesBuilder()
            ..update(updates))
          ._build();

  _$Gget_services_without_synchroData_fetchCatalogueServices_services_finalities._(
      {required this.G__typename,
      required this.icone,
      required this.libelle,
      required this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_services_without_synchroData_fetchCatalogueServices_services_finalities',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        icone,
        r'Gget_services_without_synchroData_fetchCatalogueServices_services_finalities',
        'icone');
    BuiltValueNullFieldError.checkNotNull(
        libelle,
        r'Gget_services_without_synchroData_fetchCatalogueServices_services_finalities',
        'libelle');
    BuiltValueNullFieldError.checkNotNull(
        description,
        r'Gget_services_without_synchroData_fetchCatalogueServices_services_finalities',
        'description');
  }

  @override
  Gget_services_without_synchroData_fetchCatalogueServices_services_finalities
      rebuild(
              void Function(
                      Gget_services_without_synchroData_fetchCatalogueServices_services_finalitiesBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_services_without_synchroData_fetchCatalogueServices_services_finalitiesBuilder
      toBuilder() =>
          new Gget_services_without_synchroData_fetchCatalogueServices_services_finalitiesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_services_without_synchroData_fetchCatalogueServices_services_finalities &&
        G__typename == other.G__typename &&
        icone == other.icone &&
        libelle == other.libelle &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, icone.hashCode);
    _$hash = $jc(_$hash, libelle.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_services_without_synchroData_fetchCatalogueServices_services_finalities')
          ..add('G__typename', G__typename)
          ..add('icone', icone)
          ..add('libelle', libelle)
          ..add('description', description))
        .toString();
  }
}

class Gget_services_without_synchroData_fetchCatalogueServices_services_finalitiesBuilder
    implements
        Builder<
            Gget_services_without_synchroData_fetchCatalogueServices_services_finalities,
            Gget_services_without_synchroData_fetchCatalogueServices_services_finalitiesBuilder> {
  _$Gget_services_without_synchroData_fetchCatalogueServices_services_finalities?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _icone;
  String? get icone => _$this._icone;
  set icone(String? icone) => _$this._icone = icone;

  String? _libelle;
  String? get libelle => _$this._libelle;
  set libelle(String? libelle) => _$this._libelle = libelle;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  Gget_services_without_synchroData_fetchCatalogueServices_services_finalitiesBuilder() {
    Gget_services_without_synchroData_fetchCatalogueServices_services_finalities
        ._initializeBuilder(this);
  }

  Gget_services_without_synchroData_fetchCatalogueServices_services_finalitiesBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _icone = $v.icone;
      _libelle = $v.libelle;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_services_without_synchroData_fetchCatalogueServices_services_finalities
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_services_without_synchroData_fetchCatalogueServices_services_finalities;
  }

  @override
  void update(
      void Function(
              Gget_services_without_synchroData_fetchCatalogueServices_services_finalitiesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_services_without_synchroData_fetchCatalogueServices_services_finalities
      build() => _build();

  _$Gget_services_without_synchroData_fetchCatalogueServices_services_finalities
      _build() {
    final _$result = _$v ??
        new _$Gget_services_without_synchroData_fetchCatalogueServices_services_finalities._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_services_without_synchroData_fetchCatalogueServices_services_finalities',
                'G__typename'),
            icone: BuiltValueNullFieldError.checkNotNull(
                icone,
                r'Gget_services_without_synchroData_fetchCatalogueServices_services_finalities',
                'icone'),
            libelle: BuiltValueNullFieldError.checkNotNull(
                libelle,
                r'Gget_services_without_synchroData_fetchCatalogueServices_services_finalities',
                'libelle'),
            description: BuiltValueNullFieldError.checkNotNull(
                description,
                r'Gget_services_without_synchroData_fetchCatalogueServices_services_finalities',
                'description'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_services_without_synchroData_fetchCatalogueServices_regions
    extends Gget_services_without_synchroData_fetchCatalogueServices_regions {
  @override
  final String G__typename;
  @override
  final String code;
  @override
  final String label;

  factory _$Gget_services_without_synchroData_fetchCatalogueServices_regions(
          [void Function(
                  Gget_services_without_synchroData_fetchCatalogueServices_regionsBuilder)?
              updates]) =>
      (new Gget_services_without_synchroData_fetchCatalogueServices_regionsBuilder()
            ..update(updates))
          ._build();

  _$Gget_services_without_synchroData_fetchCatalogueServices_regions._(
      {required this.G__typename, required this.code, required this.label})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_services_without_synchroData_fetchCatalogueServices_regions',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        code,
        r'Gget_services_without_synchroData_fetchCatalogueServices_regions',
        'code');
    BuiltValueNullFieldError.checkNotNull(
        label,
        r'Gget_services_without_synchroData_fetchCatalogueServices_regions',
        'label');
  }

  @override
  Gget_services_without_synchroData_fetchCatalogueServices_regions rebuild(
          void Function(
                  Gget_services_without_synchroData_fetchCatalogueServices_regionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_services_without_synchroData_fetchCatalogueServices_regionsBuilder
      toBuilder() =>
          new Gget_services_without_synchroData_fetchCatalogueServices_regionsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_services_without_synchroData_fetchCatalogueServices_regions &&
        G__typename == other.G__typename &&
        code == other.code &&
        label == other.label;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_services_without_synchroData_fetchCatalogueServices_regions')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('label', label))
        .toString();
  }
}

class Gget_services_without_synchroData_fetchCatalogueServices_regionsBuilder
    implements
        Builder<
            Gget_services_without_synchroData_fetchCatalogueServices_regions,
            Gget_services_without_synchroData_fetchCatalogueServices_regionsBuilder> {
  _$Gget_services_without_synchroData_fetchCatalogueServices_regions? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  Gget_services_without_synchroData_fetchCatalogueServices_regionsBuilder() {
    Gget_services_without_synchroData_fetchCatalogueServices_regions
        ._initializeBuilder(this);
  }

  Gget_services_without_synchroData_fetchCatalogueServices_regionsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _code = $v.code;
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_services_without_synchroData_fetchCatalogueServices_regions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_services_without_synchroData_fetchCatalogueServices_regions;
  }

  @override
  void update(
      void Function(
              Gget_services_without_synchroData_fetchCatalogueServices_regionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_services_without_synchroData_fetchCatalogueServices_regions build() =>
      _build();

  _$Gget_services_without_synchroData_fetchCatalogueServices_regions _build() {
    final _$result = _$v ??
        new _$Gget_services_without_synchroData_fetchCatalogueServices_regions
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_services_without_synchroData_fetchCatalogueServices_regions',
                'G__typename'),
            code: BuiltValueNullFieldError.checkNotNull(
                code,
                r'Gget_services_without_synchroData_fetchCatalogueServices_regions',
                'code'),
            label: BuiltValueNullFieldError.checkNotNull(
                label,
                r'Gget_services_without_synchroData_fetchCatalogueServices_regions',
                'label'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_services_without_synchroData_fetchCatalogueServices_thematics
    extends Gget_services_without_synchroData_fetchCatalogueServices_thematics {
  @override
  final String G__typename;
  @override
  final String code;
  @override
  final String label;

  factory _$Gget_services_without_synchroData_fetchCatalogueServices_thematics(
          [void Function(
                  Gget_services_without_synchroData_fetchCatalogueServices_thematicsBuilder)?
              updates]) =>
      (new Gget_services_without_synchroData_fetchCatalogueServices_thematicsBuilder()
            ..update(updates))
          ._build();

  _$Gget_services_without_synchroData_fetchCatalogueServices_thematics._(
      {required this.G__typename, required this.code, required this.label})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_services_without_synchroData_fetchCatalogueServices_thematics',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        code,
        r'Gget_services_without_synchroData_fetchCatalogueServices_thematics',
        'code');
    BuiltValueNullFieldError.checkNotNull(
        label,
        r'Gget_services_without_synchroData_fetchCatalogueServices_thematics',
        'label');
  }

  @override
  Gget_services_without_synchroData_fetchCatalogueServices_thematics rebuild(
          void Function(
                  Gget_services_without_synchroData_fetchCatalogueServices_thematicsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_services_without_synchroData_fetchCatalogueServices_thematicsBuilder
      toBuilder() =>
          new Gget_services_without_synchroData_fetchCatalogueServices_thematicsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_services_without_synchroData_fetchCatalogueServices_thematics &&
        G__typename == other.G__typename &&
        code == other.code &&
        label == other.label;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_services_without_synchroData_fetchCatalogueServices_thematics')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('label', label))
        .toString();
  }
}

class Gget_services_without_synchroData_fetchCatalogueServices_thematicsBuilder
    implements
        Builder<
            Gget_services_without_synchroData_fetchCatalogueServices_thematics,
            Gget_services_without_synchroData_fetchCatalogueServices_thematicsBuilder> {
  _$Gget_services_without_synchroData_fetchCatalogueServices_thematics? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  Gget_services_without_synchroData_fetchCatalogueServices_thematicsBuilder() {
    Gget_services_without_synchroData_fetchCatalogueServices_thematics
        ._initializeBuilder(this);
  }

  Gget_services_without_synchroData_fetchCatalogueServices_thematicsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _code = $v.code;
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_services_without_synchroData_fetchCatalogueServices_thematics
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_services_without_synchroData_fetchCatalogueServices_thematics;
  }

  @override
  void update(
      void Function(
              Gget_services_without_synchroData_fetchCatalogueServices_thematicsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_services_without_synchroData_fetchCatalogueServices_thematics build() =>
      _build();

  _$Gget_services_without_synchroData_fetchCatalogueServices_thematics
      _build() {
    final _$result = _$v ??
        new _$Gget_services_without_synchroData_fetchCatalogueServices_thematics
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_services_without_synchroData_fetchCatalogueServices_thematics',
                'G__typename'),
            code: BuiltValueNullFieldError.checkNotNull(
                code,
                r'Gget_services_without_synchroData_fetchCatalogueServices_thematics',
                'code'),
            label: BuiltValueNullFieldError.checkNotNull(
                label,
                r'Gget_services_without_synchroData_fetchCatalogueServices_thematics',
                'label'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
