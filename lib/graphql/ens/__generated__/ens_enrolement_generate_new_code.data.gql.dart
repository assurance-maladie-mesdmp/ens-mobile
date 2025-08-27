// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_enrolement_liste_rattachement.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_enrolement_generate_new_code.data.gql.g.dart';

abstract class Ggenerate_new_enrolement_codeData
    implements
        Built<Ggenerate_new_enrolement_codeData,
            Ggenerate_new_enrolement_codeDataBuilder> {
  Ggenerate_new_enrolement_codeData._();

  factory Ggenerate_new_enrolement_codeData(
          [void Function(Ggenerate_new_enrolement_codeDataBuilder b) updates]) =
      _$Ggenerate_new_enrolement_codeData;

  static void _initializeBuilder(Ggenerate_new_enrolement_codeDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode
      get generateNewEnrolmentCode;
  static Serializer<Ggenerate_new_enrolement_codeData> get serializer =>
      _$ggenerateNewEnrolementCodeDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Ggenerate_new_enrolement_codeData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Ggenerate_new_enrolement_codeData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Ggenerate_new_enrolement_codeData.serializer,
        json,
      );
}

abstract class Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode
    implements
        Built<Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode,
            Ggenerate_new_enrolement_codeData_generateNewEnrolmentCodeBuilder> {
  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode._();

  factory Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode(
      [void Function(
              Ggenerate_new_enrolement_codeData_generateNewEnrolmentCodeBuilder
                  b)
          updates]) = _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode;

  static void _initializeBuilder(
          Ggenerate_new_enrolement_codeData_generateNewEnrolmentCodeBuilder
              b) =>
      b..G__typename = 'GenerateNewEnrolmentCodeModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get firstName;
  String? get lastName;
  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact?
      get userContact;
  BuiltList<
          Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement>?
      get listeRattachement;
  static Serializer<Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode>
      get serializer =>
          _$ggenerateNewEnrolementCodeDataGenerateNewEnrolmentCodeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode.serializer,
        this,
      ) as Map<String, dynamic>);

  static Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode.serializer,
        json,
      );
}

abstract class Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact
    implements
        Built<
            Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact,
            Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContactBuilder> {
  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact._();

  factory Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact(
          [void Function(
                  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContactBuilder
                      b)
              updates]) =
      _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact;

  static void _initializeBuilder(
          Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContactBuilder
              b) =>
      b..G__typename = 'ContactModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get email;
  String? get mobileNumber;
  static Serializer<
          Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact>
      get serializer =>
          _$ggenerateNewEnrolementCodeDataGenerateNewEnrolmentCodeUserContactSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact
                .serializer,
            json,
          );
}

abstract class Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement
    implements
        Built<
            Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement,
            Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachementBuilder>,
        _i2.GprofilRattache {
  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement._();

  factory Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement(
          [void Function(
                  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachementBuilder
                      b)
              updates]) =
      _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement;

  static void _initializeBuilder(
          Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachementBuilder
              b) =>
      b..G__typename = 'ListeRattachement';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get lastName;
  @override
  String get firstName;
  @override
  String get dateOfBirth;
  @override
  String? get nir;
  static Serializer<
          Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement>
      get serializer =>
          _$ggenerateNewEnrolementCodeDataGenerateNewEnrolmentCodeListeRattachementSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement
                .serializer,
            json,
          );
}
