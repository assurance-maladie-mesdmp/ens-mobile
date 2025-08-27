// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_update_antecedent_familial.query.data.gql.g.dart';

abstract class Gupdate_antecedent_familialData
    implements
        Built<Gupdate_antecedent_familialData,
            Gupdate_antecedent_familialDataBuilder> {
  Gupdate_antecedent_familialData._();

  factory Gupdate_antecedent_familialData(
          [void Function(Gupdate_antecedent_familialDataBuilder b) updates]) =
      _$Gupdate_antecedent_familialData;

  static void _initializeBuilder(Gupdate_antecedent_familialDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gupdate_antecedent_familialData_putFamilyHistory get putFamilyHistory;
  static Serializer<Gupdate_antecedent_familialData> get serializer =>
      _$gupdateAntecedentFamilialDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_antecedent_familialData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_antecedent_familialData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_antecedent_familialData.serializer,
        json,
      );
}

abstract class Gupdate_antecedent_familialData_putFamilyHistory
    implements
        Built<Gupdate_antecedent_familialData_putFamilyHistory,
            Gupdate_antecedent_familialData_putFamilyHistoryBuilder> {
  Gupdate_antecedent_familialData_putFamilyHistory._();

  factory Gupdate_antecedent_familialData_putFamilyHistory(
      [void Function(Gupdate_antecedent_familialData_putFamilyHistoryBuilder b)
          updates]) = _$Gupdate_antecedent_familialData_putFamilyHistory;

  static void _initializeBuilder(
          Gupdate_antecedent_familialData_putFamilyHistoryBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gupdate_antecedent_familialData_putFamilyHistory>
      get serializer =>
          _$gupdateAntecedentFamilialDataPutFamilyHistorySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_antecedent_familialData_putFamilyHistory.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_antecedent_familialData_putFamilyHistory? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_antecedent_familialData_putFamilyHistory.serializer,
        json,
      );
}
