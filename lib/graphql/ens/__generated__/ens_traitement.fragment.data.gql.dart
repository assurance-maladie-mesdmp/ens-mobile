// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_traitement.fragment.data.gql.g.dart';

abstract class Gtraitement {
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
  BuiltList<Gtraitement_linkedDiseases>? get linkedDiseases;
  BuiltList<Gtraitement_linkedAllergies>? get linkedAllergies;
  Map<String, dynamic> toJson();
}

abstract class Gtraitement_linkedDiseases implements GmaladieLie {
  @override
  String get G__typename;
  @override
  String get linkId;
  @override
  Gtraitement_linkedDiseases_disease get disease;
  @override
  Map<String, dynamic> toJson();
}

abstract class Gtraitement_linkedDiseases_disease
    implements GmaladieLie_disease, GmaladieSansTraitementLie {
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
  BuiltList<Gtraitement_linkedDiseases_disease_linkedDocuments>?
      get linkedDocuments;
  @override
  Map<String, dynamic> toJson();
}

abstract class Gtraitement_linkedDiseases_disease_linkedDocuments
    implements
        GmaladieLie_disease_linkedDocuments,
        GmaladieSansTraitementLie_linkedDocuments {
  @override
  String get G__typename;
  @override
  String get linkId;
  @override
  Gtraitement_linkedDiseases_disease_linkedDocuments_document get document;
  @override
  Map<String, dynamic> toJson();
}

abstract class Gtraitement_linkedDiseases_disease_linkedDocuments_document
    implements
        GmaladieLie_disease_linkedDocuments_document,
        GmaladieSansTraitementLie_linkedDocuments_document {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get title;
  @override
  Map<String, dynamic> toJson();
}

abstract class Gtraitement_linkedAllergies implements GallergieLie {
  @override
  String get G__typename;
  @override
  String get linkId;
  @override
  Gtraitement_linkedAllergies_allergy get allergy;
  @override
  Map<String, dynamic> toJson();
}

abstract class Gtraitement_linkedAllergies_allergy
    implements GallergieLie_allergy {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  String? get comment;
  @override
  Map<String, dynamic> toJson();
}

abstract class GtraitementData
    implements Built<GtraitementData, GtraitementDataBuilder>, Gtraitement {
  GtraitementData._();

  factory GtraitementData([void Function(GtraitementDataBuilder b) updates]) =
      _$GtraitementData;

  static void _initializeBuilder(GtraitementDataBuilder b) =>
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
  BuiltList<GtraitementData_linkedDiseases>? get linkedDiseases;
  @override
  BuiltList<GtraitementData_linkedAllergies>? get linkedAllergies;
  static Serializer<GtraitementData> get serializer =>
      _$gtraitementDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtraitementData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtraitementData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtraitementData.serializer,
        json,
      );
}

abstract class GtraitementData_linkedDiseases
    implements
        Built<GtraitementData_linkedDiseases,
            GtraitementData_linkedDiseasesBuilder>,
        Gtraitement_linkedDiseases,
        GmaladieLie {
  GtraitementData_linkedDiseases._();

  factory GtraitementData_linkedDiseases(
          [void Function(GtraitementData_linkedDiseasesBuilder b) updates]) =
      _$GtraitementData_linkedDiseases;

  static void _initializeBuilder(GtraitementData_linkedDiseasesBuilder b) =>
      b..G__typename = 'LinkedDiseaseModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get linkId;
  @override
  GtraitementData_linkedDiseases_disease get disease;
  static Serializer<GtraitementData_linkedDiseases> get serializer =>
      _$gtraitementDataLinkedDiseasesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtraitementData_linkedDiseases.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtraitementData_linkedDiseases? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtraitementData_linkedDiseases.serializer,
        json,
      );
}

