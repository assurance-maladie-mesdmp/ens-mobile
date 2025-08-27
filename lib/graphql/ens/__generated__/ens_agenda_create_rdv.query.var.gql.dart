// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_agenda_create_rdv.query.var.gql.g.dart';

abstract class Gcreate_rdvVars
    implements Built<Gcreate_rdvVars, Gcreate_rdvVarsBuilder> {
  Gcreate_rdvVars._();

  factory Gcreate_rdvVars([void Function(Gcreate_rdvVarsBuilder b) updates]) =
      _$Gcreate_rdvVars;

  _i1.GAppointmentToCreateInput get rdv;
  static Serializer<Gcreate_rdvVars> get serializer =>
      _$gcreateRdvVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gcreate_rdvVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_rdvVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gcreate_rdvVars.serializer,
        json,
      );
}
