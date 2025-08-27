// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_mark_notifications_as_read.query.var.gql.g.dart';

abstract class Gmark_all_notifications_as_readVars
    implements
        Built<Gmark_all_notifications_as_readVars,
            Gmark_all_notifications_as_readVarsBuilder> {
  Gmark_all_notifications_as_readVars._();

  factory Gmark_all_notifications_as_readVars(
      [void Function(Gmark_all_notifications_as_readVarsBuilder b)
          updates]) = _$Gmark_all_notifications_as_readVars;

  String get patientId;
  static Serializer<Gmark_all_notifications_as_readVars> get serializer =>
      _$gmarkAllNotificationsAsReadVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gmark_all_notifications_as_readVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gmark_all_notifications_as_readVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gmark_all_notifications_as_readVars.serializer,
        json,
      );
}
