// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_agenda_create_rappel.query.var.gql.g.dart';

abstract class Gcreate_rappelVars
    implements Built<Gcreate_rappelVars, Gcreate_rappelVarsBuilder> {
  Gcreate_rappelVars._();

  factory Gcreate_rappelVars(
          [void Function(Gcreate_rappelVarsBuilder b) updates]) =
      _$Gcreate_rappelVars;

  _i1.GReminderToCreateInput get rappel;
  static Serializer<Gcreate_rappelVars> get serializer =>
      _$gcreateRappelVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gcreate_rappelVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_rappelVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gcreate_rappelVars.serializer,
        json,
      );
}
