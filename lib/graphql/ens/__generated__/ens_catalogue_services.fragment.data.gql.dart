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

part 'ens_catalogue_services.fragment.data.gql.g.dart';

abstract class Gservice {
  String get G__typename;
  String get id;
  String get name;
  String? get description;
  Gservice_editor get editor;
  Gservice_logo? get logo;
  BuiltList<Gservice_finalities>? get finalities;
  BuiltList<String> get codesRegions;
  BuiltList<String> get thematics;
  _i1.GServiceStatusEnum? get status;
  String? get cguUrl;
  Map<String, dynamic> toJson();
}

abstract class Gservice_editor {
  String get G__typename;
  String get name;
  Map<String, dynamic> toJson();
}

abstract class Gservice_logo {
  String get G__typename;
  String? get file;
  String? get type;
  Map<String, dynamic> toJson();
}

abstract class Gservice_finalities {
  String get G__typename;
  String get icone;
  String get libelle;
  String get description;
  Map<String, dynamic> toJson();
}

abstract class GserviceData
    implements Built<GserviceData, GserviceDataBuilder>, Gservice {
  GserviceData._();

  factory GserviceData([void Function(GserviceDataBuilder b) updates]) =
      _$GserviceData;

  static void _initializeBuilder(GserviceDataBuilder b) =>
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
  GserviceData_editor get editor;
  @override
  GserviceData_logo? get logo;
  @override
  BuiltList<GserviceData_finalities>? get finalities;
  @override
  BuiltList<String> get codesRegions;
  @override
  BuiltList<String> get thematics;
  @override
  _i1.GServiceStatusEnum? get status;
  @override
  String? get cguUrl;
  static Serializer<GserviceData> get serializer => _$gserviceDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GserviceData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GserviceData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GserviceData.serializer,
        json,
      );
}

abstract class GserviceData_editor
    implements
        Built<GserviceData_editor, GserviceData_editorBuilder>,
        Gservice_editor {
  GserviceData_editor._();

  factory GserviceData_editor(
          [void Function(GserviceData_editorBuilder b) updates]) =
      _$GserviceData_editor;

  static void _initializeBuilder(GserviceData_editorBuilder b) =>
      b..G__typename = 'Editor';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get name;
  static Serializer<GserviceData_editor> get serializer =>
      _$gserviceDataEditorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GserviceData_editor.serializer,
        this,
      ) as Map<String, dynamic>);

  static GserviceData_editor? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GserviceData_editor.serializer,
        json,
      );
}

abstract class GserviceData_logo
    implements
        Built<GserviceData_logo, GserviceData_logoBuilder>,
        Gservice_logo {
  GserviceData_logo._();

  factory GserviceData_logo(
          [void Function(GserviceData_logoBuilder b) updates]) =
      _$GserviceData_logo;

  static void _initializeBuilder(GserviceData_logoBuilder b) =>
      b..G__typename = 'ServiceImage';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get file;
  @override
  String? get type;
  static Serializer<GserviceData_logo> get serializer =>
      _$gserviceDataLogoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GserviceData_logo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GserviceData_logo? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GserviceData_logo.serializer,
        json,
      );
}

abstract class GserviceData_finalities
    implements
        Built<GserviceData_finalities, GserviceData_finalitiesBuilder>,
        Gservice_finalities {
  GserviceData_finalities._();

  factory GserviceData_finalities(
          [void Function(GserviceData_finalitiesBuilder b) updates]) =
      _$GserviceData_finalities;

  static void _initializeBuilder(GserviceData_finalitiesBuilder b) =>
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
  static Serializer<GserviceData_finalities> get serializer =>
      _$gserviceDataFinalitiesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GserviceData_finalities.serializer,
        this,
      ) as Map<String, dynamic>);

  static GserviceData_finalities? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GserviceData_finalities.serializer,
        json,
      );
}

abstract class Gregion {
  String get G__typename;
  String get code;
  String get label;
  Map<String, dynamic> toJson();
}

abstract class GregionData
    implements Built<GregionData, GregionDataBuilder>, Gregion {
  GregionData._();

  factory GregionData([void Function(GregionDataBuilder b) updates]) =
      _$GregionData;

  static void _initializeBuilder(GregionDataBuilder b) =>
      b..G__typename = 'Region';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get code;
  @override
  String get label;
  static Serializer<GregionData> get serializer => _$gregionDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GregionData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GregionData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GregionData.serializer,
        json,
      );
}

abstract class Gthematics {
  String get G__typename;
  String get code;
  String get label;
  Map<String, dynamic> toJson();
}

abstract class GthematicsData
    implements Built<GthematicsData, GthematicsDataBuilder>, Gthematics {
  GthematicsData._();

  factory GthematicsData([void Function(GthematicsDataBuilder b) updates]) =
      _$GthematicsData;

  static void _initializeBuilder(GthematicsDataBuilder b) =>
      b..G__typename = 'Thematics';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get code;
  @override
  String get label;
  static Serializer<GthematicsData> get serializer =>
      _$gthematicsDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GthematicsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GthematicsData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GthematicsData.serializer,
        json,
      );
}
