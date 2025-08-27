// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_acteur_sante_auteur.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i3;

part 'ens_histoire_sante.fragment.data.gql.g.dart';

abstract class GepisodeBiologie {
  String get G__typename;
  String get date;
  _i1.GEpisodeCategory get category;
  BuiltList<GepisodeBiologie_items> get items;
  Map<String, dynamic> toJson();
}

abstract class GepisodeBiologie_items {
  String get G__typename;
  String get name;
  GepisodeBiologie_items_episodeEsAuthor? get episodeEsAuthor;
  GepisodeBiologie_items_episodePsAuthor? get episodePsAuthor;
  Map<String, dynamic> toJson();
}

abstract class GepisodeBiologie_items_episodeEsAuthor
    implements _i2.GepisodeEsAuteur {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  Map<String, dynamic> toJson();
}

abstract class GepisodeBiologie_items_episodePsAuthor
    implements _i2.GepisodePsAuteur {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get fullName;
  @override
  BuiltList<String> get profession;
  @override
  BuiltList<String> get specialities;
  @override
  Map<String, dynamic> toJson();
}

abstract class GepisodeBiologieData
    implements
        Built<GepisodeBiologieData, GepisodeBiologieDataBuilder>,
        GepisodeBiologie {
  GepisodeBiologieData._();

  factory GepisodeBiologieData(
          [void Function(GepisodeBiologieDataBuilder b) updates]) =
      _$GepisodeBiologieData;

  static void _initializeBuilder(GepisodeBiologieDataBuilder b) =>
      b..G__typename = 'BiologyEpisodeViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get date;
  @override
  _i1.GEpisodeCategory get category;
  @override
  BuiltList<GepisodeBiologieData_items> get items;
  static Serializer<GepisodeBiologieData> get serializer =>
      _$gepisodeBiologieDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeBiologieData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeBiologieData? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeBiologieData.serializer,
        json,
      );
}

abstract class GepisodeBiologieData_items
    implements
        Built<GepisodeBiologieData_items, GepisodeBiologieData_itemsBuilder>,
        GepisodeBiologie_items {
  GepisodeBiologieData_items._();

  factory GepisodeBiologieData_items(
          [void Function(GepisodeBiologieData_itemsBuilder b) updates]) =
      _$GepisodeBiologieData_items;

  static void _initializeBuilder(GepisodeBiologieData_itemsBuilder b) =>
      b..G__typename = 'BiologyEpisodeItemsViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get name;
  @override
  GepisodeBiologieData_items_episodeEsAuthor? get episodeEsAuthor;
  @override
  GepisodeBiologieData_items_episodePsAuthor? get episodePsAuthor;
  static Serializer<GepisodeBiologieData_items> get serializer =>
      _$gepisodeBiologieDataItemsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeBiologieData_items.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeBiologieData_items? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeBiologieData_items.serializer,
        json,
      );
}

abstract class GepisodeBiologieData_items_episodeEsAuthor
    implements
        Built<GepisodeBiologieData_items_episodeEsAuthor,
            GepisodeBiologieData_items_episodeEsAuthorBuilder>,
        GepisodeBiologie_items_episodeEsAuthor,
        _i2.GepisodeEsAuteur {
  GepisodeBiologieData_items_episodeEsAuthor._();

  factory GepisodeBiologieData_items_episodeEsAuthor(
      [void Function(GepisodeBiologieData_items_episodeEsAuthorBuilder b)
          updates]) = _$GepisodeBiologieData_items_episodeEsAuthor;

  static void _initializeBuilder(
          GepisodeBiologieData_items_episodeEsAuthorBuilder b) =>
      b..G__typename = 'EpisodeEsAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  static Serializer<GepisodeBiologieData_items_episodeEsAuthor>
      get serializer => _$gepisodeBiologieDataItemsEpisodeEsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeBiologieData_items_episodeEsAuthor.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeBiologieData_items_episodeEsAuthor? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeBiologieData_items_episodeEsAuthor.serializer,
        json,
      );
}

abstract class GepisodeBiologieData_items_episodePsAuthor
    implements
        Built<GepisodeBiologieData_items_episodePsAuthor,
            GepisodeBiologieData_items_episodePsAuthorBuilder>,
        GepisodeBiologie_items_episodePsAuthor,
        _i2.GepisodePsAuteur {
  GepisodeBiologieData_items_episodePsAuthor._();

  factory GepisodeBiologieData_items_episodePsAuthor(
      [void Function(GepisodeBiologieData_items_episodePsAuthorBuilder b)
          updates]) = _$GepisodeBiologieData_items_episodePsAuthor;

  static void _initializeBuilder(
          GepisodeBiologieData_items_episodePsAuthorBuilder b) =>
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
  static Serializer<GepisodeBiologieData_items_episodePsAuthor>
      get serializer => _$gepisodeBiologieDataItemsEpisodePsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeBiologieData_items_episodePsAuthor.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeBiologieData_items_episodePsAuthor? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeBiologieData_items_episodePsAuthor.serializer,
        json,
      );
}

abstract class GepisodeMedicament {
  String get G__typename;
  String get date;
  _i1.GEpisodeCategory get category;
  BuiltList<GepisodeMedicament_items> get items;
  Map<String, dynamic> toJson();
}

abstract class GepisodeMedicament_items {
  String get G__typename;
  String get deliveryDate;
  String get name;
  String? get therapeuticGroup;
  double get quantityDelivered;
  GepisodeMedicament_items_episodePsAuthor? get episodePsAuthor;
  GepisodeMedicament_items_episodeDeliveredByPsAuthor?
      get episodeDeliveredByPsAuthor;
  GepisodeMedicament_items_episodeEsAuthor? get episodeEsAuthor;
  GepisodeMedicament_items_episodeDeliveredByEsAuthor?
      get episodeDeliveredByEsAuthor;
  Map<String, dynamic> toJson();
}

