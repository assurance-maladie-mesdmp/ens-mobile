// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_traitement_get_nom_par_code_cip.query.data.gql.g.dart';

abstract class Gget_nom_par_code_cipData
    implements
        Built<Gget_nom_par_code_cipData, Gget_nom_par_code_cipDataBuilder> {
  Gget_nom_par_code_cipData._();

  factory Gget_nom_par_code_cipData(
          [void Function(Gget_nom_par_code_cipDataBuilder b) updates]) =
      _$Gget_nom_par_code_cipData;

  static void _initializeBuilder(Gget_nom_par_code_cipDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_nom_par_code_cipData_getByCip get getByCip;
  static Serializer<Gget_nom_par_code_cipData> get serializer =>
      _$ggetNomParCodeCipDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_nom_par_code_cipData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_nom_par_code_cipData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_nom_par_code_cipData.serializer,
        json,
      );
}

abstract class Gget_nom_par_code_cipData_getByCip
    implements
        Built<Gget_nom_par_code_cipData_getByCip,
            Gget_nom_par_code_cipData_getByCipBuilder> {
  Gget_nom_par_code_cipData_getByCip._();

  factory Gget_nom_par_code_cipData_getByCip(
      [void Function(Gget_nom_par_code_cipData_getByCipBuilder b)
          updates]) = _$Gget_nom_par_code_cipData_getByCip;

  static void _initializeBuilder(Gget_nom_par_code_cipData_getByCipBuilder b) =>
      b..G__typename = 'TreatmentRefModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  static Serializer<Gget_nom_par_code_cipData_getByCip> get serializer =>
      _$ggetNomParCodeCipDataGetByCipSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_nom_par_code_cipData_getByCip.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_nom_par_code_cipData_getByCip? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_nom_par_code_cipData_getByCip.serializer,
        json,
      );
}
