// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_habitudes_de_vie_delete_item.query.var.gql.g.dart';

abstract class Gdelete_habitudes_de_vie_itemVars
    implements
        Built<Gdelete_habitudes_de_vie_itemVars,
            Gdelete_habitudes_de_vie_itemVarsBuilder> {
  Gdelete_habitudes_de_vie_itemVars._();

  factory Gdelete_habitudes_de_vie_itemVars(
          [void Function(Gdelete_habitudes_de_vie_itemVarsBuilder b) updates]) =
      _$Gdelete_habitudes_de_vie_itemVars;

  String get patientId;
  String get lifestyleItemId;
  static Serializer<Gdelete_habitudes_de_vie_itemVars> get serializer =>
      _$gdeleteHabitudesDeVieItemVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_habitudes_de_vie_itemVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_habitudes_de_vie_itemVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_habitudes_de_vie_itemVars.serializer,
        json,
      );
}
