// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_traitement.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_traitement_get_traitements.query.data.gql.g.dart';

abstract class Gget_traitementsData
    implements Built<Gget_traitementsData, Gget_traitementsDataBuilder> {
  Gget_traitementsData._();

  factory Gget_traitementsData(
          [void Function(Gget_traitementsDataBuilder b) updates]) =
      _$Gget_traitementsData;

  static void _initializeBuilder(Gget_traitementsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_traitementsData_treatments? get treatments;
  static Serializer<Gget_traitementsData> get serializer =>
      _$ggetTraitementsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_traitementsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_traitementsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_traitementsData.serializer,
        json,
      );
}

abstract class Gget_traitementsData_treatments
    implements
        Built<Gget_traitementsData_treatments,
            Gget_traitementsData_treatmentsBuilder> {
  Gget_traitementsData_treatments._();

  factory Gget_traitementsData_treatments(
          [void Function(Gget_traitementsData_treatmentsBuilder b) updates]) =
      _$Gget_traitementsData_treatments;

  static void _initializeBuilder(Gget_traitementsData_treatmentsBuilder b) =>
      b..G__typename = 'TreatmentListModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_traitementsData_treatments_treatments> get treatments;
  String? get unconcernedDeclarationDate;
  static Serializer<Gget_traitementsData_treatments> get serializer =>
      _$ggetTraitementsDataTreatmentsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_traitementsData_treatments.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_traitementsData_treatments? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_traitementsData_treatments.serializer,
        json,
      );
}

abstract class Gget_traitementsData_treatments_treatments
    implements
        Built<Gget_traitementsData_treatments_treatments,
            Gget_traitementsData_treatments_treatmentsBuilder>,
        _i2.Gtraitement {
  Gget_traitementsData_treatments_treatments._();

  factory Gget_traitementsData_treatments_treatments(
      [void Function(Gget_traitementsData_treatments_treatmentsBuilder b)
          updates]) = _$Gget_traitementsData_treatments_treatments;

  static void _initializeBuilder(
          Gget_traitementsData_treatments_treatmentsBuilder b) =>
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
  BuiltList<Gget_traitementsData_treatments_treatments_linkedDiseases>?
      get linkedDiseases;
  @override
  BuiltList<Gget_traitementsData_treatments_treatments_linkedAllergies>?
      get linkedAllergies;
  static Serializer<Gget_traitementsData_treatments_treatments>
      get serializer => _$ggetTraitementsDataTreatmentsTreatmentsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_traitementsData_treatments_treatments.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_traitementsData_treatments_treatments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_traitementsData_treatments_treatments.serializer,
        json,
      );
}

abstract class Gget_traitementsData_treatments_treatments_linkedDiseases
    implements
        Built<Gget_traitementsData_treatments_treatments_linkedDiseases,
            Gget_traitementsData_treatments_treatments_linkedDiseasesBuilder>,
        _i2.Gtraitement_linkedDiseases,
        _i2.GmaladieLie {
  Gget_traitementsData_treatments_treatments_linkedDiseases._();

  factory Gget_traitementsData_treatments_treatments_linkedDiseases(
      [void Function(
              Gget_traitementsData_treatments_treatments_linkedDiseasesBuilder
                  b)
          updates]) = _$Gget_traitementsData_treatments_treatments_linkedDiseases;

  static void _initializeBuilder(
          Gget_traitementsData_treatments_treatments_linkedDiseasesBuilder b) =>
      b..G__typename = 'LinkedDiseaseModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get linkId;
  @override
  Gget_traitementsData_treatments_treatments_linkedDiseases_disease get disease;
  static Serializer<Gget_traitementsData_treatments_treatments_linkedDiseases>
      get serializer =>
          _$ggetTraitementsDataTreatmentsTreatmentsLinkedDiseasesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_traitementsData_treatments_treatments_linkedDiseases.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_traitementsData_treatments_treatments_linkedDiseases? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_traitementsData_treatments_treatments_linkedDiseases.serializer,
        json,
      );
}

abstract class Gget_traitementsData_treatments_treatments_linkedDiseases_disease
    implements
        Built<Gget_traitementsData_treatments_treatments_linkedDiseases_disease,
            Gget_traitementsData_treatments_treatments_linkedDiseases_diseaseBuilder>,
        _i2.Gtraitement_linkedDiseases_disease,
        _i2.GmaladieLie_disease,
        _i2.GmaladieSansTraitementLie {
  Gget_traitementsData_treatments_treatments_linkedDiseases_disease._();

  factory Gget_traitementsData_treatments_treatments_linkedDiseases_disease(
          [void Function(
                  Gget_traitementsData_treatments_treatments_linkedDiseases_diseaseBuilder
                      b)
              updates]) =
      _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease;

  static void _initializeBuilder(
          Gget_traitementsData_treatments_treatments_linkedDiseases_diseaseBuilder
              b) =>
      b..G__typename = 'DiseaseWithoutLinkTreatmentModel';

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
  BuiltList<
          Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments>?
      get linkedDocuments;
  static Serializer<
          Gget_traitementsData_treatments_treatments_linkedDiseases_disease>
      get serializer =>
          _$ggetTraitementsDataTreatmentsTreatmentsLinkedDiseasesDiseaseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_traitementsData_treatments_treatments_linkedDiseases_disease
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_traitementsData_treatments_treatments_linkedDiseases_disease?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_traitementsData_treatments_treatments_linkedDiseases_disease
                .serializer,
            json,
          );
}

