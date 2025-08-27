// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_add_antecedent_familial.query.data.gql.g.dart';

abstract class Gadd_antecedent_familialData
    implements
        Built<Gadd_antecedent_familialData,
            Gadd_antecedent_familialDataBuilder> {
  Gadd_antecedent_familialData._();

  factory Gadd_antecedent_familialData(
          [void Function(Gadd_antecedent_familialDataBuilder b) updates]) =
      _$Gadd_antecedent_familialData;

  static void _initializeBuilder(Gadd_antecedent_familialDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gadd_antecedent_familialData_postFamilyHistory get postFamilyHistory;
  static Serializer<Gadd_antecedent_familialData> get serializer =>
      _$gaddAntecedentFamilialDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_antecedent_familialData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_antecedent_familialData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_antecedent_familialData.serializer,
        json,
      );
}

abstract class Gadd_antecedent_familialData_postFamilyHistory
    implements
        Built<Gadd_antecedent_familialData_postFamilyHistory,
            Gadd_antecedent_familialData_postFamilyHistoryBuilder> {
  Gadd_antecedent_familialData_postFamilyHistory._();

  factory Gadd_antecedent_familialData_postFamilyHistory(
      [void Function(Gadd_antecedent_familialData_postFamilyHistoryBuilder b)
          updates]) = _$Gadd_antecedent_familialData_postFamilyHistory;

  static void _initializeBuilder(
          Gadd_antecedent_familialData_postFamilyHistoryBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gadd_antecedent_familialData_postFamilyHistory>
      get serializer => _$gaddAntecedentFamilialDataPostFamilyHistorySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_antecedent_familialData_postFamilyHistory.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_antecedent_familialData_postFamilyHistory? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_antecedent_familialData_postFamilyHistory.serializer,
        json,
      );
}
