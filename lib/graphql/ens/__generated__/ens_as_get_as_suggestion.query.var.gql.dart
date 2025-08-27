// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_as_get_as_suggestion.query.var.gql.g.dart';

abstract class Gget_as_suggestionsVars
    implements Built<Gget_as_suggestionsVars, Gget_as_suggestionsVarsBuilder> {
  Gget_as_suggestionsVars._();

  factory Gget_as_suggestionsVars(
          [void Function(Gget_as_suggestionsVarsBuilder b) updates]) =
      _$Gget_as_suggestionsVars;

  String get patientId;
  _i1.GTypeSuggestion? get typeSuggestion;
  static Serializer<Gget_as_suggestionsVars> get serializer =>
      _$ggetAsSuggestionsVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gget_as_suggestionsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_as_suggestionsVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gget_as_suggestionsVars.serializer,
        json,
      );
}
