// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_maladies.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_maladies_get_maladies.query.data.gql.g.dart';

abstract class Gget_maladiesData
    implements Built<Gget_maladiesData, Gget_maladiesDataBuilder> {
  Gget_maladiesData._();

  factory Gget_maladiesData(
          [void Function(Gget_maladiesDataBuilder b) updates]) =
      _$Gget_maladiesData;

  static void _initializeBuilder(Gget_maladiesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_maladiesData_diseases? get diseases;
  static Serializer<Gget_maladiesData> get serializer =>
      _$ggetMaladiesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_maladiesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_maladiesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_maladiesData.serializer,
        json,
      );
}

abstract class Gget_maladiesData_diseases
    implements
        Built<Gget_maladiesData_diseases, Gget_maladiesData_diseasesBuilder> {
  Gget_maladiesData_diseases._();

  factory Gget_maladiesData_diseases(
          [void Function(Gget_maladiesData_diseasesBuilder b) updates]) =
      _$Gget_maladiesData_diseases;

  static void _initializeBuilder(Gget_maladiesData_diseasesBuilder b) =>
      b..G__typename = 'DiseaseListModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_maladiesData_diseases_diseases> get diseases;
  String? get unconcernedDeclarationDate;
  static Serializer<Gget_maladiesData_diseases> get serializer =>
      _$ggetMaladiesDataDiseasesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_maladiesData_diseases.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_maladiesData_diseases? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_maladiesData_diseases.serializer,
        json,
      );
}

abstract class Gget_maladiesData_diseases_diseases
    implements
        Built<Gget_maladiesData_diseases_diseases,
            Gget_maladiesData_diseases_diseasesBuilder>,
        _i2.Gmaladie {
  Gget_maladiesData_diseases_diseases._();

  factory Gget_maladiesData_diseases_diseases(
      [void Function(Gget_maladiesData_diseases_diseasesBuilder b)
          updates]) = _$Gget_maladiesData_diseases_diseases;

  static void _initializeBuilder(
          Gget_maladiesData_diseases_diseasesBuilder b) =>
      b..G__typename = 'DiseaseModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String? get comment;
  @override
  String? get startDay;
  @override
  String? get startMonth;
  @override
  String get startYear;
  @override
  String? get endDay;
  @override
  String? get endMonth;
  @override
  String? get endYear;
  @override
  BuiltList<Gget_maladiesData_diseases_diseases_linkedDocuments>?
      get linkedDocuments;
  @override
  BuiltList<Gget_maladiesData_diseases_diseases_linkedTreatments>?
      get linkedTreatments;
  static Serializer<Gget_maladiesData_diseases_diseases> get serializer =>
      _$ggetMaladiesDataDiseasesDiseasesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_maladiesData_diseases_diseases.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_maladiesData_diseases_diseases? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_maladiesData_diseases_diseases.serializer,
        json,
      );
}

abstract class Gget_maladiesData_diseases_diseases_linkedDocuments
    implements
        Built<Gget_maladiesData_diseases_diseases_linkedDocuments,
            Gget_maladiesData_diseases_diseases_linkedDocumentsBuilder>,
        _i2.Gmaladie_linkedDocuments {
  Gget_maladiesData_diseases_diseases_linkedDocuments._();

  factory Gget_maladiesData_diseases_diseases_linkedDocuments(
      [void Function(
              Gget_maladiesData_diseases_diseases_linkedDocumentsBuilder b)
          updates]) = _$Gget_maladiesData_diseases_diseases_linkedDocuments;

  static void _initializeBuilder(
          Gget_maladiesData_diseases_diseases_linkedDocumentsBuilder b) =>
      b..G__typename = 'LinkedDocumentModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get linkId;
  @override
  Gget_maladiesData_diseases_diseases_linkedDocuments_document get document;
  static Serializer<Gget_maladiesData_diseases_diseases_linkedDocuments>
      get serializer =>
          _$ggetMaladiesDataDiseasesDiseasesLinkedDocumentsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_maladiesData_diseases_diseases_linkedDocuments.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_maladiesData_diseases_diseases_linkedDocuments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_maladiesData_diseases_diseases_linkedDocuments.serializer,
        json,
      );
}

abstract class Gget_maladiesData_diseases_diseases_linkedDocuments_document
    implements
        Built<Gget_maladiesData_diseases_diseases_linkedDocuments_document,
            Gget_maladiesData_diseases_diseases_linkedDocuments_documentBuilder>,
        _i2.Gmaladie_linkedDocuments_document {
  Gget_maladiesData_diseases_diseases_linkedDocuments_document._();

  factory Gget_maladiesData_diseases_diseases_linkedDocuments_document(
          [void Function(
                  Gget_maladiesData_diseases_diseases_linkedDocuments_documentBuilder
                      b)
              updates]) =
      _$Gget_maladiesData_diseases_diseases_linkedDocuments_document;

  static void _initializeBuilder(
          Gget_maladiesData_diseases_diseases_linkedDocuments_documentBuilder
              b) =>
      b..G__typename = 'DocumentModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get title;
  static Serializer<
          Gget_maladiesData_diseases_diseases_linkedDocuments_document>
      get serializer =>
          _$ggetMaladiesDataDiseasesDiseasesLinkedDocumentsDocumentSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_maladiesData_diseases_diseases_linkedDocuments_document.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_maladiesData_diseases_diseases_linkedDocuments_document? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_maladiesData_diseases_diseases_linkedDocuments_document.serializer,
        json,
      );
}

