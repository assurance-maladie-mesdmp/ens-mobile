// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_link.query.data.gql.g.dart';

abstract class Gdelete_linkData
    implements Built<Gdelete_linkData, Gdelete_linkDataBuilder> {
  Gdelete_linkData._();

  factory Gdelete_linkData([void Function(Gdelete_linkDataBuilder b) updates]) =
      _$Gdelete_linkData;

  static void _initializeBuilder(Gdelete_linkDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gdelete_linkData_deleteLinks> get deleteLinks;
  static Serializer<Gdelete_linkData> get serializer =>
      _$gdeleteLinkDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_linkData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_linkData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_linkData.serializer,
        json,
      );
}

abstract class Gdelete_linkData_deleteLinks
    implements
        Built<Gdelete_linkData_deleteLinks,
            Gdelete_linkData_deleteLinksBuilder> {
  Gdelete_linkData_deleteLinks._();

  factory Gdelete_linkData_deleteLinks(
          [void Function(Gdelete_linkData_deleteLinksBuilder b) updates]) =
      _$Gdelete_linkData_deleteLinks;

  static void _initializeBuilder(Gdelete_linkData_deleteLinksBuilder b) =>
      b..G__typename = 'DeletedLinkModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get linkId;
  static Serializer<Gdelete_linkData_deleteLinks> get serializer =>
      _$gdeleteLinkDataDeleteLinksSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_linkData_deleteLinks.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_linkData_deleteLinks? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_linkData_deleteLinks.serializer,
        json,
      );
}
