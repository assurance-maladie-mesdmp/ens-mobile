// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_enrolement_create_account.data.gql.g.dart';

abstract class Gcreate_accountData
    implements Built<Gcreate_accountData, Gcreate_accountDataBuilder> {
  Gcreate_accountData._();

  factory Gcreate_accountData(
          [void Function(Gcreate_accountDataBuilder b) updates]) =
      _$Gcreate_accountData;

  static void _initializeBuilder(Gcreate_accountDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gcreate_accountData_createAccountEns get createAccountEns;
  static Serializer<Gcreate_accountData> get serializer =>
      _$gcreateAccountDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcreate_accountData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_accountData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcreate_accountData.serializer,
        json,
      );
}

abstract class Gcreate_accountData_createAccountEns
    implements
        Built<Gcreate_accountData_createAccountEns,
            Gcreate_accountData_createAccountEnsBuilder> {
  Gcreate_accountData_createAccountEns._();

  factory Gcreate_accountData_createAccountEns(
      [void Function(Gcreate_accountData_createAccountEnsBuilder b)
          updates]) = _$Gcreate_accountData_createAccountEns;

  static void _initializeBuilder(
          Gcreate_accountData_createAccountEnsBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gcreate_accountData_createAccountEns> get serializer =>
      _$gcreateAccountDataCreateAccountEnsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcreate_accountData_createAccountEns.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_accountData_createAccountEns? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcreate_accountData_createAccountEns.serializer,
        json,
      );
}
