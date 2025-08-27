// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_acteur_sante_auteur.fragment.data.gql.g.dart';

abstract class GepisodePsAuteur {
  String get G__typename;
  String get id;
  String get fullName;
  BuiltList<String> get profession;
  BuiltList<String> get specialities;
  Map<String, dynamic> toJson();
}

abstract class GepisodePsAuteurData
    implements
        Built<GepisodePsAuteurData, GepisodePsAuteurDataBuilder>,
        GepisodePsAuteur {
  GepisodePsAuteurData._();

  factory GepisodePsAuteurData(
          [void Function(GepisodePsAuteurDataBuilder b) updates]) =
      _$GepisodePsAuteurData;

  static void _initializeBuilder(GepisodePsAuteurDataBuilder b) =>
      b..G__typename = 'EpisodePsAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get fullName;
  @override
  BuiltList<String> get profession;
  @override
  BuiltList<String> get specialities;
  static Serializer<GepisodePsAuteurData> get serializer =>
      _$gepisodePsAuteurDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GepisodePsAuteurData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodePsAuteurData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GepisodePsAuteurData.serializer,
        json,
      );
}

abstract class GepisodeEsAuteur {
  String get G__typename;
  String get id;
  String get name;
  Map<String, dynamic> toJson();
}

abstract class GepisodeEsAuteurData
    implements
        Built<GepisodeEsAuteurData, GepisodeEsAuteurDataBuilder>,
        GepisodeEsAuteur {
  GepisodeEsAuteurData._();

  factory GepisodeEsAuteurData(
          [void Function(GepisodeEsAuteurDataBuilder b) updates]) =
      _$GepisodeEsAuteurData;

  static void _initializeBuilder(GepisodeEsAuteurDataBuilder b) =>
      b..G__typename = 'EpisodeEsAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  static Serializer<GepisodeEsAuteurData> get serializer =>
      _$gepisodeEsAuteurDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GepisodeEsAuteurData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeEsAuteurData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GepisodeEsAuteurData.serializer,
        json,
      );
}