abstract class GepisodeMedicament_items_episodePsAuthor
    implements _i2.GepisodePsAuteur {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get fullName;
  @override
  BuiltList<String> get profession;
  @override
  BuiltList<String> get specialities;
  @override
  Map<String, dynamic> toJson();
}

abstract class GepisodeMedicament_items_episodeDeliveredByPsAuthor
    implements _i2.GepisodePsAuteur {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get fullName;
  @override
  BuiltList<String> get profession;
  @override
  BuiltList<String> get specialities;
  @override
  Map<String, dynamic> toJson();
}

abstract class GepisodeMedicament_items_episodeEsAuthor
    implements _i2.GepisodeEsAuteur {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  Map<String, dynamic> toJson();
}

abstract class GepisodeMedicament_items_episodeDeliveredByEsAuthor
    implements _i2.GepisodeEsAuteur {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  Map<String, dynamic> toJson();
}

abstract class GepisodeMedicamentData
    implements
        Built<GepisodeMedicamentData, GepisodeMedicamentDataBuilder>,
        GepisodeMedicament {
  GepisodeMedicamentData._();

  factory GepisodeMedicamentData(
          [void Function(GepisodeMedicamentDataBuilder b) updates]) =
      _$GepisodeMedicamentData;

  static void _initializeBuilder(GepisodeMedicamentDataBuilder b) =>
      b..G__typename = 'MedicineEpisodeViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get date;
  @override
  _i1.GEpisodeCategory get category;
  @override
  BuiltList<GepisodeMedicamentData_items> get items;
  static Serializer<GepisodeMedicamentData> get serializer =>
      _$gepisodeMedicamentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeMedicamentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeMedicamentData? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeMedicamentData.serializer,
        json,
      );
}

abstract class GepisodeMedicamentData_items
    implements
        Built<GepisodeMedicamentData_items,
            GepisodeMedicamentData_itemsBuilder>,
        GepisodeMedicament_items {
  GepisodeMedicamentData_items._();

  factory GepisodeMedicamentData_items(
          [void Function(GepisodeMedicamentData_itemsBuilder b) updates]) =
      _$GepisodeMedicamentData_items;

  static void _initializeBuilder(GepisodeMedicamentData_itemsBuilder b) =>
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
  GepisodeMedicamentData_items_episodePsAuthor? get episodePsAuthor;
  @override
  GepisodeMedicamentData_items_episodeDeliveredByPsAuthor?
      get episodeDeliveredByPsAuthor;
  @override
  GepisodeMedicamentData_items_episodeEsAuthor? get episodeEsAuthor;
  @override
  GepisodeMedicamentData_items_episodeDeliveredByEsAuthor?
      get episodeDeliveredByEsAuthor;
  static Serializer<GepisodeMedicamentData_items> get serializer =>
      _$gepisodeMedicamentDataItemsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeMedicamentData_items.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeMedicamentData_items? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeMedicamentData_items.serializer,
        json,
      );
}

abstract class GepisodeMedicamentData_items_episodePsAuthor
    implements
        Built<GepisodeMedicamentData_items_episodePsAuthor,
            GepisodeMedicamentData_items_episodePsAuthorBuilder>,
        GepisodeMedicament_items_episodePsAuthor,
        _i2.GepisodePsAuteur {
  GepisodeMedicamentData_items_episodePsAuthor._();

  factory GepisodeMedicamentData_items_episodePsAuthor(
      [void Function(GepisodeMedicamentData_items_episodePsAuthorBuilder b)
          updates]) = _$GepisodeMedicamentData_items_episodePsAuthor;

  static void _initializeBuilder(
          GepisodeMedicamentData_items_episodePsAuthorBuilder b) =>
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
  static Serializer<GepisodeMedicamentData_items_episodePsAuthor>
      get serializer => _$gepisodeMedicamentDataItemsEpisodePsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeMedicamentData_items_episodePsAuthor.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeMedicamentData_items_episodePsAuthor? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeMedicamentData_items_episodePsAuthor.serializer,
        json,
      );
}

abstract class GepisodeMedicamentData_items_episodeDeliveredByPsAuthor
    implements
        Built<GepisodeMedicamentData_items_episodeDeliveredByPsAuthor,
            GepisodeMedicamentData_items_episodeDeliveredByPsAuthorBuilder>,
        GepisodeMedicament_items_episodeDeliveredByPsAuthor,
        _i2.GepisodePsAuteur {
  GepisodeMedicamentData_items_episodeDeliveredByPsAuthor._();

  factory GepisodeMedicamentData_items_episodeDeliveredByPsAuthor(
      [void Function(
              GepisodeMedicamentData_items_episodeDeliveredByPsAuthorBuilder b)
          updates]) = _$GepisodeMedicamentData_items_episodeDeliveredByPsAuthor;

  static void _initializeBuilder(
          GepisodeMedicamentData_items_episodeDeliveredByPsAuthorBuilder b) =>
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
  static Serializer<GepisodeMedicamentData_items_episodeDeliveredByPsAuthor>
      get serializer =>
          _$gepisodeMedicamentDataItemsEpisodeDeliveredByPsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeMedicamentData_items_episodeDeliveredByPsAuthor.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeMedicamentData_items_episodeDeliveredByPsAuthor? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeMedicamentData_items_episodeDeliveredByPsAuthor.serializer,
        json,
      );
}

