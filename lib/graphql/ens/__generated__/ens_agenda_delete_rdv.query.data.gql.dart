// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_agenda_delete_rdv.query.data.gql.g.dart';

abstract class Gdelete_rdvData
    implements Built<Gdelete_rdvData, Gdelete_rdvDataBuilder> {
  Gdelete_rdvData._();

  factory Gdelete_rdvData([void Function(Gdelete_rdvDataBuilder b) updates]) =
      _$Gdelete_rdvData;

  static void _initializeBuilder(Gdelete_rdvDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gdelete_rdvData_removeAppointmentByIdAndPatientId
      get removeAppointmentByIdAndPatientId;
  static Serializer<Gdelete_rdvData> get serializer =>
      _$gdeleteRdvDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_rdvData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_rdvData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_rdvData.serializer,
        json,
      );
}

abstract class Gdelete_rdvData_removeAppointmentByIdAndPatientId
    implements
        Built<Gdelete_rdvData_removeAppointmentByIdAndPatientId,
            Gdelete_rdvData_removeAppointmentByIdAndPatientIdBuilder> {
  Gdelete_rdvData_removeAppointmentByIdAndPatientId._();

  factory Gdelete_rdvData_removeAppointmentByIdAndPatientId(
      [void Function(Gdelete_rdvData_removeAppointmentByIdAndPatientIdBuilder b)
          updates]) = _$Gdelete_rdvData_removeAppointmentByIdAndPatientId;

  static void _initializeBuilder(
          Gdelete_rdvData_removeAppointmentByIdAndPatientIdBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gdelete_rdvData_removeAppointmentByIdAndPatientId>
      get serializer =>
          _$gdeleteRdvDataRemoveAppointmentByIdAndPatientIdSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_rdvData_removeAppointmentByIdAndPatientId.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_rdvData_removeAppointmentByIdAndPatientId? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_rdvData_removeAppointmentByIdAndPatientId.serializer,
        json,
      );
}
