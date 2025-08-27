// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_send_signalement.query.data.gql.g.dart';

abstract class Gsend_signalementData
    implements Built<Gsend_signalementData, Gsend_signalementDataBuilder> {
  Gsend_signalementData._();

  factory Gsend_signalementData(
          [void Function(Gsend_signalementDataBuilder b) updates]) =
      _$Gsend_signalementData;

  static void _initializeBuilder(Gsend_signalementDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gsend_signalementData_sendReport get sendReport;
  static Serializer<Gsend_signalementData> get serializer =>
      _$gsendSignalementDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsend_signalementData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_signalementData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsend_signalementData.serializer,
        json,
      );
}

abstract class Gsend_signalementData_sendReport
    implements
        Built<Gsend_signalementData_sendReport,
            Gsend_signalementData_sendReportBuilder> {
  Gsend_signalementData_sendReport._();

  factory Gsend_signalementData_sendReport(
          [void Function(Gsend_signalementData_sendReportBuilder b) updates]) =
      _$Gsend_signalementData_sendReport;

  static void _initializeBuilder(Gsend_signalementData_sendReportBuilder b) =>
      b..G__typename = 'CreateTicket';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  String? get errorCode;
  static Serializer<Gsend_signalementData_sendReport> get serializer =>
      _$gsendSignalementDataSendReportSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsend_signalementData_sendReport.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_signalementData_sendReport? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsend_signalementData_sendReport.serializer,
        json,
      );
}
