// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_allergies.fragment.data.gql.g.dart';

abstract class Gallergie {
  String get G__typename;
  String get name;
  String? get comment;
  String get id;
  BuiltList<Gallergie_linkedTreatments>? get linkedTreatments;
  Map<String, dynamic> toJson();
}

abstract class Gallergie_linkedTreatments {
  String get G__typename;
  String get linkId;
  Gallergie_linkedTreatments_treatment get treatment;
  Map<String, dynamic> toJson();
}

abstract class Gallergie_linkedTreatments_treatment {
  String get G__typename;
  String get id;
  String get name;
  String? get comment;
  String? get dosage;
  String? get startDay;
  String? get startMonth;
  String get startYear;
  String? get endDay;
  String? get endMonth;
  String? get endYear;
  Map<String, dynamic> toJson();
}

abstract class GallergieData
    implements Built<GallergieData, GallergieDataBuilder>, Gallergie {
  GallergieData._();

  factory GallergieData([void Function(GallergieDataBuilder b) updates]) =
      _$GallergieData;

  static void _initializeBuilder(GallergieDataBuilder b) =>
      b..G__typename = 'AllergyModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get name;
  @override
  String? get comment;
  @override
  String get id;
  @override
  BuiltList<GallergieData_linkedTreatments>? get linkedTreatments;
  static Serializer<GallergieData> get serializer => _$gallergieDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GallergieData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallergieData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GallergieData.serializer,
        json,
      );
}

abstract class GallergieData_linkedTreatments
    implements
        Built<GallergieData_linkedTreatments,
            GallergieData_linkedTreatmentsBuilder>,
        Gallergie_linkedTreatments {
  GallergieData_linkedTreatments._();

  factory GallergieData_linkedTreatments(
          [void Function(GallergieData_linkedTreatmentsBuilder b) updates]) =
      _$GallergieData_linkedTreatments;

  static void _initializeBuilder(GallergieData_linkedTreatmentsBuilder b) =>
      b..G__typename = 'LinkedTreatmentModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get linkId;
  @override
  GallergieData_linkedTreatments_treatment get treatment;
  static Serializer<GallergieData_linkedTreatments> get serializer =>
      _$gallergieDataLinkedTreatmentsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GallergieData_linkedTreatments.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallergieData_linkedTreatments? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GallergieData_linkedTreatments.serializer,
        json,
      );
}

abstract class GallergieData_linkedTreatments_treatment
    implements
        Built<GallergieData_linkedTreatments_treatment,
            GallergieData_linkedTreatments_treatmentBuilder>,
        Gallergie_linkedTreatments_treatment {
  GallergieData_linkedTreatments_treatment._();

  factory GallergieData_linkedTreatments_treatment(
      [void Function(GallergieData_linkedTreatments_treatmentBuilder b)
          updates]) = _$GallergieData_linkedTreatments_treatment;

  static void _initializeBuilder(
          GallergieData_linkedTreatments_treatmentBuilder b) =>
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
  String? get dosage;
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
  static Serializer<GallergieData_linkedTreatments_treatment> get serializer =>
      _$gallergieDataLinkedTreatmentsTreatmentSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GallergieData_linkedTreatments_treatment.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallergieData_linkedTreatments_treatment? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GallergieData_linkedTreatments_treatment.serializer,
        json,
      );
}
