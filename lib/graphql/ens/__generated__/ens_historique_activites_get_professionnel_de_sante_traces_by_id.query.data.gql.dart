// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_historique_activites_get_professionnel_de_sante_traces_by_id.query.data.gql.g.dart';

abstract class Gget_professionnel_de_sante_traces_by_idData
    implements
        Built<Gget_professionnel_de_sante_traces_by_idData,
            Gget_professionnel_de_sante_traces_by_idDataBuilder> {
  Gget_professionnel_de_sante_traces_by_idData._();

  factory Gget_professionnel_de_sante_traces_by_idData(
      [void Function(Gget_professionnel_de_sante_traces_by_idDataBuilder b)
          updates]) = _$Gget_professionnel_de_sante_traces_by_idData;

  static void _initializeBuilder(
          Gget_professionnel_de_sante_traces_by_idDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory>
      get getPsTracesHistory;
  static Serializer<Gget_professionnel_de_sante_traces_by_idData>
      get serializer => _$ggetProfessionnelDeSanteTracesByIdDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_professionnel_de_sante_traces_by_idData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_professionnel_de_sante_traces_by_idData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_professionnel_de_sante_traces_by_idData.serializer,
        json,
      );
}

abstract class Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory
    implements
        Built<Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory,
            Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistoryBuilder> {
  Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory._();

  factory Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory(
          [void Function(
                  Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistoryBuilder
                      b)
              updates]) =
      _$Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory;

  static void _initializeBuilder(
          Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistoryBuilder
              b) =>
      b..G__typename = 'TraceHistoryModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get date;
  String? get name;
  String? get author;
  static Serializer<
          Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory>
      get serializer =>
          _$ggetProfessionnelDeSanteTracesByIdDataGetPsTracesHistorySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_professionnel_de_sante_traces_by_idData_getPsTracesHistory
                .serializer,
            json,
          );
}
