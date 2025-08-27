// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_enrolement_send_new_code.data.gql.g.dart';

abstract class Gsend_new_enrolement_codeData
    implements
        Built<Gsend_new_enrolement_codeData,
            Gsend_new_enrolement_codeDataBuilder> {
  Gsend_new_enrolement_codeData._();

  factory Gsend_new_enrolement_codeData(
          [void Function(Gsend_new_enrolement_codeDataBuilder b) updates]) =
      _$Gsend_new_enrolement_codeData;

  static void _initializeBuilder(Gsend_new_enrolement_codeDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gsend_new_enrolement_codeData_sendNewEnrolmentCode get sendNewEnrolmentCode;
  static Serializer<Gsend_new_enrolement_codeData> get serializer =>
      _$gsendNewEnrolementCodeDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsend_new_enrolement_codeData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_new_enrolement_codeData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsend_new_enrolement_codeData.serializer,
        json,
      );
}

abstract class Gsend_new_enrolement_codeData_sendNewEnrolmentCode
    implements
        Built<Gsend_new_enrolement_codeData_sendNewEnrolmentCode,
            Gsend_new_enrolement_codeData_sendNewEnrolmentCodeBuilder> {
  Gsend_new_enrolement_codeData_sendNewEnrolmentCode._();

  factory Gsend_new_enrolement_codeData_sendNewEnrolmentCode(
      [void Function(
              Gsend_new_enrolement_codeData_sendNewEnrolmentCodeBuilder b)
          updates]) = _$Gsend_new_enrolement_codeData_sendNewEnrolmentCode;

  static void _initializeBuilder(
          Gsend_new_enrolement_codeData_sendNewEnrolmentCodeBuilder b) =>
      b..G__typename = 'SendNewCodeEnrolmentSuccess';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gsend_new_enrolement_codeData_sendNewEnrolmentCode>
      get serializer =>
          _$gsendNewEnrolementCodeDataSendNewEnrolmentCodeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsend_new_enrolement_codeData_sendNewEnrolmentCode.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_new_enrolement_codeData_sendNewEnrolmentCode? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsend_new_enrolement_codeData_sendNewEnrolmentCode.serializer,
        json,
      );
}
