// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_traitement_add_traitement.query.data.gql.g.dart';

abstract class Gadd_traitementData
    implements Built<Gadd_traitementData, Gadd_traitementDataBuilder> {
  Gadd_traitementData._();

  factory Gadd_traitementData(
          [void Function(Gadd_traitementDataBuilder b) updates]) =
      _$Gadd_traitementData;

  static void _initializeBuilder(Gadd_traitementDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gadd_traitementData_postTreatment get postTreatment;
  static Serializer<Gadd_traitementData> get serializer =>
      _$gaddTraitementDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_traitementData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_traitementData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_traitementData.serializer,
        json,
      );
}

abstract class Gadd_traitementData_postTreatment
    implements
        Built<Gadd_traitementData_postTreatment,
            Gadd_traitementData_postTreatmentBuilder> {
  Gadd_traitementData_postTreatment._();

  factory Gadd_traitementData_postTreatment(
          [void Function(Gadd_traitementData_postTreatmentBuilder b) updates]) =
      _$Gadd_traitementData_postTreatment;

  static void _initializeBuilder(Gadd_traitementData_postTreatmentBuilder b) =>
      b..G__typename = 'TreatmentIdModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  static Serializer<Gadd_traitementData_postTreatment> get serializer =>
      _$gaddTraitementDataPostTreatmentSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_traitementData_postTreatment.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_traitementData_postTreatment? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_traitementData_postTreatment.serializer,
        json,
      );
}
