// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_ps_role_add_role_or_add_ps_and_role.data.gql.g.dart';

abstract class Gupdate_professionel_sante_roleData
    implements
        Built<Gupdate_professionel_sante_roleData,
            Gupdate_professionel_sante_roleDataBuilder> {
  Gupdate_professionel_sante_roleData._();

  factory Gupdate_professionel_sante_roleData(
      [void Function(Gupdate_professionel_sante_roleDataBuilder b)
          updates]) = _$Gupdate_professionel_sante_roleData;

  static void _initializeBuilder(
          Gupdate_professionel_sante_roleDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat
      get updateHealthProfessionalRoleByIdNat;
  static Serializer<Gupdate_professionel_sante_roleData> get serializer =>
      _$gupdateProfessionelSanteRoleDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_professionel_sante_roleData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_professionel_sante_roleData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_professionel_sante_roleData.serializer,
        json,
      );
}

abstract class Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat
    implements
        Built<
            Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat,
            Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNatBuilder> {
  Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat._();

  factory Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat(
          [void Function(
                  Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNatBuilder
                      b)
              updates]) =
      _$Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat;

  static void _initializeBuilder(
          Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNatBuilder
              b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<
          Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat>
      get serializer =>
          _$gupdateProfessionelSanteRoleDataUpdateHealthProfessionalRoleByIdNatSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat
                .serializer,
            json,
          );
}
