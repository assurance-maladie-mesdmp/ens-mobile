// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_delete_antecedent_familial.query.data.gql.g.dart';

abstract class Gdelete_antecedent_familialData
    implements
        Built<Gdelete_antecedent_familialData,
            Gdelete_antecedent_familialDataBuilder> {
  Gdelete_antecedent_familialData._();

  factory Gdelete_antecedent_familialData(
          [void Function(Gdelete_antecedent_familialDataBuilder b) updates]) =
      _$Gdelete_antecedent_familialData;

  static void _initializeBuilder(Gdelete_antecedent_familialDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gdelete_antecedent_familialData_deleteFamilyHistory get deleteFamilyHistory;
  static Serializer<Gdelete_antecedent_familialData> get serializer =>
      _$gdeleteAntecedentFamilialDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_antecedent_familialData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_antecedent_familialData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_antecedent_familialData.serializer,
        json,
      );
}

abstract class Gdelete_antecedent_familialData_deleteFamilyHistory
    implements
        Built<Gdelete_antecedent_familialData_deleteFamilyHistory,
            Gdelete_antecedent_familialData_deleteFamilyHistoryBuilder> {
  Gdelete_antecedent_familialData_deleteFamilyHistory._();

  factory Gdelete_antecedent_familialData_deleteFamilyHistory(
      [void Function(
              Gdelete_antecedent_familialData_deleteFamilyHistoryBuilder b)
          updates]) = _$Gdelete_antecedent_familialData_deleteFamilyHistory;

  static void _initializeBuilder(
          Gdelete_antecedent_familialData_deleteFamilyHistoryBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gdelete_antecedent_familialData_deleteFamilyHistory>
      get serializer =>
          _$gdeleteAntecedentFamilialDataDeleteFamilyHistorySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_antecedent_familialData_deleteFamilyHistory.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_antecedent_familialData_deleteFamilyHistory? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_antecedent_familialData_deleteFamilyHistory.serializer,
        json,
      );
}
