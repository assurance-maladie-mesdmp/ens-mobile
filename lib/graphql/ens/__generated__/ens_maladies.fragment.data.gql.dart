// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_maladies.fragment.data.gql.g.dart';

abstract class Gmaladie {
  String get G__typename;
  String get id;
  String get name;
  String? get comment;
  String? get startDay;
  String? get startMonth;
  String get startYear;
  String? get endDay;
  String? get endMonth;
  String? get endYear;
  BuiltList<Gmaladie_linkedDocuments>? get linkedDocuments;
  BuiltList<Gmaladie_linkedTreatments>? get linkedTreatments;
  Map<String, dynamic> toJson();
}

abstract class Gmaladie_linkedDocuments {
  String get G__typename;
  String get linkId;
  Gmaladie_linkedDocuments_document get document;
  Map<String, dynamic> toJson();
}

abstract class Gmaladie_linkedDocuments_document {
  String get G__typename;
  String get id;
  String get title;
  Map<String, dynamic> toJson();
}

abstract class Gmaladie_linkedTreatments implements GtraitementLie {
  @override
  String get G__typename;
  @override
  String get linkId;
  @override
  Gmaladie_linkedTreatments_treatment get treatment;
  @override
  Map<String, dynamic> toJson();
}

abstract class Gmaladie_linkedTreatments_treatment
    implements GtraitementLie_treatment {
  @override
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
  BuiltList<Gmaladie_linkedTreatments_treatment_linkedDiseases>?
      get linkedDiseases;
  @override
  Map<String, dynamic> toJson();
}

abstract class Gmaladie_linkedTreatments_treatment_linkedDiseases
    implements GtraitementLie_treatment_linkedDiseases {
  @override
  String get G__typename;
  @override
  String get linkId;
  @override
  Gmaladie_linkedTreatments_treatment_linkedDiseases_disease get disease;
  @override
  Map<String, dynamic> toJson();
}

abstract class Gmaladie_linkedTreatments_treatment_linkedDiseases_disease
    implements GtraitementLie_treatment_linkedDiseases_disease {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  Map<String, dynamic> toJson();
}

abstract class GmaladieData
    implements Built<GmaladieData, GmaladieDataBuilder>, Gmaladie {
  GmaladieData._();

  factory GmaladieData([void Function(GmaladieDataBuilder b) updates]) =
      _$GmaladieData;

  static void _initializeBuilder(GmaladieDataBuilder b) =>
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
  BuiltList<GmaladieData_linkedDocuments>? get linkedDocuments;
  @override
  BuiltList<GmaladieData_linkedTreatments>? get linkedTreatments;
  static Serializer<GmaladieData> get serializer => _$gmaladieDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmaladieData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmaladieData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmaladieData.serializer,
        json,
      );
}

abstract class GmaladieData_linkedDocuments
    implements
        Built<GmaladieData_linkedDocuments,
            GmaladieData_linkedDocumentsBuilder>,
        Gmaladie_linkedDocuments {
  GmaladieData_linkedDocuments._();

  factory GmaladieData_linkedDocuments(
          [void Function(GmaladieData_linkedDocumentsBuilder b) updates]) =
      _$GmaladieData_linkedDocuments;

  static void _initializeBuilder(GmaladieData_linkedDocumentsBuilder b) =>
      b..G__typename = 'LinkedDocumentModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get linkId;
  @override
  GmaladieData_linkedDocuments_document get document;
  static Serializer<GmaladieData_linkedDocuments> get serializer =>
      _$gmaladieDataLinkedDocumentsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmaladieData_linkedDocuments.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmaladieData_linkedDocuments? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmaladieData_linkedDocuments.serializer,
        json,
      );
}

abstract class GmaladieData_linkedDocuments_document
    implements
        Built<GmaladieData_linkedDocuments_document,
            GmaladieData_linkedDocuments_documentBuilder>,
        Gmaladie_linkedDocuments_document {
  GmaladieData_linkedDocuments_document._();

  factory GmaladieData_linkedDocuments_document(
      [void Function(GmaladieData_linkedDocuments_documentBuilder b)
          updates]) = _$GmaladieData_linkedDocuments_document;

  static void _initializeBuilder(
          GmaladieData_linkedDocuments_documentBuilder b) =>
      b..G__typename = 'DocumentModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get title;
  static Serializer<GmaladieData_linkedDocuments_document> get serializer =>
      _$gmaladieDataLinkedDocumentsDocumentSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmaladieData_linkedDocuments_document.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmaladieData_linkedDocuments_document? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmaladieData_linkedDocuments_document.serializer,
        json,
      );
}

