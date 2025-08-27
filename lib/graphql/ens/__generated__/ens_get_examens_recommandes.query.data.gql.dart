// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_get_examens_recommandes.query.data.gql.g.dart';

abstract class Gget_examens_recommandesData
    implements
        Built<Gget_examens_recommandesData,
            Gget_examens_recommandesDataBuilder> {
  Gget_examens_recommandesData._();

  factory Gget_examens_recommandesData(
          [void Function(Gget_examens_recommandesDataBuilder b) updates]) =
      _$Gget_examens_recommandesData;

  static void _initializeBuilder(Gget_examens_recommandesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_examens_recommandesData_fetchPreventionsByPatientId>?
      get fetchPreventionsByPatientId;
  static Serializer<Gget_examens_recommandesData> get serializer =>
      _$ggetExamensRecommandesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_examens_recommandesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_examens_recommandesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_examens_recommandesData.serializer,
        json,
      );
}

abstract class Gget_examens_recommandesData_fetchPreventionsByPatientId
    implements
        Built<Gget_examens_recommandesData_fetchPreventionsByPatientId,
            Gget_examens_recommandesData_fetchPreventionsByPatientIdBuilder> {
  Gget_examens_recommandesData_fetchPreventionsByPatientId._();

  factory Gget_examens_recommandesData_fetchPreventionsByPatientId(
      [void Function(
              Gget_examens_recommandesData_fetchPreventionsByPatientIdBuilder b)
          updates]) = _$Gget_examens_recommandesData_fetchPreventionsByPatientId;

  static void _initializeBuilder(
          Gget_examens_recommandesData_fetchPreventionsByPatientIdBuilder b) =>
      b..G__typename = 'PreventionViewModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get dateDebutPrevention;
  String get dateFinPrevention;
  _i2.GPreventionTypeEnum get statut;
  static Serializer<Gget_examens_recommandesData_fetchPreventionsByPatientId>
      get serializer =>
          _$ggetExamensRecommandesDataFetchPreventionsByPatientIdSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_examens_recommandesData_fetchPreventionsByPatientId.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_examens_recommandesData_fetchPreventionsByPatientId? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_examens_recommandesData_fetchPreventionsByPatientId.serializer,
        json,
      );
}
