// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_get_consents_for_service_by_oid.query.var.gql.g.dart';

abstract class Gget_consents_for_service_by_oidVars
    implements
        Built<Gget_consents_for_service_by_oidVars,
            Gget_consents_for_service_by_oidVarsBuilder> {
  Gget_consents_for_service_by_oidVars._();

  factory Gget_consents_for_service_by_oidVars(
      [void Function(Gget_consents_for_service_by_oidVarsBuilder b)
          updates]) = _$Gget_consents_for_service_by_oidVars;

  String get oid;
  String get patientId;
  static Serializer<Gget_consents_for_service_by_oidVars> get serializer =>
      _$ggetConsentsForServiceByOidVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_consents_for_service_by_oidVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_consents_for_service_by_oidVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_consents_for_service_by_oidVars.serializer,
        json,
      );
}
