// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_document_dossier_fragment.data.gql.g.dart';

abstract class Gdossier {
  String get G__typename;
  String get id;
  String get title;
  Map<String, dynamic> toJson();
}

abstract class GdossierData
    implements Built<GdossierData, GdossierDataBuilder>, Gdossier {
  GdossierData._();

  factory GdossierData([void Function(GdossierDataBuilder b) updates]) =
      _$GdossierData;

  static void _initializeBuilder(GdossierDataBuilder b) =>
      b..G__typename = 'FolderViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get title;
  static Serializer<GdossierData> get serializer => _$gdossierDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GdossierData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdossierData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GdossierData.serializer,
        json,
      );
}
