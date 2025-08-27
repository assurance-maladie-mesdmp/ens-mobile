// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_habitudes_de_vie.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_habitudes_de_vie_get_initial_section_answers.query.data.gql.g.dart';

abstract class Gget_initial_habitudes_de_vie_section_answerData
    implements
        Built<Gget_initial_habitudes_de_vie_section_answerData,
            Gget_initial_habitudes_de_vie_section_answerDataBuilder> {
  Gget_initial_habitudes_de_vie_section_answerData._();

  factory Gget_initial_habitudes_de_vie_section_answerData(
      [void Function(Gget_initial_habitudes_de_vie_section_answerDataBuilder b)
          updates]) = _$Gget_initial_habitudes_de_vie_section_answerData;

  static void _initializeBuilder(
          Gget_initial_habitudes_de_vie_section_answerDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_initial_habitudes_de_vie_section_answerData_alimentaire get alimentaire;
  Gget_initial_habitudes_de_vie_section_answerData_tabac get tabac;
  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique
      get activitePhysique;
  static Serializer<Gget_initial_habitudes_de_vie_section_answerData>
      get serializer => _$ggetInitialHabitudesDeVieSectionAnswerDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_initial_habitudes_de_vie_section_answerData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_initial_habitudes_de_vie_section_answerData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_initial_habitudes_de_vie_section_answerData.serializer,
        json,
      );
}

abstract class Gget_initial_habitudes_de_vie_section_answerData_alimentaire
    implements
        Built<Gget_initial_habitudes_de_vie_section_answerData_alimentaire,
            Gget_initial_habitudes_de_vie_section_answerData_alimentaireBuilder>,
        _i2.GhabitudesDeVie {
  Gget_initial_habitudes_de_vie_section_answerData_alimentaire._();

  factory Gget_initial_habitudes_de_vie_section_answerData_alimentaire(
          [void Function(
                  Gget_initial_habitudes_de_vie_section_answerData_alimentaireBuilder
                      b)
              updates]) =
      _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire;

  static void _initializeBuilder(
          Gget_initial_habitudes_de_vie_section_answerData_alimentaireBuilder
              b) =>
      b..G__typename = 'LifestyleSectionAnswersHistoryModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i3.GLifestyleSectionEnum get name;
  @override
  BuiltList<Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items>
      get items;
  static Serializer<
          Gget_initial_habitudes_de_vie_section_answerData_alimentaire>
      get serializer =>
          _$ggetInitialHabitudesDeVieSectionAnswerDataAlimentaireSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_initial_habitudes_de_vie_section_answerData_alimentaire.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_initial_habitudes_de_vie_section_answerData_alimentaire? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_initial_habitudes_de_vie_section_answerData_alimentaire.serializer,
        json,
      );
}

abstract class Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items
    implements
        Built<
            Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items,
            Gget_initial_habitudes_de_vie_section_answerData_alimentaire_itemsBuilder>,
        _i2.GhabitudesDeVie_items {
  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items._();

  factory Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items(
          [void Function(
                  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_itemsBuilder
                      b)
              updates]) =
      _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items;

  static void _initializeBuilder(
          Gget_initial_habitudes_de_vie_section_answerData_alimentaire_itemsBuilder
              b) =>
      b..G__typename = 'LifestyleItemHistoryModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get name;
  @override
  BuiltList<
          Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details>
      get details;
  static Serializer<
          Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items>
      get serializer =>
          _$ggetInitialHabitudesDeVieSectionAnswerDataAlimentaireItemsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items
                .serializer,
            json,
          );
}

abstract class Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details
    implements
        Built<
            Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details,
            Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_detailsBuilder>,
        _i2.GhabitudesDeVie_items_details {
  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details._();

  factory Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details(
          [void Function(
                  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_detailsBuilder
                      b)
              updates]) =
      _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details;

  static void _initializeBuilder(
          Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_detailsBuilder
              b) =>
      b..G__typename = 'LifestyleDetailModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  _i3.GLifestyleCreationTypeEnum get lastModifiedType;
  @override
  String get effectiveDate;
  @override
  BuiltList<
          Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers>
      get answers;
  static Serializer<
          Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details>
      get serializer =>
          _$ggetInitialHabitudesDeVieSectionAnswerDataAlimentaireItemsDetailsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details
                .serializer,
            json,
          );
}