abstract class GmaladieData_linkedTreatments
    implements
        Built<GmaladieData_linkedTreatments,
            GmaladieData_linkedTreatmentsBuilder>,
        Gmaladie_linkedTreatments,
        GtraitementLie {
  GmaladieData_linkedTreatments._();

  factory GmaladieData_linkedTreatments(
          [void Function(GmaladieData_linkedTreatmentsBuilder b) updates]) =
      _$GmaladieData_linkedTreatments;

  static void _initializeBuilder(GmaladieData_linkedTreatmentsBuilder b) =>
      b..G__typename = 'LinkedTreatmentModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get linkId;
  @override
  GmaladieData_linkedTreatments_treatment get treatment;
  static Serializer<GmaladieData_linkedTreatments> get serializer =>
      _$gmaladieDataLinkedTreatmentsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmaladieData_linkedTreatments.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmaladieData_linkedTreatments? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmaladieData_linkedTreatments.serializer,
        json,
      );
}

abstract class GmaladieData_linkedTreatments_treatment
    implements
        Built<GmaladieData_linkedTreatments_treatment,
            GmaladieData_linkedTreatments_treatmentBuilder>,
        Gmaladie_linkedTreatments_treatment,
        GtraitementLie_treatment {
  GmaladieData_linkedTreatments_treatment._();

  factory GmaladieData_linkedTreatments_treatment(
      [void Function(GmaladieData_linkedTreatments_treatmentBuilder b)
          updates]) = _$GmaladieData_linkedTreatments_treatment;

  static void _initializeBuilder(
          GmaladieData_linkedTreatments_treatmentBuilder b) =>
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
  BuiltList<GmaladieData_linkedTreatments_treatment_linkedDiseases>?
      get linkedDiseases;
  static Serializer<GmaladieData_linkedTreatments_treatment> get serializer =>
      _$gmaladieDataLinkedTreatmentsTreatmentSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmaladieData_linkedTreatments_treatment.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmaladieData_linkedTreatments_treatment? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmaladieData_linkedTreatments_treatment.serializer,
        json,
      );
}

abstract class GmaladieData_linkedTreatments_treatment_linkedDiseases
    implements
        Built<GmaladieData_linkedTreatments_treatment_linkedDiseases,
            GmaladieData_linkedTreatments_treatment_linkedDiseasesBuilder>,
        Gmaladie_linkedTreatments_treatment_linkedDiseases,
        GtraitementLie_treatment_linkedDiseases {
  GmaladieData_linkedTreatments_treatment_linkedDiseases._();

  factory GmaladieData_linkedTreatments_treatment_linkedDiseases(
      [void Function(
              GmaladieData_linkedTreatments_treatment_linkedDiseasesBuilder b)
          updates]) = _$GmaladieData_linkedTreatments_treatment_linkedDiseases;

  static void _initializeBuilder(
          GmaladieData_linkedTreatments_treatment_linkedDiseasesBuilder b) =>
      b..G__typename = 'LinkedDiseaseModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get linkId;
  @override
  GmaladieData_linkedTreatments_treatment_linkedDiseases_disease get disease;
  static Serializer<GmaladieData_linkedTreatments_treatment_linkedDiseases>
      get serializer =>
          _$gmaladieDataLinkedTreatmentsTreatmentLinkedDiseasesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmaladieData_linkedTreatments_treatment_linkedDiseases.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmaladieData_linkedTreatments_treatment_linkedDiseases? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmaladieData_linkedTreatments_treatment_linkedDiseases.serializer,
        json,
      );
}

abstract class GmaladieData_linkedTreatments_treatment_linkedDiseases_disease
    implements
        Built<GmaladieData_linkedTreatments_treatment_linkedDiseases_disease,
            GmaladieData_linkedTreatments_treatment_linkedDiseases_diseaseBuilder>,
        Gmaladie_linkedTreatments_treatment_linkedDiseases_disease,
        GtraitementLie_treatment_linkedDiseases_disease {
  GmaladieData_linkedTreatments_treatment_linkedDiseases_disease._();

  factory GmaladieData_linkedTreatments_treatment_linkedDiseases_disease(
          [void Function(
                  GmaladieData_linkedTreatments_treatment_linkedDiseases_diseaseBuilder
                      b)
              updates]) =
      _$GmaladieData_linkedTreatments_treatment_linkedDiseases_disease;

  static void _initializeBuilder(
          GmaladieData_linkedTreatments_treatment_linkedDiseases_diseaseBuilder
              b) =>
      b..G__typename = 'DiseaseWithoutLinkTreatmentModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  static Serializer<
          GmaladieData_linkedTreatments_treatment_linkedDiseases_disease>
      get serializer =>
          _$gmaladieDataLinkedTreatmentsTreatmentLinkedDiseasesDiseaseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmaladieData_linkedTreatments_treatment_linkedDiseases_disease
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GmaladieData_linkedTreatments_treatment_linkedDiseases_disease?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GmaladieData_linkedTreatments_treatment_linkedDiseases_disease
                .serializer,
            json,
          );
}

