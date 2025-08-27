// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_agenda_rdv.fragment.var.gql.g.dart';

abstract class GrdvVars implements Built<GrdvVars, GrdvVarsBuilder> {
  GrdvVars._();

  factory GrdvVars([void Function(GrdvVarsBuilder b) updates]) = _$GrdvVars;

  static Serializer<GrdvVars> get serializer => _$grdvVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GrdvVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GrdvVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GrdvVars.serializer,
        json,
      );
}
