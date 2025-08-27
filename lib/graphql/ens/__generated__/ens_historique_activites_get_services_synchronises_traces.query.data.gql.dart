// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_historique_activites_get_services_synchronises_traces.query.data.gql.g.dart';

abstract class Gget_services_synchronises_tracesData
    implements
        Built<Gget_services_synchronises_tracesData,
            Gget_services_synchronises_tracesDataBuilder> {
  Gget_services_synchronises_tracesData._();

  factory Gget_services_synchronises_tracesData(
      [void Function(Gget_services_synchronises_tracesDataBuilder b)
          updates]) = _$Gget_services_synchronises_tracesData;

  static void _initializeBuilder(
          Gget_services_synchronises_tracesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<
          Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory>
      get synchronizedServicesActivityHistory;
  static Serializer<Gget_services_synchronises_tracesData> get serializer =>
      _$ggetServicesSynchronisesTracesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_services_synchronises_tracesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_services_synchronises_tracesData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_services_synchronises_tracesData.serializer,
        json,
      );
}

abstract class Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory
    implements
        Built<
            Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory,
            Gget_services_synchronises_tracesData_synchronizedServicesActivityHistoryBuilder> {
  Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory._();

  factory Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory(
          [void Function(
                  Gget_services_synchronises_tracesData_synchronizedServicesActivityHistoryBuilder
                      b)
              updates]) =
      _$Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory;

  static void _initializeBuilder(
          Gget_services_synchronises_tracesData_synchronizedServicesActivityHistoryBuilder
              b) =>
      b..G__typename = 'ActivityHistoryModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get date;
  String? get name;
  String? get author;
  String? get authorType;
  static Serializer<
          Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory>
      get serializer =>
          _$ggetServicesSynchronisesTracesDataSynchronizedServicesActivityHistorySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_services_synchronises_tracesData_synchronizedServicesActivityHistory
                .serializer,
            json,
          );
}
