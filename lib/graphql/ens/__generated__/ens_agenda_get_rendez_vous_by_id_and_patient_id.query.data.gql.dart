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

part 'ens_agenda_get_rendez_vous_by_id_and_patient_id.query.data.gql.g.dart';

abstract class Gget_rendez_vous_by_id_and_patient_idData
    implements
        Built<Gget_rendez_vous_by_id_and_patient_idData,
            Gget_rendez_vous_by_id_and_patient_idDataBuilder> {
  Gget_rendez_vous_by_id_and_patient_idData._();

  factory Gget_rendez_vous_by_id_and_patient_idData(
      [void Function(Gget_rendez_vous_by_id_and_patient_idDataBuilder b)
          updates]) = _$Gget_rendez_vous_by_id_and_patient_idData;

  static void _initializeBuilder(
          Gget_rendez_vous_by_id_and_patient_idDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId
      get fetchAppointmentByIdAndPatientId;
  static Serializer<Gget_rendez_vous_by_id_and_patient_idData> get serializer =>
      _$ggetRendezVousByIdAndPatientIdDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_rendez_vous_by_id_and_patient_idData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_rendez_vous_by_id_and_patient_idData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_rendez_vous_by_id_and_patient_idData.serializer,
        json,
      );
}

abstract class Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId
    implements
        Built<
            Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId,
            Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientIdBuilder>,
        _i2.Grdv {
  Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId._();

  factory Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId(
          [void Function(
                  Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientIdBuilder
                      b)
              updates]) =
      _$Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId;

  static void _initializeBuilder(
          Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientIdBuilder
              b) =>
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
  Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author?
      get author;
  @override
  String? get status;
  @override
  String? get idProfessionnelSante;
  @override
  String? get idEtablissementSante;
  static Serializer<
          Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId>
      get serializer =>
          _$ggetRendezVousByIdAndPatientIdDataFetchAppointmentByIdAndPatientIdSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId
                .serializer,
            json,
          );
}

abstract class Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author
    implements
        Built<
            Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author,
            Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_authorBuilder>,
        _i2.Grdv_author {
  Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author._();

  factory Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author(
          [void Function(
                  Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_authorBuilder
                      b)
              updates]) =
      _$Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author;

  static void _initializeBuilder(
          Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_authorBuilder
              b) =>
      b..G__typename = 'AgendaAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get authorLabel;
  @override
  _i3.GAgendaAuthorTypeEnum get type;
  static Serializer<
          Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author>
      get serializer =>
          _$ggetRendezVousByIdAndPatientIdDataFetchAppointmentByIdAndPatientIdAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_rendez_vous_by_id_and_patient_idData_fetchAppointmentByIdAndPatientId_author
                .serializer,
            json,
          );
}