abstract class GepisodeMedicamentData_items_episodeEsAuthor
    implements
        Built<GepisodeMedicamentData_items_episodeEsAuthor,
            GepisodeMedicamentData_items_episodeEsAuthorBuilder>,
        GepisodeMedicament_items_episodeEsAuthor,
        _i2.GepisodeEsAuteur {
  GepisodeMedicamentData_items_episodeEsAuthor._();

  factory GepisodeMedicamentData_items_episodeEsAuthor(
      [void Function(GepisodeMedicamentData_items_episodeEsAuthorBuilder b)
          updates]) = _$GepisodeMedicamentData_items_episodeEsAuthor;

  static void _initializeBuilder(
          GepisodeMedicamentData_items_episodeEsAuthorBuilder b) =>
      b..G__typename = 'EpisodeEsAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  static Serializer<GepisodeMedicamentData_items_episodeEsAuthor>
      get serializer => _$gepisodeMedicamentDataItemsEpisodeEsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeMedicamentData_items_episodeEsAuthor.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeMedicamentData_items_episodeEsAuthor? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeMedicamentData_items_episodeEsAuthor.serializer,
        json,
      );
}

abstract class GepisodeMedicamentData_items_episodeDeliveredByEsAuthor
    implements
        Built<GepisodeMedicamentData_items_episodeDeliveredByEsAuthor,
            GepisodeMedicamentData_items_episodeDeliveredByEsAuthorBuilder>,
        GepisodeMedicament_items_episodeDeliveredByEsAuthor,
        _i2.GepisodeEsAuteur {
  GepisodeMedicamentData_items_episodeDeliveredByEsAuthor._();

  factory GepisodeMedicamentData_items_episodeDeliveredByEsAuthor(
      [void Function(
              GepisodeMedicamentData_items_episodeDeliveredByEsAuthorBuilder b)
          updates]) = _$GepisodeMedicamentData_items_episodeDeliveredByEsAuthor;

  static void _initializeBuilder(
          GepisodeMedicamentData_items_episodeDeliveredByEsAuthorBuilder b) =>
      b..G__typename = 'EpisodeEsAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  static Serializer<GepisodeMedicamentData_items_episodeDeliveredByEsAuthor>
      get serializer =>
          _$gepisodeMedicamentDataItemsEpisodeDeliveredByEsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeMedicamentData_items_episodeDeliveredByEsAuthor.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeMedicamentData_items_episodeDeliveredByEsAuthor? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeMedicamentData_items_episodeDeliveredByEsAuthor.serializer,
        json,
      );
}

abstract class GepisodeSoinDentaire {
  String get G__typename;
  String get date;
  _i1.GEpisodeCategory get category;
  BuiltList<GepisodeSoinDentaire_items> get items;
  Map<String, dynamic> toJson();
}

abstract class GepisodeSoinDentaire_items {
  String get G__typename;
  String get name;
  GepisodeSoinDentaire_items_episodePsAuthor? get episodePsAuthor;
  GepisodeSoinDentaire_items_episodeEsAuthor? get episodeEsAuthor;
  Map<String, dynamic> toJson();
}

abstract class GepisodeSoinDentaire_items_episodePsAuthor
    implements _i2.GepisodePsAuteur {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get fullName;
  @override
  BuiltList<String> get profession;
  @override
  BuiltList<String> get specialities;
  @override
  Map<String, dynamic> toJson();
}

abstract class GepisodeSoinDentaire_items_episodeEsAuthor
    implements _i2.GepisodeEsAuteur {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  Map<String, dynamic> toJson();
}

abstract class GepisodeSoinDentaireData
    implements
        Built<GepisodeSoinDentaireData, GepisodeSoinDentaireDataBuilder>,
        GepisodeSoinDentaire {
  GepisodeSoinDentaireData._();

  factory GepisodeSoinDentaireData(
          [void Function(GepisodeSoinDentaireDataBuilder b) updates]) =
      _$GepisodeSoinDentaireData;

  static void _initializeBuilder(GepisodeSoinDentaireDataBuilder b) =>
      b..G__typename = 'MedicalDentalCareEpisodeViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get date;
  @override
  _i1.GEpisodeCategory get category;
  @override
  BuiltList<GepisodeSoinDentaireData_items> get items;
  static Serializer<GepisodeSoinDentaireData> get serializer =>
      _$gepisodeSoinDentaireDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeSoinDentaireData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeSoinDentaireData? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeSoinDentaireData.serializer,
        json,
      );
}

abstract class GepisodeSoinDentaireData_items
    implements
        Built<GepisodeSoinDentaireData_items,
            GepisodeSoinDentaireData_itemsBuilder>,
        GepisodeSoinDentaire_items {
  GepisodeSoinDentaireData_items._();

  factory GepisodeSoinDentaireData_items(
          [void Function(GepisodeSoinDentaireData_itemsBuilder b) updates]) =
      _$GepisodeSoinDentaireData_items;

  static void _initializeBuilder(GepisodeSoinDentaireData_itemsBuilder b) =>
      b..G__typename = 'MedicalDentalCareEpisodeItemViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get name;
  @override
  GepisodeSoinDentaireData_items_episodePsAuthor? get episodePsAuthor;
  @override
  GepisodeSoinDentaireData_items_episodeEsAuthor? get episodeEsAuthor;
  static Serializer<GepisodeSoinDentaireData_items> get serializer =>
      _$gepisodeSoinDentaireDataItemsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeSoinDentaireData_items.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeSoinDentaireData_items? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeSoinDentaireData_items.serializer,
        json,
      );
}

