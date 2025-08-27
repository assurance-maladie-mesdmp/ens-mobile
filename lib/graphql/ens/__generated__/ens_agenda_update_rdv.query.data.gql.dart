// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_rdv.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_agenda_update_rdv.query.data.gql.g.dart';

abstract class Gupdate_rdvData
    implements Built<Gupdate_rdvData, Gupdate_rdvDataBuilder> {
  Gupdate_rdvData._();

  factory Gupdate_rdvData([void Function(Gupdate_rdvDataBuilder b) updates]) =
      _$Gupdate_rdvData;

  static void _initializeBuilder(Gupdate_rdvDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gupdate_rdvData_updateAppointmentByIdAndPatientId
      get updateAppointmentByIdAndPatientId;
  static Serializer<Gupdate_rdvData> get serializer =>
      _$gupdateRdvDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_rdvData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_rdvData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_rdvData.serializer,
        json,
      );
}

abstract class Gupdate_rdvData_updateAppointmentByIdAndPatientId
    implements
        Built<Gupdate_rdvData_updateAppointmentByIdAndPatientId,
            Gupdate_rdvData_updateAppointmentByIdAndPatientIdBuilder>,
        _i2.Grdv {
  Gupdate_rdvData_updateAppointmentByIdAndPatientId._();

  factory Gupdate_rdvData_updateAppointmentByIdAndPatientId(
      [void Function(Gupdate_rdvData_updateAppointmentByIdAndPatientIdBuilder b)
          updates]) = _$Gupdate_rdvData_updateAppointmentByIdAndPatientId;

  static void _initializeBuilder(
          Gupdate_rdvData_updateAppointmentByIdAndPatientIdBuilder b) =>
      b..G__typename = 'AppointmentViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get patientId;
  @override
  String? get name;
  @override
  _i3.GAppointmentType get type;
  @override
  String get professionalOrEstablishmentName;
  @override
  String get date;
  @override
  String? get comment;
  @override
  String? get speciality;
  @override
  String? get address;
  @override
  Gupdate_rdvData_updateAppointmentByIdAndPatientId_author? get author;
  @override
  String? get status;
  @override
  String? get idProfessionnelSante;
  @override
  String? get idEtablissementSante;
  static Serializer<Gupdate_rdvData_updateAppointmentByIdAndPatientId>
      get serializer =>
          _$gupdateRdvDataUpdateAppointmentByIdAndPatientIdSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_rdvData_updateAppointmentByIdAndPatientId.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_rdvData_updateAppointmentByIdAndPatientId? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_rdvData_updateAppointmentByIdAndPatientId.serializer,
        json,
      );
}

abstract class Gupdate_rdvData_updateAppointmentByIdAndPatientId_author
    implements
        Built<Gupdate_rdvData_updateAppointmentByIdAndPatientId_author,
            Gupdate_rdvData_updateAppointmentByIdAndPatientId_authorBuilder>,
        _i2.Grdv_author {
  Gupdate_rdvData_updateAppointmentByIdAndPatientId_author._();

  factory Gupdate_rdvData_updateAppointmentByIdAndPatientId_author(
      [void Function(
              Gupdate_rdvData_updateAppointmentByIdAndPatientId_authorBuilder b)
          updates]) = _$Gupdate_rdvData_updateAppointmentByIdAndPatientId_author;

  static void _initializeBuilder(
          Gupdate_rdvData_updateAppointmentByIdAndPatientId_authorBuilder b) =>
      b..G__typename = 'AgendaAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get authorLabel;
  @override
  _i3.GAgendaAuthorTypeEnum get type;
  static Serializer<Gupdate_rdvData_updateAppointmentByIdAndPatientId_author>
      get serializer =>
          _$gupdateRdvDataUpdateAppointmentByIdAndPatientIdAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_rdvData_updateAppointmentByIdAndPatientId_author.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_rdvData_updateAppointmentByIdAndPatientId_author? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_rdvData_updateAppointmentByIdAndPatientId_author.serializer,
        json,
      );
}
