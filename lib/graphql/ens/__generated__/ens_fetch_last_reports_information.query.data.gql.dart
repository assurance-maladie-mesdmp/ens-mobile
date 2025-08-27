// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_fetch_last_reports_information.query.data.gql.g.dart';

abstract class Gfetch_last_reports_informationData
    implements
        Built<Gfetch_last_reports_informationData,
            Gfetch_last_reports_informationDataBuilder> {
  Gfetch_last_reports_informationData._();

  factory Gfetch_last_reports_informationData(
      [void Function(Gfetch_last_reports_informationDataBuilder b)
          updates]) = _$Gfetch_last_reports_informationData;

  static void _initializeBuilder(
          Gfetch_last_reports_informationDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gfetch_last_reports_informationData_fetchLastReportsInformation
      get fetchLastReportsInformation;
  static Serializer<Gfetch_last_reports_informationData> get serializer =>
      _$gfetchLastReportsInformationDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gfetch_last_reports_informationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gfetch_last_reports_informationData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gfetch_last_reports_informationData.serializer,
        json,
      );
}

abstract class Gfetch_last_reports_informationData_fetchLastReportsInformation
    implements
        Built<Gfetch_last_reports_informationData_fetchLastReportsInformation,
            Gfetch_last_reports_informationData_fetchLastReportsInformationBuilder> {
  Gfetch_last_reports_informationData_fetchLastReportsInformation._();

  factory Gfetch_last_reports_informationData_fetchLastReportsInformation(
          [void Function(
                  Gfetch_last_reports_informationData_fetchLastReportsInformationBuilder
                      b)
              updates]) =
      _$Gfetch_last_reports_informationData_fetchLastReportsInformation;

  static void _initializeBuilder(
          Gfetch_last_reports_informationData_fetchLastReportsInformationBuilder
              b) =>
      b..G__typename = 'ReportInformationModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get lastReport;
  bool get isReportLimitExceeded;
  static Serializer<
          Gfetch_last_reports_informationData_fetchLastReportsInformation>
      get serializer =>
          _$gfetchLastReportsInformationDataFetchLastReportsInformationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gfetch_last_reports_informationData_fetchLastReportsInformation
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gfetch_last_reports_informationData_fetchLastReportsInformation?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gfetch_last_reports_informationData_fetchLastReportsInformation
                .serializer,
            json,
          );
}
