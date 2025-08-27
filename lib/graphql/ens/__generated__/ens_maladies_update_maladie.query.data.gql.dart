// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_maladies_update_maladie.query.data.gql.g.dart';

abstract class Gupdate_maladieData
    implements Built<Gupdate_maladieData, Gupdate_maladieDataBuilder> {
  Gupdate_maladieData._();

  factory Gupdate_maladieData(
          [void Function(Gupdate_maladieDataBuilder b) updates]) =
      _$Gupdate_maladieData;

  static void _initializeBuilder(Gupdate_maladieDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gupdate_maladieData_putDisease get putDisease;
  BuiltList<Gupdate_maladieData_postLinks> get postLinks;
  BuiltList<Gupdate_maladieData_deleteLinks> get deleteLinks;
  static Serializer<Gupdate_maladieData> get serializer =>
      _$gupdateMaladieDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_maladieData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_maladieData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_maladieData.serializer,
        json,
      );
}

abstract class Gupdate_maladieData_putDisease
    implements
        Built<Gupdate_maladieData_putDisease,
            Gupdate_maladieData_putDiseaseBuilder> {
  Gupdate_maladieData_putDisease._();

  factory Gupdate_maladieData_putDisease(
          [void Function(Gupdate_maladieData_putDiseaseBuilder b) updates]) =
      _$Gupdate_maladieData_putDisease;

  static void _initializeBuilder(Gupdate_maladieData_putDiseaseBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gupdate_maladieData_putDisease> get serializer =>
      _$gupdateMaladieDataPutDiseaseSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_maladieData_putDisease.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_maladieData_putDisease? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_maladieData_putDisease.serializer,
        json,
      );
}

abstract class Gupdate_maladieData_postLinks
    implements
        Built<Gupdate_maladieData_postLinks,
            Gupdate_maladieData_postLinksBuilder> {
  Gupdate_maladieData_postLinks._();

  factory Gupdate_maladieData_postLinks(
          [void Function(Gupdate_maladieData_postLinksBuilder b) updates]) =
      _$Gupdate_maladieData_postLinks;

  static void _initializeBuilder(Gupdate_maladieData_postLinksBuilder b) =>
      b..G__typename = 'LinkModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get linkId;
  static Serializer<Gupdate_maladieData_postLinks> get serializer =>
      _$gupdateMaladieDataPostLinksSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_maladieData_postLinks.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_maladieData_postLinks? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_maladieData_postLinks.serializer,
        json,
      );
}

abstract class Gupdate_maladieData_deleteLinks
    implements
        Built<Gupdate_maladieData_deleteLinks,
            Gupdate_maladieData_deleteLinksBuilder> {
  Gupdate_maladieData_deleteLinks._();

  factory Gupdate_maladieData_deleteLinks(
          [void Function(Gupdate_maladieData_deleteLinksBuilder b) updates]) =
      _$Gupdate_maladieData_deleteLinks;

  static void _initializeBuilder(Gupdate_maladieData_deleteLinksBuilder b) =>
      b..G__typename = 'DeletedLinkModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get linkId;
  static Serializer<Gupdate_maladieData_deleteLinks> get serializer =>
      _$gupdateMaladieDataDeleteLinksSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_maladieData_deleteLinks.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_maladieData_deleteLinks? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_maladieData_deleteLinks.serializer,
        json,
      );
}