abstract class GepisodeSoinDentaireData_items_episodePsAuthor
    implements
        Built<GepisodeSoinDentaireData_items_episodePsAuthor,
            GepisodeSoinDentaireData_items_episodePsAuthorBuilder>,
        GepisodeSoinDentaire_items_episodePsAuthor,
        _i2.GepisodePsAuteur {
  GepisodeSoinDentaireData_items_episodePsAuthor._();

  factory GepisodeSoinDentaireData_items_episodePsAuthor(
      [void Function(GepisodeSoinDentaireData_items_episodePsAuthorBuilder b)
          updates]) = _$GepisodeSoinDentaireData_items_episodePsAuthor;

  static void _initializeBuilder(
          GepisodeSoinDentaireData_items_episodePsAuthorBuilder b) =>
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
  static Serializer<GepisodeSoinDentaireData_items_episodePsAuthor>
      get serializer =>
          _$gepisodeSoinDentaireDataItemsEpisodePsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeSoinDentaireData_items_episodePsAuthor.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeSoinDentaireData_items_episodePsAuthor? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeSoinDentaireData_items_episodePsAuthor.serializer,
        json,
      );
}

abstract class GepisodeSoinDentaireData_items_episodeEsAuthor
    implements
        Built<GepisodeSoinDentaireData_items_episodeEsAuthor,
            GepisodeSoinDentaireData_items_episodeEsAuthorBuilder>,
        GepisodeSoinDentaire_items_episodeEsAuthor,
        _i2.GepisodeEsAuteur {
  GepisodeSoinDentaireData_items_episodeEsAuthor._();

  factory GepisodeSoinDentaireData_items_episodeEsAuthor(
      [void Function(GepisodeSoinDentaireData_items_episodeEsAuthorBuilder b)
          updates]) = _$GepisodeSoinDentaireData_items_episodeEsAuthor;

  static void _initializeBuilder(
          GepisodeSoinDentaireData_items_episodeEsAuthorBuilder b) =>
      b..G__typename = 'EpisodeEsAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  static Serializer<GepisodeSoinDentaireData_items_episodeEsAuthor>
      get serializer =>
          _$gepisodeSoinDentaireDataItemsEpisodeEsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeSoinDentaireData_items_episodeEsAuthor.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeSoinDentaireData_items_episodeEsAuthor? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeSoinDentaireData_items_episodeEsAuthor.serializer,
        json,
      );
}

abstract class GepisodeHospitalisation {
  String get G__typename;
  String get date;
  _i1.GEpisodeCategory get category;
  String get admissionDate;
  String? get releaseDate;
  String get nature;
  GepisodeHospitalisation_episodeEsAuthorHospitalization?
      get episodeEsAuthorHospitalization;
  Map<String, dynamic> toJson();
}

abstract class GepisodeHospitalisation_episodeEsAuthorHospitalization
    implements _i2.GepisodeEsAuteur {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  Map<String, dynamic> toJson();
}

abstract class GepisodeHospitalisationData
    implements
        Built<GepisodeHospitalisationData, GepisodeHospitalisationDataBuilder>,
        GepisodeHospitalisation {
  GepisodeHospitalisationData._();

  factory GepisodeHospitalisationData(
          [void Function(GepisodeHospitalisationDataBuilder b) updates]) =
      _$GepisodeHospitalisationData;

  static void _initializeBuilder(GepisodeHospitalisationDataBuilder b) =>
      b..G__typename = 'HospitalizationEpisodeViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get date;
  @override
  _i1.GEpisodeCategory get category;
  @override
  String get admissionDate;
  @override
  String? get releaseDate;
  @override
  String get nature;
  @override
  GepisodeHospitalisationData_episodeEsAuthorHospitalization?
      get episodeEsAuthorHospitalization;
  static Serializer<GepisodeHospitalisationData> get serializer =>
      _$gepisodeHospitalisationDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeHospitalisationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeHospitalisationData? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeHospitalisationData.serializer,
        json,
      );
}

abstract class GepisodeHospitalisationData_episodeEsAuthorHospitalization
    implements
        Built<GepisodeHospitalisationData_episodeEsAuthorHospitalization,
            GepisodeHospitalisationData_episodeEsAuthorHospitalizationBuilder>,
        GepisodeHospitalisation_episodeEsAuthorHospitalization,
        _i2.GepisodeEsAuteur {
  GepisodeHospitalisationData_episodeEsAuthorHospitalization._();

  factory GepisodeHospitalisationData_episodeEsAuthorHospitalization(
      [void Function(
              GepisodeHospitalisationData_episodeEsAuthorHospitalizationBuilder
                  b)
          updates]) = _$GepisodeHospitalisationData_episodeEsAuthorHospitalization;

  static void _initializeBuilder(
          GepisodeHospitalisationData_episodeEsAuthorHospitalizationBuilder
              b) =>
      b..G__typename = 'EpisodeEsAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  static Serializer<GepisodeHospitalisationData_episodeEsAuthorHospitalization>
      get serializer =>
          _$gepisodeHospitalisationDataEpisodeEsAuthorHospitalizationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeHospitalisationData_episodeEsAuthorHospitalization.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeHospitalisationData_episodeEsAuthorHospitalization? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeHospitalisationData_episodeEsAuthorHospitalization.serializer,
        json,
      );
}

abstract class GepisodeRadiologie {
  String get G__typename;
  String get date;
  _i1.GEpisodeCategory get category;
  BuiltList<GepisodeRadiologie_items> get items;
  Map<String, dynamic> toJson();
}

abstract class GepisodeRadiologie_items {
  String get G__typename;
  String get name;
  GepisodeRadiologie_items_episodeEsAuthor? get episodeEsAuthor;
  GepisodeRadiologie_items_episodePsAuthor? get episodePsAuthor;
  Map<String, dynamic> toJson();
}

abstract class GepisodeRadiologie_items_episodeEsAuthor
    implements _i2.GepisodeEsAuteur {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  Map<String, dynamic> toJson();
}

