// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_agenda_update_examen_status.query.data.gql.g.dart';

abstract class Gupdate_examen_statusData
    implements
        Built<Gupdate_examen_statusData, Gupdate_examen_statusDataBuilder> {
  Gupdate_examen_statusData._();

  factory Gupdate_examen_statusData(
          [void Function(Gupdate_examen_statusDataBuilder b) updates]) =
      _$Gupdate_examen_statusData;

  static void _initializeBuilder(Gupdate_examen_statusDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gupdate_examen_statusData_updatePreventionStatus get updatePreventionStatus;
  static Serializer<Gupdate_examen_statusData> get serializer =>
      _$gupdateExamenStatusDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_examen_statusData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_examen_statusData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_examen_statusData.serializer,
        json,
      );
}

abstract class Gupdate_examen_statusData_updatePreventionStatus
    implements
        Built<Gupdate_examen_statusData_updatePreventionStatus,
            Gupdate_examen_statusData_updatePreventionStatusBuilder> {
  Gupdate_examen_statusData_updatePreventionStatus._();

  factory Gupdate_examen_statusData_updatePreventionStatus(
      [void Function(Gupdate_examen_statusData_updatePreventionStatusBuilder b)
          updates]) = _$Gupdate_examen_statusData_updatePreventionStatus;

  static void _initializeBuilder(
          Gupdate_examen_statusData_updatePreventionStatusBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gupdate_examen_statusData_updatePreventionStatus>
      get serializer =>
          _$gupdateExamenStatusDataUpdatePreventionStatusSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_examen_statusData_updatePreventionStatus.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_examen_statusData_updatePreventionStatus? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_examen_statusData_updatePreventionStatus.serializer,
        json,
      );
}
