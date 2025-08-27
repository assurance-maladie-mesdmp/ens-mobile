// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_agenda_rdv.fragment.data.gql.g.dart';

abstract class Grdv {
  String get G__typename;
  String get id;
  String get patientId;
  String? get name;
  _i1.GAppointmentType get type;
  String get professionalOrEstablishmentName;
  String get date;
  String? get comment;
  String? get speciality;
  String? get address;
  Grdv_author? get author;
  String? get status;
  String? get idProfessionnelSante;
  String? get idEtablissementSante;
  Map<String, dynamic> toJson();
}

abstract class Grdv_author {
  String get G__typename;
  String get authorLabel;
  _i1.GAgendaAuthorTypeEnum get type;
  Map<String, dynamic> toJson();
}

abstract class GrdvData implements Built<GrdvData, GrdvDataBuilder>, Grdv {
  GrdvData._();

  factory GrdvData([void Function(GrdvDataBuilder b) updates]) = _$GrdvData;

  static void _initializeBuilder(GrdvDataBuilder b) =>
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
  _i1.GAppointmentType get type;
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
  GrdvData_author? get author;
  @override
  String? get status;
  @override
  String? get idProfessionnelSante;
  @override
  String? get idEtablissementSante;
  static Serializer<GrdvData> get serializer => _$grdvDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GrdvData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GrdvData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GrdvData.serializer,
        json,
      );
}

abstract class GrdvData_author
    implements Built<GrdvData_author, GrdvData_authorBuilder>, Grdv_author {
  GrdvData_author._();

  factory GrdvData_author([void Function(GrdvData_authorBuilder b) updates]) =
      _$GrdvData_author;

  static void _initializeBuilder(GrdvData_authorBuilder b) =>
      b..G__typename = 'AgendaAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get authorLabel;
  @override
  _i1.GAgendaAuthorTypeEnum get type;
  static Serializer<GrdvData_author> get serializer =>
      _$grdvDataAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GrdvData_author.serializer,
        this,
      ) as Map<String, dynamic>);

  static GrdvData_author? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GrdvData_author.serializer,
        json,
      );
}
