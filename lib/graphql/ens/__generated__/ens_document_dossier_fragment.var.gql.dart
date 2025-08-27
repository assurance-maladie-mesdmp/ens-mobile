// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_document_dossier_fragment.var.gql.g.dart';

abstract class GdossierVars
    implements Built<GdossierVars, GdossierVarsBuilder> {
  GdossierVars._();

  factory GdossierVars([void Function(GdossierVarsBuilder b) updates]) =
      _$GdossierVars;

  static Serializer<GdossierVars> get serializer => _$gdossierVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GdossierVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdossierVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GdossierVars.serializer,
        json,
      );
}
