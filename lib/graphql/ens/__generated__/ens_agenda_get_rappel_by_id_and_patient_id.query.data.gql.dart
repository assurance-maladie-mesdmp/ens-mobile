// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_rappel.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_agenda_get_rappel_by_id_and_patient_id.query.data.gql.g.dart';

abstract class Gget_rappel_by_id_and_patient_idData
    implements
        Built<Gget_rappel_by_id_and_patient_idData,
            Gget_rappel_by_id_and_patient_idDataBuilder> {
  Gget_rappel_by_id_and_patient_idData._();

  factory Gget_rappel_by_id_and_patient_idData(
      [void Function(Gget_rappel_by_id_and_patient_idDataBuilder b)
          updates]) = _$Gget_rappel_by_id_and_patient_idData;

  static void _initializeBuilder(
          Gget_rappel_by_id_and_patient_idDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId?
      get fetchReminderByIdAndPatientId;
  static Serializer<Gget_rappel_by_id_and_patient_idData> get serializer =>
      _$ggetRappelByIdAndPatientIdDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_rappel_by_id_and_patient_idData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_rappel_by_id_and_patient_idData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_rappel_by_id_and_patient_idData.serializer,
        json,
      );
}

abstract class Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId
    implements
        Built<
            Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId,
            Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientIdBuilder>,
        _i2.Grappel {
  Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId._();

  factory Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId(
          [void Function(
                  Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientIdBuilder
                      b)
              updates]) =
      _$Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId;

  static void _initializeBuilder(
          Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientIdBuilder
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
  Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author?
      get author;
  static Serializer<
          Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId>
      get serializer =>
          _$ggetRappelByIdAndPatientIdDataFetchReminderByIdAndPatientIdSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId
                .serializer,
            json,
          );
}

abstract class Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author
    implements
        Built<
            Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author,
            Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_authorBuilder>,
        _i2.Grappel_author {
  Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author._();

  factory Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author(
          [void Function(
                  Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_authorBuilder
                      b)
              updates]) =
      _$Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author;

  static void _initializeBuilder(
          Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_authorBuilder
              b) =>
      b..G__typename = 'AgendaAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get authorLabel;
  static Serializer<
          Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author>
      get serializer =>
          _$ggetRappelByIdAndPatientIdDataFetchReminderByIdAndPatientIdAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_rappel_by_id_and_patient_idData_fetchReminderByIdAndPatientId_author
                .serializer,
            json,
          );
}
