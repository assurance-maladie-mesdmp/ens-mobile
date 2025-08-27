// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_helpdesk_get_motifs.query.data.gql.g.dart';

abstract class Gget_motifs_nouvelle_demandeData
    implements
        Built<Gget_motifs_nouvelle_demandeData,
            Gget_motifs_nouvelle_demandeDataBuilder> {
  Gget_motifs_nouvelle_demandeData._();

  factory Gget_motifs_nouvelle_demandeData(
          [void Function(Gget_motifs_nouvelle_demandeDataBuilder b) updates]) =
      _$Gget_motifs_nouvelle_demandeData;

  static void _initializeBuilder(Gget_motifs_nouvelle_demandeDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_motifs_nouvelle_demandeData_fetchAllReasons>
      get fetchAllReasons;
  static Serializer<Gget_motifs_nouvelle_demandeData> get serializer =>
      _$ggetMotifsNouvelleDemandeDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_motifs_nouvelle_demandeData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_motifs_nouvelle_demandeData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_motifs_nouvelle_demandeData.serializer,
        json,
      );
}

abstract class Gget_motifs_nouvelle_demandeData_fetchAllReasons
    implements
        Built<Gget_motifs_nouvelle_demandeData_fetchAllReasons,
            Gget_motifs_nouvelle_demandeData_fetchAllReasonsBuilder> {
  Gget_motifs_nouvelle_demandeData_fetchAllReasons._();

  factory Gget_motifs_nouvelle_demandeData_fetchAllReasons(
      [void Function(Gget_motifs_nouvelle_demandeData_fetchAllReasonsBuilder b)
          updates]) = _$Gget_motifs_nouvelle_demandeData_fetchAllReasons;

  static void _initializeBuilder(
          Gget_motifs_nouvelle_demandeData_fetchAllReasonsBuilder b) =>
      b..G__typename = 'ReasonsViewModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get label;
  String get value;
  static Serializer<Gget_motifs_nouvelle_demandeData_fetchAllReasons>
      get serializer =>
          _$ggetMotifsNouvelleDemandeDataFetchAllReasonsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_motifs_nouvelle_demandeData_fetchAllReasons.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_motifs_nouvelle_demandeData_fetchAllReasons? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_motifs_nouvelle_demandeData_fetchAllReasons.serializer,
        json,
      );
}
