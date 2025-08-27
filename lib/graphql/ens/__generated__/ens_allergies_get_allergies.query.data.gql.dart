// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_allergies.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_allergies_get_allergies.query.data.gql.g.dart';

abstract class Gget_allergiesData
    implements Built<Gget_allergiesData, Gget_allergiesDataBuilder> {
  Gget_allergiesData._();

  factory Gget_allergiesData(
          [void Function(Gget_allergiesDataBuilder b) updates]) =
      _$Gget_allergiesData;

  static void _initializeBuilder(Gget_allergiesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_allergiesData_allergies? get allergies;
  static Serializer<Gget_allergiesData> get serializer =>
      _$ggetAllergiesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_allergiesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_allergiesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_allergiesData.serializer,
        json,
      );
}

abstract class Gget_allergiesData_allergies
    implements
        Built<Gget_allergiesData_allergies,
            Gget_allergiesData_allergiesBuilder> {
  Gget_allergiesData_allergies._();

  factory Gget_allergiesData_allergies(
          [void Function(Gget_allergiesData_allergiesBuilder b) updates]) =
      _$Gget_allergiesData_allergies;

  static void _initializeBuilder(Gget_allergiesData_allergiesBuilder b) =>
      b..G__typename = 'AllergyListModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_allergiesData_allergies_allergies> get allergies;
  String? get unconcernedDeclarationDate;
  static Serializer<Gget_allergiesData_allergies> get serializer =>
      _$ggetAllergiesDataAllergiesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_allergiesData_allergies.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_allergiesData_allergies? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_allergiesData_allergies.serializer,
        json,
      );
}

abstract class Gget_allergiesData_allergies_allergies
    implements
        Built<Gget_allergiesData_allergies_allergies,
            Gget_allergiesData_allergies_allergiesBuilder>,
        _i2.Gallergie {
  Gget_allergiesData_allergies_allergies._();

  factory Gget_allergiesData_allergies_allergies(
      [void Function(Gget_allergiesData_allergies_allergiesBuilder b)
          updates]) = _$Gget_allergiesData_allergies_allergies;

  static void _initializeBuilder(
          Gget_allergiesData_allergies_allergiesBuilder b) =>
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
  BuiltList<Gget_allergiesData_allergies_allergies_linkedTreatments>?
      get linkedTreatments;
  static Serializer<Gget_allergiesData_allergies_allergies> get serializer =>
      _$ggetAllergiesDataAllergiesAllergiesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_allergiesData_allergies_allergies.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_allergiesData_allergies_allergies? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_allergiesData_allergies_allergies.serializer,
        json,
      );
}

abstract class Gget_allergiesData_allergies_allergies_linkedTreatments
    implements
        Built<Gget_allergiesData_allergies_allergies_linkedTreatments,
            Gget_allergiesData_allergies_allergies_linkedTreatmentsBuilder>,
        _i2.Gallergie_linkedTreatments {
  Gget_allergiesData_allergies_allergies_linkedTreatments._();

  factory Gget_allergiesData_allergies_allergies_linkedTreatments(
      [void Function(
              Gget_allergiesData_allergies_allergies_linkedTreatmentsBuilder b)
          updates]) = _$Gget_allergiesData_allergies_allergies_linkedTreatments;

  static void _initializeBuilder(
          Gget_allergiesData_allergies_allergies_linkedTreatmentsBuilder b) =>
      b..G__typename = 'LinkedTreatmentModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get linkId;
  @override
  Gget_allergiesData_allergies_allergies_linkedTreatments_treatment
      get treatment;
  static Serializer<Gget_allergiesData_allergies_allergies_linkedTreatments>
      get serializer =>
          _$ggetAllergiesDataAllergiesAllergiesLinkedTreatmentsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_allergiesData_allergies_allergies_linkedTreatments.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_allergiesData_allergies_allergies_linkedTreatments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_allergiesData_allergies_allergies_linkedTreatments.serializer,
        json,
      );
}

abstract class Gget_allergiesData_allergies_allergies_linkedTreatments_treatment
    implements
        Built<Gget_allergiesData_allergies_allergies_linkedTreatments_treatment,
            Gget_allergiesData_allergies_allergies_linkedTreatments_treatmentBuilder>,
        _i2.Gallergie_linkedTreatments_treatment {
  Gget_allergiesData_allergies_allergies_linkedTreatments_treatment._();

  factory Gget_allergiesData_allergies_allergies_linkedTreatments_treatment(
          [void Function(
                  Gget_allergiesData_allergies_allergies_linkedTreatments_treatmentBuilder
                      b)
              updates]) =
      _$Gget_allergiesData_allergies_allergies_linkedTreatments_treatment;

  static void _initializeBuilder(
          Gget_allergiesData_allergies_allergies_linkedTreatments_treatmentBuilder
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
  static Serializer<
          Gget_allergiesData_allergies_allergies_linkedTreatments_treatment>
      get serializer =>
          _$ggetAllergiesDataAllergiesAllergiesLinkedTreatmentsTreatmentSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_allergiesData_allergies_allergies_linkedTreatments_treatment
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_allergiesData_allergies_allergies_linkedTreatments_treatment?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_allergiesData_allergies_allergies_linkedTreatments_treatment
                .serializer,
            json,
          );
}