abstract class GepisodeRadiologie_items_episodePsAuthor
    implements _i2.GepisodePsAuteur {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get fullName;
  @override
  BuiltList<String> get profession;
  @override
  BuiltList<String> get specialities;
  @override
  Map<String, dynamic> toJson();
}

abstract class GepisodeRadiologieData
    implements
        Built<GepisodeRadiologieData, GepisodeRadiologieDataBuilder>,
        GepisodeRadiologie {
  GepisodeRadiologieData._();

  factory GepisodeRadiologieData(
          [void Function(GepisodeRadiologieDataBuilder b) updates]) =
      _$GepisodeRadiologieData;

  static void _initializeBuilder(GepisodeRadiologieDataBuilder b) =>
      b..G__typename = 'RadiologyEpisodeViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get date;
  @override
  _i1.GEpisodeCategory get category;
  @override
  BuiltList<GepisodeRadiologieData_items> get items;
  static Serializer<GepisodeRadiologieData> get serializer =>
      _$gepisodeRadiologieDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeRadiologieData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeRadiologieData? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeRadiologieData.serializer,
        json,
      );
}

abstract class GepisodeRadiologieData_items
    implements
        Built<GepisodeRadiologieData_items,
            GepisodeRadiologieData_itemsBuilder>,
        GepisodeRadiologie_items {
  GepisodeRadiologieData_items._();

  factory GepisodeRadiologieData_items(
          [void Function(GepisodeRadiologieData_itemsBuilder b) updates]) =
      _$GepisodeRadiologieData_items;

  static void _initializeBuilder(GepisodeRadiologieData_itemsBuilder b) =>
      b..G__typename = 'RadiologyEpisodeItemsViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get name;
  @override
  GepisodeRadiologieData_items_episodeEsAuthor? get episodeEsAuthor;
  @override
  GepisodeRadiologieData_items_episodePsAuthor? get episodePsAuthor;
  static Serializer<GepisodeRadiologieData_items> get serializer =>
      _$gepisodeRadiologieDataItemsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeRadiologieData_items.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeRadiologieData_items? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeRadiologieData_items.serializer,
        json,
      );
}

abstract class GepisodeRadiologieData_items_episodeEsAuthor
    implements
        Built<GepisodeRadiologieData_items_episodeEsAuthor,
            GepisodeRadiologieData_items_episodeEsAuthorBuilder>,
        GepisodeRadiologie_items_episodeEsAuthor,
        _i2.GepisodeEsAuteur {
  GepisodeRadiologieData_items_episodeEsAuthor._();

  factory GepisodeRadiologieData_items_episodeEsAuthor(
      [void Function(GepisodeRadiologieData_items_episodeEsAuthorBuilder b)
          updates]) = _$GepisodeRadiologieData_items_episodeEsAuthor;

  static void _initializeBuilder(
          GepisodeRadiologieData_items_episodeEsAuthorBuilder b) =>
      b..G__typename = 'EpisodeEsAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  static Serializer<GepisodeRadiologieData_items_episodeEsAuthor>
      get serializer => _$gepisodeRadiologieDataItemsEpisodeEsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeRadiologieData_items_episodeEsAuthor.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeRadiologieData_items_episodeEsAuthor? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeRadiologieData_items_episodeEsAuthor.serializer,
        json,
      );
}

abstract class GepisodeRadiologieData_items_episodePsAuthor
    implements
        Built<GepisodeRadiologieData_items_episodePsAuthor,
            GepisodeRadiologieData_items_episodePsAuthorBuilder>,
        GepisodeRadiologie_items_episodePsAuthor,
        _i2.GepisodePsAuteur {
  GepisodeRadiologieData_items_episodePsAuthor._();

  factory GepisodeRadiologieData_items_episodePsAuthor(
      [void Function(GepisodeRadiologieData_items_episodePsAuthorBuilder b)
          updates]) = _$GepisodeRadiologieData_items_episodePsAuthor;

  static void _initializeBuilder(
          GepisodeRadiologieData_items_episodePsAuthorBuilder b) =>
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
  static Serializer<GepisodeRadiologieData_items_episodePsAuthor>
      get serializer => _$gepisodeRadiologieDataItemsEpisodePsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeRadiologieData_items_episodePsAuthor.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeRadiologieData_items_episodePsAuthor? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeRadiologieData_items_episodePsAuthor.serializer,
        json,
      );
}

abstract class GepisodeDispositifMedical {
  String get G__typename;
  String get date;
  _i1.GEpisodeCategory get category;
  BuiltList<GepisodeDispositifMedical_items> get items;
  Map<String, dynamic> toJson();
}

abstract class GepisodeDispositifMedical_items {
  String get G__typename;
  String get deliveryDate;
  String get name;
  double get quantityDelivered;
  GepisodeDispositifMedical_items_episodePsAuthor? get episodePsAuthor;
  GepisodeDispositifMedical_items_episodeEsAuthor? get episodeEsAuthor;
  GepisodeDispositifMedical_items_episodeDeliveredByEsAuthor?
      get episodeDeliveredByEsAuthor;
  Map<String, dynamic> toJson();
}

abstract class GepisodeDispositifMedical_items_episodePsAuthor
    implements _i2.GepisodePsAuteur {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get fullName;
  @override
  BuiltList<String> get profession;
  @override
  BuiltList<String> get specialities;
  @override
  Map<String, dynamic> toJson();
}

abstract class GepisodeDispositifMedical_items_episodeEsAuthor
    implements _i2.GepisodeEsAuteur {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  Map<String, dynamic> toJson();
}

abstract class GepisodeDispositifMedical_items_episodeDeliveredByEsAuthor
    implements _i2.GepisodeEsAuteur {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  Map<String, dynamic> toJson();
}

