// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_es.fragment.data.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_ps_get_ps_synchro_medecin_traitant.query.data.gql.g.dart';

abstract class Gget_pml_professionnels_sante_synchro_medecin_traitantData
    implements
        Built<Gget_pml_professionnels_sante_synchro_medecin_traitantData,
            Gget_pml_professionnels_sante_synchro_medecin_traitantDataBuilder> {
  Gget_pml_professionnels_sante_synchro_medecin_traitantData._();

  factory Gget_pml_professionnels_sante_synchro_medecin_traitantData(
      [void Function(
              Gget_pml_professionnels_sante_synchro_medecin_traitantDataBuilder
                  b)
          updates]) = _$Gget_pml_professionnels_sante_synchro_medecin_traitantData;

  static void _initializeBuilder(
          Gget_pml_professionnels_sante_synchro_medecin_traitantDataBuilder
              b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt
      get getHealthProfessionalsAndSynchroMt;
  static Serializer<Gget_pml_professionnels_sante_synchro_medecin_traitantData>
      get serializer =>
          _$ggetPmlProfessionnelsSanteSynchroMedecinTraitantDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_pml_professionnels_sante_synchro_medecin_traitantData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_pml_professionnels_sante_synchro_medecin_traitantData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_pml_professionnels_sante_synchro_medecin_traitantData.serializer,
        json,
      );
}

abstract class Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt
    implements
        Built<
            Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt,
            Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMtBuilder> {
  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt._();

  factory Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt(
          [void Function(
                  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMtBuilder
                      b)
              updates]) =
      _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt;

  static void _initializeBuilder(
          Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMtBuilder
              b) =>
      b..G__typename = 'HealthProfessionalListModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<
          Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals>
      get healthProfessionals;
  static Serializer<
          Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt>
      get serializer =>
          _$ggetPmlProfessionnelsSanteSynchroMedecinTraitantDataGetHealthProfessionalsAndSynchroMtSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt
                .serializer,
            json,
          );
}

abstract class Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals
    implements
        Built<
            Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals,
            Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionalsBuilder>,
        _i2.Gps {
  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals._();

  factory Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals(
          [void Function(
                  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionalsBuilder
                      b)
              updates]) =
      _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals;

  static void _initializeBuilder(
          Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionalsBuilder
              b) =>
      b..G__typename = 'HealthProfessionalModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get nationalId;
  @override
  String get healthProfessionalId;
  @override
  bool get declaredReferrer;
  @override
  bool get incorrectReferrer;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  BuiltList<
          Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices>?
      get exercices;
  @override
  BuiltList<
          Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses>?
      get adresses;
  @override
  _i3.GHealthProfessionalRoleEnum? get role;
  @override
  bool get active;
  static Serializer<
          Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals>
      get serializer =>
          _$ggetPmlProfessionnelsSanteSynchroMedecinTraitantDataGetHealthProfessionalsAndSynchroMtHealthProfessionalsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals
                .serializer,
            json,
          );
}

abstract class Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices
    implements
        Built<
            Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices,
            Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercicesBuilder>,
        _i2.Gps_exercices {
  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices._();

  factory Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices(
          [void Function(
                  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercicesBuilder
                      b)
              updates]) =
      _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices;

  static void _initializeBuilder(
          Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercicesBuilder
              b) =>
      b..G__typename = 'HealthProfessionalExerciceModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get profession;
  @override
  String? get specialities;
  static Serializer<
          Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices>
      get serializer =>
          _$ggetPmlProfessionnelsSanteSynchroMedecinTraitantDataGetHealthProfessionalsAndSynchroMtHealthProfessionalsExercicesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_exercices
                .serializer,
            json,
          );
}

abstract class Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses
    implements
        Built<
            Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses,
            Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adressesBuilder>,
        _i2.Gps_adresses,
        _i4.Gadresse_ps_es {
  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses._();

  factory Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses(
          [void Function(
                  Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adressesBuilder
                      b)
              updates]) =
      _$Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses;

  static void _initializeBuilder(
          Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adressesBuilder
              b) =>
      b..G__typename = 'HealthProfessionalAddressModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get adresseName;
  @override
  String? get cityZipCode;
  @override
  String? get roadNumber;
  @override
  String? get labelRoadType;
  @override
  String? get road;
  @override
  String? get commune;
  @override
  String? get numeroTelephone;
  static Serializer<
          Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses>
      get serializer =>
          _$ggetPmlProfessionnelsSanteSynchroMedecinTraitantDataGetHealthProfessionalsAndSynchroMtHealthProfessionalsAdressesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_pml_professionnels_sante_synchro_medecin_traitantData_getHealthProfessionalsAndSynchroMt_healthProfessionals_adresses
                .serializer,
            json,
          );
}
