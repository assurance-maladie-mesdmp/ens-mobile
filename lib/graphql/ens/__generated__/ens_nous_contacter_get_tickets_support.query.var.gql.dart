// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_nous_contacter_get_tickets_support.query.var.gql.g.dart';

abstract class Gget_tickets_supportVars
    implements
        Built<Gget_tickets_supportVars, Gget_tickets_supportVarsBuilder> {
  Gget_tickets_supportVars._();

  factory Gget_tickets_supportVars(
          [void Function(Gget_tickets_supportVarsBuilder b) updates]) =
      _$Gget_tickets_supportVars;

  String get patientId;
  static Serializer<Gget_tickets_supportVars> get serializer =>
      _$ggetTicketsSupportVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_tickets_supportVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_tickets_supportVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_tickets_supportVars.serializer,
        json,
      );
}