abstract class GepisodeDispositifMedicalData
    implements
        Built<GepisodeDispositifMedicalData,
            GepisodeDispositifMedicalDataBuilder>,
        GepisodeDispositifMedical {
  GepisodeDispositifMedicalData._();

  factory GepisodeDispositifMedicalData(
          [void Function(GepisodeDispositifMedicalDataBuilder b) updates]) =
      _$GepisodeDispositifMedicalData;

  static void _initializeBuilder(GepisodeDispositifMedicalDataBuilder b) =>
      b..G__typename = 'MedicalDeviceEpisodeViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get date;
  @override
  _i1.GEpisodeCategory get category;
  @override
  BuiltList<GepisodeDispositifMedicalData_items> get items;
  static Serializer<GepisodeDispositifMedicalData> get serializer =>
      _$gepisodeDispositifMedicalDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeDispositifMedicalData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeDispositifMedicalData? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeDispositifMedicalData.serializer,
        json,
      );
}

abstract class GepisodeDispositifMedicalData_items
    implements
        Built<GepisodeDispositifMedicalData_items,
            GepisodeDispositifMedicalData_itemsBuilder>,
        GepisodeDispositifMedical_items {
  GepisodeDispositifMedicalData_items._();

  factory GepisodeDispositifMedicalData_items(
      [void Function(GepisodeDispositifMedicalData_itemsBuilder b)
          updates]) = _$GepisodeDispositifMedicalData_items;

  static void _initializeBuilder(
          GepisodeDispositifMedicalData_itemsBuilder b) =>
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
  GepisodeDispositifMedicalData_items_episodePsAuthor? get episodePsAuthor;
  @override
  GepisodeDispositifMedicalData_items_episodeEsAuthor? get episodeEsAuthor;
  @override
  GepisodeDispositifMedicalData_items_episodeDeliveredByEsAuthor?
      get episodeDeliveredByEsAuthor;
  static Serializer<GepisodeDispositifMedicalData_items> get serializer =>
      _$gepisodeDispositifMedicalDataItemsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeDispositifMedicalData_items.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeDispositifMedicalData_items? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeDispositifMedicalData_items.serializer,
        json,
      );
}

abstract class GepisodeDispositifMedicalData_items_episodePsAuthor
    implements
        Built<GepisodeDispositifMedicalData_items_episodePsAuthor,
            GepisodeDispositifMedicalData_items_episodePsAuthorBuilder>,
        GepisodeDispositifMedical_items_episodePsAuthor,
        _i2.GepisodePsAuteur {
  GepisodeDispositifMedicalData_items_episodePsAuthor._();

  factory GepisodeDispositifMedicalData_items_episodePsAuthor(
      [void Function(
              GepisodeDispositifMedicalData_items_episodePsAuthorBuilder b)
          updates]) = _$GepisodeDispositifMedicalData_items_episodePsAuthor;

  static void _initializeBuilder(
          GepisodeDispositifMedicalData_items_episodePsAuthorBuilder b) =>
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
  static Serializer<GepisodeDispositifMedicalData_items_episodePsAuthor>
      get serializer =>
          _$gepisodeDispositifMedicalDataItemsEpisodePsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeDispositifMedicalData_items_episodePsAuthor.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeDispositifMedicalData_items_episodePsAuthor? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeDispositifMedicalData_items_episodePsAuthor.serializer,
        json,
      );
}

abstract class GepisodeDispositifMedicalData_items_episodeEsAuthor
    implements
        Built<GepisodeDispositifMedicalData_items_episodeEsAuthor,
            GepisodeDispositifMedicalData_items_episodeEsAuthorBuilder>,
        GepisodeDispositifMedical_items_episodeEsAuthor,
        _i2.GepisodeEsAuteur {
  GepisodeDispositifMedicalData_items_episodeEsAuthor._();

  factory GepisodeDispositifMedicalData_items_episodeEsAuthor(
      [void Function(
              GepisodeDispositifMedicalData_items_episodeEsAuthorBuilder b)
          updates]) = _$GepisodeDispositifMedicalData_items_episodeEsAuthor;

  static void _initializeBuilder(
          GepisodeDispositifMedicalData_items_episodeEsAuthorBuilder b) =>
      b..G__typename = 'EpisodeEsAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  static Serializer<GepisodeDispositifMedicalData_items_episodeEsAuthor>
      get serializer =>
          _$gepisodeDispositifMedicalDataItemsEpisodeEsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeDispositifMedicalData_items_episodeEsAuthor.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeDispositifMedicalData_items_episodeEsAuthor? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeDispositifMedicalData_items_episodeEsAuthor.serializer,
        json,
      );
}

