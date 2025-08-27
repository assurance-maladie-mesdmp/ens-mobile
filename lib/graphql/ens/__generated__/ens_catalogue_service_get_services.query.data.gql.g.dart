// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_catalogue_service_get_services.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_servicesData> _$ggetServicesDataSerializer =
    new _$Gget_servicesDataSerializer();
Serializer<Gget_servicesData_fetchCatalogueServices>
    _$ggetServicesDataFetchCatalogueServicesSerializer =
    new _$Gget_servicesData_fetchCatalogueServicesSerializer();
Serializer<Gget_servicesData_fetchCatalogueServices_services>
    _$ggetServicesDataFetchCatalogueServicesServicesSerializer =
    new _$Gget_servicesData_fetchCatalogueServices_servicesSerializer();
Serializer<Gget_servicesData_fetchCatalogueServices_services_editor>
    _$ggetServicesDataFetchCatalogueServicesServicesEditorSerializer =
    new _$Gget_servicesData_fetchCatalogueServices_services_editorSerializer();
Serializer<Gget_servicesData_fetchCatalogueServices_services_logo>
    _$ggetServicesDataFetchCatalogueServicesServicesLogoSerializer =
    new _$Gget_servicesData_fetchCatalogueServices_services_logoSerializer();
Serializer<Gget_servicesData_fetchCatalogueServices_services_finalities>
    _$ggetServicesDataFetchCatalogueServicesServicesFinalitiesSerializer =
    new _$Gget_servicesData_fetchCatalogueServices_services_finalitiesSerializer();
Serializer<Gget_servicesData_fetchCatalogueServices_services_synchronization>
    _$ggetServicesDataFetchCatalogueServicesServicesSynchronizationSerializer =
    new _$Gget_servicesData_fetchCatalogueServices_services_synchronizationSerializer();
Serializer<Gget_servicesData_fetchCatalogueServices_regions>
    _$ggetServicesDataFetchCatalogueServicesRegionsSerializer =
    new _$Gget_servicesData_fetchCatalogueServices_regionsSerializer();
Serializer<Gget_servicesData_fetchCatalogueServices_thematics>
    _$ggetServicesDataFetchCatalogueServicesThematicsSerializer =
    new _$Gget_servicesData_fetchCatalogueServices_thematicsSerializer();

