// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_catalogue_service_detail.fragment.data.gql.g.dart';

abstract class GdetailService {
  String get G__typename;
  String get id;
  String get name;
  String? get description;
  String? get longDescription;
  GdetailService_editor get editor;
  GdetailService_logo? get logo;
  String? get webUrl;
  String? get iOsUrl;
  String? get androidUrl;
  bool? get consumerDevice;
  bool? get medicalDevice;
  String? get economicalModel;
  BuiltList<GdetailService_screenshots>? get screenshots;
  String? get cguUrl;
  bool get hasEchangeDonnees;
  BuiltList<GdetailService_finalities>? get finalities;
  String? get urlSynchronisation;
  _i1.GServiceStatusEnum? get status;
  Map<String, dynamic> toJson();
}

abstract class GdetailService_editor {
  String get G__typename;
  String get name;
  Map<String, dynamic> toJson();
}

abstract class GdetailService_logo {
  String get G__typename;
  String? get file;
  String? get type;
  Map<String, dynamic> toJson();
}

abstract class GdetailService_screenshots {
  String get G__typename;
  String? get file;
  String? get type;
  Map<String, dynamic> toJson();
}

abstract class GdetailService_finalities {
  String get G__typename;
  String get libelle;
  String get description;
  String get icone;
  Map<String, dynamic> toJson();
}

abstract class GdetailServiceData
    implements
        Built<GdetailServiceData, GdetailServiceDataBuilder>,
        GdetailService {
  GdetailServiceData._();

  factory GdetailServiceData(
          [void Function(GdetailServiceDataBuilder b) updates]) =
      _$GdetailServiceData;

  static void _initializeBuilder(GdetailServiceDataBuilder b) =>
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
  GdetailServiceData_editor get editor;
  @override
  GdetailServiceData_logo? get logo;
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
  BuiltList<GdetailServiceData_screenshots>? get screenshots;
  @override
  String? get cguUrl;
  @override
  bool get hasEchangeDonnees;
  @override
  BuiltList<GdetailServiceData_finalities>? get finalities;
  @override
  String? get urlSynchronisation;
  @override
  _i1.GServiceStatusEnum? get status;
  static Serializer<GdetailServiceData> get serializer =>
      _$gdetailServiceDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GdetailServiceData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdetailServiceData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GdetailServiceData.serializer,
        json,
      );
}

abstract class GdetailServiceData_editor
    implements
        Built<GdetailServiceData_editor, GdetailServiceData_editorBuilder>,
        GdetailService_editor {
  GdetailServiceData_editor._();

  factory GdetailServiceData_editor(
          [void Function(GdetailServiceData_editorBuilder b) updates]) =
      _$GdetailServiceData_editor;

  static void _initializeBuilder(GdetailServiceData_editorBuilder b) =>
      b..G__typename = 'Editor';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get name;
  static Serializer<GdetailServiceData_editor> get serializer =>
      _$gdetailServiceDataEditorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GdetailServiceData_editor.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdetailServiceData_editor? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GdetailServiceData_editor.serializer,
        json,
      );
}

abstract class GdetailServiceData_logo
    implements
        Built<GdetailServiceData_logo, GdetailServiceData_logoBuilder>,
        GdetailService_logo {
  GdetailServiceData_logo._();

  factory GdetailServiceData_logo(
          [void Function(GdetailServiceData_logoBuilder b) updates]) =
      _$GdetailServiceData_logo;

  static void _initializeBuilder(GdetailServiceData_logoBuilder b) =>
      b..G__typename = 'ServiceImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get file;
  @override
  String? get type;
  static Serializer<GdetailServiceData_logo> get serializer =>
      _$gdetailServiceDataLogoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GdetailServiceData_logo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdetailServiceData_logo? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GdetailServiceData_logo.serializer,
        json,
      );
}

abstract class GdetailServiceData_screenshots
    implements
        Built<GdetailServiceData_screenshots,
            GdetailServiceData_screenshotsBuilder>,
        GdetailService_screenshots {
  GdetailServiceData_screenshots._();

  factory GdetailServiceData_screenshots(
          [void Function(GdetailServiceData_screenshotsBuilder b) updates]) =
      _$GdetailServiceData_screenshots;

  static void _initializeBuilder(GdetailServiceData_screenshotsBuilder b) =>
      b..G__typename = 'ServiceImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get file;
  @override
  String? get type;
  static Serializer<GdetailServiceData_screenshots> get serializer =>
      _$gdetailServiceDataScreenshotsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GdetailServiceData_screenshots.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdetailServiceData_screenshots? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GdetailServiceData_screenshots.serializer,
        json,
      );
}

abstract class GdetailServiceData_finalities
    implements
        Built<GdetailServiceData_finalities,
            GdetailServiceData_finalitiesBuilder>,
        GdetailService_finalities {
  GdetailServiceData_finalities._();

  factory GdetailServiceData_finalities(
          [void Function(GdetailServiceData_finalitiesBuilder b) updates]) =
      _$GdetailServiceData_finalities;

  static void _initializeBuilder(GdetailServiceData_finalitiesBuilder b) =>
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
  static Serializer<GdetailServiceData_finalities> get serializer =>
      _$gdetailServiceDataFinalitiesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GdetailServiceData_finalities.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdetailServiceData_finalities? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GdetailServiceData_finalities.serializer,
        json,
      );
}
