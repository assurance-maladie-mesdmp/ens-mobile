// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_catalogue_services.fragment.var.gql.g.dart';

abstract class GserviceVars
    implements Built<GserviceVars, GserviceVarsBuilder> {
  GserviceVars._();

  factory GserviceVars([void Function(GserviceVarsBuilder b) updates]) =
      _$GserviceVars;

  static Serializer<GserviceVars> get serializer => _$gserviceVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GserviceVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GserviceVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GserviceVars.serializer,
        json,
      );
}

abstract class GregionVars implements Built<GregionVars, GregionVarsBuilder> {
  GregionVars._();

  factory GregionVars([void Function(GregionVarsBuilder b) updates]) =
      _$GregionVars;

  static Serializer<GregionVars> get serializer => _$gregionVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GregionVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GregionVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GregionVars.serializer,
        json,
      );
}

abstract class GthematicsVars
    implements Built<GthematicsVars, GthematicsVarsBuilder> {
  GthematicsVars._();

  factory GthematicsVars([void Function(GthematicsVarsBuilder b) updates]) =
      _$GthematicsVars;

  static Serializer<GthematicsVars> get serializer =>
      _$gthematicsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GthematicsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GthematicsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GthematicsVars.serializer,
        json,
      );
}
