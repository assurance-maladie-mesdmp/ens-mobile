// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_acteur.fragment.data.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i3;

part 'ens_aidants_aides_delegation.fragment.data.gql.g.dart';

abstract class Gdelegation {
  String get G__typename;
  String get id;
  Gdelegation_delegate? get delegate;
  Gdelegation_delegator? get delegator;
  String get startDate;
  String get endDate;
  Map<String, dynamic> toJson();
}

abstract class Gdelegation_delegate implements _i1.Gacteur {
  @override
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
  _i2.GGender get gender;
  @override
  Map<String, dynamic> toJson();
}

abstract class Gdelegation_delegator implements _i1.Gacteur {
  @override
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
  _i2.GGender get gender;
  @override
  Map<String, dynamic> toJson();
}

abstract class GdelegationData
    implements Built<GdelegationData, GdelegationDataBuilder>, Gdelegation {
  GdelegationData._();

  factory GdelegationData([void Function(GdelegationDataBuilder b) updates]) =
      _$GdelegationData;

  static void _initializeBuilder(GdelegationDataBuilder b) =>
      b..G__typename = 'Delegation';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  GdelegationData_delegate? get delegate;
  @override
  GdelegationData_delegator? get delegator;
  @override
  String get startDate;
  @override
  String get endDate;
  static Serializer<GdelegationData> get serializer =>
      _$gdelegationDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GdelegationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdelegationData? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GdelegationData.serializer,
        json,
      );
}

abstract class GdelegationData_delegate
    implements
        Built<GdelegationData_delegate, GdelegationData_delegateBuilder>,
        Gdelegation_delegate,
        _i1.Gacteur {
  GdelegationData_delegate._();

  factory GdelegationData_delegate(
          [void Function(GdelegationData_delegateBuilder b) updates]) =
      _$GdelegationData_delegate;

  static void _initializeBuilder(GdelegationData_delegateBuilder b) =>
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
  _i2.GGender get gender;
  static Serializer<GdelegationData_delegate> get serializer =>
      _$gdelegationDataDelegateSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GdelegationData_delegate.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdelegationData_delegate? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GdelegationData_delegate.serializer,
        json,
      );
}

abstract class GdelegationData_delegator
    implements
        Built<GdelegationData_delegator, GdelegationData_delegatorBuilder>,
        Gdelegation_delegator,
        _i1.Gacteur {
  GdelegationData_delegator._();

  factory GdelegationData_delegator(
          [void Function(GdelegationData_delegatorBuilder b) updates]) =
      _$GdelegationData_delegator;

  static void _initializeBuilder(GdelegationData_delegatorBuilder b) =>
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
  _i2.GGender get gender;
  static Serializer<GdelegationData_delegator> get serializer =>
      _$gdelegationDataDelegatorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GdelegationData_delegator.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdelegationData_delegator? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GdelegationData_delegator.serializer,
        json,
      );
}
