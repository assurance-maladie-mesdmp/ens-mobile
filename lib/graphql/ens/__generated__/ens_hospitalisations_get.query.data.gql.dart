// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_hospitalisations_get.query.data.gql.g.dart';

abstract class Gget_hospitalisationsData
    implements
        Built<Gget_hospitalisationsData, Gget_hospitalisationsDataBuilder> {
  Gget_hospitalisationsData._();

  factory Gget_hospitalisationsData(
          [void Function(Gget_hospitalisationsDataBuilder b) updates]) =
      _$Gget_hospitalisationsData;

  static void _initializeBuilder(Gget_hospitalisationsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_hospitalisationsData_hospitalizations get hospitalizations;
  Gget_hospitalisationsData_unconcerned get unconcerned;
  static Serializer<Gget_hospitalisationsData> get serializer =>
      _$ggetHospitalisationsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_hospitalisationsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_hospitalisationsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_hospitalisationsData.serializer,
        json,
      );
}

abstract class Gget_hospitalisationsData_hospitalizations
    implements
        Built<Gget_hospitalisationsData_hospitalizations,
            Gget_hospitalisationsData_hospitalizationsBuilder> {
  Gget_hospitalisationsData_hospitalizations._();

  factory Gget_hospitalisationsData_hospitalizations(
      [void Function(Gget_hospitalisationsData_hospitalizationsBuilder b)
          updates]) = _$Gget_hospitalisationsData_hospitalizations;

  static void _initializeBuilder(
          Gget_hospitalisationsData_hospitalizationsBuilder b) =>
      b..G__typename = 'HospitalizationListModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_hospitalisationsData_hospitalizations_hospitalizations>
      get hospitalizations;
  static Serializer<Gget_hospitalisationsData_hospitalizations>
      get serializer => _$ggetHospitalisationsDataHospitalizationsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_hospitalisationsData_hospitalizations.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_hospitalisationsData_hospitalizations? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_hospitalisationsData_hospitalizations.serializer,
        json,
      );
}

abstract class Gget_hospitalisationsData_hospitalizations_hospitalizations
    implements
        Built<Gget_hospitalisationsData_hospitalizations_hospitalizations,
            Gget_hospitalisationsData_hospitalizations_hospitalizationsBuilder> {
  Gget_hospitalisationsData_hospitalizations_hospitalizations._();

  factory Gget_hospitalisationsData_hospitalizations_hospitalizations(
      [void Function(
              Gget_hospitalisationsData_hospitalizations_hospitalizationsBuilder
                  b)
          updates]) = _$Gget_hospitalisationsData_hospitalizations_hospitalizations;

  static void _initializeBuilder(
          Gget_hospitalisationsData_hospitalizations_hospitalizationsBuilder
              b) =>
      b..G__typename = 'HospitalizationModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String? get comment;
  String get id;
  String? get startDay;
  String? get startMonth;
  String get startYear;
  double get duration;
  _i2.GDurationUnitEnum get durationUnit;
  BuiltList<
          Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments>?
      get linkedDocuments;
  static Serializer<Gget_hospitalisationsData_hospitalizations_hospitalizations>
      get serializer =>
          _$ggetHospitalisationsDataHospitalizationsHospitalizationsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_hospitalisationsData_hospitalizations_hospitalizations.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_hospitalisationsData_hospitalizations_hospitalizations? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_hospitalisationsData_hospitalizations_hospitalizations.serializer,
        json,
      );
}

abstract class Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments
    implements
        Built<
            Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments,
            Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocumentsBuilder> {
  Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments._();

  factory Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments(
          [void Function(
                  Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocumentsBuilder
                      b)
              updates]) =
      _$Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments;

  static void _initializeBuilder(
          Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocumentsBuilder
              b) =>
      b..G__typename = 'LinkedDocumentModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get linkId;
  Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document
      get document;
  static Serializer<
          Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments>
      get serializer =>
          _$ggetHospitalisationsDataHospitalizationsHospitalizationsLinkedDocumentsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments
                .serializer,
            json,
          );
}

abstract class Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document
    implements
        Built<
            Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document,
            Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_documentBuilder> {
  Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document._();

  factory Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document(
          [void Function(
                  Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_documentBuilder
                      b)
              updates]) =
      _$Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document;

  static void _initializeBuilder(
          Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_documentBuilder
              b) =>
      b..G__typename = 'DocumentModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get title;
  static Serializer<
          Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document>
      get serializer =>
          _$ggetHospitalisationsDataHospitalizationsHospitalizationsLinkedDocumentsDocumentSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_hospitalisationsData_hospitalizations_hospitalizations_linkedDocuments_document
                .serializer,
            json,
          );
}

abstract class Gget_hospitalisationsData_unconcerned
    implements
        Built<Gget_hospitalisationsData_unconcerned,
            Gget_hospitalisationsData_unconcernedBuilder> {
  Gget_hospitalisationsData_unconcerned._();

  factory Gget_hospitalisationsData_unconcerned(
      [void Function(Gget_hospitalisationsData_unconcernedBuilder b)
          updates]) = _$Gget_hospitalisationsData_unconcerned;

  static void _initializeBuilder(
          Gget_hospitalisationsData_unconcernedBuilder b) =>
      b..G__typename = 'UnconcernedModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get declarationDate;
  static Serializer<Gget_hospitalisationsData_unconcerned> get serializer =>
      _$ggetHospitalisationsDataUnconcernedSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_hospitalisationsData_unconcerned.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_hospitalisationsData_unconcerned? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_hospitalisationsData_unconcerned.serializer,
        json,
      );
}
