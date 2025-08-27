// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_create_helpdesk_ticket.query.data.gql.g.dart';

abstract class Gcreate_helpdesk_ticketData
    implements
        Built<Gcreate_helpdesk_ticketData, Gcreate_helpdesk_ticketDataBuilder> {
  Gcreate_helpdesk_ticketData._();

  factory Gcreate_helpdesk_ticketData(
          [void Function(Gcreate_helpdesk_ticketDataBuilder b) updates]) =
      _$Gcreate_helpdesk_ticketData;

  static void _initializeBuilder(Gcreate_helpdesk_ticketDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gcreate_helpdesk_ticketData_createHelpdeskTicketV2 get createHelpdeskTicketV2;
  static Serializer<Gcreate_helpdesk_ticketData> get serializer =>
      _$gcreateHelpdeskTicketDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcreate_helpdesk_ticketData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_helpdesk_ticketData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcreate_helpdesk_ticketData.serializer,
        json,
      );
}

abstract class Gcreate_helpdesk_ticketData_createHelpdeskTicketV2
    implements
        Built<Gcreate_helpdesk_ticketData_createHelpdeskTicketV2,
            Gcreate_helpdesk_ticketData_createHelpdeskTicketV2Builder> {
  Gcreate_helpdesk_ticketData_createHelpdeskTicketV2._();

  factory Gcreate_helpdesk_ticketData_createHelpdeskTicketV2(
      [void Function(
              Gcreate_helpdesk_ticketData_createHelpdeskTicketV2Builder b)
          updates]) = _$Gcreate_helpdesk_ticketData_createHelpdeskTicketV2;

  static void _initializeBuilder(
          Gcreate_helpdesk_ticketData_createHelpdeskTicketV2Builder b) =>
      b..G__typename = 'CreateTicket';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  String? get errorCode;
  static Serializer<Gcreate_helpdesk_ticketData_createHelpdeskTicketV2>
      get serializer =>
          _$gcreateHelpdeskTicketDataCreateHelpdeskTicketV2Serializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcreate_helpdesk_ticketData_createHelpdeskTicketV2.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_helpdesk_ticketData_createHelpdeskTicketV2? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcreate_helpdesk_ticketData_createHelpdeskTicketV2.serializer,
        json,
      );
}
