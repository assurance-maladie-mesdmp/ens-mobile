// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_nous_contacter_get_tickets_support.query.data.gql.g.dart';

abstract class Gget_tickets_supportData
    implements
        Built<Gget_tickets_supportData, Gget_tickets_supportDataBuilder> {
  Gget_tickets_supportData._();

  factory Gget_tickets_supportData(
          [void Function(Gget_tickets_supportDataBuilder b) updates]) =
      _$Gget_tickets_supportData;

  static void _initializeBuilder(Gget_tickets_supportDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_tickets_supportData_fetchHelpdeskTickets>
      get fetchHelpdeskTickets;
  static Serializer<Gget_tickets_supportData> get serializer =>
      _$ggetTicketsSupportDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_tickets_supportData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_tickets_supportData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_tickets_supportData.serializer,
        json,
      );
}

abstract class Gget_tickets_supportData_fetchHelpdeskTickets
    implements
        Built<Gget_tickets_supportData_fetchHelpdeskTickets,
            Gget_tickets_supportData_fetchHelpdeskTicketsBuilder> {
  Gget_tickets_supportData_fetchHelpdeskTickets._();

  factory Gget_tickets_supportData_fetchHelpdeskTickets(
      [void Function(Gget_tickets_supportData_fetchHelpdeskTicketsBuilder b)
          updates]) = _$Gget_tickets_supportData_fetchHelpdeskTickets;

  static void _initializeBuilder(
          Gget_tickets_supportData_fetchHelpdeskTicketsBuilder b) =>
      b..G__typename = 'TicketSummaryViewModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get reasonLabel;
  String get lastUpdate;
  Gget_tickets_supportData_fetchHelpdeskTickets_lastComment get lastComment;
  static Serializer<Gget_tickets_supportData_fetchHelpdeskTickets>
      get serializer => _$ggetTicketsSupportDataFetchHelpdeskTicketsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_tickets_supportData_fetchHelpdeskTickets.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_tickets_supportData_fetchHelpdeskTickets? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_tickets_supportData_fetchHelpdeskTickets.serializer,
        json,
      );
}

abstract class Gget_tickets_supportData_fetchHelpdeskTickets_lastComment
    implements
        Built<Gget_tickets_supportData_fetchHelpdeskTickets_lastComment,
            Gget_tickets_supportData_fetchHelpdeskTickets_lastCommentBuilder> {
  Gget_tickets_supportData_fetchHelpdeskTickets_lastComment._();

  factory Gget_tickets_supportData_fetchHelpdeskTickets_lastComment(
      [void Function(
              Gget_tickets_supportData_fetchHelpdeskTickets_lastCommentBuilder
                  b)
          updates]) = _$Gget_tickets_supportData_fetchHelpdeskTickets_lastComment;

  static void _initializeBuilder(
          Gget_tickets_supportData_fetchHelpdeskTickets_lastCommentBuilder b) =>
      b..G__typename = 'LastCommentViewModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get message;
  bool get hasDocuments;
  static Serializer<Gget_tickets_supportData_fetchHelpdeskTickets_lastComment>
      get serializer =>
          _$ggetTicketsSupportDataFetchHelpdeskTicketsLastCommentSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_tickets_supportData_fetchHelpdeskTickets_lastComment.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_tickets_supportData_fetchHelpdeskTickets_lastComment? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_tickets_supportData_fetchHelpdeskTickets_lastComment.serializer,
        json,
      );
}