abstract class Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers
    implements
        Built<
            Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers,
            Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answersBuilder>,
        _i2.GhabitudesDeVie_items_details_answers {
  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers._();

  factory Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers(
          [void Function(
                  Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answersBuilder
                      b)
              updates]) =
      _$Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers;

  static void _initializeBuilder(
          Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answersBuilder
              b) =>
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
  static Serializer<
          Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers>
      get serializer =>
          _$ggetInitialHabitudesDeVieSectionAnswerDataAlimentaireItemsDetailsAnswersSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_initial_habitudes_de_vie_section_answerData_alimentaire_items_details_answers
                .serializer,
            json,
          );
}

abstract class Gget_initial_habitudes_de_vie_section_answerData_tabac
    implements
        Built<Gget_initial_habitudes_de_vie_section_answerData_tabac,
            Gget_initial_habitudes_de_vie_section_answerData_tabacBuilder>,
        _i2.GhabitudesDeVie {
  Gget_initial_habitudes_de_vie_section_answerData_tabac._();

  factory Gget_initial_habitudes_de_vie_section_answerData_tabac(
      [void Function(
              Gget_initial_habitudes_de_vie_section_answerData_tabacBuilder b)
          updates]) = _$Gget_initial_habitudes_de_vie_section_answerData_tabac;

  static void _initializeBuilder(
          Gget_initial_habitudes_de_vie_section_answerData_tabacBuilder b) =>
      b..G__typename = 'LifestyleSectionAnswersHistoryModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i3.GLifestyleSectionEnum get name;
  @override
  BuiltList<Gget_initial_habitudes_de_vie_section_answerData_tabac_items>
      get items;
  static Serializer<Gget_initial_habitudes_de_vie_section_answerData_tabac>
      get serializer =>
          _$ggetInitialHabitudesDeVieSectionAnswerDataTabacSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_initial_habitudes_de_vie_section_answerData_tabac.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_initial_habitudes_de_vie_section_answerData_tabac? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_initial_habitudes_de_vie_section_answerData_tabac.serializer,
        json,
      );
}

abstract class Gget_initial_habitudes_de_vie_section_answerData_tabac_items
    implements
        Built<Gget_initial_habitudes_de_vie_section_answerData_tabac_items,
            Gget_initial_habitudes_de_vie_section_answerData_tabac_itemsBuilder>,
        _i2.GhabitudesDeVie_items {
  Gget_initial_habitudes_de_vie_section_answerData_tabac_items._();

  factory Gget_initial_habitudes_de_vie_section_answerData_tabac_items(
          [void Function(
                  Gget_initial_habitudes_de_vie_section_answerData_tabac_itemsBuilder
                      b)
              updates]) =
      _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items;

  static void _initializeBuilder(
          Gget_initial_habitudes_de_vie_section_answerData_tabac_itemsBuilder
              b) =>
      b..G__typename = 'LifestyleItemHistoryModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get name;
  @override
  BuiltList<
          Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details>
      get details;
  static Serializer<
          Gget_initial_habitudes_de_vie_section_answerData_tabac_items>
      get serializer =>
          _$ggetInitialHabitudesDeVieSectionAnswerDataTabacItemsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_initial_habitudes_de_vie_section_answerData_tabac_items.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_initial_habitudes_de_vie_section_answerData_tabac_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_initial_habitudes_de_vie_section_answerData_tabac_items.serializer,
        json,
      );
}

abstract class Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details
    implements
        Built<
            Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details,
            Gget_initial_habitudes_de_vie_section_answerData_tabac_items_detailsBuilder>,
        _i2.GhabitudesDeVie_items_details {
  Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details._();

  factory Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details(
          [void Function(
                  Gget_initial_habitudes_de_vie_section_answerData_tabac_items_detailsBuilder
                      b)
              updates]) =
      _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details;

  static void _initializeBuilder(
          Gget_initial_habitudes_de_vie_section_answerData_tabac_items_detailsBuilder
              b) =>
      b..G__typename = 'LifestyleDetailModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  _i3.GLifestyleCreationTypeEnum get lastModifiedType;
  @override
  String get effectiveDate;
  @override
  BuiltList<
          Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers>
      get answers;
  static Serializer<
          Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details>
      get serializer =>
          _$ggetInitialHabitudesDeVieSectionAnswerDataTabacItemsDetailsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details
                .serializer,
            json,
          );
}