abstract class GtraitementLie {
  String get G__typename;
  String get linkId;
  GtraitementLie_treatment get treatment;
  Map<String, dynamic> toJson();
}

abstract class GtraitementLie_treatment {
  String get G__typename;
  String get id;
  String get name;
  String? get comment;
  String? get startDay;
  String? get startMonth;
  String get startYear;
  String? get endDay;
  String? get endMonth;
  String? get endYear;
  String? get dosage;
  BuiltList<GtraitementLie_treatment_linkedDiseases>? get linkedDiseases;
  Map<String, dynamic> toJson();
}

abstract class GtraitementLie_treatment_linkedDiseases {
  String get G__typename;
  String get linkId;
  GtraitementLie_treatment_linkedDiseases_disease get disease;
  Map<String, dynamic> toJson();
}

abstract class GtraitementLie_treatment_linkedDiseases_disease {
  String get G__typename;
  String get id;
  Map<String, dynamic> toJson();
}

abstract class GtraitementLieData
    implements
        Built<GtraitementLieData, GtraitementLieDataBuilder>,
        GtraitementLie {
  GtraitementLieData._();

  factory GtraitementLieData(
          [void Function(GtraitementLieDataBuilder b) updates]) =
      _$GtraitementLieData;

  static void _initializeBuilder(GtraitementLieDataBuilder b) =>
      b..G__typename = 'LinkedTreatmentModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get linkId;
  @override
  GtraitementLieData_treatment get treatment;
  static Serializer<GtraitementLieData> get serializer =>
      _$gtraitementLieDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtraitementLieData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtraitementLieData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtraitementLieData.serializer,
        json,
      );
}

abstract class GtraitementLieData_treatment
    implements
        Built<GtraitementLieData_treatment,
            GtraitementLieData_treatmentBuilder>,
        GtraitementLie_treatment {
  GtraitementLieData_treatment._();

  factory GtraitementLieData_treatment(
          [void Function(GtraitementLieData_treatmentBuilder b) updates]) =
      _$GtraitementLieData_treatment;

  static void _initializeBuilder(GtraitementLieData_treatmentBuilder b) =>
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
  BuiltList<GtraitementLieData_treatment_linkedDiseases>? get linkedDiseases;
  static Serializer<GtraitementLieData_treatment> get serializer =>
      _$gtraitementLieDataTreatmentSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtraitementLieData_treatment.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtraitementLieData_treatment? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtraitementLieData_treatment.serializer,
        json,
      );
}

abstract class GtraitementLieData_treatment_linkedDiseases
    implements
        Built<GtraitementLieData_treatment_linkedDiseases,
            GtraitementLieData_treatment_linkedDiseasesBuilder>,
        GtraitementLie_treatment_linkedDiseases {
  GtraitementLieData_treatment_linkedDiseases._();

  factory GtraitementLieData_treatment_linkedDiseases(
      [void Function(GtraitementLieData_treatment_linkedDiseasesBuilder b)
          updates]) = _$GtraitementLieData_treatment_linkedDiseases;

  static void _initializeBuilder(
          GtraitementLieData_treatment_linkedDiseasesBuilder b) =>
      b..G__typename = 'LinkedDiseaseModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get linkId;
  @override
  GtraitementLieData_treatment_linkedDiseases_disease get disease;
  static Serializer<GtraitementLieData_treatment_linkedDiseases>
      get serializer => _$gtraitementLieDataTreatmentLinkedDiseasesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtraitementLieData_treatment_linkedDiseases.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtraitementLieData_treatment_linkedDiseases? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtraitementLieData_treatment_linkedDiseases.serializer,
        json,
      );
}

abstract class GtraitementLieData_treatment_linkedDiseases_disease
    implements
        Built<GtraitementLieData_treatment_linkedDiseases_disease,
            GtraitementLieData_treatment_linkedDiseases_diseaseBuilder>,
        GtraitementLie_treatment_linkedDiseases_disease {
  GtraitementLieData_treatment_linkedDiseases_disease._();

  factory GtraitementLieData_treatment_linkedDiseases_disease(
      [void Function(
              GtraitementLieData_treatment_linkedDiseases_diseaseBuilder b)
          updates]) = _$GtraitementLieData_treatment_linkedDiseases_disease;

  static void _initializeBuilder(
          GtraitementLieData_treatment_linkedDiseases_diseaseBuilder b) =>
      b..G__typename = 'DiseaseWithoutLinkTreatmentModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  static Serializer<GtraitementLieData_treatment_linkedDiseases_disease>
      get serializer =>
          _$gtraitementLieDataTreatmentLinkedDiseasesDiseaseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtraitementLieData_treatment_linkedDiseases_disease.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtraitementLieData_treatment_linkedDiseases_disease? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtraitementLieData_treatment_linkedDiseases_disease.serializer,
        json,
      );
}
