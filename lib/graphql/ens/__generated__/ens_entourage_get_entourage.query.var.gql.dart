// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_entourage_get_entourage.query.var.gql.g.dart';

abstract class Gget_entourage_contactVars
    implements
        Built<Gget_entourage_contactVars, Gget_entourage_contactVarsBuilder> {
  Gget_entourage_contactVars._();

  factory Gget_entourage_contactVars(
          [void Function(Gget_entourage_contactVarsBuilder b) updates]) =
      _$Gget_entourage_contactVars;

  String get patientId;
  static Serializer<Gget_entourage_contactVars> get serializer =>
      _$ggetEntourageContactVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_entourage_contactVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_entourage_contactVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_entourage_contactVars.serializer,
        json,
      );
}
