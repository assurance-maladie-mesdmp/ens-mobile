// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_hospitalisations_delete.data.gql.g.dart';

abstract class Gdelete_hospitalisationData
    implements
        Built<Gdelete_hospitalisationData, Gdelete_hospitalisationDataBuilder> {
  Gdelete_hospitalisationData._();

  factory Gdelete_hospitalisationData(
          [void Function(Gdelete_hospitalisationDataBuilder b) updates]) =
      _$Gdelete_hospitalisationData;

  static void _initializeBuilder(Gdelete_hospitalisationDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gdelete_hospitalisationData_deleteHospitalization get deleteHospitalization;
  static Serializer<Gdelete_hospitalisationData> get serializer =>
      _$gdeleteHospitalisationDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_hospitalisationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_hospitalisationData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_hospitalisationData.serializer,
        json,
      );
}

abstract class Gdelete_hospitalisationData_deleteHospitalization
    implements
        Built<Gdelete_hospitalisationData_deleteHospitalization,
            Gdelete_hospitalisationData_deleteHospitalizationBuilder> {
  Gdelete_hospitalisationData_deleteHospitalization._();

  factory Gdelete_hospitalisationData_deleteHospitalization(
      [void Function(Gdelete_hospitalisationData_deleteHospitalizationBuilder b)
          updates]) = _$Gdelete_hospitalisationData_deleteHospitalization;

  static void _initializeBuilder(
          Gdelete_hospitalisationData_deleteHospitalizationBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gdelete_hospitalisationData_deleteHospitalization>
      get serializer =>
          _$gdeleteHospitalisationDataDeleteHospitalizationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_hospitalisationData_deleteHospitalization.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_hospitalisationData_deleteHospitalization? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_hospitalisationData_deleteHospitalization.serializer,
        json,
      );
}
