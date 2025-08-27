// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_acteur.fragment.data.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_delegation.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_aidants_aides_get_delegations_pour_aidant.query.data.gql.g.dart';

abstract class Gget_delegations_pour_aidantData
    implements
        Built<Gget_delegations_pour_aidantData,
            Gget_delegations_pour_aidantDataBuilder> {
  Gget_delegations_pour_aidantData._();

  factory Gget_delegations_pour_aidantData(
          [void Function(Gget_delegations_pour_aidantDataBuilder b) updates]) =
      _$Gget_delegations_pour_aidantData;

  static void _initializeBuilder(Gget_delegations_pour_aidantDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_delegations_pour_aidantData_delegations> get delegations;
  static Serializer<Gget_delegations_pour_aidantData> get serializer =>
      _$ggetDelegationsPourAidantDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_delegations_pour_aidantData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_delegations_pour_aidantData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_delegations_pour_aidantData.serializer,
        json,
      );
}

abstract class Gget_delegations_pour_aidantData_delegations
    implements
        Built<Gget_delegations_pour_aidantData_delegations,
            Gget_delegations_pour_aidantData_delegationsBuilder>,
        _i2.Gdelegation {
  Gget_delegations_pour_aidantData_delegations._();

  factory Gget_delegations_pour_aidantData_delegations(
      [void Function(Gget_delegations_pour_aidantData_delegationsBuilder b)
          updates]) = _$Gget_delegations_pour_aidantData_delegations;

  static void _initializeBuilder(
          Gget_delegations_pour_aidantData_delegationsBuilder b) =>
      b..G__typename = 'Delegation';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  Gget_delegations_pour_aidantData_delegations_delegate? get delegate;
  @override
  Gget_delegations_pour_aidantData_delegations_delegator? get delegator;
  @override
  String get startDate;
  @override
  String get endDate;
  static Serializer<Gget_delegations_pour_aidantData_delegations>
      get serializer => _$ggetDelegationsPourAidantDataDelegationsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_delegations_pour_aidantData_delegations.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_delegations_pour_aidantData_delegations? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_delegations_pour_aidantData_delegations.serializer,
        json,
      );
}

abstract class Gget_delegations_pour_aidantData_delegations_delegate
    implements
        Built<Gget_delegations_pour_aidantData_delegations_delegate,
            Gget_delegations_pour_aidantData_delegations_delegateBuilder>,
        _i2.Gdelegation_delegate,
        _i3.Gacteur {
  Gget_delegations_pour_aidantData_delegations_delegate._();

  factory Gget_delegations_pour_aidantData_delegations_delegate(
      [void Function(
              Gget_delegations_pour_aidantData_delegations_delegateBuilder b)
          updates]) = _$Gget_delegations_pour_aidantData_delegations_delegate;

  static void _initializeBuilder(
          Gget_delegations_pour_aidantData_delegations_delegateBuilder b) =>
      b..G__typename = 'DelegationActor';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get idp;
  @override
  String get givenNames;
  @override
  String get familyName;
  @override
  String get birthDate;
  @override
  _i4.GGender get gender;
  static Serializer<Gget_delegations_pour_aidantData_delegations_delegate>
      get serializer =>
          _$ggetDelegationsPourAidantDataDelegationsDelegateSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_delegations_pour_aidantData_delegations_delegate.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_delegations_pour_aidantData_delegations_delegate? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_delegations_pour_aidantData_delegations_delegate.serializer,
        json,
      );
}

abstract class Gget_delegations_pour_aidantData_delegations_delegator
    implements
        Built<Gget_delegations_pour_aidantData_delegations_delegator,
            Gget_delegations_pour_aidantData_delegations_delegatorBuilder>,
        _i2.Gdelegation_delegator,
        _i3.Gacteur {
  Gget_delegations_pour_aidantData_delegations_delegator._();

  factory Gget_delegations_pour_aidantData_delegations_delegator(
      [void Function(
              Gget_delegations_pour_aidantData_delegations_delegatorBuilder b)
          updates]) = _$Gget_delegations_pour_aidantData_delegations_delegator;

  static void _initializeBuilder(
          Gget_delegations_pour_aidantData_delegations_delegatorBuilder b) =>
      b..G__typename = 'DelegationActor';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get idp;
  @override
  String get givenNames;
  @override
  String get familyName;
  @override
  String get birthDate;
  @override
  _i4.GGender get gender;
  static Serializer<Gget_delegations_pour_aidantData_delegations_delegator>
      get serializer =>
          _$ggetDelegationsPourAidantDataDelegationsDelegatorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_delegations_pour_aidantData_delegations_delegator.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_delegations_pour_aidantData_delegations_delegator? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_delegations_pour_aidantData_delegations_delegator.serializer,
        json,
      );
}
