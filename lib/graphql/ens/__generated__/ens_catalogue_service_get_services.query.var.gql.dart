// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_catalogue_service_get_services.query.var.gql.g.dart';

abstract class Gget_servicesVars
    implements Built<Gget_servicesVars, Gget_servicesVarsBuilder> {
  Gget_servicesVars._();

  factory Gget_servicesVars(
          [void Function(Gget_servicesVarsBuilder b) updates]) =
      _$Gget_servicesVars;

  String? get patientId;
  static Serializer<Gget_servicesVars> get serializer =>
      _$ggetServicesVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_servicesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_servicesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_servicesVars.serializer,
        json,
      );
}