abstract class GepisodeDispositifMedicalData_items_episodeDeliveredByEsAuthor
    implements
        Built<GepisodeDispositifMedicalData_items_episodeDeliveredByEsAuthor,
            GepisodeDispositifMedicalData_items_episodeDeliveredByEsAuthorBuilder>,
        GepisodeDispositifMedical_items_episodeDeliveredByEsAuthor,
        _i2.GepisodeEsAuteur {
  GepisodeDispositifMedicalData_items_episodeDeliveredByEsAuthor._();

  factory GepisodeDispositifMedicalData_items_episodeDeliveredByEsAuthor(
          [void Function(
                  GepisodeDispositifMedicalData_items_episodeDeliveredByEsAuthorBuilder
                      b)
              updates]) =
      _$GepisodeDispositifMedicalData_items_episodeDeliveredByEsAuthor;

  static void _initializeBuilder(
          GepisodeDispositifMedicalData_items_episodeDeliveredByEsAuthorBuilder
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
          GepisodeDispositifMedicalData_items_episodeDeliveredByEsAuthor>
      get serializer =>
          _$gepisodeDispositifMedicalDataItemsEpisodeDeliveredByEsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeDispositifMedicalData_items_episodeDeliveredByEsAuthor
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeDispositifMedicalData_items_episodeDeliveredByEsAuthor?
      fromJson(Map<String, dynamic> json) => _i3.serializers.deserializeWith(
            GepisodeDispositifMedicalData_items_episodeDeliveredByEsAuthor
                .serializer,
            json,
          );
}

abstract class GepisodeVaccin {
  String get G__typename;
  String get date;
  _i1.GEpisodeCategory get category;
  BuiltList<GepisodeVaccin_items> get items;
  Map<String, dynamic> toJson();
}

abstract class GepisodeVaccin_items {
  String get G__typename;
  String get name;
  String? get vaccineValencia;
  double? get typeCodage;
  String? get codeCIP;
  GepisodeVaccin_items_episodePsAuthor? get episodePsAuthor;
  GepisodeVaccin_items_episodeDeliveredByPsAuthor?
      get episodeDeliveredByPsAuthor;
  GepisodeVaccin_items_episodeEsAuthor? get episodeEsAuthor;
  GepisodeVaccin_items_episodeDeliveredByEsAuthor?
      get episodeDeliveredByEsAuthor;
  Map<String, dynamic> toJson();
}

abstract class GepisodeVaccin_items_episodePsAuthor
    implements _i2.GepisodePsAuteur {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get fullName;
  @override
  BuiltList<String> get profession;
  @override
  BuiltList<String> get specialities;
  @override
  Map<String, dynamic> toJson();
}

abstract class GepisodeVaccin_items_episodeDeliveredByPsAuthor
    implements _i2.GepisodePsAuteur {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get fullName;
  @override
  BuiltList<String> get profession;
  @override
  BuiltList<String> get specialities;
  @override
  Map<String, dynamic> toJson();
}

abstract class GepisodeVaccin_items_episodeEsAuthor
    implements _i2.GepisodeEsAuteur {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  Map<String, dynamic> toJson();
}

abstract class GepisodeVaccin_items_episodeDeliveredByEsAuthor
    implements _i2.GepisodeEsAuteur {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  Map<String, dynamic> toJson();
}

abstract class GepisodeVaccinData
    implements
        Built<GepisodeVaccinData, GepisodeVaccinDataBuilder>,
        GepisodeVaccin {
  GepisodeVaccinData._();

  factory GepisodeVaccinData(
          [void Function(GepisodeVaccinDataBuilder b) updates]) =
      _$GepisodeVaccinData;

  static void _initializeBuilder(GepisodeVaccinDataBuilder b) =>
      b..G__typename = 'VaccineEpisodeViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get date;
  @override
  _i1.GEpisodeCategory get category;
  @override
  BuiltList<GepisodeVaccinData_items> get items;
  static Serializer<GepisodeVaccinData> get serializer =>
      _$gepisodeVaccinDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeVaccinData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeVaccinData? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeVaccinData.serializer,
        json,
      );
}

abstract class GepisodeVaccinData_items
    implements
        Built<GepisodeVaccinData_items, GepisodeVaccinData_itemsBuilder>,
        GepisodeVaccin_items {
  GepisodeVaccinData_items._();

  factory GepisodeVaccinData_items(
          [void Function(GepisodeVaccinData_itemsBuilder b) updates]) =
      _$GepisodeVaccinData_items;

  static void _initializeBuilder(GepisodeVaccinData_itemsBuilder b) =>
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
  GepisodeVaccinData_items_episodePsAuthor? get episodePsAuthor;
  @override
  GepisodeVaccinData_items_episodeDeliveredByPsAuthor?
      get episodeDeliveredByPsAuthor;
  @override
  GepisodeVaccinData_items_episodeEsAuthor? get episodeEsAuthor;
  @override
  GepisodeVaccinData_items_episodeDeliveredByEsAuthor?
      get episodeDeliveredByEsAuthor;
  static Serializer<GepisodeVaccinData_items> get serializer =>
      _$gepisodeVaccinDataItemsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeVaccinData_items.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeVaccinData_items? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeVaccinData_items.serializer,
        json,
      );
}

abstract class GepisodeVaccinData_items_episodePsAuthor
    implements
        Built<GepisodeVaccinData_items_episodePsAuthor,
            GepisodeVaccinData_items_episodePsAuthorBuilder>,
        GepisodeVaccin_items_episodePsAuthor,
        _i2.GepisodePsAuteur {
  GepisodeVaccinData_items_episodePsAuthor._();

  factory GepisodeVaccinData_items_episodePsAuthor(
      [void Function(GepisodeVaccinData_items_episodePsAuthorBuilder b)
          updates]) = _$GepisodeVaccinData_items_episodePsAuthor;

  static void _initializeBuilder(
          GepisodeVaccinData_items_episodePsAuthorBuilder b) =>
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
  static Serializer<GepisodeVaccinData_items_episodePsAuthor> get serializer =>
      _$gepisodeVaccinDataItemsEpisodePsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeVaccinData_items_episodePsAuthor.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeVaccinData_items_episodePsAuthor? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeVaccinData_items_episodePsAuthor.serializer,
        json,
      );
}

