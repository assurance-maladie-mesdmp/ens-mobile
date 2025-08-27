// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_habitudes_de_vie.fragment.data.gql.g.dart';

abstract class GhabitudesDeVie {
  String get G__typename;
  _i1.GLifestyleSectionEnum get name;
  BuiltList<GhabitudesDeVie_items> get items;
  Map<String, dynamic> toJson();
}

abstract class GhabitudesDeVie_items {
  String get G__typename;
  String get name;
  BuiltList<GhabitudesDeVie_items_details> get details;
  Map<String, dynamic> toJson();
}

abstract class GhabitudesDeVie_items_details {
  String get G__typename;
  String get id;
  _i1.GLifestyleCreationTypeEnum get lastModifiedType;
  String get effectiveDate;
  BuiltList<GhabitudesDeVie_items_details_answers> get answers;
  Map<String, dynamic> toJson();
}

abstract class GhabitudesDeVie_items_details_answers {
  String get G__typename;
  String get name;
  String get label;
  String get value;
  Map<String, dynamic> toJson();
}

abstract class GhabitudesDeVieData
    implements
        Built<GhabitudesDeVieData, GhabitudesDeVieDataBuilder>,
        GhabitudesDeVie {
  GhabitudesDeVieData._();

  factory GhabitudesDeVieData(
          [void Function(GhabitudesDeVieDataBuilder b) updates]) =
      _$GhabitudesDeVieData;

  static void _initializeBuilder(GhabitudesDeVieDataBuilder b) =>
      b..G__typename = 'LifestyleSectionAnswersHistoryModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i1.GLifestyleSectionEnum get name;
  @override
  BuiltList<GhabitudesDeVieData_items> get items;
  static Serializer<GhabitudesDeVieData> get serializer =>
      _$ghabitudesDeVieDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GhabitudesDeVieData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GhabitudesDeVieData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GhabitudesDeVieData.serializer,
        json,
      );
}

abstract class GhabitudesDeVieData_items
    implements
        Built<GhabitudesDeVieData_items, GhabitudesDeVieData_itemsBuilder>,
        GhabitudesDeVie_items {
  GhabitudesDeVieData_items._();

  factory GhabitudesDeVieData_items(
          [void Function(GhabitudesDeVieData_itemsBuilder b) updates]) =
      _$GhabitudesDeVieData_items;

  static void _initializeBuilder(GhabitudesDeVieData_itemsBuilder b) =>
      b..G__typename = 'LifestyleItemHistoryModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get name;
  @override
  BuiltList<GhabitudesDeVieData_items_details> get details;
  static Serializer<GhabitudesDeVieData_items> get serializer =>
      _$ghabitudesDeVieDataItemsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GhabitudesDeVieData_items.serializer,
        this,
      ) as Map<String, dynamic>);

  static GhabitudesDeVieData_items? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GhabitudesDeVieData_items.serializer,
        json,
      );
}

abstract class GhabitudesDeVieData_items_details
    implements
        Built<GhabitudesDeVieData_items_details,
            GhabitudesDeVieData_items_detailsBuilder>,
        GhabitudesDeVie_items_details {
  GhabitudesDeVieData_items_details._();

  factory GhabitudesDeVieData_items_details(
          [void Function(GhabitudesDeVieData_items_detailsBuilder b) updates]) =
      _$GhabitudesDeVieData_items_details;

  static void _initializeBuilder(GhabitudesDeVieData_items_detailsBuilder b) =>
      b..G__typename = 'LifestyleDetailModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  _i1.GLifestyleCreationTypeEnum get lastModifiedType;
  @override
  String get effectiveDate;
  @override
  BuiltList<GhabitudesDeVieData_items_details_answers> get answers;
  static Serializer<GhabitudesDeVieData_items_details> get serializer =>
      _$ghabitudesDeVieDataItemsDetailsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GhabitudesDeVieData_items_details.serializer,
        this,
      ) as Map<String, dynamic>);

  static GhabitudesDeVieData_items_details? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GhabitudesDeVieData_items_details.serializer,
        json,
      );
}

abstract class GhabitudesDeVieData_items_details_answers
    implements
        Built<GhabitudesDeVieData_items_details_answers,
            GhabitudesDeVieData_items_details_answersBuilder>,
        GhabitudesDeVie_items_details_answers {
  GhabitudesDeVieData_items_details_answers._();

  factory GhabitudesDeVieData_items_details_answers(
      [void Function(GhabitudesDeVieData_items_details_answersBuilder b)
          updates]) = _$GhabitudesDeVieData_items_details_answers;

  static void _initializeBuilder(
          GhabitudesDeVieData_items_details_answersBuilder b) =>
      b..G__typename = 'LifestyleAnswerModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get name;
  @override
  String get label;
  @override
  String get value;
  static Serializer<GhabitudesDeVieData_items_details_answers> get serializer =>
      _$ghabitudesDeVieDataItemsDetailsAnswersSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GhabitudesDeVieData_items_details_answers.serializer,
        this,
      ) as Map<String, dynamic>);

  static GhabitudesDeVieData_items_details_answers? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GhabitudesDeVieData_items_details_answers.serializer,
        json,
      );
}
