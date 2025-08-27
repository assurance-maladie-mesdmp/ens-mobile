// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_traitement_update_traitement.query.data.gql.g.dart';

abstract class Gupdate_traitementData
    implements Built<Gupdate_traitementData, Gupdate_traitementDataBuilder> {
  Gupdate_traitementData._();

  factory Gupdate_traitementData(
          [void Function(Gupdate_traitementDataBuilder b) updates]) =
      _$Gupdate_traitementData;

  static void _initializeBuilder(Gupdate_traitementDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gupdate_traitementData_putTreatment get putTreatment;
  static Serializer<Gupdate_traitementData> get serializer =>
      _$gupdateTraitementDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_traitementData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_traitementData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_traitementData.serializer,
        json,
      );
}

abstract class Gupdate_traitementData_putTreatment
    implements
        Built<Gupdate_traitementData_putTreatment,
            Gupdate_traitementData_putTreatmentBuilder> {
  Gupdate_traitementData_putTreatment._();

  factory Gupdate_traitementData_putTreatment(
      [void Function(Gupdate_traitementData_putTreatmentBuilder b)
          updates]) = _$Gupdate_traitementData_putTreatment;

  static void _initializeBuilder(
          Gupdate_traitementData_putTreatmentBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gupdate_traitementData_putTreatment> get serializer =>
      _$gupdateTraitementDataPutTreatmentSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_traitementData_putTreatment.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_traitementData_putTreatment? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_traitementData_putTreatment.serializer,
        json,
      );
}
