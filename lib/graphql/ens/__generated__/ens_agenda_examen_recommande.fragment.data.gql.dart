// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_agenda_examen_recommande.fragment.data.gql.g.dart';

abstract class GexamenRecommande {
  String get G__typename;
  String get code;
  String get type;
  String get title;
  String get dateDebutCampagne;
  String? get dateFinCampagne;
  String get dateDebutPrevention;
  String get dateFinPrevention;
  _i1.GPreventionTypeEnum get statut;
  String? get executionDate;
  String? get requirementLevel;
  Map<String, dynamic> toJson();
}

abstract class GexamenRecommandeData
    implements
        Built<GexamenRecommandeData, GexamenRecommandeDataBuilder>,
        GexamenRecommande {
  GexamenRecommandeData._();

  factory GexamenRecommandeData(
          [void Function(GexamenRecommandeDataBuilder b) updates]) =
      _$GexamenRecommandeData;

  static void _initializeBuilder(GexamenRecommandeDataBuilder b) =>
      b..G__typename = 'PreventionViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get code;
  @override
  String get type;
  @override
  String get title;
  @override
  String get dateDebutCampagne;
  @override
  String? get dateFinCampagne;
  @override
  String get dateDebutPrevention;
  @override
  String get dateFinPrevention;
  @override
  _i1.GPreventionTypeEnum get statut;
  @override
  String? get executionDate;
  @override
  String? get requirementLevel;
  static Serializer<GexamenRecommandeData> get serializer =>
      _$gexamenRecommandeDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GexamenRecommandeData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GexamenRecommandeData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GexamenRecommandeData.serializer,
        json,
      );
}
