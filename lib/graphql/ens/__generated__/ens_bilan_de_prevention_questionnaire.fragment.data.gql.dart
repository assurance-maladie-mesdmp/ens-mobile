// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_bilan_de_prevention_questionnaire.fragment.data.gql.g.dart';

abstract class Gquestionnaire {
  String get G__typename;
  Gquestionnaire_response? get response;
  String get code;
  String get lastVersion;
  double get ageMin;
  double get ageMax;
  String get title;
  String get availableLimitDate;
  String get availableLimitDateFormatted;
  bool get isEditable;
  Map<String, dynamic> toJson();
}

abstract class Gquestionnaire_response {
  String get G__typename;
  String get id;
  String get version;
  _i1.GHealthQuizCompletionStatus get status;
  String get lastUpdateUserDate;
  String? get lastUpdateUserDateFormatted;
  double? get questionToDisplay;
  Map<String, dynamic> toJson();
}

abstract class GquestionnaireData
    implements
        Built<GquestionnaireData, GquestionnaireDataBuilder>,
        Gquestionnaire {
  GquestionnaireData._();

  factory GquestionnaireData(
          [void Function(GquestionnaireDataBuilder b) updates]) =
      _$GquestionnaireData;

  static void _initializeBuilder(GquestionnaireDataBuilder b) =>
      b..G__typename = 'HealthQuizStatusModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  GquestionnaireData_response? get response;
  @override
  String get code;
  @override
  String get lastVersion;
  @override
  double get ageMin;
  @override
  double get ageMax;
  @override
  String get title;
  @override
  String get availableLimitDate;
  @override
  String get availableLimitDateFormatted;
  @override
  bool get isEditable;
  static Serializer<GquestionnaireData> get serializer =>
      _$gquestionnaireDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GquestionnaireData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GquestionnaireData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GquestionnaireData.serializer,
        json,
      );
}

abstract class GquestionnaireData_response
    implements
        Built<GquestionnaireData_response, GquestionnaireData_responseBuilder>,
        Gquestionnaire_response {
  GquestionnaireData_response._();

  factory GquestionnaireData_response(
          [void Function(GquestionnaireData_responseBuilder b) updates]) =
      _$GquestionnaireData_response;

  static void _initializeBuilder(GquestionnaireData_responseBuilder b) =>
      b..G__typename = 'HealthQuizResponseStatusModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get version;
  @override
  _i1.GHealthQuizCompletionStatus get status;
  @override
  String get lastUpdateUserDate;
  @override
  String? get lastUpdateUserDateFormatted;
  @override
  double? get questionToDisplay;
  static Serializer<GquestionnaireData_response> get serializer =>
      _$gquestionnaireDataResponseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GquestionnaireData_response.serializer,
        this,
      ) as Map<String, dynamic>);

  static GquestionnaireData_response? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GquestionnaireData_response.serializer,
        json,
      );
}