abstract class GtraitementData_linkedDiseases_disease
    implements
        Built<GtraitementData_linkedDiseases_disease,
            GtraitementData_linkedDiseases_diseaseBuilder>,
        Gtraitement_linkedDiseases_disease,
        GmaladieLie_disease,
        GmaladieSansTraitementLie {
  GtraitementData_linkedDiseases_disease._();

  factory GtraitementData_linkedDiseases_disease(
      [void Function(GtraitementData_linkedDiseases_diseaseBuilder b)
          updates]) = _$GtraitementData_linkedDiseases_disease;

  static void _initializeBuilder(
          GtraitementData_linkedDiseases_diseaseBuilder b) =>
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
  BuiltList<GtraitementData_linkedDiseases_disease_linkedDocuments>?
      get linkedDocuments;
  static Serializer<GtraitementData_linkedDiseases_disease> get serializer =>
      _$gtraitementDataLinkedDiseasesDiseaseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtraitementData_linkedDiseases_disease.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtraitementData_linkedDiseases_disease? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtraitementData_linkedDiseases_disease.serializer,
        json,
      );
}

abstract class GtraitementData_linkedDiseases_disease_linkedDocuments
    implements
        Built<GtraitementData_linkedDiseases_disease_linkedDocuments,
            GtraitementData_linkedDiseases_disease_linkedDocumentsBuilder>,
        Gtraitement_linkedDiseases_disease_linkedDocuments,
        GmaladieLie_disease_linkedDocuments,
        GmaladieSansTraitementLie_linkedDocuments {
  GtraitementData_linkedDiseases_disease_linkedDocuments._();

  factory GtraitementData_linkedDiseases_disease_linkedDocuments(
      [void Function(
              GtraitementData_linkedDiseases_disease_linkedDocumentsBuilder b)
          updates]) = _$GtraitementData_linkedDiseases_disease_linkedDocuments;

  static void _initializeBuilder(
          GtraitementData_linkedDiseases_disease_linkedDocumentsBuilder b) =>
      b..G__typename = 'LinkedDocumentModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get linkId;
  @override
  GtraitementData_linkedDiseases_disease_linkedDocuments_document get document;
  static Serializer<GtraitementData_linkedDiseases_disease_linkedDocuments>
      get serializer =>
          _$gtraitementDataLinkedDiseasesDiseaseLinkedDocumentsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtraitementData_linkedDiseases_disease_linkedDocuments.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtraitementData_linkedDiseases_disease_linkedDocuments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtraitementData_linkedDiseases_disease_linkedDocuments.serializer,
        json,
      );
}

abstract class GtraitementData_linkedDiseases_disease_linkedDocuments_document
    implements
        Built<GtraitementData_linkedDiseases_disease_linkedDocuments_document,
            GtraitementData_linkedDiseases_disease_linkedDocuments_documentBuilder>,
        Gtraitement_linkedDiseases_disease_linkedDocuments_document,
        GmaladieLie_disease_linkedDocuments_document,
        GmaladieSansTraitementLie_linkedDocuments_document {
  GtraitementData_linkedDiseases_disease_linkedDocuments_document._();

  factory GtraitementData_linkedDiseases_disease_linkedDocuments_document(
          [void Function(
                  GtraitementData_linkedDiseases_disease_linkedDocuments_documentBuilder
                      b)
              updates]) =
      _$GtraitementData_linkedDiseases_disease_linkedDocuments_document;

  static void _initializeBuilder(
          GtraitementData_linkedDiseases_disease_linkedDocuments_documentBuilder
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
          GtraitementData_linkedDiseases_disease_linkedDocuments_document>
      get serializer =>
          _$gtraitementDataLinkedDiseasesDiseaseLinkedDocumentsDocumentSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtraitementData_linkedDiseases_disease_linkedDocuments_document
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GtraitementData_linkedDiseases_disease_linkedDocuments_document?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GtraitementData_linkedDiseases_disease_linkedDocuments_document
                .serializer,
            json,
          );
}

