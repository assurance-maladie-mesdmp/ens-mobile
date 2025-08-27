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

part 'ens_habitudes_de_vie_get.query.data.gql.g.dart';

abstract class Gget_habitudes_de_vieData
    implements
        Built<Gget_habitudes_de_vieData, Gget_habitudes_de_vieDataBuilder> {
  Gget_habitudes_de_vieData._();

  factory Gget_habitudes_de_vieData(
          [void Function(Gget_habitudes_de_vieDataBuilder b) updates]) =
      _$Gget_habitudes_de_vieData;

  static void _initializeBuilder(Gget_habitudes_de_vieDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_habitudes_de_vieData_fetchLifestylesStatus get fetchLifestylesStatus;
  Gget_habitudes_de_vieData_fetchLifestylesMetadata get fetchLifestylesMetadata;
  static Serializer<Gget_habitudes_de_vieData> get serializer =>
      _$ggetHabitudesDeVieDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_habitudes_de_vieData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_habitudes_de_vieData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_habitudes_de_vieData.serializer,
        json,
      );
}

abstract class Gget_habitudes_de_vieData_fetchLifestylesStatus
    implements
        Built<Gget_habitudes_de_vieData_fetchLifestylesStatus,
            Gget_habitudes_de_vieData_fetchLifestylesStatusBuilder> {
  Gget_habitudes_de_vieData_fetchLifestylesStatus._();

  factory Gget_habitudes_de_vieData_fetchLifestylesStatus(
      [void Function(Gget_habitudes_de_vieData_fetchLifestylesStatusBuilder b)
          updates]) = _$Gget_habitudes_de_vieData_fetchLifestylesStatus;

  static void _initializeBuilder(
          Gget_habitudes_de_vieData_fetchLifestylesStatusBuilder b) =>
      b..G__typename = 'LifestylesModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_habitudes_de_vieData_fetchLifestylesStatus_sections>
      get sections;
  static Serializer<Gget_habitudes_de_vieData_fetchLifestylesStatus>
      get serializer => _$ggetHabitudesDeVieDataFetchLifestylesStatusSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_habitudes_de_vieData_fetchLifestylesStatus.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_habitudes_de_vieData_fetchLifestylesStatus? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_habitudes_de_vieData_fetchLifestylesStatus.serializer,
        json,
      );
}

abstract class Gget_habitudes_de_vieData_fetchLifestylesStatus_sections
    implements
        Built<Gget_habitudes_de_vieData_fetchLifestylesStatus_sections,
            Gget_habitudes_de_vieData_fetchLifestylesStatus_sectionsBuilder> {
  Gget_habitudes_de_vieData_fetchLifestylesStatus_sections._();

  factory Gget_habitudes_de_vieData_fetchLifestylesStatus_sections(
      [void Function(
              Gget_habitudes_de_vieData_fetchLifestylesStatus_sectionsBuilder b)
          updates]) = _$Gget_habitudes_de_vieData_fetchLifestylesStatus_sections;

  static void _initializeBuilder(
          Gget_habitudes_de_vieData_fetchLifestylesStatus_sectionsBuilder b) =>
      b..G__typename = 'LifestyleStatusModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.GLifestyleSectionEnum get name;
  String? get lastModifiedDate;
  static Serializer<Gget_habitudes_de_vieData_fetchLifestylesStatus_sections>
      get serializer =>
          _$ggetHabitudesDeVieDataFetchLifestylesStatusSectionsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_habitudes_de_vieData_fetchLifestylesStatus_sections.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_habitudes_de_vieData_fetchLifestylesStatus_sections? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_habitudes_de_vieData_fetchLifestylesStatus_sections.serializer,
        json,
      );
}

abstract class Gget_habitudes_de_vieData_fetchLifestylesMetadata
    implements
        Built<Gget_habitudes_de_vieData_fetchLifestylesMetadata,
            Gget_habitudes_de_vieData_fetchLifestylesMetadataBuilder> {
  Gget_habitudes_de_vieData_fetchLifestylesMetadata._();

  factory Gget_habitudes_de_vieData_fetchLifestylesMetadata(
      [void Function(Gget_habitudes_de_vieData_fetchLifestylesMetadataBuilder b)
          updates]) = _$Gget_habitudes_de_vieData_fetchLifestylesMetadata;

  static void _initializeBuilder(
          Gget_habitudes_de_vieData_fetchLifestylesMetadataBuilder b) =>
      b..G__typename = 'LifestyleMetadataModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections>
      get sections;
  static Serializer<Gget_habitudes_de_vieData_fetchLifestylesMetadata>
      get serializer =>
          _$ggetHabitudesDeVieDataFetchLifestylesMetadataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_habitudes_de_vieData_fetchLifestylesMetadata.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_habitudes_de_vieData_fetchLifestylesMetadata? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_habitudes_de_vieData_fetchLifestylesMetadata.serializer,
        json,
      );
}

