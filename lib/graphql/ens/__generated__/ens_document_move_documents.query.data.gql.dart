// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_document_move_documents.query.data.gql.g.dart';

abstract class Gmove_documentsData
    implements Built<Gmove_documentsData, Gmove_documentsDataBuilder> {
  Gmove_documentsData._();

  factory Gmove_documentsData(
          [void Function(Gmove_documentsDataBuilder b) updates]) =
      _$Gmove_documentsData;

  static void _initializeBuilder(Gmove_documentsDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gmove_documentsData_moveDocumentsV2 get moveDocumentsV2;
  static Serializer<Gmove_documentsData> get serializer =>
      _$gmoveDocumentsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gmove_documentsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gmove_documentsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gmove_documentsData.serializer,
        json,
      );
}

abstract class Gmove_documentsData_moveDocumentsV2
    implements
        Built<Gmove_documentsData_moveDocumentsV2,
            Gmove_documentsData_moveDocumentsV2Builder> {
  Gmove_documentsData_moveDocumentsV2._();

  factory Gmove_documentsData_moveDocumentsV2(
      [void Function(Gmove_documentsData_moveDocumentsV2Builder b)
          updates]) = _$Gmove_documentsData_moveDocumentsV2;

  static void _initializeBuilder(
          Gmove_documentsData_moveDocumentsV2Builder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gmove_documentsData_moveDocumentsV2> get serializer =>
      _$gmoveDocumentsDataMoveDocumentsV2Serializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gmove_documentsData_moveDocumentsV2.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gmove_documentsData_moveDocumentsV2? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gmove_documentsData_moveDocumentsV2.serializer,
        json,
      );
}
