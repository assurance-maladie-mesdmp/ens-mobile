// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_habitudes_de_vie_delete_item.query.data.gql.g.dart';

abstract class Gdelete_habitudes_de_vie_itemData
    implements
        Built<Gdelete_habitudes_de_vie_itemData,
            Gdelete_habitudes_de_vie_itemDataBuilder> {
  Gdelete_habitudes_de_vie_itemData._();

  factory Gdelete_habitudes_de_vie_itemData(
          [void Function(Gdelete_habitudes_de_vie_itemDataBuilder b) updates]) =
      _$Gdelete_habitudes_de_vie_itemData;

  static void _initializeBuilder(Gdelete_habitudes_de_vie_itemDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem get deleteLifestyleItem;
  static Serializer<Gdelete_habitudes_de_vie_itemData> get serializer =>
      _$gdeleteHabitudesDeVieItemDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_habitudes_de_vie_itemData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_habitudes_de_vie_itemData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_habitudes_de_vie_itemData.serializer,
        json,
      );
}

abstract class Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem
    implements
        Built<Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem,
            Gdelete_habitudes_de_vie_itemData_deleteLifestyleItemBuilder> {
  Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem._();

  factory Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem(
      [void Function(
              Gdelete_habitudes_de_vie_itemData_deleteLifestyleItemBuilder b)
          updates]) = _$Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem;

  static void _initializeBuilder(
          Gdelete_habitudes_de_vie_itemData_deleteLifestyleItemBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem>
      get serializer =>
          _$gdeleteHabitudesDeVieItemDataDeleteLifestyleItemSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_habitudes_de_vie_itemData_deleteLifestyleItem.serializer,
        json,
      );
}