class _$Gget_servicesDataSerializer
    implements StructuredSerializer<Gget_servicesData> {
  @override
  final Iterable<Type> types = const [Gget_servicesData, _$Gget_servicesData];
  @override
  final String wireName = 'Gget_servicesData';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gget_servicesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'fetchCatalogueServices',
      serializers.serialize(object.fetchCatalogueServices,
          specifiedType:
              const FullType(Gget_servicesData_fetchCatalogueServices)),
    ];

    return result;
  }

  @override
  Gget_servicesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_servicesDataBuilder();

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
                  specifiedType:
                      const FullType(Gget_servicesData_fetchCatalogueServices))!
              as Gget_servicesData_fetchCatalogueServices);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_servicesData_fetchCatalogueServicesSerializer
    implements StructuredSerializer<Gget_servicesData_fetchCatalogueServices> {
  @override
  final Iterable<Type> types = const [
    Gget_servicesData_fetchCatalogueServices,
    _$Gget_servicesData_fetchCatalogueServices
  ];
  @override
  final String wireName = 'Gget_servicesData_fetchCatalogueServices';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_servicesData_fetchCatalogueServices object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'services',
      serializers.serialize(object.services,
          specifiedType: const FullType(BuiltList, const [
            const FullType(Gget_servicesData_fetchCatalogueServices_services)
          ])),
      'regions',
      serializers.serialize(object.regions,
          specifiedType: const FullType(BuiltList, const [
            const FullType(Gget_servicesData_fetchCatalogueServices_regions)
          ])),
      'thematics',
      serializers.serialize(object.thematics,
          specifiedType: const FullType(BuiltList, const [
            const FullType(Gget_servicesData_fetchCatalogueServices_thematics)
          ])),
    ];

    return result;
  }

  @override
  Gget_servicesData_fetchCatalogueServices deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_servicesData_fetchCatalogueServicesBuilder();

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
                    Gget_servicesData_fetchCatalogueServices_services)
              ]))! as BuiltList<Object?>);
          break;
        case 'regions':
          result.regions.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gget_servicesData_fetchCatalogueServices_regions)
              ]))! as BuiltList<Object?>);
          break;
        case 'thematics':
          result.thematics.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_servicesData_fetchCatalogueServices_thematics)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_servicesData_fetchCatalogueServices_servicesSerializer
    implements
        StructuredSerializer<
            Gget_servicesData_fetchCatalogueServices_services> {
  @override
  final Iterable<Type> types = const [
    Gget_servicesData_fetchCatalogueServices_services,
    _$Gget_servicesData_fetchCatalogueServices_services
  ];
  @override
  final String wireName = 'Gget_servicesData_fetchCatalogueServices_services';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_servicesData_fetchCatalogueServices_services object,
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
              Gget_servicesData_fetchCatalogueServices_services_editor)),
      'codesRegions',
      serializers.serialize(object.codesRegions,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'thematics',
      serializers.serialize(object.thematics,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'synchronization',
      serializers.serialize(object.synchronization,
          specifiedType: const FullType(
              Gget_servicesData_fetchCatalogueServices_services_synchronization)),
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
                Gget_servicesData_fetchCatalogueServices_services_logo)));
    }
    value = object.finalities;
    if (value != null) {
      result
        ..add('finalities')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_servicesData_fetchCatalogueServices_services_finalities)
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
  Gget_servicesData_fetchCatalogueServices_services deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_servicesData_fetchCatalogueServices_servicesBuilder();

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
                      Gget_servicesData_fetchCatalogueServices_services_editor))!
              as Gget_servicesData_fetchCatalogueServices_services_editor);
          break;
        case 'logo':
          result.logo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_servicesData_fetchCatalogueServices_services_logo))!
              as Gget_servicesData_fetchCatalogueServices_services_logo);
          break;
        case 'finalities':
          result.finalities.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_servicesData_fetchCatalogueServices_services_finalities)
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
        case 'synchronization':
          result.synchronization.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_servicesData_fetchCatalogueServices_services_synchronization))!
              as Gget_servicesData_fetchCatalogueServices_services_synchronization);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_servicesData_fetchCatalogueServices_services_editorSerializer
    implements
        StructuredSerializer<
            Gget_servicesData_fetchCatalogueServices_services_editor> {
  @override
  final Iterable<Type> types = const [
    Gget_servicesData_fetchCatalogueServices_services_editor,
    _$Gget_servicesData_fetchCatalogueServices_services_editor
  ];
  @override
  final String wireName =
      'Gget_servicesData_fetchCatalogueServices_services_editor';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_servicesData_fetchCatalogueServices_services_editor object,
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
  Gget_servicesData_fetchCatalogueServices_services_editor deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_servicesData_fetchCatalogueServices_services_editorBuilder();

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

class _$Gget_servicesData_fetchCatalogueServices_services_logoSerializer
    implements
        StructuredSerializer<
            Gget_servicesData_fetchCatalogueServices_services_logo> {
  @override
  final Iterable<Type> types = const [
    Gget_servicesData_fetchCatalogueServices_services_logo,
    _$Gget_servicesData_fetchCatalogueServices_services_logo
  ];
  @override
  final String wireName =
      'Gget_servicesData_fetchCatalogueServices_services_logo';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_servicesData_fetchCatalogueServices_services_logo object,
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
  Gget_servicesData_fetchCatalogueServices_services_logo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_servicesData_fetchCatalogueServices_services_logoBuilder();

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

class _$Gget_servicesData_fetchCatalogueServices_services_finalitiesSerializer
    implements
        StructuredSerializer<
            Gget_servicesData_fetchCatalogueServices_services_finalities> {
  @override
  final Iterable<Type> types = const [
    Gget_servicesData_fetchCatalogueServices_services_finalities,
    _$Gget_servicesData_fetchCatalogueServices_services_finalities
  ];
  @override
  final String wireName =
      'Gget_servicesData_fetchCatalogueServices_services_finalities';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_servicesData_fetchCatalogueServices_services_finalities object,
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
  Gget_servicesData_fetchCatalogueServices_services_finalities deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_servicesData_fetchCatalogueServices_services_finalitiesBuilder();

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

class _$Gget_servicesData_fetchCatalogueServices_services_synchronizationSerializer
    implements
        StructuredSerializer<
            Gget_servicesData_fetchCatalogueServices_services_synchronization> {
  @override
  final Iterable<Type> types = const [
    Gget_servicesData_fetchCatalogueServices_services_synchronization,
    _$Gget_servicesData_fetchCatalogueServices_services_synchronization
  ];
  @override
  final String wireName =
      'Gget_servicesData_fetchCatalogueServices_services_synchronization';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_servicesData_fetchCatalogueServices_services_synchronization object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'isSynchronized',
      serializers.serialize(object.isSynchronized,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.oid;
    if (value != null) {
      result
        ..add('oid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isAcknowledged;
    if (value != null) {
      result
        ..add('isAcknowledged')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.reapprovalLimitDate;
    if (value != null) {
      result
        ..add('reapprovalLimitDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_servicesData_fetchCatalogueServices_services_synchronization deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_servicesData_fetchCatalogueServices_services_synchronizationBuilder();

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
        case 'isSynchronized':
          result.isSynchronized = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'oid':
          result.oid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isAcknowledged':
          result.isAcknowledged = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'reapprovalLimitDate':
          result.reapprovalLimitDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_servicesData_fetchCatalogueServices_regionsSerializer
    implements
        StructuredSerializer<Gget_servicesData_fetchCatalogueServices_regions> {
  @override
  final Iterable<Type> types = const [
    Gget_servicesData_fetchCatalogueServices_regions,
    _$Gget_servicesData_fetchCatalogueServices_regions
  ];
  @override
  final String wireName = 'Gget_servicesData_fetchCatalogueServices_regions';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_servicesData_fetchCatalogueServices_regions object,
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
  Gget_servicesData_fetchCatalogueServices_regions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_servicesData_fetchCatalogueServices_regionsBuilder();

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

class _$Gget_servicesData_fetchCatalogueServices_thematicsSerializer
    implements
        StructuredSerializer<
            Gget_servicesData_fetchCatalogueServices_thematics> {
  @override
  final Iterable<Type> types = const [
    Gget_servicesData_fetchCatalogueServices_thematics,
    _$Gget_servicesData_fetchCatalogueServices_thematics
  ];
  @override
  final String wireName = 'Gget_servicesData_fetchCatalogueServices_thematics';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_servicesData_fetchCatalogueServices_thematics object,
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
  Gget_servicesData_fetchCatalogueServices_thematics deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_servicesData_fetchCatalogueServices_thematicsBuilder();

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

class _$Gget_servicesData extends Gget_servicesData {
  @override
  final String G__typename;
  @override
  final Gget_servicesData_fetchCatalogueServices fetchCatalogueServices;

  factory _$Gget_servicesData(
          [void Function(Gget_servicesDataBuilder)? updates]) =>
      (new Gget_servicesDataBuilder()..update(updates))._build();

  _$Gget_servicesData._(
      {required this.G__typename, required this.fetchCatalogueServices})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_servicesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        fetchCatalogueServices, r'Gget_servicesData', 'fetchCatalogueServices');
  }

  @override
  Gget_servicesData rebuild(void Function(Gget_servicesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_servicesDataBuilder toBuilder() =>
      new Gget_servicesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_servicesData &&
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
    return (newBuiltValueToStringHelper(r'Gget_servicesData')
          ..add('G__typename', G__typename)
          ..add('fetchCatalogueServices', fetchCatalogueServices))
        .toString();
  }
}

class Gget_servicesDataBuilder
    implements Builder<Gget_servicesData, Gget_servicesDataBuilder> {
  _$Gget_servicesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_servicesData_fetchCatalogueServicesBuilder? _fetchCatalogueServices;
  Gget_servicesData_fetchCatalogueServicesBuilder get fetchCatalogueServices =>
      _$this._fetchCatalogueServices ??=
          new Gget_servicesData_fetchCatalogueServicesBuilder();
  set fetchCatalogueServices(
          Gget_servicesData_fetchCatalogueServicesBuilder?
              fetchCatalogueServices) =>
      _$this._fetchCatalogueServices = fetchCatalogueServices;

  Gget_servicesDataBuilder() {
    Gget_servicesData._initializeBuilder(this);
  }

  Gget_servicesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _fetchCatalogueServices = $v.fetchCatalogueServices.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_servicesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_servicesData;
  }

  @override
  void update(void Function(Gget_servicesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_servicesData build() => _build();

  _$Gget_servicesData _build() {
    _$Gget_servicesData _$result;
    try {
      _$result = _$v ??
          new _$Gget_servicesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_servicesData', 'G__typename'),
              fetchCatalogueServices: fetchCatalogueServices.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fetchCatalogueServices';
        fetchCatalogueServices.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_servicesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_servicesData_fetchCatalogueServices
    extends Gget_servicesData_fetchCatalogueServices {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_servicesData_fetchCatalogueServices_services> services;
  @override
  final BuiltList<Gget_servicesData_fetchCatalogueServices_regions> regions;
  @override
  final BuiltList<Gget_servicesData_fetchCatalogueServices_thematics> thematics;

  factory _$Gget_servicesData_fetchCatalogueServices(
          [void Function(Gget_servicesData_fetchCatalogueServicesBuilder)?
              updates]) =>
      (new Gget_servicesData_fetchCatalogueServicesBuilder()..update(updates))
          ._build();

  _$Gget_servicesData_fetchCatalogueServices._(
      {required this.G__typename,
      required this.services,
      required this.regions,
      required this.thematics})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_servicesData_fetchCatalogueServices', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        services, r'Gget_servicesData_fetchCatalogueServices', 'services');
    BuiltValueNullFieldError.checkNotNull(
        regions, r'Gget_servicesData_fetchCatalogueServices', 'regions');
    BuiltValueNullFieldError.checkNotNull(
        thematics, r'Gget_servicesData_fetchCatalogueServices', 'thematics');
  }

  @override
  Gget_servicesData_fetchCatalogueServices rebuild(
          void Function(Gget_servicesData_fetchCatalogueServicesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_servicesData_fetchCatalogueServicesBuilder toBuilder() =>
      new Gget_servicesData_fetchCatalogueServicesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_servicesData_fetchCatalogueServices &&
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
            r'Gget_servicesData_fetchCatalogueServices')
          ..add('G__typename', G__typename)
          ..add('services', services)
          ..add('regions', regions)
          ..add('thematics', thematics))
        .toString();
  }
}

class Gget_servicesData_fetchCatalogueServicesBuilder
    implements
        Builder<Gget_servicesData_fetchCatalogueServices,
            Gget_servicesData_fetchCatalogueServicesBuilder> {
  _$Gget_servicesData_fetchCatalogueServices? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_servicesData_fetchCatalogueServices_services>? _services;
  ListBuilder<Gget_servicesData_fetchCatalogueServices_services> get services =>
      _$this._services ??=
          new ListBuilder<Gget_servicesData_fetchCatalogueServices_services>();
  set services(
          ListBuilder<Gget_servicesData_fetchCatalogueServices_services>?
              services) =>
      _$this._services = services;

  ListBuilder<Gget_servicesData_fetchCatalogueServices_regions>? _regions;
  ListBuilder<Gget_servicesData_fetchCatalogueServices_regions> get regions =>
      _$this._regions ??=
          new ListBuilder<Gget_servicesData_fetchCatalogueServices_regions>();
  set regions(
          ListBuilder<Gget_servicesData_fetchCatalogueServices_regions>?
              regions) =>
      _$this._regions = regions;

  ListBuilder<Gget_servicesData_fetchCatalogueServices_thematics>? _thematics;
  ListBuilder<Gget_servicesData_fetchCatalogueServices_thematics>
      get thematics => _$this._thematics ??=
          new ListBuilder<Gget_servicesData_fetchCatalogueServices_thematics>();
  set thematics(
          ListBuilder<Gget_servicesData_fetchCatalogueServices_thematics>?
              thematics) =>
      _$this._thematics = thematics;

  Gget_servicesData_fetchCatalogueServicesBuilder() {
    Gget_servicesData_fetchCatalogueServices._initializeBuilder(this);
  }

  Gget_servicesData_fetchCatalogueServicesBuilder get _$this {
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
  void replace(Gget_servicesData_fetchCatalogueServices other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_servicesData_fetchCatalogueServices;
  }

  @override
  void update(
      void Function(Gget_servicesData_fetchCatalogueServicesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_servicesData_fetchCatalogueServices build() => _build();

  _$Gget_servicesData_fetchCatalogueServices _build() {
    _$Gget_servicesData_fetchCatalogueServices _$result;
    try {
      _$result = _$v ??
          new _$Gget_servicesData_fetchCatalogueServices._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_servicesData_fetchCatalogueServices', 'G__typename'),
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
            r'Gget_servicesData_fetchCatalogueServices',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_servicesData_fetchCatalogueServices_services
    extends Gget_servicesData_fetchCatalogueServices_services {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final Gget_servicesData_fetchCatalogueServices_services_editor editor;
  @override
  final Gget_servicesData_fetchCatalogueServices_services_logo? logo;
  @override
  final BuiltList<Gget_servicesData_fetchCatalogueServices_services_finalities>?
      finalities;
  @override
  final BuiltList<String> codesRegions;
  @override
  final BuiltList<String> thematics;
  @override
  final _i3.GServiceStatusEnum? status;
  @override
  final String? cguUrl;
  @override
  final Gget_servicesData_fetchCatalogueServices_services_synchronization
      synchronization;

  factory _$Gget_servicesData_fetchCatalogueServices_services(
          [void Function(
                  Gget_servicesData_fetchCatalogueServices_servicesBuilder)?
              updates]) =>
      (new Gget_servicesData_fetchCatalogueServices_servicesBuilder()
            ..update(updates))
          ._build();

  _$Gget_servicesData_fetchCatalogueServices_services._(
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
      this.cguUrl,
      required this.synchronization})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_servicesData_fetchCatalogueServices_services', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gget_servicesData_fetchCatalogueServices_services', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'Gget_servicesData_fetchCatalogueServices_services', 'name');
    BuiltValueNullFieldError.checkNotNull(
        editor, r'Gget_servicesData_fetchCatalogueServices_services', 'editor');
    BuiltValueNullFieldError.checkNotNull(codesRegions,
        r'Gget_servicesData_fetchCatalogueServices_services', 'codesRegions');
    BuiltValueNullFieldError.checkNotNull(thematics,
        r'Gget_servicesData_fetchCatalogueServices_services', 'thematics');
    BuiltValueNullFieldError.checkNotNull(
        synchronization,
        r'Gget_servicesData_fetchCatalogueServices_services',
        'synchronization');
  }

  @override
  Gget_servicesData_fetchCatalogueServices_services rebuild(
          void Function(
                  Gget_servicesData_fetchCatalogueServices_servicesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_servicesData_fetchCatalogueServices_servicesBuilder toBuilder() =>
      new Gget_servicesData_fetchCatalogueServices_servicesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_servicesData_fetchCatalogueServices_services &&
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
        cguUrl == other.cguUrl &&
        synchronization == other.synchronization;
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
    _$hash = $jc(_$hash, synchronization.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_servicesData_fetchCatalogueServices_services')
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
          ..add('cguUrl', cguUrl)
          ..add('synchronization', synchronization))
        .toString();
  }
}

class Gget_servicesData_fetchCatalogueServices_servicesBuilder
    implements
        Builder<Gget_servicesData_fetchCatalogueServices_services,
            Gget_servicesData_fetchCatalogueServices_servicesBuilder> {
  _$Gget_servicesData_fetchCatalogueServices_services? _$v;

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

  Gget_servicesData_fetchCatalogueServices_services_editorBuilder? _editor;
  Gget_servicesData_fetchCatalogueServices_services_editorBuilder get editor =>
      _$this._editor ??=
          new Gget_servicesData_fetchCatalogueServices_services_editorBuilder();
  set editor(
          Gget_servicesData_fetchCatalogueServices_services_editorBuilder?
              editor) =>
      _$this._editor = editor;

  Gget_servicesData_fetchCatalogueServices_services_logoBuilder? _logo;
  Gget_servicesData_fetchCatalogueServices_services_logoBuilder get logo =>
      _$this._logo ??=
          new Gget_servicesData_fetchCatalogueServices_services_logoBuilder();
  set logo(
          Gget_servicesData_fetchCatalogueServices_services_logoBuilder?
              logo) =>
      _$this._logo = logo;

  ListBuilder<Gget_servicesData_fetchCatalogueServices_services_finalities>?
      _finalities;
  ListBuilder<Gget_servicesData_fetchCatalogueServices_services_finalities>
      get finalities => _$this._finalities ??= new ListBuilder<
          Gget_servicesData_fetchCatalogueServices_services_finalities>();
  set finalities(
          ListBuilder<
                  Gget_servicesData_fetchCatalogueServices_services_finalities>?
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

  Gget_servicesData_fetchCatalogueServices_services_synchronizationBuilder?
      _synchronization;
  Gget_servicesData_fetchCatalogueServices_services_synchronizationBuilder
      get synchronization => _$this._synchronization ??=
          new Gget_servicesData_fetchCatalogueServices_services_synchronizationBuilder();
  set synchronization(
          Gget_servicesData_fetchCatalogueServices_services_synchronizationBuilder?
              synchronization) =>
      _$this._synchronization = synchronization;

  Gget_servicesData_fetchCatalogueServices_servicesBuilder() {
    Gget_servicesData_fetchCatalogueServices_services._initializeBuilder(this);
  }

  Gget_servicesData_fetchCatalogueServices_servicesBuilder get _$this {
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
      _synchronization = $v.synchronization.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_servicesData_fetchCatalogueServices_services other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_servicesData_fetchCatalogueServices_services;
  }

  @override
  void update(
      void Function(Gget_servicesData_fetchCatalogueServices_servicesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_servicesData_fetchCatalogueServices_services build() => _build();

  _$Gget_servicesData_fetchCatalogueServices_services _build() {
    _$Gget_servicesData_fetchCatalogueServices_services _$result;
    try {
      _$result = _$v ??
          new _$Gget_servicesData_fetchCatalogueServices_services._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_servicesData_fetchCatalogueServices_services',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(id,
                  r'Gget_servicesData_fetchCatalogueServices_services', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(name,
                  r'Gget_servicesData_fetchCatalogueServices_services', 'name'),
              description: description,
              editor: editor.build(),
              logo: _logo?.build(),
              finalities: _finalities?.build(),
              codesRegions: codesRegions.build(),
              thematics: thematics.build(),
              status: status,
              cguUrl: cguUrl,
              synchronization: synchronization.build());
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

        _$failedField = 'synchronization';
        synchronization.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_servicesData_fetchCatalogueServices_services',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_servicesData_fetchCatalogueServices_services_editor
    extends Gget_servicesData_fetchCatalogueServices_services_editor {
  @override
  final String G__typename;
  @override
  final String name;

  factory _$Gget_servicesData_fetchCatalogueServices_services_editor(
          [void Function(
                  Gget_servicesData_fetchCatalogueServices_services_editorBuilder)?
              updates]) =>
      (new Gget_servicesData_fetchCatalogueServices_services_editorBuilder()
            ..update(updates))
          ._build();

  _$Gget_servicesData_fetchCatalogueServices_services_editor._(
      {required this.G__typename, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_servicesData_fetchCatalogueServices_services_editor',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(name,
        r'Gget_servicesData_fetchCatalogueServices_services_editor', 'name');
  }

  @override
  Gget_servicesData_fetchCatalogueServices_services_editor rebuild(
          void Function(
                  Gget_servicesData_fetchCatalogueServices_services_editorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_servicesData_fetchCatalogueServices_services_editorBuilder toBuilder() =>
      new Gget_servicesData_fetchCatalogueServices_services_editorBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_servicesData_fetchCatalogueServices_services_editor &&
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
            r'Gget_servicesData_fetchCatalogueServices_services_editor')
          ..add('G__typename', G__typename)
          ..add('name', name))
        .toString();
  }
}

class Gget_servicesData_fetchCatalogueServices_services_editorBuilder
    implements
        Builder<Gget_servicesData_fetchCatalogueServices_services_editor,
            Gget_servicesData_fetchCatalogueServices_services_editorBuilder> {
  _$Gget_servicesData_fetchCatalogueServices_services_editor? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  Gget_servicesData_fetchCatalogueServices_services_editorBuilder() {
    Gget_servicesData_fetchCatalogueServices_services_editor._initializeBuilder(
        this);
  }

  Gget_servicesData_fetchCatalogueServices_services_editorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_servicesData_fetchCatalogueServices_services_editor other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_servicesData_fetchCatalogueServices_services_editor;
  }

  @override
  void update(
      void Function(
              Gget_servicesData_fetchCatalogueServices_services_editorBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_servicesData_fetchCatalogueServices_services_editor build() => _build();

  _$Gget_servicesData_fetchCatalogueServices_services_editor _build() {
    final _$result = _$v ??
        new _$Gget_servicesData_fetchCatalogueServices_services_editor._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_servicesData_fetchCatalogueServices_services_editor',
                'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'Gget_servicesData_fetchCatalogueServices_services_editor',
                'name'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_servicesData_fetchCatalogueServices_services_logo
    extends Gget_servicesData_fetchCatalogueServices_services_logo {
  @override
  final String G__typename;
  @override
  final String? file;
  @override
  final String? type;

  factory _$Gget_servicesData_fetchCatalogueServices_services_logo(
          [void Function(
                  Gget_servicesData_fetchCatalogueServices_services_logoBuilder)?
              updates]) =>
      (new Gget_servicesData_fetchCatalogueServices_services_logoBuilder()
            ..update(updates))
          ._build();

  _$Gget_servicesData_fetchCatalogueServices_services_logo._(
      {required this.G__typename, this.file, this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_servicesData_fetchCatalogueServices_services_logo',
        'G__typename');
  }

  @override
  Gget_servicesData_fetchCatalogueServices_services_logo rebuild(
          void Function(
                  Gget_servicesData_fetchCatalogueServices_services_logoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_servicesData_fetchCatalogueServices_services_logoBuilder toBuilder() =>
      new Gget_servicesData_fetchCatalogueServices_services_logoBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_servicesData_fetchCatalogueServices_services_logo &&
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
            r'Gget_servicesData_fetchCatalogueServices_services_logo')
          ..add('G__typename', G__typename)
          ..add('file', file)
          ..add('type', type))
        .toString();
  }
}

class Gget_servicesData_fetchCatalogueServices_services_logoBuilder
    implements
        Builder<Gget_servicesData_fetchCatalogueServices_services_logo,
            Gget_servicesData_fetchCatalogueServices_services_logoBuilder> {
  _$Gget_servicesData_fetchCatalogueServices_services_logo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _file;
  String? get file => _$this._file;
  set file(String? file) => _$this._file = file;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  Gget_servicesData_fetchCatalogueServices_services_logoBuilder() {
    Gget_servicesData_fetchCatalogueServices_services_logo._initializeBuilder(
        this);
  }

  Gget_servicesData_fetchCatalogueServices_services_logoBuilder get _$this {
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
  void replace(Gget_servicesData_fetchCatalogueServices_services_logo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_servicesData_fetchCatalogueServices_services_logo;
  }

  @override
  void update(
      void Function(
              Gget_servicesData_fetchCatalogueServices_services_logoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_servicesData_fetchCatalogueServices_services_logo build() => _build();

  _$Gget_servicesData_fetchCatalogueServices_services_logo _build() {
    final _$result = _$v ??
        new _$Gget_servicesData_fetchCatalogueServices_services_logo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_servicesData_fetchCatalogueServices_services_logo',
                'G__typename'),
            file: file,
            type: type);
    replace(_$result);
    return _$result;
  }
}

class _$Gget_servicesData_fetchCatalogueServices_services_finalities
    extends Gget_servicesData_fetchCatalogueServices_services_finalities {
  @override
  final String G__typename;
  @override
  final String icone;
  @override
  final String libelle;
  @override
  final String description;

  factory _$Gget_servicesData_fetchCatalogueServices_services_finalities(
          [void Function(
                  Gget_servicesData_fetchCatalogueServices_services_finalitiesBuilder)?
              updates]) =>
      (new Gget_servicesData_fetchCatalogueServices_services_finalitiesBuilder()
            ..update(updates))
          ._build();

  _$Gget_servicesData_fetchCatalogueServices_services_finalities._(
      {required this.G__typename,
      required this.icone,
      required this.libelle,
      required this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_servicesData_fetchCatalogueServices_services_finalities',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        icone,
        r'Gget_servicesData_fetchCatalogueServices_services_finalities',
        'icone');
    BuiltValueNullFieldError.checkNotNull(
        libelle,
        r'Gget_servicesData_fetchCatalogueServices_services_finalities',
        'libelle');
    BuiltValueNullFieldError.checkNotNull(
        description,
        r'Gget_servicesData_fetchCatalogueServices_services_finalities',
        'description');
  }

  @override
  Gget_servicesData_fetchCatalogueServices_services_finalities rebuild(
          void Function(
                  Gget_servicesData_fetchCatalogueServices_services_finalitiesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_servicesData_fetchCatalogueServices_services_finalitiesBuilder
      toBuilder() =>
          new Gget_servicesData_fetchCatalogueServices_services_finalitiesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_servicesData_fetchCatalogueServices_services_finalities &&
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
            r'Gget_servicesData_fetchCatalogueServices_services_finalities')
          ..add('G__typename', G__typename)
          ..add('icone', icone)
          ..add('libelle', libelle)
          ..add('description', description))
        .toString();
  }
}

class Gget_servicesData_fetchCatalogueServices_services_finalitiesBuilder
    implements
        Builder<Gget_servicesData_fetchCatalogueServices_services_finalities,
            Gget_servicesData_fetchCatalogueServices_services_finalitiesBuilder> {
  _$Gget_servicesData_fetchCatalogueServices_services_finalities? _$v;

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

  Gget_servicesData_fetchCatalogueServices_services_finalitiesBuilder() {
    Gget_servicesData_fetchCatalogueServices_services_finalities
        ._initializeBuilder(this);
  }

  Gget_servicesData_fetchCatalogueServices_services_finalitiesBuilder
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
      Gget_servicesData_fetchCatalogueServices_services_finalities other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$Gget_servicesData_fetchCatalogueServices_services_finalities;
  }

  @override
  void update(
      void Function(
              Gget_servicesData_fetchCatalogueServices_services_finalitiesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_servicesData_fetchCatalogueServices_services_finalities build() =>
      _build();

  _$Gget_servicesData_fetchCatalogueServices_services_finalities _build() {
    final _$result = _$v ??
        new _$Gget_servicesData_fetchCatalogueServices_services_finalities._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_servicesData_fetchCatalogueServices_services_finalities',
                'G__typename'),
            icone: BuiltValueNullFieldError.checkNotNull(
                icone,
                r'Gget_servicesData_fetchCatalogueServices_services_finalities',
                'icone'),
            libelle: BuiltValueNullFieldError.checkNotNull(
                libelle,
                r'Gget_servicesData_fetchCatalogueServices_services_finalities',
                'libelle'),
            description: BuiltValueNullFieldError.checkNotNull(
                description,
                r'Gget_servicesData_fetchCatalogueServices_services_finalities',
                'description'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_servicesData_fetchCatalogueServices_services_synchronization
    extends Gget_servicesData_fetchCatalogueServices_services_synchronization {
  @override
  final String G__typename;
  @override
  final bool isSynchronized;
  @override
  final String? oid;
  @override
  final bool? isAcknowledged;
  @override
  final String? reapprovalLimitDate;

  factory _$Gget_servicesData_fetchCatalogueServices_services_synchronization(
          [void Function(
                  Gget_servicesData_fetchCatalogueServices_services_synchronizationBuilder)?
              updates]) =>
      (new Gget_servicesData_fetchCatalogueServices_services_synchronizationBuilder()
            ..update(updates))
          ._build();

  _$Gget_servicesData_fetchCatalogueServices_services_synchronization._(
      {required this.G__typename,
      required this.isSynchronized,
      this.oid,
      this.isAcknowledged,
      this.reapprovalLimitDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_servicesData_fetchCatalogueServices_services_synchronization',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        isSynchronized,
        r'Gget_servicesData_fetchCatalogueServices_services_synchronization',
        'isSynchronized');
  }

  @override
  Gget_servicesData_fetchCatalogueServices_services_synchronization rebuild(
          void Function(
                  Gget_servicesData_fetchCatalogueServices_services_synchronizationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_servicesData_fetchCatalogueServices_services_synchronizationBuilder
      toBuilder() =>
          new Gget_servicesData_fetchCatalogueServices_services_synchronizationBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_servicesData_fetchCatalogueServices_services_synchronization &&
        G__typename == other.G__typename &&
        isSynchronized == other.isSynchronized &&
        oid == other.oid &&
        isAcknowledged == other.isAcknowledged &&
        reapprovalLimitDate == other.reapprovalLimitDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, isSynchronized.hashCode);
    _$hash = $jc(_$hash, oid.hashCode);
    _$hash = $jc(_$hash, isAcknowledged.hashCode);
    _$hash = $jc(_$hash, reapprovalLimitDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_servicesData_fetchCatalogueServices_services_synchronization')
          ..add('G__typename', G__typename)
          ..add('isSynchronized', isSynchronized)
          ..add('oid', oid)
          ..add('isAcknowledged', isAcknowledged)
          ..add('reapprovalLimitDate', reapprovalLimitDate))
        .toString();
  }
}

class Gget_servicesData_fetchCatalogueServices_services_synchronizationBuilder
    implements
        Builder<
            Gget_servicesData_fetchCatalogueServices_services_synchronization,
            Gget_servicesData_fetchCatalogueServices_services_synchronizationBuilder> {
  _$Gget_servicesData_fetchCatalogueServices_services_synchronization? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _isSynchronized;
  bool? get isSynchronized => _$this._isSynchronized;
  set isSynchronized(bool? isSynchronized) =>
      _$this._isSynchronized = isSynchronized;

  String? _oid;
  String? get oid => _$this._oid;
  set oid(String? oid) => _$this._oid = oid;

  bool? _isAcknowledged;
  bool? get isAcknowledged => _$this._isAcknowledged;
  set isAcknowledged(bool? isAcknowledged) =>
      _$this._isAcknowledged = isAcknowledged;

  String? _reapprovalLimitDate;
  String? get reapprovalLimitDate => _$this._reapprovalLimitDate;
  set reapprovalLimitDate(String? reapprovalLimitDate) =>
      _$this._reapprovalLimitDate = reapprovalLimitDate;

  Gget_servicesData_fetchCatalogueServices_services_synchronizationBuilder() {
    Gget_servicesData_fetchCatalogueServices_services_synchronization
        ._initializeBuilder(this);
  }

  Gget_servicesData_fetchCatalogueServices_services_synchronizationBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _isSynchronized = $v.isSynchronized;
      _oid = $v.oid;
      _isAcknowledged = $v.isAcknowledged;
      _reapprovalLimitDate = $v.reapprovalLimitDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_servicesData_fetchCatalogueServices_services_synchronization other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_servicesData_fetchCatalogueServices_services_synchronization;
  }

  @override
  void update(
      void Function(
              Gget_servicesData_fetchCatalogueServices_services_synchronizationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_servicesData_fetchCatalogueServices_services_synchronization build() =>
      _build();

  _$Gget_servicesData_fetchCatalogueServices_services_synchronization _build() {
    final _$result = _$v ??
        new _$Gget_servicesData_fetchCatalogueServices_services_synchronization
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_servicesData_fetchCatalogueServices_services_synchronization',
                'G__typename'),
            isSynchronized: BuiltValueNullFieldError.checkNotNull(
                isSynchronized,
                r'Gget_servicesData_fetchCatalogueServices_services_synchronization',
                'isSynchronized'),
            oid: oid,
            isAcknowledged: isAcknowledged,
            reapprovalLimitDate: reapprovalLimitDate);
    replace(_$result);
    return _$result;
  }
}

class _$Gget_servicesData_fetchCatalogueServices_regions
    extends Gget_servicesData_fetchCatalogueServices_regions {
  @override
  final String G__typename;
  @override
  final String code;
  @override
  final String label;

  factory _$Gget_servicesData_fetchCatalogueServices_regions(
          [void Function(
                  Gget_servicesData_fetchCatalogueServices_regionsBuilder)?
              updates]) =>
      (new Gget_servicesData_fetchCatalogueServices_regionsBuilder()
            ..update(updates))
          ._build();

  _$Gget_servicesData_fetchCatalogueServices_regions._(
      {required this.G__typename, required this.code, required this.label})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_servicesData_fetchCatalogueServices_regions', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        code, r'Gget_servicesData_fetchCatalogueServices_regions', 'code');
    BuiltValueNullFieldError.checkNotNull(
        label, r'Gget_servicesData_fetchCatalogueServices_regions', 'label');
  }

  @override
  Gget_servicesData_fetchCatalogueServices_regions rebuild(
          void Function(Gget_servicesData_fetchCatalogueServices_regionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_servicesData_fetchCatalogueServices_regionsBuilder toBuilder() =>
      new Gget_servicesData_fetchCatalogueServices_regionsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_servicesData_fetchCatalogueServices_regions &&
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
            r'Gget_servicesData_fetchCatalogueServices_regions')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('label', label))
        .toString();
  }
}

class Gget_servicesData_fetchCatalogueServices_regionsBuilder
    implements
        Builder<Gget_servicesData_fetchCatalogueServices_regions,
            Gget_servicesData_fetchCatalogueServices_regionsBuilder> {
  _$Gget_servicesData_fetchCatalogueServices_regions? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  Gget_servicesData_fetchCatalogueServices_regionsBuilder() {
    Gget_servicesData_fetchCatalogueServices_regions._initializeBuilder(this);
  }

  Gget_servicesData_fetchCatalogueServices_regionsBuilder get _$this {
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
  void replace(Gget_servicesData_fetchCatalogueServices_regions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_servicesData_fetchCatalogueServices_regions;
  }

  @override
  void update(
      void Function(Gget_servicesData_fetchCatalogueServices_regionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_servicesData_fetchCatalogueServices_regions build() => _build();

  _$Gget_servicesData_fetchCatalogueServices_regions _build() {
    final _$result = _$v ??
        new _$Gget_servicesData_fetchCatalogueServices_regions._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_servicesData_fetchCatalogueServices_regions',
                'G__typename'),
            code: BuiltValueNullFieldError.checkNotNull(code,
                r'Gget_servicesData_fetchCatalogueServices_regions', 'code'),
            label: BuiltValueNullFieldError.checkNotNull(label,
                r'Gget_servicesData_fetchCatalogueServices_regions', 'label'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_servicesData_fetchCatalogueServices_thematics
    extends Gget_servicesData_fetchCatalogueServices_thematics {
  @override
  final String G__typename;
  @override
  final String code;
  @override
  final String label;

  factory _$Gget_servicesData_fetchCatalogueServices_thematics(
          [void Function(
                  Gget_servicesData_fetchCatalogueServices_thematicsBuilder)?
              updates]) =>
      (new Gget_servicesData_fetchCatalogueServices_thematicsBuilder()
            ..update(updates))
          ._build();

  _$Gget_servicesData_fetchCatalogueServices_thematics._(
      {required this.G__typename, required this.code, required this.label})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_servicesData_fetchCatalogueServices_thematics', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        code, r'Gget_servicesData_fetchCatalogueServices_thematics', 'code');
    BuiltValueNullFieldError.checkNotNull(
        label, r'Gget_servicesData_fetchCatalogueServices_thematics', 'label');
  }

  @override
  Gget_servicesData_fetchCatalogueServices_thematics rebuild(
          void Function(
                  Gget_servicesData_fetchCatalogueServices_thematicsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_servicesData_fetchCatalogueServices_thematicsBuilder toBuilder() =>
      new Gget_servicesData_fetchCatalogueServices_thematicsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_servicesData_fetchCatalogueServices_thematics &&
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
            r'Gget_servicesData_fetchCatalogueServices_thematics')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('label', label))
        .toString();
  }
}

class Gget_servicesData_fetchCatalogueServices_thematicsBuilder
    implements
        Builder<Gget_servicesData_fetchCatalogueServices_thematics,
            Gget_servicesData_fetchCatalogueServices_thematicsBuilder> {
  _$Gget_servicesData_fetchCatalogueServices_thematics? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  Gget_servicesData_fetchCatalogueServices_thematicsBuilder() {
    Gget_servicesData_fetchCatalogueServices_thematics._initializeBuilder(this);
  }

  Gget_servicesData_fetchCatalogueServices_thematicsBuilder get _$this {
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
  void replace(Gget_servicesData_fetchCatalogueServices_thematics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_servicesData_fetchCatalogueServices_thematics;
  }

  @override
  void update(
      void Function(Gget_servicesData_fetchCatalogueServices_thematicsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_servicesData_fetchCatalogueServices_thematics build() => _build();

  _$Gget_servicesData_fetchCatalogueServices_thematics _build() {
    final _$result = _$v ??
        new _$Gget_servicesData_fetchCatalogueServices_thematics._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_servicesData_fetchCatalogueServices_thematics',
                'G__typename'),
            code: BuiltValueNullFieldError.checkNotNull(code,
                r'Gget_servicesData_fetchCatalogueServices_thematics', 'code'),
            label: BuiltValueNullFieldError.checkNotNull(
                label,
                r'Gget_servicesData_fetchCatalogueServices_thematics',
                'label'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
