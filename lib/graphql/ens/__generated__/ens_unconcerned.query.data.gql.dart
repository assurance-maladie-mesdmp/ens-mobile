// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_unconcerned.query.data.gql.g.dart';

abstract class GunconcernedData
    implements Built<GunconcernedData, GunconcernedDataBuilder> {
  GunconcernedData._();

  factory GunconcernedData([void Function(GunconcernedDataBuilder b) updates]) =
      _$GunconcernedData;

  static void _initializeBuilder(GunconcernedDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GunconcernedData_unconcerned get unconcerned;
  static Serializer<GunconcernedData> get serializer =>
      _$gunconcernedDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GunconcernedData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GunconcernedData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GunconcernedData.serializer,
        json,
      );
}

abstract class GunconcernedData_unconcerned
    implements
        Built<GunconcernedData_unconcerned,
            GunconcernedData_unconcernedBuilder> {
  GunconcernedData_unconcerned._();

  factory GunconcernedData_unconcerned(
          [void Function(GunconcernedData_unconcernedBuilder b) updates]) =
      _$GunconcernedData_unconcerned;

  static void _initializeBuilder(GunconcernedData_unconcernedBuilder b) =>
      b..G__typename = 'UnconcernedModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get declarationDate;
  static Serializer<GunconcernedData_unconcerned> get serializer =>
      _$gunconcernedDataUnconcernedSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GunconcernedData_unconcerned.serializer,
        this,
      ) as Map<String, dynamic>);

  static GunconcernedData_unconcerned? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GunconcernedData_unconcerned.serializer,
        json,
      );
}
