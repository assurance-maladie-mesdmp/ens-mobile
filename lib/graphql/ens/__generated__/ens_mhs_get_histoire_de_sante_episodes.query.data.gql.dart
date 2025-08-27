// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_acteur_sante_auteur.fragment.data.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_histoire_sante.fragment.data.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;
import 'package:gql_code_builder_serializers/gql_code_builder_serializers.dart'
    as _i2;

part 'ens_mhs_get_histoire_de_sante_episodes.query.data.gql.g.dart';

abstract class Gget_histoire_de_sante_episodesData
    implements
        Built<Gget_histoire_de_sante_episodesData,
            Gget_histoire_de_sante_episodesDataBuilder> {
  Gget_histoire_de_sante_episodesData._();

  factory Gget_histoire_de_sante_episodesData(
      [void Function(Gget_histoire_de_sante_episodesDataBuilder b)
          updates]) = _$Gget_histoire_de_sante_episodesData;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_histoire_de_sante_episodesData_dailyEpisodes? get dailyEpisodes;
  static Serializer<Gget_histoire_de_sante_episodesData> get serializer =>
      _$ggetHistoireDeSanteEpisodesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_histoire_de_sante_episodesData.serializer,
        json,
      );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes
    implements
        Built<Gget_histoire_de_sante_episodesData_dailyEpisodes,
            Gget_histoire_de_sante_episodesData_dailyEpisodesBuilder> {
  Gget_histoire_de_sante_episodesData_dailyEpisodes._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes(
      [void Function(Gget_histoire_de_sante_episodesData_dailyEpisodesBuilder b)
          updates]) = _$Gget_histoire_de_sante_episodesData_dailyEpisodes;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodesBuilder b) =>
      b..G__typename = 'EpisodeListResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes>
      get episodes;
  double get numberOfEpisodes;
  static Serializer<Gget_histoire_de_sante_episodesData_dailyEpisodes>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes.serializer,
        json,
      );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes {
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes>
      get serializer => _i2.InlineFragmentSerializer<
              Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes>(
            'Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes',
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__base,
            {
              'BiologyEpisodeViewModel':
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel,
              'MedicineEpisodeViewModel':
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel,
              'MedicalDentalCareEpisodeViewModel':
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel,
              'HospitalizationEpisodeViewModel':
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asHospitalizationEpisodeViewModel,
              'RadiologyEpisodeViewModel':
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel,
              'MedicalDeviceEpisodeViewModel':
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel,
              'VaccineEpisodeViewModel':
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel,
              'CvaVaccineEpisodeViewModel':
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asCvaVaccineEpisodeViewModel,
              'DiseaseEpisodeViewModel':
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asDiseaseEpisodeViewModel,
            },
          );

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes.serializer,
        json,
      );
}

