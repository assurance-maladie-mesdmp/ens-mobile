// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_bilan_de_prevention_questionnaire.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_bilan_de_prevention_get_questionnaires.query.data.gql.g.dart';

abstract class Gget_questionnairesData
    implements Built<Gget_questionnairesData, Gget_questionnairesDataBuilder> {
  Gget_questionnairesData._();

  factory Gget_questionnairesData(
          [void Function(Gget_questionnairesDataBuilder b) updates]) =
      _$Gget_questionnairesData;

  static void _initializeBuilder(Gget_questionnairesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_questionnairesData_fetchAllHealthQuizStatus get fetchAllHealthQuizStatus;
  static Serializer<Gget_questionnairesData> get serializer =>
      _$ggetQuestionnairesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnairesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnairesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_questionnairesData.serializer,
        json,
      );
}

abstract class Gget_questionnairesData_fetchAllHealthQuizStatus
    implements
        Built<Gget_questionnairesData_fetchAllHealthQuizStatus,
            Gget_questionnairesData_fetchAllHealthQuizStatusBuilder> {
  Gget_questionnairesData_fetchAllHealthQuizStatus._();

  factory Gget_questionnairesData_fetchAllHealthQuizStatus(
      [void Function(Gget_questionnairesData_fetchAllHealthQuizStatusBuilder b)
          updates]) = _$Gget_questionnairesData_fetchAllHealthQuizStatus;

  static void _initializeBuilder(
          Gget_questionnairesData_fetchAllHealthQuizStatusBuilder b) =>
      b..G__typename = 'HealthQuizListStatusModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get isEmpty;
  BuiltList<Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo>
      get healthQuizListToDo;
  BuiltList<
          Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing>
      get healthQuizListDoing;
  BuiltList<Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone>
      get healthQuizListDone;
  static Serializer<Gget_questionnairesData_fetchAllHealthQuizStatus>
      get serializer =>
          _$ggetQuestionnairesDataFetchAllHealthQuizStatusSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnairesData_fetchAllHealthQuizStatus.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnairesData_fetchAllHealthQuizStatus? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_questionnairesData_fetchAllHealthQuizStatus.serializer,
        json,
      );
}

abstract class Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo
    implements
        Built<
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo,
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDoBuilder>,
        _i2.Gquestionnaire {
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo._();

  factory Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo(
          [void Function(
                  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDoBuilder
                      b)
              updates]) =
      _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo;

  static void _initializeBuilder(
          Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDoBuilder
              b) =>
      b..G__typename = 'HealthQuizStatusModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response?
      get response;
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
  static Serializer<
          Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo>
      get serializer =>
          _$ggetQuestionnairesDataFetchAllHealthQuizStatusHealthQuizListToDoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo
                .serializer,
            json,
          );
}

abstract class Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response
    implements
        Built<
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response,
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_responseBuilder>,
        _i2.Gquestionnaire_response {
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response._();

  factory Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response(
          [void Function(
                  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_responseBuilder
                      b)
              updates]) =
      _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response;

  static void _initializeBuilder(
          Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_responseBuilder
              b) =>
      b..G__typename = 'HealthQuizResponseStatusModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get version;
  @override
  _i3.GHealthQuizCompletionStatus get status;
  @override
  String get lastUpdateUserDate;
  @override
  String? get lastUpdateUserDateFormatted;
  @override
  double? get questionToDisplay;
  static Serializer<
          Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response>
      get serializer =>
          _$ggetQuestionnairesDataFetchAllHealthQuizStatusHealthQuizListToDoResponseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListToDo_response
                .serializer,
            json,
          );
}

abstract class Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing
    implements
        Built<
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing,
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoingBuilder>,
        _i2.Gquestionnaire {
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing._();

  factory Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing(
          [void Function(
                  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoingBuilder
                      b)
              updates]) =
      _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing;

  static void _initializeBuilder(
          Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoingBuilder
              b) =>
      b..G__typename = 'HealthQuizStatusModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response?
      get response;
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
  static Serializer<
          Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing>
      get serializer =>
          _$ggetQuestionnairesDataFetchAllHealthQuizStatusHealthQuizListDoingSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing
                .serializer,
            json,
          );
}

abstract class Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response
    implements
        Built<
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response,
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_responseBuilder>,
        _i2.Gquestionnaire_response {
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response._();

  factory Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response(
          [void Function(
                  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_responseBuilder
                      b)
              updates]) =
      _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response;

  static void _initializeBuilder(
          Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_responseBuilder
              b) =>
      b..G__typename = 'HealthQuizResponseStatusModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get version;
  @override
  _i3.GHealthQuizCompletionStatus get status;
  @override
  String get lastUpdateUserDate;
  @override
  String? get lastUpdateUserDateFormatted;
  @override
  double? get questionToDisplay;
  static Serializer<
          Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response>
      get serializer =>
          _$ggetQuestionnairesDataFetchAllHealthQuizStatusHealthQuizListDoingResponseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoing_response
                .serializer,
            json,
          );
}

abstract class Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone
    implements
        Built<
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone,
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoneBuilder>,
        _i2.Gquestionnaire {
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone._();

  factory Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone(
          [void Function(
                  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoneBuilder
                      b)
              updates]) =
      _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone;

  static void _initializeBuilder(
          Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDoneBuilder
              b) =>
      b..G__typename = 'HealthQuizStatusModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response?
      get response;
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
  static Serializer<
          Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone>
      get serializer =>
          _$ggetQuestionnairesDataFetchAllHealthQuizStatusHealthQuizListDoneSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone
                .serializer,
            json,
          );
}

abstract class Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response
    implements
        Built<
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response,
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_responseBuilder>,
        _i2.Gquestionnaire_response {
  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response._();

  factory Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response(
          [void Function(
                  Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_responseBuilder
                      b)
              updates]) =
      _$Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response;

  static void _initializeBuilder(
          Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_responseBuilder
              b) =>
      b..G__typename = 'HealthQuizResponseStatusModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get version;
  @override
  _i3.GHealthQuizCompletionStatus get status;
  @override
  String get lastUpdateUserDate;
  @override
  String? get lastUpdateUserDateFormatted;
  @override
  double? get questionToDisplay;
  static Serializer<
          Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response>
      get serializer =>
          _$ggetQuestionnairesDataFetchAllHealthQuizStatusHealthQuizListDoneResponseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_questionnairesData_fetchAllHealthQuizStatus_healthQuizListDone_response
                .serializer,
            json,
          );
}
