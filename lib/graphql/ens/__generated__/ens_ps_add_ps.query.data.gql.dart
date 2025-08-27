// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_ps_add_ps.query.data.gql.g.dart';

abstract class Gadd_professionnel_de_santeData
    implements
        Built<Gadd_professionnel_de_santeData,
            Gadd_professionnel_de_santeDataBuilder> {
  Gadd_professionnel_de_santeData._();

  factory Gadd_professionnel_de_santeData(
          [void Function(Gadd_professionnel_de_santeDataBuilder b) updates]) =
      _$Gadd_professionnel_de_santeData;

  static void _initializeBuilder(Gadd_professionnel_de_santeDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gadd_professionnel_de_santeData_postHealthProfessional
      get postHealthProfessional;
  static Serializer<Gadd_professionnel_de_santeData> get serializer =>
      _$gaddProfessionnelDeSanteDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_professionnel_de_santeData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_professionnel_de_santeData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_professionnel_de_santeData.serializer,
        json,
      );
}

abstract class Gadd_professionnel_de_santeData_postHealthProfessional
    implements
        Built<Gadd_professionnel_de_santeData_postHealthProfessional,
            Gadd_professionnel_de_santeData_postHealthProfessionalBuilder> {
  Gadd_professionnel_de_santeData_postHealthProfessional._();

  factory Gadd_professionnel_de_santeData_postHealthProfessional(
      [void Function(
              Gadd_professionnel_de_santeData_postHealthProfessionalBuilder b)
          updates]) = _$Gadd_professionnel_de_santeData_postHealthProfessional;

  static void _initializeBuilder(
          Gadd_professionnel_de_santeData_postHealthProfessionalBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gadd_professionnel_de_santeData_postHealthProfessional>
      get serializer =>
          _$gaddProfessionnelDeSanteDataPostHealthProfessionalSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_professionnel_de_santeData_postHealthProfessional.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_professionnel_de_santeData_postHealthProfessional? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_professionnel_de_santeData_postHealthProfessional.serializer,
        json,
      );
}