abstract class GepisodeVaccinData_items_episodeDeliveredByPsAuthor
    implements
        Built<GepisodeVaccinData_items_episodeDeliveredByPsAuthor,
            GepisodeVaccinData_items_episodeDeliveredByPsAuthorBuilder>,
        GepisodeVaccin_items_episodeDeliveredByPsAuthor,
        _i2.GepisodePsAuteur {
  GepisodeVaccinData_items_episodeDeliveredByPsAuthor._();

  factory GepisodeVaccinData_items_episodeDeliveredByPsAuthor(
      [void Function(
              GepisodeVaccinData_items_episodeDeliveredByPsAuthorBuilder b)
          updates]) = _$GepisodeVaccinData_items_episodeDeliveredByPsAuthor;

  static void _initializeBuilder(
          GepisodeVaccinData_items_episodeDeliveredByPsAuthorBuilder b) =>
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
  static Serializer<GepisodeVaccinData_items_episodeDeliveredByPsAuthor>
      get serializer =>
          _$gepisodeVaccinDataItemsEpisodeDeliveredByPsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeVaccinData_items_episodeDeliveredByPsAuthor.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeVaccinData_items_episodeDeliveredByPsAuthor? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeVaccinData_items_episodeDeliveredByPsAuthor.serializer,
        json,
      );
}

abstract class GepisodeVaccinData_items_episodeEsAuthor
    implements
        Built<GepisodeVaccinData_items_episodeEsAuthor,
            GepisodeVaccinData_items_episodeEsAuthorBuilder>,
        GepisodeVaccin_items_episodeEsAuthor,
        _i2.GepisodeEsAuteur {
  GepisodeVaccinData_items_episodeEsAuthor._();

  factory GepisodeVaccinData_items_episodeEsAuthor(
      [void Function(GepisodeVaccinData_items_episodeEsAuthorBuilder b)
          updates]) = _$GepisodeVaccinData_items_episodeEsAuthor;

  static void _initializeBuilder(
          GepisodeVaccinData_items_episodeEsAuthorBuilder b) =>
      b..G__typename = 'EpisodeEsAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  static Serializer<GepisodeVaccinData_items_episodeEsAuthor> get serializer =>
      _$gepisodeVaccinDataItemsEpisodeEsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeVaccinData_items_episodeEsAuthor.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeVaccinData_items_episodeEsAuthor? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeVaccinData_items_episodeEsAuthor.serializer,
        json,
      );
}

abstract class GepisodeVaccinData_items_episodeDeliveredByEsAuthor
    implements
        Built<GepisodeVaccinData_items_episodeDeliveredByEsAuthor,
            GepisodeVaccinData_items_episodeDeliveredByEsAuthorBuilder>,
        GepisodeVaccin_items_episodeDeliveredByEsAuthor,
        _i2.GepisodeEsAuteur {
  GepisodeVaccinData_items_episodeDeliveredByEsAuthor._();

  factory GepisodeVaccinData_items_episodeDeliveredByEsAuthor(
      [void Function(
              GepisodeVaccinData_items_episodeDeliveredByEsAuthorBuilder b)
          updates]) = _$GepisodeVaccinData_items_episodeDeliveredByEsAuthor;

  static void _initializeBuilder(
          GepisodeVaccinData_items_episodeDeliveredByEsAuthorBuilder b) =>
      b..G__typename = 'EpisodeEsAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  static Serializer<GepisodeVaccinData_items_episodeDeliveredByEsAuthor>
      get serializer =>
          _$gepisodeVaccinDataItemsEpisodeDeliveredByEsAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeVaccinData_items_episodeDeliveredByEsAuthor.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeVaccinData_items_episodeDeliveredByEsAuthor? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeVaccinData_items_episodeDeliveredByEsAuthor.serializer,
        json,
      );
}

abstract class GepisodeVaccination {
  String get G__typename;
  String get date;
  _i1.GEpisodeCategory get category;
  String get id;
  String get name;
  String get pathologies;
  Map<String, dynamic> toJson();
}

abstract class GepisodeVaccinationData
    implements
        Built<GepisodeVaccinationData, GepisodeVaccinationDataBuilder>,
        GepisodeVaccination {
  GepisodeVaccinationData._();

  factory GepisodeVaccinationData(
          [void Function(GepisodeVaccinationDataBuilder b) updates]) =
      _$GepisodeVaccinationData;

  static void _initializeBuilder(GepisodeVaccinationDataBuilder b) =>
      b..G__typename = 'CvaVaccineEpisodeViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get date;
  @override
  _i1.GEpisodeCategory get category;
  @override
  String get id;
  @override
  String get name;
  @override
  String get pathologies;
  static Serializer<GepisodeVaccinationData> get serializer =>
      _$gepisodeVaccinationDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeVaccinationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeVaccinationData? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeVaccinationData.serializer,
        json,
      );
}

abstract class GepisodeMaladie {
  String get G__typename;
  String get date;
  _i1.GEpisodeCategory get category;
  String get startDate;
  String get name;
  _i1.GDiseaseEpisodeType get eventType;
  String? get comment;
  String? get endDate;
  String get diseaseId;
  bool get hasOnlyYearInStartDate;
  bool get hasOnlyMonthAndYearInStartDate;
  bool get hasOnlyYearInEndDate;
  bool get hasOnlyMonthAndYearInEndDate;
  Map<String, dynamic> toJson();
}

abstract class GepisodeMaladieData
    implements
        Built<GepisodeMaladieData, GepisodeMaladieDataBuilder>,
        GepisodeMaladie {
  GepisodeMaladieData._();

  factory GepisodeMaladieData(
          [void Function(GepisodeMaladieDataBuilder b) updates]) =
      _$GepisodeMaladieData;

  static void _initializeBuilder(GepisodeMaladieDataBuilder b) =>
      b..G__typename = 'DiseaseEpisodeViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get date;
  @override
  _i1.GEpisodeCategory get category;
  @override
  String get startDate;
  @override
  String get name;
  @override
  _i1.GDiseaseEpisodeType get eventType;
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
  static Serializer<GepisodeMaladieData> get serializer =>
      _$gepisodeMaladieDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
        GepisodeMaladieData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeMaladieData? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
        GepisodeMaladieData.serializer,
        json,
      );
}
