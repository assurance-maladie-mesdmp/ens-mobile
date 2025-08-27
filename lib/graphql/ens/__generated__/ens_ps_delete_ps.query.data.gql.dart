// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_ps_delete_ps.query.data.gql.g.dart';

abstract class Gdelete_professionnel_santeData
    implements
        Built<Gdelete_professionnel_santeData,
            Gdelete_professionnel_santeDataBuilder> {
  Gdelete_professionnel_santeData._();

  factory Gdelete_professionnel_santeData(
          [void Function(Gdelete_professionnel_santeDataBuilder b) updates]) =
      _$Gdelete_professionnel_santeData;

  static void _initializeBuilder(Gdelete_professionnel_santeDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gdelete_professionnel_santeData_deleteHealthProfessional
      get deleteHealthProfessional;
  static Serializer<Gdelete_professionnel_santeData> get serializer =>
      _$gdeleteProfessionnelSanteDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_professionnel_santeData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_professionnel_santeData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_professionnel_santeData.serializer,
        json,
      );
}

abstract class Gdelete_professionnel_santeData_deleteHealthProfessional
    implements
        Built<Gdelete_professionnel_santeData_deleteHealthProfessional,
            Gdelete_professionnel_santeData_deleteHealthProfessionalBuilder> {
  Gdelete_professionnel_santeData_deleteHealthProfessional._();

  factory Gdelete_professionnel_santeData_deleteHealthProfessional(
      [void Function(
              Gdelete_professionnel_santeData_deleteHealthProfessionalBuilder b)
          updates]) = _$Gdelete_professionnel_santeData_deleteHealthProfessional;

  static void _initializeBuilder(
          Gdelete_professionnel_santeData_deleteHealthProfessionalBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gdelete_professionnel_santeData_deleteHealthProfessional>
      get serializer =>
          _$gdeleteProfessionnelSanteDataDeleteHealthProfessionalSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_professionnel_santeData_deleteHealthProfessional.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_professionnel_santeData_deleteHealthProfessional? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_professionnel_santeData_deleteHealthProfessional.serializer,
        json,
      );
}
