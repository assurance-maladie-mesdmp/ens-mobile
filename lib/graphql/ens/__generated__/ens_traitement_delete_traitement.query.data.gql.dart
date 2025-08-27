// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_traitement_delete_traitement.query.data.gql.g.dart';

abstract class Gdelete_traitementData
    implements Built<Gdelete_traitementData, Gdelete_traitementDataBuilder> {
  Gdelete_traitementData._();

  factory Gdelete_traitementData(
          [void Function(Gdelete_traitementDataBuilder b) updates]) =
      _$Gdelete_traitementData;

  static void _initializeBuilder(Gdelete_traitementDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gdelete_traitementData_deleteTreatment get deleteTreatment;
  static Serializer<Gdelete_traitementData> get serializer =>
      _$gdeleteTraitementDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_traitementData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_traitementData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_traitementData.serializer,
        json,
      );
}

abstract class Gdelete_traitementData_deleteTreatment
    implements
        Built<Gdelete_traitementData_deleteTreatment,
            Gdelete_traitementData_deleteTreatmentBuilder> {
  Gdelete_traitementData_deleteTreatment._();

  factory Gdelete_traitementData_deleteTreatment(
      [void Function(Gdelete_traitementData_deleteTreatmentBuilder b)
          updates]) = _$Gdelete_traitementData_deleteTreatment;

  static void _initializeBuilder(
          Gdelete_traitementData_deleteTreatmentBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gdelete_traitementData_deleteTreatment> get serializer =>
      _$gdeleteTraitementDataDeleteTreatmentSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_traitementData_deleteTreatment.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_traitementData_deleteTreatment? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_traitementData_deleteTreatment.serializer,
        json,
      );
}
