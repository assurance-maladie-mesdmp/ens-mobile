// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_agenda_update_rappel.query.var.gql.g.dart';

abstract class Gupdate_rappelVars
    implements Built<Gupdate_rappelVars, Gupdate_rappelVarsBuilder> {
  Gupdate_rappelVars._();

  factory Gupdate_rappelVars(
          [void Function(Gupdate_rappelVarsBuilder b) updates]) =
      _$Gupdate_rappelVars;

  _i1.GReminderToUpdateInput get rappel;
  static Serializer<Gupdate_rappelVars> get serializer =>
      _$gupdateRappelVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gupdate_rappelVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_rappelVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gupdate_rappelVars.serializer,
        json,
      );
}
