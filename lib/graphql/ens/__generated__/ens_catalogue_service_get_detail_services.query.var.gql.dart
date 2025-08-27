// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_catalogue_service_get_detail_services.query.var.gql.g.dart';

abstract class Gget_detail_serviceVars
    implements Built<Gget_detail_serviceVars, Gget_detail_serviceVarsBuilder> {
  Gget_detail_serviceVars._();

  factory Gget_detail_serviceVars(
          [void Function(Gget_detail_serviceVarsBuilder b) updates]) =
      _$Gget_detail_serviceVars;

  String get serviceId;
  static Serializer<Gget_detail_serviceVars> get serializer =>
      _$ggetDetailServiceVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_detail_serviceVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_detail_serviceVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_detail_serviceVars.serializer,
        json,
      );
}
