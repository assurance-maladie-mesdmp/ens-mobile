// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_create_helpdesk_ticket.query.var.gql.g.dart';

abstract class Gcreate_helpdesk_ticketVars
    implements
        Built<Gcreate_helpdesk_ticketVars, Gcreate_helpdesk_ticketVarsBuilder> {
  Gcreate_helpdesk_ticketVars._();

  factory Gcreate_helpdesk_ticketVars(
          [void Function(Gcreate_helpdesk_ticketVarsBuilder b) updates]) =
      _$Gcreate_helpdesk_ticketVars;

  _i1.GTicketToCreateInput get ticketToCreateInput;
  static Serializer<Gcreate_helpdesk_ticketVars> get serializer =>
      _$gcreateHelpdeskTicketVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gcreate_helpdesk_ticketVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_helpdesk_ticketVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gcreate_helpdesk_ticketVars.serializer,
        json,
      );
}
