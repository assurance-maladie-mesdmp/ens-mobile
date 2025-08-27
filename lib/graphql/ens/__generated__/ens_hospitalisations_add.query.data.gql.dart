// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_hospitalisations_add.query.data.gql.g.dart';

abstract class Gadd_hospitalisationData
    implements
        Built<Gadd_hospitalisationData, Gadd_hospitalisationDataBuilder> {
  Gadd_hospitalisationData._();

  factory Gadd_hospitalisationData(
          [void Function(Gadd_hospitalisationDataBuilder b) updates]) =
      _$Gadd_hospitalisationData;

  static void _initializeBuilder(Gadd_hospitalisationDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gadd_hospitalisationData_postHospitalization get postHospitalization;
  static Serializer<Gadd_hospitalisationData> get serializer =>
      _$gaddHospitalisationDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_hospitalisationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_hospitalisationData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_hospitalisationData.serializer,
        json,
      );
}

abstract class Gadd_hospitalisationData_postHospitalization
    implements
        Built<Gadd_hospitalisationData_postHospitalization,
            Gadd_hospitalisationData_postHospitalizationBuilder> {
  Gadd_hospitalisationData_postHospitalization._();

  factory Gadd_hospitalisationData_postHospitalization(
      [void Function(Gadd_hospitalisationData_postHospitalizationBuilder b)
          updates]) = _$Gadd_hospitalisationData_postHospitalization;

  static void _initializeBuilder(
          Gadd_hospitalisationData_postHospitalizationBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gadd_hospitalisationData_postHospitalization>
      get serializer => _$gaddHospitalisationDataPostHospitalizationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_hospitalisationData_postHospitalization.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_hospitalisationData_postHospitalization? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_hospitalisationData_postHospitalization.serializer,
        json,
      );
}