abstract class GtraitementData_linkedAllergies
    implements
        Built<GtraitementData_linkedAllergies,
            GtraitementData_linkedAllergiesBuilder>,
        Gtraitement_linkedAllergies,
        GallergieLie {
  GtraitementData_linkedAllergies._();

  factory GtraitementData_linkedAllergies(
          [void Function(GtraitementData_linkedAllergiesBuilder b) updates]) =
      _$GtraitementData_linkedAllergies;

  static void _initializeBuilder(GtraitementData_linkedAllergiesBuilder b) =>
      b..G__typename = 'LinkedAllergyModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get linkId;
  @override
  GtraitementData_linkedAllergies_allergy get allergy;
  static Serializer<GtraitementData_linkedAllergies> get serializer =>
      _$gtraitementDataLinkedAllergiesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtraitementData_linkedAllergies.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtraitementData_linkedAllergies? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtraitementData_linkedAllergies.serializer,
        json,
      );
}

abstract class GtraitementData_linkedAllergies_allergy
    implements
        Built<GtraitementData_linkedAllergies_allergy,
            GtraitementData_linkedAllergies_allergyBuilder>,
        Gtraitement_linkedAllergies_allergy,
        GallergieLie_allergy {
  GtraitementData_linkedAllergies_allergy._();

  factory GtraitementData_linkedAllergies_allergy(
      [void Function(GtraitementData_linkedAllergies_allergyBuilder b)
          updates]) = _$GtraitementData_linkedAllergies_allergy;

  static void _initializeBuilder(
          GtraitementData_linkedAllergies_allergyBuilder b) =>
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
  static Serializer<GtraitementData_linkedAllergies_allergy> get serializer =>
      _$gtraitementDataLinkedAllergiesAllergySerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtraitementData_linkedAllergies_allergy.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtraitementData_linkedAllergies_allergy? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtraitementData_linkedAllergies_allergy.serializer,
        json,
      );
}

abstract class GmaladieLie {
  String get G__typename;
  String get linkId;
  GmaladieLie_disease get disease;
  Map<String, dynamic> toJson();
}

abstract class GmaladieLie_disease implements GmaladieSansTraitementLie {
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
  BuiltList<GmaladieLie_disease_linkedDocuments>? get linkedDocuments;
  @override
  Map<String, dynamic> toJson();
}

abstract class GmaladieLie_disease_linkedDocuments
    implements GmaladieSansTraitementLie_linkedDocuments {
  @override
  String get G__typename;
  @override
  String get linkId;
  @override
  GmaladieLie_disease_linkedDocuments_document get document;
  @override
  Map<String, dynamic> toJson();
}

abstract class GmaladieLie_disease_linkedDocuments_document
    implements GmaladieSansTraitementLie_linkedDocuments_document {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get title;
  @override
  Map<String, dynamic> toJson();
}

abstract class GmaladieLieData
    implements Built<GmaladieLieData, GmaladieLieDataBuilder>, GmaladieLie {
  GmaladieLieData._();

  factory GmaladieLieData([void Function(GmaladieLieDataBuilder b) updates]) =
      _$GmaladieLieData;

  static void _initializeBuilder(GmaladieLieDataBuilder b) =>
      b..G__typename = 'LinkedDiseaseModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get linkId;
  @override
  GmaladieLieData_disease get disease;
  static Serializer<GmaladieLieData> get serializer =>
      _$gmaladieLieDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmaladieLieData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmaladieLieData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmaladieLieData.serializer,
        json,
      );
}

abstract class GmaladieLieData_disease
    implements
        Built<GmaladieLieData_disease, GmaladieLieData_diseaseBuilder>,
        GmaladieLie_disease,
        GmaladieSansTraitementLie {
  GmaladieLieData_disease._();

  factory GmaladieLieData_disease(
          [void Function(GmaladieLieData_diseaseBuilder b) updates]) =
      _$GmaladieLieData_disease;

  static void _initializeBuilder(GmaladieLieData_diseaseBuilder b) =>
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
  BuiltList<GmaladieLieData_disease_linkedDocuments>? get linkedDocuments;
  static Serializer<GmaladieLieData_disease> get serializer =>
      _$gmaladieLieDataDiseaseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmaladieLieData_disease.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmaladieLieData_disease? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmaladieLieData_disease.serializer,
        json,
      );
}

