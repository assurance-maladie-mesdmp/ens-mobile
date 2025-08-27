// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_catalogue_service_get_services_without_synchro.query.var.gql.g.dart';

abstract class Gget_services_without_synchroVars
    implements
        Built<Gget_services_without_synchroVars,
            Gget_services_without_synchroVarsBuilder> {
  Gget_services_without_synchroVars._();

  factory Gget_services_without_synchroVars(
          [void Function(Gget_services_without_synchroVarsBuilder b) updates]) =
      _$Gget_services_without_synchroVars;

  static Serializer<Gget_services_without_synchroVars> get serializer =>
      _$ggetServicesWithoutSynchroVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_services_without_synchroVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_services_without_synchroVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_services_without_synchroVars.serializer,
        json,
      );
}
