// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_aidants_aides_fetch_potentiel_aidant.query.data.gql.g.dart';

abstract class Gfetch_potentiel_aidantData
    implements
        Built<Gfetch_potentiel_aidantData, Gfetch_potentiel_aidantDataBuilder> {
  Gfetch_potentiel_aidantData._();

  factory Gfetch_potentiel_aidantData(
          [void Function(Gfetch_potentiel_aidantDataBuilder b) updates]) =
      _$Gfetch_potentiel_aidantData;

  static void _initializeBuilder(Gfetch_potentiel_aidantDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate
      get delegationMatchPotentialDelegate;
  static Serializer<Gfetch_potentiel_aidantData> get serializer =>
      _$gfetchPotentielAidantDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gfetch_potentiel_aidantData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gfetch_potentiel_aidantData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gfetch_potentiel_aidantData.serializer,
        json,
      );
}

abstract class Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate
    implements
        Built<Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate,
            Gfetch_potentiel_aidantData_delegationMatchPotentialDelegateBuilder> {
  Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate._();

  factory Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate(
          [void Function(
                  Gfetch_potentiel_aidantData_delegationMatchPotentialDelegateBuilder
                      b)
              updates]) =
      _$Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate;

  static void _initializeBuilder(
          Gfetch_potentiel_aidantData_delegationMatchPotentialDelegateBuilder
              b) =>
      b..G__typename = 'DelegationMatchPotentialDelegatePayload';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get idp;
  String get givenNames;
  String get familyName;
  String get birthDate;
  String get transactionId;
  String get ins;
  static Serializer<
          Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate>
      get serializer =>
          _$gfetchPotentielAidantDataDelegationMatchPotentialDelegateSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate.serializer,
        json,
      );
}