abstract class Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections
    implements
        Built<Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections,
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sectionsBuilder> {
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections._();

  factory Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections(
      [void Function(
              Gget_habitudes_de_vieData_fetchLifestylesMetadata_sectionsBuilder
                  b)
          updates]) = _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections;

  static void _initializeBuilder(
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sectionsBuilder
              b) =>
      b..G__typename = 'LifestyleSectionMetadataModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.GLifestyleSectionEnum get name;
  String get label;
  String get sectionTag;
  BuiltList<Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items>
      get items;
  static Serializer<Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections>
      get serializer =>
          _$ggetHabitudesDeVieDataFetchLifestylesMetadataSectionsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections.serializer,
        json,
      );
}

abstract class Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items
    implements
        Built<Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items,
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_itemsBuilder> {
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items._();

  factory Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items(
          [void Function(
                  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_itemsBuilder
                      b)
              updates]) =
      _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items;

  static void _initializeBuilder(
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_itemsBuilder
              b) =>
      b..G__typename = 'LifestyleItemMetadataModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String get itemTag;
  BuiltList<
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details>
      get details;
  static Serializer<
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items>
      get serializer =>
          _$ggetHabitudesDeVieDataFetchLifestylesMetadataSectionsItemsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items
                .serializer,
            json,
          );
}

abstract class Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details
    implements
        Built<
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details,
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_detailsBuilder> {
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details._();

  factory Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details(
          [void Function(
                  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_detailsBuilder
                      b)
              updates]) =
      _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details;

  static void _initializeBuilder(
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_detailsBuilder
              b) =>
      b..G__typename = 'LifestyleDetailMetadataModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String get label;
  String? get description;
  String? get example;
  _i2.GLifestyleItemDisplayEnum get type;
  String get detailTag;
  BuiltList<
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options>?
      get options;
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn?
      get displayOn;
  double? get maxLength;
  BuiltList<
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints>?
      get constraints;
  static Serializer<
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details>
      get serializer =>
          _$ggetHabitudesDeVieDataFetchLifestylesMetadataSectionsItemsDetailsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details
                .serializer,
            json,
          );
}

abstract class Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options
    implements
        Built<
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options,
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_optionsBuilder> {
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options._();

  factory Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options(
          [void Function(
                  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_optionsBuilder
                      b)
              updates]) =
      _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options;

  static void _initializeBuilder(
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_optionsBuilder
              b) =>
      b..G__typename = 'LifestyleDetailValueMetadataModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get value;
  String get label;
  static Serializer<
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options>
      get serializer =>
          _$ggetHabitudesDeVieDataFetchLifestylesMetadataSectionsItemsDetailsOptionsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options
                .serializer,
            json,
          );
}

abstract class Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn
    implements
        Built<
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn,
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOnBuilder> {
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn._();

  factory Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn(
          [void Function(
                  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOnBuilder
                      b)
              updates]) =
      _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn;

  static void _initializeBuilder(
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOnBuilder
              b) =>
      b..G__typename = 'LifestyleDetailDisplayMetadataModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String? get value;
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range?
      get range;
  static Serializer<
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn>
      get serializer =>
          _$ggetHabitudesDeVieDataFetchLifestylesMetadataSectionsItemsDetailsDisplayOnSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn
                .serializer,
            json,
          );
}

abstract class Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range
    implements
        Built<
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range,
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_rangeBuilder> {
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range._();

  factory Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range(
          [void Function(
                  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_rangeBuilder
                      b)
              updates]) =
      _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range;

  static void _initializeBuilder(
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_rangeBuilder
              b) =>
      b..G__typename = 'LifestyleConstraintRangeModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  double? get min;
  double? get max;
  static Serializer<
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range>
      get serializer =>
          _$ggetHabitudesDeVieDataFetchLifestylesMetadataSectionsItemsDetailsDisplayOnRangeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range
                .serializer,
            json,
          );
}

abstract class Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints
    implements
        Built<
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints,
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraintsBuilder> {
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints._();

  factory Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints(
          [void Function(
                  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraintsBuilder
                      b)
              updates]) =
      _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints;

  static void _initializeBuilder(
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraintsBuilder
              b) =>
      b..G__typename = 'LifestyleConstraintModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get message;
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range?
      get range;
  String? get regexp;
  static Serializer<
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints>
      get serializer =>
          _$ggetHabitudesDeVieDataFetchLifestylesMetadataSectionsItemsDetailsConstraintsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints
                .serializer,
            json,
          );
}

abstract class Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range
    implements
        Built<
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range,
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_rangeBuilder> {
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range._();

  factory Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range(
          [void Function(
                  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_rangeBuilder
                      b)
              updates]) =
      _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range;

  static void _initializeBuilder(
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_rangeBuilder
              b) =>
      b..G__typename = 'LifestyleConstraintRangeModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  double? get max;
  double? get min;
  static Serializer<
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range>
      get serializer =>
          _$ggetHabitudesDeVieDataFetchLifestylesMetadataSectionsItemsDetailsConstraintsRangeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range
                .serializer,
            json,
          );
}
