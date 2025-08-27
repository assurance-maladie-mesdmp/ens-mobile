// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_examen_recommande.fragment.data.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_rappel.fragment.data.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_rdv.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_agenda_get_rdv_et_rappel.query.data.gql.g.dart';

abstract class Gget_rdv_et_rappelData
    implements Built<Gget_rdv_et_rappelData, Gget_rdv_et_rappelDataBuilder> {
  Gget_rdv_et_rappelData._();

  factory Gget_rdv_et_rappelData(
          [void Function(Gget_rdv_et_rappelDataBuilder b) updates]) =
      _$Gget_rdv_et_rappelData;

  static void _initializeBuilder(Gget_rdv_et_rappelDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId>
      get fetchAllFuturesAppointmentsByPatientId;
  BuiltList<Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId>
      get fetchAllPastsAppointmentsByPatientId;
  BuiltList<Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId>?
      get fetchAllFuturesRemindersByPatientId;
  BuiltList<Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId>?
      get fetchPastsRemindersByPatientId;
  BuiltList<Gget_rdv_et_rappelData_fetchPreventionsByPatientId>?
      get fetchPreventionsByPatientId;
  static Serializer<Gget_rdv_et_rappelData> get serializer =>
      _$ggetRdvEtRappelDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_rdv_et_rappelData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_rdv_et_rappelData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_rdv_et_rappelData.serializer,
        json,
      );
}

abstract class Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId
    implements
        Built<Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId,
            Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientIdBuilder>,
        _i2.Grdv {
  Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId._();

  factory Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId(
          [void Function(
                  Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientIdBuilder
                      b)
              updates]) =
      _$Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId;

  static void _initializeBuilder(
          Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientIdBuilder
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
  Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author?
      get author;
  @override
  String? get status;
  @override
  String? get idProfessionnelSante;
  @override
  String? get idEtablissementSante;
  static Serializer<
          Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId>
      get serializer =>
          _$ggetRdvEtRappelDataFetchAllFuturesAppointmentsByPatientIdSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId
                .serializer,
            json,
          );
}

abstract class Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author
    implements
        Built<
            Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author,
            Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_authorBuilder>,
        _i2.Grdv_author {
  Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author._();

  factory Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author(
          [void Function(
                  Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_authorBuilder
                      b)
              updates]) =
      _$Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author;

  static void _initializeBuilder(
          Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_authorBuilder
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
          Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author>
      get serializer =>
          _$ggetRdvEtRappelDataFetchAllFuturesAppointmentsByPatientIdAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_rdv_et_rappelData_fetchAllFuturesAppointmentsByPatientId_author
                .serializer,
            json,
          );
}

abstract class Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId
    implements
        Built<Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId,
            Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientIdBuilder>,
        _i2.Grdv {
  Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId._();

  factory Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId(
      [void Function(
              Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientIdBuilder
                  b)
          updates]) = _$Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId;

  static void _initializeBuilder(
          Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientIdBuilder
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
  Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author?
      get author;
  @override
  String? get status;
  @override
  String? get idProfessionnelSante;
  @override
  String? get idEtablissementSante;
  static Serializer<Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId>
      get serializer =>
          _$ggetRdvEtRappelDataFetchAllPastsAppointmentsByPatientIdSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId.serializer,
        json,
      );
}

abstract class Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author
    implements
        Built<
            Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author,
            Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_authorBuilder>,
        _i2.Grdv_author {
  Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author._();

  factory Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author(
          [void Function(
                  Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_authorBuilder
                      b)
              updates]) =
      _$Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author;

  static void _initializeBuilder(
          Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_authorBuilder
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
          Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author>
      get serializer =>
          _$ggetRdvEtRappelDataFetchAllPastsAppointmentsByPatientIdAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_rdv_et_rappelData_fetchAllPastsAppointmentsByPatientId_author
                .serializer,
            json,
          );
}

