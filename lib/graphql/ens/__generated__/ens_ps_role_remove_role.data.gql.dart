// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_ps_role_remove_role.data.gql.g.dart';

abstract class Gdelete_professionnel_sante_roleData
    implements
        Built<Gdelete_professionnel_sante_roleData,
            Gdelete_professionnel_sante_roleDataBuilder> {
  Gdelete_professionnel_sante_roleData._();

  factory Gdelete_professionnel_sante_roleData(
      [void Function(Gdelete_professionnel_sante_roleDataBuilder b)
          updates]) = _$Gdelete_professionnel_sante_roleData;

  static void _initializeBuilder(
          Gdelete_professionnel_sante_roleDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole
      get removeHealthProfessionalRole;
  static Serializer<Gdelete_professionnel_sante_roleData> get serializer =>
      _$gdeleteProfessionnelSanteRoleDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_professionnel_sante_roleData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_professionnel_sante_roleData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_professionnel_sante_roleData.serializer,
        json,
      );
}

abstract class Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole
    implements
        Built<Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole,
            Gdelete_professionnel_sante_roleData_removeHealthProfessionalRoleBuilder> {
  Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole._();

  factory Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole(
          [void Function(
                  Gdelete_professionnel_sante_roleData_removeHealthProfessionalRoleBuilder
                      b)
              updates]) =
      _$Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole;

  static void _initializeBuilder(
          Gdelete_professionnel_sante_roleData_removeHealthProfessionalRoleBuilder
              b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<
          Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole>
      get serializer =>
          _$gdeleteProfessionnelSanteRoleDataRemoveHealthProfessionalRoleSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole
                .serializer,
            json,
          );
}