abstract class Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers
    implements
        Built<
            Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers,
            Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answersBuilder>,
        _i2.GhabitudesDeVie_items_details_answers {
  Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers._();

  factory Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers(
          [void Function(
                  Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answersBuilder
                      b)
              updates]) =
      _$Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers;

  static void _initializeBuilder(
          Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answersBuilder
              b) =>
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
  static Serializer<
          Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers>
      get serializer =>
          _$ggetInitialHabitudesDeVieSectionAnswerDataTabacItemsDetailsAnswersSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_initial_habitudes_de_vie_section_answerData_tabac_items_details_answers
                .serializer,
            json,
          );
}

abstract class Gget_initial_habitudes_de_vie_section_answerData_activitePhysique
    implements
        Built<Gget_initial_habitudes_de_vie_section_answerData_activitePhysique,
            Gget_initial_habitudes_de_vie_section_answerData_activitePhysiqueBuilder>,
        _i2.GhabitudesDeVie {
  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique._();

  factory Gget_initial_habitudes_de_vie_section_answerData_activitePhysique(
          [void Function(
                  Gget_initial_habitudes_de_vie_section_answerData_activitePhysiqueBuilder
                      b)
              updates]) =
      _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique;

  static void _initializeBuilder(
          Gget_initial_habitudes_de_vie_section_answerData_activitePhysiqueBuilder
              b) =>
      b..G__typename = 'LifestyleSectionAnswersHistoryModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i3.GLifestyleSectionEnum get name;
  @override
  BuiltList<
          Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items>
      get items;
  static Serializer<
          Gget_initial_habitudes_de_vie_section_answerData_activitePhysique>
      get serializer =>
          _$ggetInitialHabitudesDeVieSectionAnswerDataActivitePhysiqueSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_initial_habitudes_de_vie_section_answerData_activitePhysique
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_initial_habitudes_de_vie_section_answerData_activitePhysique?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_initial_habitudes_de_vie_section_answerData_activitePhysique
                .serializer,
            json,
          );
}

abstract class Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items
    implements
        Built<
            Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items,
            Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_itemsBuilder>,
        _i2.GhabitudesDeVie_items {
  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items._();

  factory Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items(
          [void Function(
                  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_itemsBuilder
                      b)
              updates]) =
      _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items;

  static void _initializeBuilder(
          Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_itemsBuilder
              b) =>
      b..G__typename = 'LifestyleItemHistoryModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get name;
  @override
  BuiltList<
          Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details>
      get details;
  static Serializer<
          Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items>
      get serializer =>
          _$ggetInitialHabitudesDeVieSectionAnswerDataActivitePhysiqueItemsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items
                .serializer,
            json,
          );
}

abstract class Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details
    implements
        Built<
            Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details,
            Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_detailsBuilder>,
        _i2.GhabitudesDeVie_items_details {
  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details._();

  factory Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details(
          [void Function(
                  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_detailsBuilder
                      b)
              updates]) =
      _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details;

  static void _initializeBuilder(
          Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_detailsBuilder
              b) =>
      b..G__typename = 'LifestyleDetailModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  _i3.GLifestyleCreationTypeEnum get lastModifiedType;
  @override
  String get effectiveDate;
  @override
  BuiltList<
          Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers>
      get answers;
  static Serializer<
          Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details>
      get serializer =>
          _$ggetInitialHabitudesDeVieSectionAnswerDataActivitePhysiqueItemsDetailsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details
                .serializer,
            json,
          );
}

abstract class Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers
    implements
        Built<
            Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers,
            Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answersBuilder>,
        _i2.GhabitudesDeVie_items_details_answers {
  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers._();

  factory Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers(
          [void Function(
                  Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answersBuilder
                      b)
              updates]) =
      _$Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers;

  static void _initializeBuilder(
          Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answersBuilder
              b) =>
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
  static Serializer<
          Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers>
      get serializer =>
          _$ggetInitialHabitudesDeVieSectionAnswerDataActivitePhysiqueItemsDetailsAnswersSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_initial_habitudes_de_vie_section_answerData_activitePhysique_items_details_answers
                .serializer,
            json,
          );
}