extension Gget_histoire_de_sante_episodesData_dailyEpisodes_episodesWhenExtension
    on Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes {
  _T when<_T>({
    required _T Function(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel)
        biologyEpisodeViewModel,
    required _T Function(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel)
        medicineEpisodeViewModel,
    required _T Function(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel)
        medicalDentalCareEpisodeViewModel,
    required _T Function(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asHospitalizationEpisodeViewModel)
        hospitalizationEpisodeViewModel,
    required _T Function(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel)
        radiologyEpisodeViewModel,
    required _T Function(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel)
        medicalDeviceEpisodeViewModel,
    required _T Function(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel)
        vaccineEpisodeViewModel,
    required _T Function(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asCvaVaccineEpisodeViewModel)
        cvaVaccineEpisodeViewModel,
    required _T Function(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asDiseaseEpisodeViewModel)
        diseaseEpisodeViewModel,
    required _T Function() orElse,
  }) {
    switch (G__typename) {
      case 'BiologyEpisodeViewModel':
        return biologyEpisodeViewModel((this
            as Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel));
      case 'MedicineEpisodeViewModel':
        return medicineEpisodeViewModel((this
            as Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel));
      case 'MedicalDentalCareEpisodeViewModel':
        return medicalDentalCareEpisodeViewModel((this
            as Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel));
      case 'HospitalizationEpisodeViewModel':
        return hospitalizationEpisodeViewModel((this
            as Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asHospitalizationEpisodeViewModel));
      case 'RadiologyEpisodeViewModel':
        return radiologyEpisodeViewModel((this
            as Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel));
      case 'MedicalDeviceEpisodeViewModel':
        return medicalDeviceEpisodeViewModel((this
            as Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel));
      case 'VaccineEpisodeViewModel':
        return vaccineEpisodeViewModel((this
            as Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel));
      case 'CvaVaccineEpisodeViewModel':
        return cvaVaccineEpisodeViewModel((this
            as Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asCvaVaccineEpisodeViewModel));
      case 'DiseaseEpisodeViewModel':
        return diseaseEpisodeViewModel((this
            as Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asDiseaseEpisodeViewModel));
      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel)?
        biologyEpisodeViewModel,
    _T Function(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel)?
        medicineEpisodeViewModel,
    _T Function(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel)?
        medicalDentalCareEpisodeViewModel,
    _T Function(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asHospitalizationEpisodeViewModel)?
        hospitalizationEpisodeViewModel,
    _T Function(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel)?
        radiologyEpisodeViewModel,
    _T Function(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel)?
        medicalDeviceEpisodeViewModel,
    _T Function(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel)?
        vaccineEpisodeViewModel,
    _T Function(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asCvaVaccineEpisodeViewModel)?
        cvaVaccineEpisodeViewModel,
    _T Function(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asDiseaseEpisodeViewModel)?
        diseaseEpisodeViewModel,
    required _T Function() orElse,
  }) {
    switch (G__typename) {
      case 'BiologyEpisodeViewModel':
        return biologyEpisodeViewModel != null
            ? biologyEpisodeViewModel((this
                as Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel))
            : orElse();
      case 'MedicineEpisodeViewModel':
        return medicineEpisodeViewModel != null
            ? medicineEpisodeViewModel((this
                as Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel))
            : orElse();
      case 'MedicalDentalCareEpisodeViewModel':
        return medicalDentalCareEpisodeViewModel != null
            ? medicalDentalCareEpisodeViewModel((this
                as Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel))
            : orElse();
      case 'HospitalizationEpisodeViewModel':
        return hospitalizationEpisodeViewModel != null
            ? hospitalizationEpisodeViewModel((this
                as Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asHospitalizationEpisodeViewModel))
            : orElse();
      case 'RadiologyEpisodeViewModel':
        return radiologyEpisodeViewModel != null
            ? radiologyEpisodeViewModel((this
                as Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel))
            : orElse();
      case 'MedicalDeviceEpisodeViewModel':
        return medicalDeviceEpisodeViewModel != null
            ? medicalDeviceEpisodeViewModel((this
                as Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel))
            : orElse();
      case 'VaccineEpisodeViewModel':
        return vaccineEpisodeViewModel != null
            ? vaccineEpisodeViewModel((this
                as Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel))
            : orElse();
      case 'CvaVaccineEpisodeViewModel':
        return cvaVaccineEpisodeViewModel != null
            ? cvaVaccineEpisodeViewModel((this
                as Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asCvaVaccineEpisodeViewModel))
            : orElse();
      case 'DiseaseEpisodeViewModel':
        return diseaseEpisodeViewModel != null
            ? diseaseEpisodeViewModel((this
                as Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asDiseaseEpisodeViewModel))
            : orElse();
      default:
        return orElse();
    }
  }
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__base
    implements
        Built<Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__base,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__baseBuilder>,
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__base._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__base(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__baseBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__base;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__baseBuilder
              b) =>
      b..G__typename = 'EpisodeViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__base>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesBaseSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__base
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__base?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__base
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModelBuilder>,
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes,
        _i3.GepisodeBiologie {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModelBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModelBuilder
              b) =>
      b..G__typename = 'BiologyEpisodeViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get date;
  @override
  _i4.GEpisodeCategory get category;
  @override
  BuiltList<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items>
      get items;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsBiologyEpisodeViewModelSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_itemsBuilder>,
        _i3.GepisodeBiologie_items {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_itemsBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_itemsBuilder
              b) =>
      b..G__typename = 'BiologyEpisodeItemsViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get name;
  @override
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items_episodeEsAuthor?
      get episodeEsAuthor;
  @override
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items_episodePsAuthor?
      get episodePsAuthor;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsBiologyEpisodeViewModelItemsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items_episodeEsAuthor
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items_episodeEsAuthor,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items_episodeEsAuthorBuilder>,
        _i3.GepisodeBiologie_items_episodeEsAuthor,
        _i5.GepisodeEsAuteur {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items_episodeEsAuthor._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items_episodeEsAuthor(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items_episodeEsAuthorBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items_episodeEsAuthor;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items_episodeEsAuthorBuilder
              b) =>
      b..G__typename = 'EpisodeEsAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items_episodeEsAuthor>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsBiologyEpisodeViewModelItemsEpisodeEsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items_episodeEsAuthor
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items_episodeEsAuthor?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items_episodeEsAuthor
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items_episodePsAuthor
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items_episodePsAuthor,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items_episodePsAuthorBuilder>,
        _i3.GepisodeBiologie_items_episodePsAuthor,
        _i5.GepisodePsAuteur {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items_episodePsAuthor._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items_episodePsAuthor(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items_episodePsAuthorBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items_episodePsAuthor;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items_episodePsAuthorBuilder
              b) =>
      b..G__typename = 'EpisodePsAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get fullName;
  @override
  BuiltList<String> get profession;
  @override
  BuiltList<String> get specialities;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items_episodePsAuthor>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsBiologyEpisodeViewModelItemsEpisodePsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items_episodePsAuthor
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items_episodePsAuthor?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asBiologyEpisodeViewModel_items_episodePsAuthor
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModelBuilder>,
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes,
        _i3.GepisodeMedicament {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModelBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModelBuilder
              b) =>
      b..G__typename = 'MedicineEpisodeViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get date;
  @override
  _i4.GEpisodeCategory get category;
  @override
  BuiltList<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items>
      get items;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsMedicineEpisodeViewModelSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_itemsBuilder>,
        _i3.GepisodeMedicament_items {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_itemsBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_itemsBuilder
              b) =>
      b..G__typename = 'MedicineEpisodeItemsViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get deliveryDate;
  @override
  String get name;
  @override
  String? get therapeuticGroup;
  @override
  double get quantityDelivered;
  @override
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodePsAuthor?
      get episodePsAuthor;
  @override
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeDeliveredByPsAuthor?
      get episodeDeliveredByPsAuthor;
  @override
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeEsAuthor?
      get episodeEsAuthor;
  @override
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeDeliveredByEsAuthor?
      get episodeDeliveredByEsAuthor;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsMedicineEpisodeViewModelItemsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodePsAuthor
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodePsAuthor,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodePsAuthorBuilder>,
        _i3.GepisodeMedicament_items_episodePsAuthor,
        _i5.GepisodePsAuteur {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodePsAuthor._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodePsAuthor(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodePsAuthorBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodePsAuthor;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodePsAuthorBuilder
              b) =>
      b..G__typename = 'EpisodePsAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get fullName;
  @override
  BuiltList<String> get profession;
  @override
  BuiltList<String> get specialities;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodePsAuthor>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsMedicineEpisodeViewModelItemsEpisodePsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodePsAuthor
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodePsAuthor?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodePsAuthor
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeDeliveredByPsAuthor
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeDeliveredByPsAuthor,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeDeliveredByPsAuthorBuilder>,
        _i3.GepisodeMedicament_items_episodeDeliveredByPsAuthor,
        _i5.GepisodePsAuteur {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeDeliveredByPsAuthor._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeDeliveredByPsAuthor(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeDeliveredByPsAuthorBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeDeliveredByPsAuthor;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeDeliveredByPsAuthorBuilder
              b) =>
      b..G__typename = 'EpisodePsAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get fullName;
  @override
  BuiltList<String> get profession;
  @override
  BuiltList<String> get specialities;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeDeliveredByPsAuthor>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsMedicineEpisodeViewModelItemsEpisodeDeliveredByPsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeDeliveredByPsAuthor
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeDeliveredByPsAuthor?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeDeliveredByPsAuthor
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeEsAuthor
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeEsAuthor,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeEsAuthorBuilder>,
        _i3.GepisodeMedicament_items_episodeEsAuthor,
        _i5.GepisodeEsAuteur {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeEsAuthor._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeEsAuthor(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeEsAuthorBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeEsAuthor;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeEsAuthorBuilder
              b) =>
      b..G__typename = 'EpisodeEsAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeEsAuthor>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsMedicineEpisodeViewModelItemsEpisodeEsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeEsAuthor
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeEsAuthor?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeEsAuthor
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeDeliveredByEsAuthor
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeDeliveredByEsAuthor,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeDeliveredByEsAuthorBuilder>,
        _i3.GepisodeMedicament_items_episodeDeliveredByEsAuthor,
        _i5.GepisodeEsAuteur {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeDeliveredByEsAuthor._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeDeliveredByEsAuthor(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeDeliveredByEsAuthorBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeDeliveredByEsAuthor;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeDeliveredByEsAuthorBuilder
              b) =>
      b..G__typename = 'EpisodeEsAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeDeliveredByEsAuthor>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsMedicineEpisodeViewModelItemsEpisodeDeliveredByEsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeDeliveredByEsAuthor
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeDeliveredByEsAuthor?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicineEpisodeViewModel_items_episodeDeliveredByEsAuthor
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModelBuilder>,
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes,
        _i3.GepisodeSoinDentaire {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModelBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModelBuilder
              b) =>
      b..G__typename = 'MedicalDentalCareEpisodeViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get date;
  @override
  _i4.GEpisodeCategory get category;
  @override
  BuiltList<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items>
      get items;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsMedicalDentalCareEpisodeViewModelSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_itemsBuilder>,
        _i3.GepisodeSoinDentaire_items {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_itemsBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_itemsBuilder
              b) =>
      b..G__typename = 'MedicalDentalCareEpisodeItemViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get name;
  @override
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items_episodePsAuthor?
      get episodePsAuthor;
  @override
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items_episodeEsAuthor?
      get episodeEsAuthor;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsMedicalDentalCareEpisodeViewModelItemsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items_episodePsAuthor
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items_episodePsAuthor,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items_episodePsAuthorBuilder>,
        _i3.GepisodeSoinDentaire_items_episodePsAuthor,
        _i5.GepisodePsAuteur {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items_episodePsAuthor._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items_episodePsAuthor(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items_episodePsAuthorBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items_episodePsAuthor;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items_episodePsAuthorBuilder
              b) =>
      b..G__typename = 'EpisodePsAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get fullName;
  @override
  BuiltList<String> get profession;
  @override
  BuiltList<String> get specialities;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items_episodePsAuthor>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsMedicalDentalCareEpisodeViewModelItemsEpisodePsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items_episodePsAuthor
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items_episodePsAuthor?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items_episodePsAuthor
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items_episodeEsAuthor
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items_episodeEsAuthor,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items_episodeEsAuthorBuilder>,
        _i3.GepisodeSoinDentaire_items_episodeEsAuthor,
        _i5.GepisodeEsAuteur {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items_episodeEsAuthor._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items_episodeEsAuthor(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items_episodeEsAuthorBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items_episodeEsAuthor;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items_episodeEsAuthorBuilder
              b) =>
      b..G__typename = 'EpisodeEsAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items_episodeEsAuthor>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsMedicalDentalCareEpisodeViewModelItemsEpisodeEsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items_episodeEsAuthor
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items_episodeEsAuthor?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDentalCareEpisodeViewModel_items_episodeEsAuthor
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asHospitalizationEpisodeViewModel
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asHospitalizationEpisodeViewModel,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asHospitalizationEpisodeViewModelBuilder>,
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes,
        _i3.GepisodeHospitalisation {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asHospitalizationEpisodeViewModel._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asHospitalizationEpisodeViewModel(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asHospitalizationEpisodeViewModelBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asHospitalizationEpisodeViewModel;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asHospitalizationEpisodeViewModelBuilder
              b) =>
      b..G__typename = 'HospitalizationEpisodeViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get date;
  @override
  _i4.GEpisodeCategory get category;
  @override
  String get admissionDate;
  @override
  String? get releaseDate;
  @override
  String get nature;
  @override
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asHospitalizationEpisodeViewModel_episodeEsAuthorHospitalization?
      get episodeEsAuthorHospitalization;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asHospitalizationEpisodeViewModel>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsHospitalizationEpisodeViewModelSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asHospitalizationEpisodeViewModel
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asHospitalizationEpisodeViewModel?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asHospitalizationEpisodeViewModel
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asHospitalizationEpisodeViewModel_episodeEsAuthorHospitalization
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asHospitalizationEpisodeViewModel_episodeEsAuthorHospitalization,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asHospitalizationEpisodeViewModel_episodeEsAuthorHospitalizationBuilder>,
        _i3.GepisodeHospitalisation_episodeEsAuthorHospitalization,
        _i5.GepisodeEsAuteur {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asHospitalizationEpisodeViewModel_episodeEsAuthorHospitalization._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asHospitalizationEpisodeViewModel_episodeEsAuthorHospitalization(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asHospitalizationEpisodeViewModel_episodeEsAuthorHospitalizationBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asHospitalizationEpisodeViewModel_episodeEsAuthorHospitalization;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asHospitalizationEpisodeViewModel_episodeEsAuthorHospitalizationBuilder
              b) =>
      b..G__typename = 'EpisodeEsAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asHospitalizationEpisodeViewModel_episodeEsAuthorHospitalization>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsHospitalizationEpisodeViewModelEpisodeEsAuthorHospitalizationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asHospitalizationEpisodeViewModel_episodeEsAuthorHospitalization
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asHospitalizationEpisodeViewModel_episodeEsAuthorHospitalization?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asHospitalizationEpisodeViewModel_episodeEsAuthorHospitalization
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModelBuilder>,
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes,
        _i3.GepisodeRadiologie {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModelBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModelBuilder
              b) =>
      b..G__typename = 'RadiologyEpisodeViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get date;
  @override
  _i4.GEpisodeCategory get category;
  @override
  BuiltList<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items>
      get items;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsRadiologyEpisodeViewModelSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_itemsBuilder>,
        _i3.GepisodeRadiologie_items {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_itemsBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_itemsBuilder
              b) =>
      b..G__typename = 'RadiologyEpisodeItemsViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get name;
  @override
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items_episodeEsAuthor?
      get episodeEsAuthor;
  @override
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items_episodePsAuthor?
      get episodePsAuthor;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsRadiologyEpisodeViewModelItemsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items_episodeEsAuthor
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items_episodeEsAuthor,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items_episodeEsAuthorBuilder>,
        _i3.GepisodeRadiologie_items_episodeEsAuthor,
        _i5.GepisodeEsAuteur {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items_episodeEsAuthor._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items_episodeEsAuthor(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items_episodeEsAuthorBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items_episodeEsAuthor;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items_episodeEsAuthorBuilder
              b) =>
      b..G__typename = 'EpisodeEsAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items_episodeEsAuthor>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsRadiologyEpisodeViewModelItemsEpisodeEsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items_episodeEsAuthor
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items_episodeEsAuthor?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items_episodeEsAuthor
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items_episodePsAuthor
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items_episodePsAuthor,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items_episodePsAuthorBuilder>,
        _i3.GepisodeRadiologie_items_episodePsAuthor,
        _i5.GepisodePsAuteur {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items_episodePsAuthor._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items_episodePsAuthor(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items_episodePsAuthorBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items_episodePsAuthor;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items_episodePsAuthorBuilder
              b) =>
      b..G__typename = 'EpisodePsAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get fullName;
  @override
  BuiltList<String> get profession;
  @override
  BuiltList<String> get specialities;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items_episodePsAuthor>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsRadiologyEpisodeViewModelItemsEpisodePsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items_episodePsAuthor
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items_episodePsAuthor?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asRadiologyEpisodeViewModel_items_episodePsAuthor
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModelBuilder>,
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes,
        _i3.GepisodeDispositifMedical {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModelBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModelBuilder
              b) =>
      b..G__typename = 'MedicalDeviceEpisodeViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get date;
  @override
  _i4.GEpisodeCategory get category;
  @override
  BuiltList<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items>
      get items;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsMedicalDeviceEpisodeViewModelSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_itemsBuilder>,
        _i3.GepisodeDispositifMedical_items {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_itemsBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_itemsBuilder
              b) =>
      b..G__typename = 'MedicalDeviceEpisodeItemsViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get deliveryDate;
  @override
  String get name;
  @override
  double get quantityDelivered;
  @override
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodePsAuthor?
      get episodePsAuthor;
  @override
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodeEsAuthor?
      get episodeEsAuthor;
  @override
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodeDeliveredByEsAuthor?
      get episodeDeliveredByEsAuthor;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsMedicalDeviceEpisodeViewModelItemsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodePsAuthor
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodePsAuthor,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodePsAuthorBuilder>,
        _i3.GepisodeDispositifMedical_items_episodePsAuthor,
        _i5.GepisodePsAuteur {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodePsAuthor._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodePsAuthor(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodePsAuthorBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodePsAuthor;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodePsAuthorBuilder
              b) =>
      b..G__typename = 'EpisodePsAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get fullName;
  @override
  BuiltList<String> get profession;
  @override
  BuiltList<String> get specialities;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodePsAuthor>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsMedicalDeviceEpisodeViewModelItemsEpisodePsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodePsAuthor
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodePsAuthor?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodePsAuthor
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodeEsAuthor
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodeEsAuthor,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodeEsAuthorBuilder>,
        _i3.GepisodeDispositifMedical_items_episodeEsAuthor,
        _i5.GepisodeEsAuteur {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodeEsAuthor._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodeEsAuthor(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodeEsAuthorBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodeEsAuthor;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodeEsAuthorBuilder
              b) =>
      b..G__typename = 'EpisodeEsAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodeEsAuthor>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsMedicalDeviceEpisodeViewModelItemsEpisodeEsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodeEsAuthor
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodeEsAuthor?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodeEsAuthor
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodeDeliveredByEsAuthor
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodeDeliveredByEsAuthor,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodeDeliveredByEsAuthorBuilder>,
        _i3.GepisodeDispositifMedical_items_episodeDeliveredByEsAuthor,
        _i5.GepisodeEsAuteur {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodeDeliveredByEsAuthor._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodeDeliveredByEsAuthor(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodeDeliveredByEsAuthorBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodeDeliveredByEsAuthor;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodeDeliveredByEsAuthorBuilder
              b) =>
      b..G__typename = 'EpisodeEsAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodeDeliveredByEsAuthor>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsMedicalDeviceEpisodeViewModelItemsEpisodeDeliveredByEsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodeDeliveredByEsAuthor
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodeDeliveredByEsAuthor?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asMedicalDeviceEpisodeViewModel_items_episodeDeliveredByEsAuthor
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModelBuilder>,
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes,
        _i3.GepisodeVaccin {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModelBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModelBuilder
              b) =>
      b..G__typename = 'VaccineEpisodeViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get date;
  @override
  _i4.GEpisodeCategory get category;
  @override
  BuiltList<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items>
      get items;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsVaccineEpisodeViewModelSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_itemsBuilder>,
        _i3.GepisodeVaccin_items {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_itemsBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_itemsBuilder
              b) =>
      b..G__typename = 'VaccineEpisodeItemsViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get name;
  @override
  String? get vaccineValencia;
  @override
  double? get typeCodage;
  @override
  String? get codeCIP;
  @override
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodePsAuthor?
      get episodePsAuthor;
  @override
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeDeliveredByPsAuthor?
      get episodeDeliveredByPsAuthor;
  @override
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeEsAuthor?
      get episodeEsAuthor;
  @override
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeDeliveredByEsAuthor?
      get episodeDeliveredByEsAuthor;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsVaccineEpisodeViewModelItemsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodePsAuthor
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodePsAuthor,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodePsAuthorBuilder>,
        _i3.GepisodeVaccin_items_episodePsAuthor,
        _i5.GepisodePsAuteur {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodePsAuthor._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodePsAuthor(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodePsAuthorBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodePsAuthor;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodePsAuthorBuilder
              b) =>
      b..G__typename = 'EpisodePsAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get fullName;
  @override
  BuiltList<String> get profession;
  @override
  BuiltList<String> get specialities;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodePsAuthor>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsVaccineEpisodeViewModelItemsEpisodePsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodePsAuthor
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodePsAuthor?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodePsAuthor
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeDeliveredByPsAuthor
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeDeliveredByPsAuthor,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeDeliveredByPsAuthorBuilder>,
        _i3.GepisodeVaccin_items_episodeDeliveredByPsAuthor,
        _i5.GepisodePsAuteur {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeDeliveredByPsAuthor._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeDeliveredByPsAuthor(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeDeliveredByPsAuthorBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeDeliveredByPsAuthor;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeDeliveredByPsAuthorBuilder
              b) =>
      b..G__typename = 'EpisodePsAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get fullName;
  @override
  BuiltList<String> get profession;
  @override
  BuiltList<String> get specialities;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeDeliveredByPsAuthor>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsVaccineEpisodeViewModelItemsEpisodeDeliveredByPsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeDeliveredByPsAuthor
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeDeliveredByPsAuthor?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeDeliveredByPsAuthor
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeEsAuthor
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeEsAuthor,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeEsAuthorBuilder>,
        _i3.GepisodeVaccin_items_episodeEsAuthor,
        _i5.GepisodeEsAuteur {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeEsAuthor._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeEsAuthor(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeEsAuthorBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeEsAuthor;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeEsAuthorBuilder
              b) =>
      b..G__typename = 'EpisodeEsAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeEsAuthor>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsVaccineEpisodeViewModelItemsEpisodeEsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeEsAuthor
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeEsAuthor?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeEsAuthor
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeDeliveredByEsAuthor
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeDeliveredByEsAuthor,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeDeliveredByEsAuthorBuilder>,
        _i3.GepisodeVaccin_items_episodeDeliveredByEsAuthor,
        _i5.GepisodeEsAuteur {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeDeliveredByEsAuthor._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeDeliveredByEsAuthor(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeDeliveredByEsAuthorBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeDeliveredByEsAuthor;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeDeliveredByEsAuthorBuilder
              b) =>
      b..G__typename = 'EpisodeEsAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeDeliveredByEsAuthor>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsVaccineEpisodeViewModelItemsEpisodeDeliveredByEsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeDeliveredByEsAuthor
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeDeliveredByEsAuthor?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asVaccineEpisodeViewModel_items_episodeDeliveredByEsAuthor
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asCvaVaccineEpisodeViewModel
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asCvaVaccineEpisodeViewModel,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asCvaVaccineEpisodeViewModelBuilder>,
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes,
        _i3.GepisodeVaccination {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asCvaVaccineEpisodeViewModel._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asCvaVaccineEpisodeViewModel(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asCvaVaccineEpisodeViewModelBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asCvaVaccineEpisodeViewModel;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asCvaVaccineEpisodeViewModelBuilder
              b) =>
      b..G__typename = 'CvaVaccineEpisodeViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get date;
  @override
  _i4.GEpisodeCategory get category;
  @override
  String get id;
  @override
  String get name;
  @override
  String get pathologies;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asCvaVaccineEpisodeViewModel>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsCvaVaccineEpisodeViewModelSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asCvaVaccineEpisodeViewModel
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asCvaVaccineEpisodeViewModel?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asCvaVaccineEpisodeViewModel
                .serializer,
            json,
          );
}

abstract class Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asDiseaseEpisodeViewModel
    implements
        Built<
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asDiseaseEpisodeViewModel,
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asDiseaseEpisodeViewModelBuilder>,
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes,
        _i3.GepisodeMaladie {
  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asDiseaseEpisodeViewModel._();

  factory Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asDiseaseEpisodeViewModel(
          [void Function(
                  Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asDiseaseEpisodeViewModelBuilder
                      b)
              updates]) =
      _$Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asDiseaseEpisodeViewModel;

  static void _initializeBuilder(
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asDiseaseEpisodeViewModelBuilder
              b) =>
      b..G__typename = 'DiseaseEpisodeViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get date;
  @override
  _i4.GEpisodeCategory get category;
  @override
  String get startDate;
  @override
  String get name;
  @override
  _i4.GDiseaseEpisodeType get eventType;
  @override
  String? get comment;
  @override
  String? get endDate;
  @override
  String get diseaseId;
  @override
  bool get hasOnlyYearInStartDate;
  @override
  bool get hasOnlyMonthAndYearInStartDate;
  @override
  bool get hasOnlyYearInEndDate;
  @override
  bool get hasOnlyMonthAndYearInEndDate;
  static Serializer<
          Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asDiseaseEpisodeViewModel>
      get serializer =>
          _$ggetHistoireDeSanteEpisodesDataDailyEpisodesEpisodesAsDiseaseEpisodeViewModelSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asDiseaseEpisodeViewModel
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asDiseaseEpisodeViewModel?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_histoire_de_sante_episodesData_dailyEpisodes_episodes__asDiseaseEpisodeViewModel
                .serializer,
            json,
          );
}
