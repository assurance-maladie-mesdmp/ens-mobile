// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_get_examens_recommandes.query.var.gql.g.dart';

abstract class Gget_examens_recommandesVars
    implements
        Built<Gget_examens_recommandesVars,
            Gget_examens_recommandesVarsBuilder> {
  Gget_examens_recommandesVars._();

  factory Gget_examens_recommandesVars(
          [void Function(Gget_examens_recommandesVarsBuilder b) updates]) =
      _$Gget_examens_recommandesVars;

  String get patientId;
  static Serializer<Gget_examens_recommandesVars> get serializer =>
      _$ggetExamensRecommandesVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_examens_recommandesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_examens_recommandesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_examens_recommandesVars.serializer,
        json,
      );
}
