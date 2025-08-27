// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_historique_activites_get_mes_activites_traces.query.data.gql.g.dart';

abstract class Gget_mes_activites_tracesData
    implements
        Built<Gget_mes_activites_tracesData,
            Gget_mes_activites_tracesDataBuilder> {
  Gget_mes_activites_tracesData._();

  factory Gget_mes_activites_tracesData(
          [void Function(Gget_mes_activites_tracesDataBuilder b) updates]) =
      _$Gget_mes_activites_tracesData;

  static void _initializeBuilder(Gget_mes_activites_tracesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_mes_activites_tracesData_ensActivityHistory>
      get ensActivityHistory;
  static Serializer<Gget_mes_activites_tracesData> get serializer =>
      _$ggetMesActivitesTracesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_mes_activites_tracesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_mes_activites_tracesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_mes_activites_tracesData.serializer,
        json,
      );
}

abstract class Gget_mes_activites_tracesData_ensActivityHistory
    implements
        Built<Gget_mes_activites_tracesData_ensActivityHistory,
            Gget_mes_activites_tracesData_ensActivityHistoryBuilder> {
  Gget_mes_activites_tracesData_ensActivityHistory._();

  factory Gget_mes_activites_tracesData_ensActivityHistory(
      [void Function(Gget_mes_activites_tracesData_ensActivityHistoryBuilder b)
          updates]) = _$Gget_mes_activites_tracesData_ensActivityHistory;

  static void _initializeBuilder(
          Gget_mes_activites_tracesData_ensActivityHistoryBuilder b) =>
      b..G__typename = 'ActivityHistoryModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get date;
  String? get name;
  String? get author;
  String? get authorType;
  static Serializer<Gget_mes_activites_tracesData_ensActivityHistory>
      get serializer =>
          _$ggetMesActivitesTracesDataEnsActivityHistorySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_mes_activites_tracesData_ensActivityHistory.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_mes_activites_tracesData_ensActivityHistory? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_mes_activites_tracesData_ensActivityHistory.serializer,
        json,
      );
}
