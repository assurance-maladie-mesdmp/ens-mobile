// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_hospitalisations_update.query.data.gql.g.dart';

abstract class Gupdate_hospitalisationData
    implements
        Built<Gupdate_hospitalisationData, Gupdate_hospitalisationDataBuilder> {
  Gupdate_hospitalisationData._();

  factory Gupdate_hospitalisationData(
          [void Function(Gupdate_hospitalisationDataBuilder b) updates]) =
      _$Gupdate_hospitalisationData;

  static void _initializeBuilder(Gupdate_hospitalisationDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gupdate_hospitalisationData_putHospitalization get putHospitalization;
  BuiltList<Gupdate_hospitalisationData_postLinks> get postLinks;
  BuiltList<Gupdate_hospitalisationData_deleteLinks> get deleteLinks;
  static Serializer<Gupdate_hospitalisationData> get serializer =>
      _$gupdateHospitalisationDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_hospitalisationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_hospitalisationData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_hospitalisationData.serializer,
        json,
      );
}

abstract class Gupdate_hospitalisationData_putHospitalization
    implements
        Built<Gupdate_hospitalisationData_putHospitalization,
            Gupdate_hospitalisationData_putHospitalizationBuilder> {
  Gupdate_hospitalisationData_putHospitalization._();

  factory Gupdate_hospitalisationData_putHospitalization(
      [void Function(Gupdate_hospitalisationData_putHospitalizationBuilder b)
          updates]) = _$Gupdate_hospitalisationData_putHospitalization;

  static void _initializeBuilder(
          Gupdate_hospitalisationData_putHospitalizationBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gupdate_hospitalisationData_putHospitalization>
      get serializer =>
          _$gupdateHospitalisationDataPutHospitalizationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_hospitalisationData_putHospitalization.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_hospitalisationData_putHospitalization? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_hospitalisationData_putHospitalization.serializer,
        json,
      );
}

abstract class Gupdate_hospitalisationData_postLinks
    implements
        Built<Gupdate_hospitalisationData_postLinks,
            Gupdate_hospitalisationData_postLinksBuilder> {
  Gupdate_hospitalisationData_postLinks._();

  factory Gupdate_hospitalisationData_postLinks(
      [void Function(Gupdate_hospitalisationData_postLinksBuilder b)
          updates]) = _$Gupdate_hospitalisationData_postLinks;

  static void _initializeBuilder(
          Gupdate_hospitalisationData_postLinksBuilder b) =>
      b..G__typename = 'LinkModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get linkId;
  static Serializer<Gupdate_hospitalisationData_postLinks> get serializer =>
      _$gupdateHospitalisationDataPostLinksSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_hospitalisationData_postLinks.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_hospitalisationData_postLinks? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_hospitalisationData_postLinks.serializer,
        json,
      );
}

abstract class Gupdate_hospitalisationData_deleteLinks
    implements
        Built<Gupdate_hospitalisationData_deleteLinks,
            Gupdate_hospitalisationData_deleteLinksBuilder> {
  Gupdate_hospitalisationData_deleteLinks._();

  factory Gupdate_hospitalisationData_deleteLinks(
      [void Function(Gupdate_hospitalisationData_deleteLinksBuilder b)
          updates]) = _$Gupdate_hospitalisationData_deleteLinks;

  static void _initializeBuilder(
          Gupdate_hospitalisationData_deleteLinksBuilder b) =>
      b..G__typename = 'DeletedLinkModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get linkId;
  static Serializer<Gupdate_hospitalisationData_deleteLinks> get serializer =>
      _$gupdateHospitalisationDataDeleteLinksSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_hospitalisationData_deleteLinks.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_hospitalisationData_deleteLinks? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_hospitalisationData_deleteLinks.serializer,
        json,
      );
}