abstract class GmaladieLieData_disease_linkedDocuments
    implements
        Built<GmaladieLieData_disease_linkedDocuments,
            GmaladieLieData_disease_linkedDocumentsBuilder>,
        GmaladieLie_disease_linkedDocuments,
        GmaladieSansTraitementLie_linkedDocuments {
  GmaladieLieData_disease_linkedDocuments._();

  factory GmaladieLieData_disease_linkedDocuments(
      [void Function(GmaladieLieData_disease_linkedDocumentsBuilder b)
          updates]) = _$GmaladieLieData_disease_linkedDocuments;

  static void _initializeBuilder(
          GmaladieLieData_disease_linkedDocumentsBuilder b) =>
      b..G__typename = 'LinkedDocumentModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get linkId;
  @override
  GmaladieLieData_disease_linkedDocuments_document get document;
  static Serializer<GmaladieLieData_disease_linkedDocuments> get serializer =>
      _$gmaladieLieDataDiseaseLinkedDocumentsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmaladieLieData_disease_linkedDocuments.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmaladieLieData_disease_linkedDocuments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmaladieLieData_disease_linkedDocuments.serializer,
        json,
      );
}

abstract class GmaladieLieData_disease_linkedDocuments_document
    implements
        Built<GmaladieLieData_disease_linkedDocuments_document,
            GmaladieLieData_disease_linkedDocuments_documentBuilder>,
        GmaladieLie_disease_linkedDocuments_document,
        GmaladieSansTraitementLie_linkedDocuments_document {
  GmaladieLieData_disease_linkedDocuments_document._();

  factory GmaladieLieData_disease_linkedDocuments_document(
      [void Function(GmaladieLieData_disease_linkedDocuments_documentBuilder b)
          updates]) = _$GmaladieLieData_disease_linkedDocuments_document;

  static void _initializeBuilder(
          GmaladieLieData_disease_linkedDocuments_documentBuilder b) =>
      b..G__typename = 'DocumentModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get title;
  static Serializer<GmaladieLieData_disease_linkedDocuments_document>
      get serializer =>
          _$gmaladieLieDataDiseaseLinkedDocumentsDocumentSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmaladieLieData_disease_linkedDocuments_document.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmaladieLieData_disease_linkedDocuments_document? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmaladieLieData_disease_linkedDocuments_document.serializer,
        json,
      );
}

abstract class GallergieLie {
  String get G__typename;
  String get linkId;
  GallergieLie_allergy get allergy;
  Map<String, dynamic> toJson();
}

abstract class GallergieLie_allergy {
  String get G__typename;
  String get id;
  String get name;
  String? get comment;
  Map<String, dynamic> toJson();
}

abstract class GallergieLieData
    implements Built<GallergieLieData, GallergieLieDataBuilder>, GallergieLie {
  GallergieLieData._();

  factory GallergieLieData([void Function(GallergieLieDataBuilder b) updates]) =
      _$GallergieLieData;

  static void _initializeBuilder(GallergieLieDataBuilder b) =>
      b..G__typename = 'LinkedAllergyModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get linkId;
  @override
  GallergieLieData_allergy get allergy;
  static Serializer<GallergieLieData> get serializer =>
      _$gallergieLieDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GallergieLieData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallergieLieData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GallergieLieData.serializer,
        json,
      );
}

abstract class GallergieLieData_allergy
    implements
        Built<GallergieLieData_allergy, GallergieLieData_allergyBuilder>,
        GallergieLie_allergy {
  GallergieLieData_allergy._();

  factory GallergieLieData_allergy(
          [void Function(GallergieLieData_allergyBuilder b) updates]) =
      _$GallergieLieData_allergy;

  static void _initializeBuilder(GallergieLieData_allergyBuilder b) =>
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
  static Serializer<GallergieLieData_allergy> get serializer =>
      _$gallergieLieDataAllergySerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GallergieLieData_allergy.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallergieLieData_allergy? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GallergieLieData_allergy.serializer,
        json,
      );
}