abstract class Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments
    implements
        Built<
            Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments,
            Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocumentsBuilder>,
        _i2.Gtraitement_linkedDiseases_disease_linkedDocuments,
        _i2.GmaladieLie_disease_linkedDocuments,
        _i2.GmaladieSansTraitementLie_linkedDocuments {
  Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments._();

  factory Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments(
          [void Function(
                  Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocumentsBuilder
                      b)
              updates]) =
      _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments;

  static void _initializeBuilder(
          Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocumentsBuilder
              b) =>
      b..G__typename = 'LinkedDocumentModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get linkId;
  @override
  Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document
      get document;
  static Serializer<
          Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments>
      get serializer =>
          _$ggetTraitementsDataTreatmentsTreatmentsLinkedDiseasesDiseaseLinkedDocumentsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments
                .serializer,
            json,
          );
}

abstract class Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document
    implements
        Built<
            Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document,
            Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_documentBuilder>,
        _i2.Gtraitement_linkedDiseases_disease_linkedDocuments_document,
        _i2.GmaladieLie_disease_linkedDocuments_document,
        _i2.GmaladieSansTraitementLie_linkedDocuments_document {
  Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document._();

  factory Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document(
          [void Function(
                  Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_documentBuilder
                      b)
              updates]) =
      _$Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document;

  static void _initializeBuilder(
          Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_documentBuilder
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
          Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document>
      get serializer =>
          _$ggetTraitementsDataTreatmentsTreatmentsLinkedDiseasesDiseaseLinkedDocumentsDocumentSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_traitementsData_treatments_treatments_linkedDiseases_disease_linkedDocuments_document
                .serializer,
            json,
          );
}

abstract class Gget_traitementsData_treatments_treatments_linkedAllergies
    implements
        Built<Gget_traitementsData_treatments_treatments_linkedAllergies,
            Gget_traitementsData_treatments_treatments_linkedAllergiesBuilder>,
        _i2.Gtraitement_linkedAllergies,
        _i2.GallergieLie {
  Gget_traitementsData_treatments_treatments_linkedAllergies._();

  factory Gget_traitementsData_treatments_treatments_linkedAllergies(
      [void Function(
              Gget_traitementsData_treatments_treatments_linkedAllergiesBuilder
                  b)
          updates]) = _$Gget_traitementsData_treatments_treatments_linkedAllergies;

  static void _initializeBuilder(
          Gget_traitementsData_treatments_treatments_linkedAllergiesBuilder
              b) =>
      b..G__typename = 'LinkedAllergyModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get linkId;
  @override
  Gget_traitementsData_treatments_treatments_linkedAllergies_allergy
      get allergy;
  static Serializer<Gget_traitementsData_treatments_treatments_linkedAllergies>
      get serializer =>
          _$ggetTraitementsDataTreatmentsTreatmentsLinkedAllergiesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_traitementsData_treatments_treatments_linkedAllergies.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_traitementsData_treatments_treatments_linkedAllergies? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_traitementsData_treatments_treatments_linkedAllergies.serializer,
        json,
      );
}

abstract class Gget_traitementsData_treatments_treatments_linkedAllergies_allergy
    implements
        Built<
            Gget_traitementsData_treatments_treatments_linkedAllergies_allergy,
            Gget_traitementsData_treatments_treatments_linkedAllergies_allergyBuilder>,
        _i2.Gtraitement_linkedAllergies_allergy,
        _i2.GallergieLie_allergy {
  Gget_traitementsData_treatments_treatments_linkedAllergies_allergy._();

  factory Gget_traitementsData_treatments_treatments_linkedAllergies_allergy(
          [void Function(
                  Gget_traitementsData_treatments_treatments_linkedAllergies_allergyBuilder
                      b)
              updates]) =
      _$Gget_traitementsData_treatments_treatments_linkedAllergies_allergy;

  static void _initializeBuilder(
          Gget_traitementsData_treatments_treatments_linkedAllergies_allergyBuilder
              b) =>
      b..G__typename = 'AllergyModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String? get comment;
  static Serializer<
          Gget_traitementsData_treatments_treatments_linkedAllergies_allergy>
      get serializer =>
          _$ggetTraitementsDataTreatmentsTreatmentsLinkedAllergiesAllergySerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_traitementsData_treatments_treatments_linkedAllergies_allergy
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_traitementsData_treatments_treatments_linkedAllergies_allergy?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_traitementsData_treatments_treatments_linkedAllergies_allergy
                .serializer,
            json,
          );
}
