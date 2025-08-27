// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_habitudes_de_vie_update_item.query.var.gql.g.dart';

abstract class Gupdate_habitudes_de_vie_itemVars
    implements
        Built<Gupdate_habitudes_de_vie_itemVars,
            Gupdate_habitudes_de_vie_itemVarsBuilder> {
  Gupdate_habitudes_de_vie_itemVars._();

  factory Gupdate_habitudes_de_vie_itemVars(
          [void Function(Gupdate_habitudes_de_vie_itemVarsBuilder b) updates]) =
      _$Gupdate_habitudes_de_vie_itemVars;

  _i1.GLifestyleItemInput get lifestyleInput;
  String get patientId;
  static Serializer<Gupdate_habitudes_de_vie_itemVars> get serializer =>
      _$gupdateHabitudesDeVieItemVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gupdate_habitudes_de_vie_itemVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_habitudes_de_vie_itemVars? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gupdate_habitudes_de_vie_itemVars.serializer,
        json,
      );
}
