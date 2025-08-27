// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_catalogue_service_update_autorisation.query.var.gql.g.dart';

abstract class Gupdate_autorisationVars
    implements
        Built<Gupdate_autorisationVars, Gupdate_autorisationVarsBuilder> {
  Gupdate_autorisationVars._();

  factory Gupdate_autorisationVars(
          [void Function(Gupdate_autorisationVarsBuilder b) updates]) =
      _$Gupdate_autorisationVars;

  String get serviceOid;
  String get patientId;
  static Serializer<Gupdate_autorisationVars> get serializer =>
      _$gupdateAutorisationVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_autorisationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_autorisationVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_autorisationVars.serializer,
        json,
      );
}