abstract class Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId
    implements
        Built<Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId,
            Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientIdBuilder>,
        _i4.Grappel {
  Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId._();

  factory Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId(
      [void Function(
              Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientIdBuilder
                  b)
          updates]) = _$Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId;

  static void _initializeBuilder(
          Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientIdBuilder
              b) =>
      b..G__typename = 'ReminderViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get date;
  @override
  String get title;
  @override
  String get comment;
  @override
  Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author? get author;
  static Serializer<Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId>
      get serializer =>
          _$ggetRdvEtRappelDataFetchAllFuturesRemindersByPatientIdSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId.serializer,
        json,
      );
}

abstract class Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author
    implements
        Built<Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author,
            Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_authorBuilder>,
        _i4.Grappel_author {
  Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author._();

  factory Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author(
          [void Function(
                  Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_authorBuilder
                      b)
              updates]) =
      _$Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author;

  static void _initializeBuilder(
          Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_authorBuilder
              b) =>
      b..G__typename = 'AgendaAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get authorLabel;
  static Serializer<
          Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author>
      get serializer =>
          _$ggetRdvEtRappelDataFetchAllFuturesRemindersByPatientIdAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_rdv_et_rappelData_fetchAllFuturesRemindersByPatientId_author
                .serializer,
            json,
          );
}

abstract class Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId
    implements
        Built<Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId,
            Gget_rdv_et_rappelData_fetchPastsRemindersByPatientIdBuilder>,
        _i4.Grappel {
  Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId._();

  factory Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId(
      [void Function(
              Gget_rdv_et_rappelData_fetchPastsRemindersByPatientIdBuilder b)
          updates]) = _$Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId;

  static void _initializeBuilder(
          Gget_rdv_et_rappelData_fetchPastsRemindersByPatientIdBuilder b) =>
      b..G__typename = 'ReminderViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get date;
  @override
  String get title;
  @override
  String get comment;
  @override
  Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author? get author;
  static Serializer<Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId>
      get serializer =>
          _$ggetRdvEtRappelDataFetchPastsRemindersByPatientIdSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId.serializer,
        json,
      );
}

abstract class Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author
    implements
        Built<Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author,
            Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_authorBuilder>,
        _i4.Grappel_author {
  Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author._();

  factory Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author(
          [void Function(
                  Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_authorBuilder
                      b)
              updates]) =
      _$Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author;

  static void _initializeBuilder(
          Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_authorBuilder
              b) =>
      b..G__typename = 'AgendaAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get authorLabel;
  static Serializer<
          Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author>
      get serializer =>
          _$ggetRdvEtRappelDataFetchPastsRemindersByPatientIdAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_rdv_et_rappelData_fetchPastsRemindersByPatientId_author.serializer,
        json,
      );
}

abstract class Gget_rdv_et_rappelData_fetchPreventionsByPatientId
    implements
        Built<Gget_rdv_et_rappelData_fetchPreventionsByPatientId,
            Gget_rdv_et_rappelData_fetchPreventionsByPatientIdBuilder>,
        _i5.GexamenRecommande {
  Gget_rdv_et_rappelData_fetchPreventionsByPatientId._();

  factory Gget_rdv_et_rappelData_fetchPreventionsByPatientId(
      [void Function(
              Gget_rdv_et_rappelData_fetchPreventionsByPatientIdBuilder b)
          updates]) = _$Gget_rdv_et_rappelData_fetchPreventionsByPatientId;

  static void _initializeBuilder(
          Gget_rdv_et_rappelData_fetchPreventionsByPatientIdBuilder b) =>
      b..G__typename = 'PreventionViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get code;
  @override
  String get type;
  @override
  String get title;
  @override
  String get dateDebutCampagne;
  @override
  String? get dateFinCampagne;
  @override
  String get dateDebutPrevention;
  @override
  String get dateFinPrevention;
  @override
  _i3.GPreventionTypeEnum get statut;
  @override
  String? get executionDate;
  @override
  String? get requirementLevel;
  static Serializer<Gget_rdv_et_rappelData_fetchPreventionsByPatientId>
      get serializer =>
          _$ggetRdvEtRappelDataFetchPreventionsByPatientIdSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_rdv_et_rappelData_fetchPreventionsByPatientId.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_rdv_et_rappelData_fetchPreventionsByPatientId? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_rdv_et_rappelData_fetchPreventionsByPatientId.serializer,
        json,
      );
}