abstract class GmaladieSansTraitementLie {
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
  BuiltList<GmaladieSansTraitementLie_linkedDocuments>? get linkedDocuments;
  Map<String, dynamic> toJson();
}

abstract class GmaladieSansTraitementLie_linkedDocuments {
  String get G__typename;
  String get linkId;
  GmaladieSansTraitementLie_linkedDocuments_document get document;
  Map<String, dynamic> toJson();
}

abstract class GmaladieSansTraitementLie_linkedDocuments_document {
  String get G__typename;
  String get id;
  String get title;
  Map<String, dynamic> toJson();
}

abstract class GmaladieSansTraitementLieData
    implements
        Built<GmaladieSansTraitementLieData,
            GmaladieSansTraitementLieDataBuilder>,
        GmaladieSansTraitementLie {
  GmaladieSansTraitementLieData._();

  factory GmaladieSansTraitementLieData(
          [void Function(GmaladieSansTraitementLieDataBuilder b) updates]) =
      _$GmaladieSansTraitementLieData;

  static void _initializeBuilder(GmaladieSansTraitementLieDataBuilder b) =>
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
  BuiltList<GmaladieSansTraitementLieData_linkedDocuments>? get linkedDocuments;
  static Serializer<GmaladieSansTraitementLieData> get serializer =>
      _$gmaladieSansTraitementLieDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmaladieSansTraitementLieData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmaladieSansTraitementLieData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmaladieSansTraitementLieData.serializer,
        json,
      );
}

abstract class GmaladieSansTraitementLieData_linkedDocuments
    implements
        Built<GmaladieSansTraitementLieData_linkedDocuments,
            GmaladieSansTraitementLieData_linkedDocumentsBuilder>,
        GmaladieSansTraitementLie_linkedDocuments {
  GmaladieSansTraitementLieData_linkedDocuments._();

  factory GmaladieSansTraitementLieData_linkedDocuments(
      [void Function(GmaladieSansTraitementLieData_linkedDocumentsBuilder b)
          updates]) = _$GmaladieSansTraitementLieData_linkedDocuments;

  static void _initializeBuilder(
          GmaladieSansTraitementLieData_linkedDocumentsBuilder b) =>
      b..G__typename = 'LinkedDocumentModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get linkId;
  @override
  GmaladieSansTraitementLieData_linkedDocuments_document get document;
  static Serializer<GmaladieSansTraitementLieData_linkedDocuments>
      get serializer =>
          _$gmaladieSansTraitementLieDataLinkedDocumentsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmaladieSansTraitementLieData_linkedDocuments.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmaladieSansTraitementLieData_linkedDocuments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmaladieSansTraitementLieData_linkedDocuments.serializer,
        json,
      );
}

abstract class GmaladieSansTraitementLieData_linkedDocuments_document
    implements
        Built<GmaladieSansTraitementLieData_linkedDocuments_document,
            GmaladieSansTraitementLieData_linkedDocuments_documentBuilder>,
        GmaladieSansTraitementLie_linkedDocuments_document {
  GmaladieSansTraitementLieData_linkedDocuments_document._();

  factory GmaladieSansTraitementLieData_linkedDocuments_document(
      [void Function(
              GmaladieSansTraitementLieData_linkedDocuments_documentBuilder b)
          updates]) = _$GmaladieSansTraitementLieData_linkedDocuments_document;

  static void _initializeBuilder(
          GmaladieSansTraitementLieData_linkedDocuments_documentBuilder b) =>
      b..G__typename = 'DocumentModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get title;
  static Serializer<GmaladieSansTraitementLieData_linkedDocuments_document>
      get serializer =>
          _$gmaladieSansTraitementLieDataLinkedDocumentsDocumentSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmaladieSansTraitementLieData_linkedDocuments_document.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmaladieSansTraitementLieData_linkedDocuments_document? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmaladieSansTraitementLieData_linkedDocuments_document.serializer,
        json,
      );
}
