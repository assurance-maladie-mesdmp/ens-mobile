// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_enrolement_vital_card_authentication.query.data.gql.g.dart';

abstract class Gvital_card_authenticationData
    implements
        Built<Gvital_card_authenticationData,
            Gvital_card_authenticationDataBuilder> {
  Gvital_card_authenticationData._();

  factory Gvital_card_authenticationData(
          [void Function(Gvital_card_authenticationDataBuilder b) updates]) =
      _$Gvital_card_authenticationData;

  static void _initializeBuilder(Gvital_card_authenticationDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gvital_card_authenticationData_vitalCardAuthentication
      get vitalCardAuthentication;
  static Serializer<Gvital_card_authenticationData> get serializer =>
      _$gvitalCardAuthenticationDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gvital_card_authenticationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gvital_card_authenticationData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gvital_card_authenticationData.serializer,
        json,
      );
}

abstract class Gvital_card_authenticationData_vitalCardAuthentication
    implements
        Built<Gvital_card_authenticationData_vitalCardAuthentication,
            Gvital_card_authenticationData_vitalCardAuthenticationBuilder> {
  Gvital_card_authenticationData_vitalCardAuthentication._();

  factory Gvital_card_authenticationData_vitalCardAuthentication(
      [void Function(
              Gvital_card_authenticationData_vitalCardAuthenticationBuilder b)
          updates]) = _$Gvital_card_authenticationData_vitalCardAuthentication;

  static void _initializeBuilder(
          Gvital_card_authenticationData_vitalCardAuthenticationBuilder b) =>
      b..G__typename = 'EnrolmentModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit?
      get ouvrantDroit;
  Gvital_card_authenticationData_vitalCardAuthentication_contact? get contact;
  static Serializer<Gvital_card_authenticationData_vitalCardAuthentication>
      get serializer =>
          _$gvitalCardAuthenticationDataVitalCardAuthenticationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gvital_card_authenticationData_vitalCardAuthentication.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gvital_card_authenticationData_vitalCardAuthentication? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gvital_card_authenticationData_vitalCardAuthentication.serializer,
        json,
      );
}

abstract class Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit
    implements
        Built<
            Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit,
            Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroitBuilder> {
  Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit._();

  factory Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit(
          [void Function(
                  Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroitBuilder
                      b)
              updates]) =
      _$Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit;

  static void _initializeBuilder(
          Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroitBuilder
              b) =>
      b..G__typename = 'OuvrantDroitModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte?
      get compte;
  static Serializer<
          Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit>
      get serializer =>
          _$gvitalCardAuthenticationDataVitalCardAuthenticationOuvrantDroitSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit
                .serializer,
            json,
          );
}

abstract class Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte
    implements
        Built<
            Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte,
            Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compteBuilder> {
  Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte._();

  factory Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte(
          [void Function(
                  Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compteBuilder
                      b)
              updates]) =
      _$Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte;

  static void _initializeBuilder(
          Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compteBuilder
              b) =>
      b..G__typename = 'ExistenceCompteEnsModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get isAccountFound;
  static Serializer<
          Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte>
      get serializer =>
          _$gvitalCardAuthenticationDataVitalCardAuthenticationOuvrantDroitCompteSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gvital_card_authenticationData_vitalCardAuthentication_ouvrantDroit_compte
                .serializer,
            json,
          );
}

abstract class Gvital_card_authenticationData_vitalCardAuthentication_contact
    implements
        Built<Gvital_card_authenticationData_vitalCardAuthentication_contact,
            Gvital_card_authenticationData_vitalCardAuthentication_contactBuilder> {
  Gvital_card_authenticationData_vitalCardAuthentication_contact._();

  factory Gvital_card_authenticationData_vitalCardAuthentication_contact(
          [void Function(
                  Gvital_card_authenticationData_vitalCardAuthentication_contactBuilder
                      b)
              updates]) =
      _$Gvital_card_authenticationData_vitalCardAuthentication_contact;

  static void _initializeBuilder(
          Gvital_card_authenticationData_vitalCardAuthentication_contactBuilder
              b) =>
      b..G__typename = 'ContactModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get email;
  String? get mobileNumber;
  static Serializer<
          Gvital_card_authenticationData_vitalCardAuthentication_contact>
      get serializer =>
          _$gvitalCardAuthenticationDataVitalCardAuthenticationContactSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gvital_card_authenticationData_vitalCardAuthentication_contact
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gvital_card_authenticationData_vitalCardAuthentication_contact?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gvital_card_authenticationData_vitalCardAuthentication_contact
                .serializer,
            json,
          );
}
