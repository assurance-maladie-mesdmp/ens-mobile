// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_catalogue_services.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_catalogue_service_get_services_without_synchro.query.data.gql.g.dart';

abstract class Gget_services_without_synchroData
    implements
        Built<Gget_services_without_synchroData,
            Gget_services_without_synchroDataBuilder> {
  Gget_services_without_synchroData._();

  factory Gget_services_without_synchroData(
          [void Function(Gget_services_without_synchroDataBuilder b) updates]) =
      _$Gget_services_without_synchroData;

  static void _initializeBuilder(Gget_services_without_synchroDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_services_without_synchroData_fetchCatalogueServices
      get fetchCatalogueServices;
  static Serializer<Gget_services_without_synchroData> get serializer =>
      _$ggetServicesWithoutSynchroDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_services_without_synchroData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_services_without_synchroData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_services_without_synchroData.serializer,
        json,
      );
}

abstract class Gget_services_without_synchroData_fetchCatalogueServices
    implements
        Built<Gget_services_without_synchroData_fetchCatalogueServices,
            Gget_services_without_synchroData_fetchCatalogueServicesBuilder> {
  Gget_services_without_synchroData_fetchCatalogueServices._();

  factory Gget_services_without_synchroData_fetchCatalogueServices(
      [void Function(
              Gget_services_without_synchroData_fetchCatalogueServicesBuilder b)
          updates]) = _$Gget_services_without_synchroData_fetchCatalogueServices;

  static void _initializeBuilder(
          Gget_services_without_synchroData_fetchCatalogueServicesBuilder b) =>
      b..G__typename = 'CatalogueServices';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_services_without_synchroData_fetchCatalogueServices_services>
      get services;
  BuiltList<Gget_services_without_synchroData_fetchCatalogueServices_regions>
      get regions;
  BuiltList<Gget_services_without_synchroData_fetchCatalogueServices_thematics>
      get thematics;
  static Serializer<Gget_services_without_synchroData_fetchCatalogueServices>
      get serializer =>
          _$ggetServicesWithoutSynchroDataFetchCatalogueServicesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_services_without_synchroData_fetchCatalogueServices.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_services_without_synchroData_fetchCatalogueServices? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_services_without_synchroData_fetchCatalogueServices.serializer,
        json,
      );
}

abstract class Gget_services_without_synchroData_fetchCatalogueServices_services
    implements
        Built<Gget_services_without_synchroData_fetchCatalogueServices_services,
            Gget_services_without_synchroData_fetchCatalogueServices_servicesBuilder>,
        _i2.Gservice {
  Gget_services_without_synchroData_fetchCatalogueServices_services._();

  factory Gget_services_without_synchroData_fetchCatalogueServices_services(
          [void Function(
                  Gget_services_without_synchroData_fetchCatalogueServices_servicesBuilder
                      b)
              updates]) =
      _$Gget_services_without_synchroData_fetchCatalogueServices_services;

  static void _initializeBuilder(
          Gget_services_without_synchroData_fetchCatalogueServices_servicesBuilder
              b) =>
      b..G__typename = 'Service';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  Gget_services_without_synchroData_fetchCatalogueServices_services_editor
      get editor;
  @override
  Gget_services_without_synchroData_fetchCatalogueServices_services_logo?
      get logo;
  @override
  BuiltList<
          Gget_services_without_synchroData_fetchCatalogueServices_services_finalities>?
      get finalities;
  @override
  BuiltList<String> get codesRegions;
  @override
  BuiltList<String> get thematics;
  @override
  _i3.GServiceStatusEnum? get status;
  @override
  String? get cguUrl;
  static Serializer<
          Gget_services_without_synchroData_fetchCatalogueServices_services>
      get serializer =>
          _$ggetServicesWithoutSynchroDataFetchCatalogueServicesServicesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_services_without_synchroData_fetchCatalogueServices_services
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_services_without_synchroData_fetchCatalogueServices_services?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_services_without_synchroData_fetchCatalogueServices_services
                .serializer,
            json,
          );
}

abstract class Gget_services_without_synchroData_fetchCatalogueServices_services_editor
    implements
        Built<
            Gget_services_without_synchroData_fetchCatalogueServices_services_editor,
            Gget_services_without_synchroData_fetchCatalogueServices_services_editorBuilder>,
        _i2.Gservice_editor {
  Gget_services_without_synchroData_fetchCatalogueServices_services_editor._();

  factory Gget_services_without_synchroData_fetchCatalogueServices_services_editor(
          [void Function(
                  Gget_services_without_synchroData_fetchCatalogueServices_services_editorBuilder
                      b)
              updates]) =
      _$Gget_services_without_synchroData_fetchCatalogueServices_services_editor;

  static void _initializeBuilder(
          Gget_services_without_synchroData_fetchCatalogueServices_services_editorBuilder
              b) =>
      b..G__typename = 'Editor';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get name;
  static Serializer<
          Gget_services_without_synchroData_fetchCatalogueServices_services_editor>
      get serializer =>
          _$ggetServicesWithoutSynchroDataFetchCatalogueServicesServicesEditorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_services_without_synchroData_fetchCatalogueServices_services_editor
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_services_without_synchroData_fetchCatalogueServices_services_editor?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_services_without_synchroData_fetchCatalogueServices_services_editor
                .serializer,
            json,
          );
}

