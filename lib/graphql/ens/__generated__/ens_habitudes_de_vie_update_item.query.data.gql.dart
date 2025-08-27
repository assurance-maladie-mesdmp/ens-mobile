// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_habitudes_de_vie_update_item.query.data.gql.g.dart';

abstract class Gupdate_habitudes_de_vie_itemData
    implements
        Built<Gupdate_habitudes_de_vie_itemData,
            Gupdate_habitudes_de_vie_itemDataBuilder> {
  Gupdate_habitudes_de_vie_itemData._();

  factory Gupdate_habitudes_de_vie_itemData(
          [void Function(Gupdate_habitudes_de_vie_itemDataBuilder b) updates]) =
      _$Gupdate_habitudes_de_vie_itemData;

  static void _initializeBuilder(Gupdate_habitudes_de_vie_itemDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gupdate_habitudes_de_vie_itemData_updateLifestyleItem get updateLifestyleItem;
  static Serializer<Gupdate_habitudes_de_vie_itemData> get serializer =>
      _$gupdateHabitudesDeVieItemDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_habitudes_de_vie_itemData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_habitudes_de_vie_itemData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_habitudes_de_vie_itemData.serializer,
        json,
      );
}

abstract class Gupdate_habitudes_de_vie_itemData_updateLifestyleItem
    implements
        Built<Gupdate_habitudes_de_vie_itemData_updateLifestyleItem,
            Gupdate_habitudes_de_vie_itemData_updateLifestyleItemBuilder> {
  Gupdate_habitudes_de_vie_itemData_updateLifestyleItem._();

  factory Gupdate_habitudes_de_vie_itemData_updateLifestyleItem(
      [void Function(
              Gupdate_habitudes_de_vie_itemData_updateLifestyleItemBuilder b)
          updates]) = _$Gupdate_habitudes_de_vie_itemData_updateLifestyleItem;

  static void _initializeBuilder(
          Gupdate_habitudes_de_vie_itemData_updateLifestyleItemBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gupdate_habitudes_de_vie_itemData_updateLifestyleItem>
      get serializer =>
          _$gupdateHabitudesDeVieItemDataUpdateLifestyleItemSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_habitudes_de_vie_itemData_updateLifestyleItem.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_habitudes_de_vie_itemData_updateLifestyleItem? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_habitudes_de_vie_itemData_updateLifestyleItem.serializer,
        json,
      );
}
