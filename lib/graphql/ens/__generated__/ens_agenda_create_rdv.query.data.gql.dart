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

part 'ens_agenda_create_rdv.query.data.gql.g.dart';

abstract class Gcreate_rdvData
    implements Built<Gcreate_rdvData, Gcreate_rdvDataBuilder> {
  Gcreate_rdvData._();

  factory Gcreate_rdvData([void Function(Gcreate_rdvDataBuilder b) updates]) =
      _$Gcreate_rdvData;

  static void _initializeBuilder(Gcreate_rdvDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gcreate_rdvData_createAppointment get createAppointment;
  static Serializer<Gcreate_rdvData> get serializer =>
      _$gcreateRdvDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcreate_rdvData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_rdvData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcreate_rdvData.serializer,
        json,
      );
}

abstract class Gcreate_rdvData_createAppointment
    implements
        Built<Gcreate_rdvData_createAppointment,
            Gcreate_rdvData_createAppointmentBuilder>,
        _i2.Grdv {
  Gcreate_rdvData_createAppointment._();

  factory Gcreate_rdvData_createAppointment(
          [void Function(Gcreate_rdvData_createAppointmentBuilder b) updates]) =
      _$Gcreate_rdvData_createAppointment;

  static void _initializeBuilder(Gcreate_rdvData_createAppointmentBuilder b) =>
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
  Gcreate_rdvData_createAppointment_author? get author;
  @override
  String? get status;
  @override
  String? get idProfessionnelSante;
  @override
  String? get idEtablissementSante;
  static Serializer<Gcreate_rdvData_createAppointment> get serializer =>
      _$gcreateRdvDataCreateAppointmentSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcreate_rdvData_createAppointment.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_rdvData_createAppointment? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcreate_rdvData_createAppointment.serializer,
        json,
      );
}

abstract class Gcreate_rdvData_createAppointment_author
    implements
        Built<Gcreate_rdvData_createAppointment_author,
            Gcreate_rdvData_createAppointment_authorBuilder>,
        _i2.Grdv_author {
  Gcreate_rdvData_createAppointment_author._();

  factory Gcreate_rdvData_createAppointment_author(
      [void Function(Gcreate_rdvData_createAppointment_authorBuilder b)
          updates]) = _$Gcreate_rdvData_createAppointment_author;

  static void _initializeBuilder(
          Gcreate_rdvData_createAppointment_authorBuilder b) =>
      b..G__typename = 'AgendaAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get authorLabel;
  @override
  _i3.GAgendaAuthorTypeEnum get type;
  static Serializer<Gcreate_rdvData_createAppointment_author> get serializer =>
      _$gcreateRdvDataCreateAppointmentAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcreate_rdvData_createAppointment_author.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_rdvData_createAppointment_author? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcreate_rdvData_createAppointment_author.serializer,
        json,
      );
}
