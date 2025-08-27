// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_catalogue_service_update_autorisation.query.data.gql.g.dart';

abstract class Gupdate_autorisationData
    implements
        Built<Gupdate_autorisationData, Gupdate_autorisationDataBuilder> {
  Gupdate_autorisationData._();

  factory Gupdate_autorisationData(
          [void Function(Gupdate_autorisationDataBuilder b) updates]) =
      _$Gupdate_autorisationData;

  static void _initializeBuilder(Gupdate_autorisationDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gupdate_autorisationData_confirmUpdateServiceVersionInformation
      get confirmUpdateServiceVersionInformation;
  static Serializer<Gupdate_autorisationData> get serializer =>
      _$gupdateAutorisationDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_autorisationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_autorisationData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_autorisationData.serializer,
        json,
      );
}

abstract class Gupdate_autorisationData_confirmUpdateServiceVersionInformation
    implements
        Built<Gupdate_autorisationData_confirmUpdateServiceVersionInformation,
            Gupdate_autorisationData_confirmUpdateServiceVersionInformationBuilder> {
  Gupdate_autorisationData_confirmUpdateServiceVersionInformation._();

  factory Gupdate_autorisationData_confirmUpdateServiceVersionInformation(
          [void Function(
                  Gupdate_autorisationData_confirmUpdateServiceVersionInformationBuilder
                      b)
              updates]) =
      _$Gupdate_autorisationData_confirmUpdateServiceVersionInformation;

  static void _initializeBuilder(
          Gupdate_autorisationData_confirmUpdateServiceVersionInformationBuilder
              b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<
          Gupdate_autorisationData_confirmUpdateServiceVersionInformation>
      get serializer =>
          _$gupdateAutorisationDataConfirmUpdateServiceVersionInformationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_autorisationData_confirmUpdateServiceVersionInformation
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_autorisationData_confirmUpdateServiceVersionInformation?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gupdate_autorisationData_confirmUpdateServiceVersionInformation
                .serializer,
            json,
          );
}