abstract class Gget_services_without_synchroData_fetchCatalogueServices_services_logo
    implements
        Built<
            Gget_services_without_synchroData_fetchCatalogueServices_services_logo,
            Gget_services_without_synchroData_fetchCatalogueServices_services_logoBuilder>,
        _i2.Gservice_logo {
  Gget_services_without_synchroData_fetchCatalogueServices_services_logo._();

  factory Gget_services_without_synchroData_fetchCatalogueServices_services_logo(
          [void Function(
                  Gget_services_without_synchroData_fetchCatalogueServices_services_logoBuilder
                      b)
              updates]) =
      _$Gget_services_without_synchroData_fetchCatalogueServices_services_logo;

  static void _initializeBuilder(
          Gget_services_without_synchroData_fetchCatalogueServices_services_logoBuilder
              b) =>
      b..G__typename = 'ServiceImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get file;
  @override
  String? get type;
  static Serializer<
          Gget_services_without_synchroData_fetchCatalogueServices_services_logo>
      get serializer =>
          _$ggetServicesWithoutSynchroDataFetchCatalogueServicesServicesLogoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_services_without_synchroData_fetchCatalogueServices_services_logo
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_services_without_synchroData_fetchCatalogueServices_services_logo?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_services_without_synchroData_fetchCatalogueServices_services_logo
                .serializer,
            json,
          );
}

abstract class Gget_services_without_synchroData_fetchCatalogueServices_services_finalities
    implements
        Built<
            Gget_services_without_synchroData_fetchCatalogueServices_services_finalities,
            Gget_services_without_synchroData_fetchCatalogueServices_services_finalitiesBuilder>,
        _i2.Gservice_finalities {
  Gget_services_without_synchroData_fetchCatalogueServices_services_finalities._();

  factory Gget_services_without_synchroData_fetchCatalogueServices_services_finalities(
          [void Function(
                  Gget_services_without_synchroData_fetchCatalogueServices_services_finalitiesBuilder
                      b)
              updates]) =
      _$Gget_services_without_synchroData_fetchCatalogueServices_services_finalities;

  static void _initializeBuilder(
          Gget_services_without_synchroData_fetchCatalogueServices_services_finalitiesBuilder
              b) =>
      b..G__typename = 'CatalogFinalityModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get icone;
  @override
  String get libelle;
  @override
  String get description;
  static Serializer<
          Gget_services_without_synchroData_fetchCatalogueServices_services_finalities>
      get serializer =>
          _$ggetServicesWithoutSynchroDataFetchCatalogueServicesServicesFinalitiesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_services_without_synchroData_fetchCatalogueServices_services_finalities
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_services_without_synchroData_fetchCatalogueServices_services_finalities?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_services_without_synchroData_fetchCatalogueServices_services_finalities
                .serializer,
            json,
          );
}

abstract class Gget_services_without_synchroData_fetchCatalogueServices_regions
    implements
        Built<Gget_services_without_synchroData_fetchCatalogueServices_regions,
            Gget_services_without_synchroData_fetchCatalogueServices_regionsBuilder>,
        _i2.Gregion {
  Gget_services_without_synchroData_fetchCatalogueServices_regions._();

  factory Gget_services_without_synchroData_fetchCatalogueServices_regions(
          [void Function(
                  Gget_services_without_synchroData_fetchCatalogueServices_regionsBuilder
                      b)
              updates]) =
      _$Gget_services_without_synchroData_fetchCatalogueServices_regions;

  static void _initializeBuilder(
          Gget_services_without_synchroData_fetchCatalogueServices_regionsBuilder
              b) =>
      b..G__typename = 'Region';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get code;
  @override
  String get label;
  static Serializer<
          Gget_services_without_synchroData_fetchCatalogueServices_regions>
      get serializer =>
          _$ggetServicesWithoutSynchroDataFetchCatalogueServicesRegionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_services_without_synchroData_fetchCatalogueServices_regions
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_services_without_synchroData_fetchCatalogueServices_regions?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_services_without_synchroData_fetchCatalogueServices_regions
                .serializer,
            json,
          );
}

abstract class Gget_services_without_synchroData_fetchCatalogueServices_thematics
    implements
        Built<
            Gget_services_without_synchroData_fetchCatalogueServices_thematics,
            Gget_services_without_synchroData_fetchCatalogueServices_thematicsBuilder>,
        _i2.Gthematics {
  Gget_services_without_synchroData_fetchCatalogueServices_thematics._();

  factory Gget_services_without_synchroData_fetchCatalogueServices_thematics(
          [void Function(
                  Gget_services_without_synchroData_fetchCatalogueServices_thematicsBuilder
                      b)
              updates]) =
      _$Gget_services_without_synchroData_fetchCatalogueServices_thematics;

  static void _initializeBuilder(
          Gget_services_without_synchroData_fetchCatalogueServices_thematicsBuilder
              b) =>
      b..G__typename = 'Thematics';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get code;
  @override
  String get label;
  static Serializer<
          Gget_services_without_synchroData_fetchCatalogueServices_thematics>
      get serializer =>
          _$ggetServicesWithoutSynchroDataFetchCatalogueServicesThematicsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_services_without_synchroData_fetchCatalogueServices_thematics
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_services_without_synchroData_fetchCatalogueServices_thematics?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_services_without_synchroData_fetchCatalogueServices_thematics
                .serializer,
            json,
          );
}
