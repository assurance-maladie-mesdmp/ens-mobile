// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_account_change_password.query.data.gql.g.dart';

abstract class Gchange_passwordData
    implements Built<Gchange_passwordData, Gchange_passwordDataBuilder> {
  Gchange_passwordData._();

  factory Gchange_passwordData(
          [void Function(Gchange_passwordDataBuilder b) updates]) =
      _$Gchange_passwordData;

  static void _initializeBuilder(Gchange_passwordDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gchange_passwordData_changePassword get changePassword;
  static Serializer<Gchange_passwordData> get serializer =>
      _$gchangePasswordDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gchange_passwordData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gchange_passwordData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gchange_passwordData.serializer,
        json,
      );
}

abstract class Gchange_passwordData_changePassword
    implements
        Built<Gchange_passwordData_changePassword,
            Gchange_passwordData_changePasswordBuilder> {
  Gchange_passwordData_changePassword._();

  factory Gchange_passwordData_changePassword(
      [void Function(Gchange_passwordData_changePasswordBuilder b)
          updates]) = _$Gchange_passwordData_changePassword;

  static void _initializeBuilder(
          Gchange_passwordData_changePasswordBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gchange_passwordData_changePassword> get serializer =>
      _$gchangePasswordDataChangePasswordSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gchange_passwordData_changePassword.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gchange_passwordData_changePassword? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gchange_passwordData_changePassword.serializer,
        json,
      );
}
