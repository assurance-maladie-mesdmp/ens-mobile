// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_historique_activites_get_professionnels_de_sante_traces.query.data.gql.g.dart';

abstract class Gget_professionnels_de_sante_tracesData
    implements
        Built<Gget_professionnels_de_sante_tracesData,
            Gget_professionnels_de_sante_tracesDataBuilder> {
  Gget_professionnels_de_sante_tracesData._();

  factory Gget_professionnels_de_sante_tracesData(
      [void Function(Gget_professionnels_de_sante_tracesDataBuilder b)
          updates]) = _$Gget_professionnels_de_sante_tracesData;

  static void _initializeBuilder(
          Gget_professionnels_de_sante_tracesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_professionnels_de_sante_tracesData_activityTraces get activityTraces;
  static Serializer<Gget_professionnels_de_sante_tracesData> get serializer =>
      _$ggetProfessionnelsDeSanteTracesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_professionnels_de_sante_tracesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_professionnels_de_sante_tracesData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_professionnels_de_sante_tracesData.serializer,
        json,
      );
}

abstract class Gget_professionnels_de_sante_tracesData_activityTraces
    implements
        Built<Gget_professionnels_de_sante_tracesData_activityTraces,
            Gget_professionnels_de_sante_tracesData_activityTracesBuilder> {
  Gget_professionnels_de_sante_tracesData_activityTraces._();

  factory Gget_professionnels_de_sante_tracesData_activityTraces(
      [void Function(
              Gget_professionnels_de_sante_tracesData_activityTracesBuilder b)
          updates]) = _$Gget_professionnels_de_sante_tracesData_activityTraces;

  static void _initializeBuilder(
          Gget_professionnels_de_sante_tracesData_activityTracesBuilder b) =>
      b..G__typename = 'PaginatedActivityTraceListOutput';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_professionnels_de_sante_tracesData_activityTraces_items>
      get items;
  Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo get pageInfo;
  static Serializer<Gget_professionnels_de_sante_tracesData_activityTraces>
      get serializer =>
          _$ggetProfessionnelsDeSanteTracesDataActivityTracesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_professionnels_de_sante_tracesData_activityTraces.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_professionnels_de_sante_tracesData_activityTraces? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_professionnels_de_sante_tracesData_activityTraces.serializer,
        json,
      );
}

abstract class Gget_professionnels_de_sante_tracesData_activityTraces_items
    implements
        Built<Gget_professionnels_de_sante_tracesData_activityTraces_items,
            Gget_professionnels_de_sante_tracesData_activityTraces_itemsBuilder> {
  Gget_professionnels_de_sante_tracesData_activityTraces_items._();

  factory Gget_professionnels_de_sante_tracesData_activityTraces_items(
          [void Function(
                  Gget_professionnels_de_sante_tracesData_activityTraces_itemsBuilder
                      b)
              updates]) =
      _$Gget_professionnels_de_sante_tracesData_activityTraces_items;

  static void _initializeBuilder(
          Gget_professionnels_de_sante_tracesData_activityTraces_itemsBuilder
              b) =>
      b..G__typename = 'ActivityTraceViewModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.GActivityActorType get actorType;
  String get actorDisplayName;
  String get actionDate;
  String get actionDescription;
  static Serializer<
          Gget_professionnels_de_sante_tracesData_activityTraces_items>
      get serializer =>
          _$ggetProfessionnelsDeSanteTracesDataActivityTracesItemsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_professionnels_de_sante_tracesData_activityTraces_items.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_professionnels_de_sante_tracesData_activityTraces_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_professionnels_de_sante_tracesData_activityTraces_items.serializer,
        json,
      );
}

abstract class Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo
    implements
        Built<Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo,
            Gget_professionnels_de_sante_tracesData_activityTraces_pageInfoBuilder> {
  Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo._();

  factory Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo(
          [void Function(
                  Gget_professionnels_de_sante_tracesData_activityTraces_pageInfoBuilder
                      b)
              updates]) =
      _$Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo;

  static void _initializeBuilder(
          Gget_professionnels_de_sante_tracesData_activityTraces_pageInfoBuilder
              b) =>
      b..G__typename = 'PageInfo';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get page;
  bool get hasNextPage;
  static Serializer<
          Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo>
      get serializer =>
          _$ggetProfessionnelsDeSanteTracesDataActivityTracesPageInfoSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo
                .serializer,
            json,
          );
}
