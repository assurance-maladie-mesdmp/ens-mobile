// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_catalogue_service_detail.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_catalogue_service_get_detail_services.query.data.gql.g.dart';

abstract class Gget_detail_serviceData
    implements Built<Gget_detail_serviceData, Gget_detail_serviceDataBuilder> {
  Gget_detail_serviceData._();

  factory Gget_detail_serviceData(
          [void Function(Gget_detail_serviceDataBuilder b) updates]) =
      _$Gget_detail_serviceData;

  static void _initializeBuilder(Gget_detail_serviceDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_detail_serviceData_fetchServiceById get fetchServiceById;
  static Serializer<Gget_detail_serviceData> get serializer =>
      _$ggetDetailServiceDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_detail_serviceData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_detail_serviceData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_detail_serviceData.serializer,
        json,
      );
}

abstract class Gget_detail_serviceData_fetchServiceById
    implements
        Built<Gget_detail_serviceData_fetchServiceById,
            Gget_detail_serviceData_fetchServiceByIdBuilder>,
        _i2.GdetailService {
  Gget_detail_serviceData_fetchServiceById._();

  factory Gget_detail_serviceData_fetchServiceById(
      [void Function(Gget_detail_serviceData_fetchServiceByIdBuilder b)
          updates]) = _$Gget_detail_serviceData_fetchServiceById;

  static void _initializeBuilder(
          Gget_detail_serviceData_fetchServiceByIdBuilder b) =>
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
  String? get longDescription;
  @override
  Gget_detail_serviceData_fetchServiceById_editor get editor;
  @override
  Gget_detail_serviceData_fetchServiceById_logo? get logo;
  @override
  String? get webUrl;
  @override
  String? get iOsUrl;
  @override
  String? get androidUrl;
  @override
  bool? get consumerDevice;
  @override
  bool? get medicalDevice;
  @override
  String? get economicalModel;
  @override
  BuiltList<Gget_detail_serviceData_fetchServiceById_screenshots>?
      get screenshots;
  @override
  String? get cguUrl;
  @override
  bool get hasEchangeDonnees;
  @override
  BuiltList<Gget_detail_serviceData_fetchServiceById_finalities>?
      get finalities;
  @override
  String? get urlSynchronisation;
  @override
  _i3.GServiceStatusEnum? get status;
  static Serializer<Gget_detail_serviceData_fetchServiceById> get serializer =>
      _$ggetDetailServiceDataFetchServiceByIdSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_detail_serviceData_fetchServiceById.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_detail_serviceData_fetchServiceById? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_detail_serviceData_fetchServiceById.serializer,
        json,
      );
}

abstract class Gget_detail_serviceData_fetchServiceById_editor
    implements
        Built<Gget_detail_serviceData_fetchServiceById_editor,
            Gget_detail_serviceData_fetchServiceById_editorBuilder>,
        _i2.GdetailService_editor {
  Gget_detail_serviceData_fetchServiceById_editor._();

  factory Gget_detail_serviceData_fetchServiceById_editor(
      [void Function(Gget_detail_serviceData_fetchServiceById_editorBuilder b)
          updates]) = _$Gget_detail_serviceData_fetchServiceById_editor;

  static void _initializeBuilder(
          Gget_detail_serviceData_fetchServiceById_editorBuilder b) =>
      b..G__typename = 'Editor';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get name;
  static Serializer<Gget_detail_serviceData_fetchServiceById_editor>
      get serializer => _$ggetDetailServiceDataFetchServiceByIdEditorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_detail_serviceData_fetchServiceById_editor.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_detail_serviceData_fetchServiceById_editor? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_detail_serviceData_fetchServiceById_editor.serializer,
        json,
      );
}

abstract class Gget_detail_serviceData_fetchServiceById_logo
    implements
        Built<Gget_detail_serviceData_fetchServiceById_logo,
            Gget_detail_serviceData_fetchServiceById_logoBuilder>,
        _i2.GdetailService_logo {
  Gget_detail_serviceData_fetchServiceById_logo._();

  factory Gget_detail_serviceData_fetchServiceById_logo(
      [void Function(Gget_detail_serviceData_fetchServiceById_logoBuilder b)
          updates]) = _$Gget_detail_serviceData_fetchServiceById_logo;

  static void _initializeBuilder(
          Gget_detail_serviceData_fetchServiceById_logoBuilder b) =>
      b..G__typename = 'ServiceImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get file;
  @override
  String? get type;
  static Serializer<Gget_detail_serviceData_fetchServiceById_logo>
      get serializer => _$ggetDetailServiceDataFetchServiceByIdLogoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_detail_serviceData_fetchServiceById_logo.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_detail_serviceData_fetchServiceById_logo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_detail_serviceData_fetchServiceById_logo.serializer,
        json,
      );
}

abstract class Gget_detail_serviceData_fetchServiceById_screenshots
    implements
        Built<Gget_detail_serviceData_fetchServiceById_screenshots,
            Gget_detail_serviceData_fetchServiceById_screenshotsBuilder>,
        _i2.GdetailService_screenshots {
  Gget_detail_serviceData_fetchServiceById_screenshots._();

  factory Gget_detail_serviceData_fetchServiceById_screenshots(
      [void Function(
              Gget_detail_serviceData_fetchServiceById_screenshotsBuilder b)
          updates]) = _$Gget_detail_serviceData_fetchServiceById_screenshots;

  static void _initializeBuilder(
          Gget_detail_serviceData_fetchServiceById_screenshotsBuilder b) =>
      b..G__typename = 'ServiceImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get file;
  @override
  String? get type;
  static Serializer<Gget_detail_serviceData_fetchServiceById_screenshots>
      get serializer =>
          _$ggetDetailServiceDataFetchServiceByIdScreenshotsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_detail_serviceData_fetchServiceById_screenshots.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_detail_serviceData_fetchServiceById_screenshots? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_detail_serviceData_fetchServiceById_screenshots.serializer,
        json,
      );
}

abstract class Gget_detail_serviceData_fetchServiceById_finalities
    implements
        Built<Gget_detail_serviceData_fetchServiceById_finalities,
            Gget_detail_serviceData_fetchServiceById_finalitiesBuilder>,
        _i2.GdetailService_finalities {
  Gget_detail_serviceData_fetchServiceById_finalities._();

  factory Gget_detail_serviceData_fetchServiceById_finalities(
      [void Function(
              Gget_detail_serviceData_fetchServiceById_finalitiesBuilder b)
          updates]) = _$Gget_detail_serviceData_fetchServiceById_finalities;

  static void _initializeBuilder(
          Gget_detail_serviceData_fetchServiceById_finalitiesBuilder b) =>
      b..G__typename = 'CatalogFinalityModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get libelle;
  @override
  String get description;
  @override
  String get icone;
  static Serializer<Gget_detail_serviceData_fetchServiceById_finalities>
      get serializer =>
          _$ggetDetailServiceDataFetchServiceByIdFinalitiesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_detail_serviceData_fetchServiceById_finalities.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_detail_serviceData_fetchServiceById_finalities? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_detail_serviceData_fetchServiceById_finalities.serializer,
        json,
      );
}
