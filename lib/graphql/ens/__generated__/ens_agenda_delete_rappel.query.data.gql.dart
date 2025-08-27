// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_agenda_delete_rappel.query.data.gql.g.dart';

abstract class Gdelete_rappelData
    implements Built<Gdelete_rappelData, Gdelete_rappelDataBuilder> {
  Gdelete_rappelData._();

  factory Gdelete_rappelData(
          [void Function(Gdelete_rappelDataBuilder b) updates]) =
      _$Gdelete_rappelData;

  static void _initializeBuilder(Gdelete_rappelDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gdelete_rappelData_removeReminderByIdAndPatientId
      get removeReminderByIdAndPatientId;
  static Serializer<Gdelete_rappelData> get serializer =>
      _$gdeleteRappelDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_rappelData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_rappelData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_rappelData.serializer,
        json,
      );
}

abstract class Gdelete_rappelData_removeReminderByIdAndPatientId
    implements
        Built<Gdelete_rappelData_removeReminderByIdAndPatientId,
            Gdelete_rappelData_removeReminderByIdAndPatientIdBuilder> {
  Gdelete_rappelData_removeReminderByIdAndPatientId._();

  factory Gdelete_rappelData_removeReminderByIdAndPatientId(
      [void Function(Gdelete_rappelData_removeReminderByIdAndPatientIdBuilder b)
          updates]) = _$Gdelete_rappelData_removeReminderByIdAndPatientId;

  static void _initializeBuilder(
          Gdelete_rappelData_removeReminderByIdAndPatientIdBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gdelete_rappelData_removeReminderByIdAndPatientId>
      get serializer =>
          _$gdeleteRappelDataRemoveReminderByIdAndPatientIdSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_rappelData_removeReminderByIdAndPatientId.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_rappelData_removeReminderByIdAndPatientId? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_rappelData_removeReminderByIdAndPatientId.serializer,
        json,
      );
}
