// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_agenda_update_rdv.query.var.gql.g.dart';

abstract class Gupdate_rdvVars
    implements Built<Gupdate_rdvVars, Gupdate_rdvVarsBuilder> {
  Gupdate_rdvVars._();

  factory Gupdate_rdvVars([void Function(Gupdate_rdvVarsBuilder b) updates]) =
      _$Gupdate_rdvVars;

  _i1.GAppointmentToUpdateInput get rdv;
  static Serializer<Gupdate_rdvVars> get serializer =>
      _$gupdateRdvVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gupdate_rdvVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_rdvVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gupdate_rdvVars.serializer,
        json,
      );
}
