// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_nous_contacter_get_ticket_support_details.query.var.gql.g.dart';

abstract class Gget_ticket_support_detailsVars
    implements
        Built<Gget_ticket_support_detailsVars,
            Gget_ticket_support_detailsVarsBuilder> {
  Gget_ticket_support_detailsVars._();

  factory Gget_ticket_support_detailsVars(
          [void Function(Gget_ticket_support_detailsVarsBuilder b) updates]) =
      _$Gget_ticket_support_detailsVars;

  String get ticketId;
  static Serializer<Gget_ticket_support_detailsVars> get serializer =>
      _$ggetTicketSupportDetailsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_ticket_support_detailsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_ticket_support_detailsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_ticket_support_detailsVars.serializer,
        json,
      );
}