abstract class Gget_maladiesData_diseases_diseases_linkedTreatments
    implements
        Built<Gget_maladiesData_diseases_diseases_linkedTreatments,
            Gget_maladiesData_diseases_diseases_linkedTreatmentsBuilder>,
        _i2.Gmaladie_linkedTreatments,
        _i2.GtraitementLie {
  Gget_maladiesData_diseases_diseases_linkedTreatments._();

  factory Gget_maladiesData_diseases_diseases_linkedTreatments(
      [void Function(
              Gget_maladiesData_diseases_diseases_linkedTreatmentsBuilder b)
          updates]) = _$Gget_maladiesData_diseases_diseases_linkedTreatments;

  static void _initializeBuilder(
          Gget_maladiesData_diseases_diseases_linkedTreatmentsBuilder b) =>
      b..G__typename = 'LinkedTreatmentModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get linkId;
  @override
  Gget_maladiesData_diseases_diseases_linkedTreatments_treatment get treatment;
  static Serializer<Gget_maladiesData_diseases_diseases_linkedTreatments>
      get serializer =>
          _$ggetMaladiesDataDiseasesDiseasesLinkedTreatmentsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_maladiesData_diseases_diseases_linkedTreatments.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_maladiesData_diseases_diseases_linkedTreatments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_maladiesData_diseases_diseases_linkedTreatments.serializer,
        json,
      );
}

abstract class Gget_maladiesData_diseases_diseases_linkedTreatments_treatment
    implements
        Built<Gget_maladiesData_diseases_diseases_linkedTreatments_treatment,
            Gget_maladiesData_diseases_diseases_linkedTreatments_treatmentBuilder>,
        _i2.Gmaladie_linkedTreatments_treatment,
        _i2.GtraitementLie_treatment {
  Gget_maladiesData_diseases_diseases_linkedTreatments_treatment._();

  factory Gget_maladiesData_diseases_diseases_linkedTreatments_treatment(
          [void Function(
                  Gget_maladiesData_diseases_diseases_linkedTreatments_treatmentBuilder
                      b)
              updates]) =
      _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment;

  static void _initializeBuilder(
          Gget_maladiesData_diseases_diseases_linkedTreatments_treatmentBuilder
              b) =>
      b..G__typename = 'TreatmentModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String? get comment;
  @override
  String? get startDay;
  @override
  String? get startMonth;
  @override
  String get startYear;
  @override
  String? get endDay;
  @override
  String? get endMonth;
  @override
  String? get endYear;
  @override
  String? get dosage;
  @override
  BuiltList<
          Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases>?
      get linkedDiseases;
  static Serializer<
          Gget_maladiesData_diseases_diseases_linkedTreatments_treatment>
      get serializer =>
          _$ggetMaladiesDataDiseasesDiseasesLinkedTreatmentsTreatmentSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_maladiesData_diseases_diseases_linkedTreatments_treatment
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_maladiesData_diseases_diseases_linkedTreatments_treatment?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_maladiesData_diseases_diseases_linkedTreatments_treatment
                .serializer,
            json,
          );
}

abstract class Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases
    implements
        Built<
            Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases,
            Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseasesBuilder>,
        _i2.Gmaladie_linkedTreatments_treatment_linkedDiseases,
        _i2.GtraitementLie_treatment_linkedDiseases {
  Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases._();

  factory Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases(
          [void Function(
                  Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseasesBuilder
                      b)
              updates]) =
      _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases;

  static void _initializeBuilder(
          Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseasesBuilder
              b) =>
      b..G__typename = 'LinkedDiseaseModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get linkId;
  @override
  Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease
      get disease;
  static Serializer<
          Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases>
      get serializer =>
          _$ggetMaladiesDataDiseasesDiseasesLinkedTreatmentsTreatmentLinkedDiseasesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases
                .serializer,
            json,
          );
}

abstract class Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease
    implements
        Built<
            Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease,
            Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_diseaseBuilder>,
        _i2.Gmaladie_linkedTreatments_treatment_linkedDiseases_disease,
        _i2.GtraitementLie_treatment_linkedDiseases_disease {
  Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease._();

  factory Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease(
          [void Function(
                  Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_diseaseBuilder
                      b)
              updates]) =
      _$Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease;

  static void _initializeBuilder(
          Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_diseaseBuilder
              b) =>
      b..G__typename = 'DiseaseWithoutLinkTreatmentModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  static Serializer<
          Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease>
      get serializer =>
          _$ggetMaladiesDataDiseasesDiseasesLinkedTreatmentsTreatmentLinkedDiseasesDiseaseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_maladiesData_diseases_diseases_linkedTreatments_treatment_linkedDiseases_disease
                .serializer,
            json,
          );
}
