// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_partage_profil_get_partage_profil.query.data.gql.g.dart';

abstract class Gget_partage_profilData
    implements Built<Gget_partage_profilData, Gget_partage_profilDataBuilder> {
  Gget_partage_profilData._();

  factory Gget_partage_profilData(
          [void Function(Gget_partage_profilDataBuilder b) updates]) =
      _$Gget_partage_profilData;

  static void _initializeBuilder(Gget_partage_profilDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_partage_profilData_getLegalRepresentatives get getLegalRepresentatives;
  static Serializer<Gget_partage_profilData> get serializer =>
      _$ggetPartageProfilDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_partage_profilData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_partage_profilData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_partage_profilData.serializer,
        json,
      );
}

abstract class Gget_partage_profilData_getLegalRepresentatives
    implements
        Built<Gget_partage_profilData_getLegalRepresentatives,
            Gget_partage_profilData_getLegalRepresentativesBuilder> {
  Gget_partage_profilData_getLegalRepresentatives._();

  factory Gget_partage_profilData_getLegalRepresentatives(
      [void Function(Gget_partage_profilData_getLegalRepresentativesBuilder b)
          updates]) = _$Gget_partage_profilData_getLegalRepresentatives;

  static void _initializeBuilder(
          Gget_partage_profilData_getLegalRepresentativesBuilder b) =>
      b..G__typename = 'LegalRepresentativeModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<
          Gget_partage_profilData_getLegalRepresentatives_legalRepresentative>?
      get legalRepresentative;
  static Serializer<Gget_partage_profilData_getLegalRepresentatives>
      get serializer =>
          _$ggetPartageProfilDataGetLegalRepresentativesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_partage_profilData_getLegalRepresentatives.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_partage_profilData_getLegalRepresentatives? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_partage_profilData_getLegalRepresentatives.serializer,
        json,
      );
}

abstract class Gget_partage_profilData_getLegalRepresentatives_legalRepresentative
    implements
        Built<
            Gget_partage_profilData_getLegalRepresentatives_legalRepresentative,
            Gget_partage_profilData_getLegalRepresentatives_legalRepresentativeBuilder> {
  Gget_partage_profilData_getLegalRepresentatives_legalRepresentative._();

  factory Gget_partage_profilData_getLegalRepresentatives_legalRepresentative(
          [void Function(
                  Gget_partage_profilData_getLegalRepresentatives_legalRepresentativeBuilder
                      b)
              updates]) =
      _$Gget_partage_profilData_getLegalRepresentatives_legalRepresentative;

  static void _initializeBuilder(
          Gget_partage_profilData_getLegalRepresentatives_legalRepresentativeBuilder
              b) =>
      b..G__typename = 'LegalRepresentative';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get lastName;
  String get firstName;
  _i2.GDemandeAccesStatutEnum get statut;
  static Serializer<
          Gget_partage_profilData_getLegalRepresentatives_legalRepresentative>
      get serializer =>
          _$ggetPartageProfilDataGetLegalRepresentativesLegalRepresentativeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_partage_profilData_getLegalRepresentatives_legalRepresentative
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_partage_profilData_getLegalRepresentatives_legalRepresentative?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_partage_profilData_getLegalRepresentatives_legalRepresentative
                .serializer,
            json,
          );
}
