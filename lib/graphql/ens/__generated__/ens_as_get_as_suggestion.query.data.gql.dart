// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_as_get_as_suggestion.query.data.gql.g.dart';

abstract class Gget_as_suggestionsData
    implements Built<Gget_as_suggestionsData, Gget_as_suggestionsDataBuilder> {
  Gget_as_suggestionsData._();

  factory Gget_as_suggestionsData(
          [void Function(Gget_as_suggestionsDataBuilder b) updates]) =
      _$Gget_as_suggestionsData;

  static void _initializeBuilder(Gget_as_suggestionsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_as_suggestionsData_getHealthActorsSuggestions
      get getHealthActorsSuggestions;
  static Serializer<Gget_as_suggestionsData> get serializer =>
      _$ggetAsSuggestionsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_as_suggestionsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_as_suggestionsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_as_suggestionsData.serializer,
        json,
      );
}

abstract class Gget_as_suggestionsData_getHealthActorsSuggestions
    implements
        Built<Gget_as_suggestionsData_getHealthActorsSuggestions,
            Gget_as_suggestionsData_getHealthActorsSuggestionsBuilder> {
  Gget_as_suggestionsData_getHealthActorsSuggestions._();

  factory Gget_as_suggestionsData_getHealthActorsSuggestions(
      [void Function(
              Gget_as_suggestionsData_getHealthActorsSuggestionsBuilder b)
          updates]) = _$Gget_as_suggestionsData_getHealthActorsSuggestions;

  static void _initializeBuilder(
          Gget_as_suggestionsData_getHealthActorsSuggestionsBuilder b) =>
      b..G__typename = 'HealthActorsSuggestionsListModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<
          Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions>
      get healthActorsSuggestions;
  static Serializer<Gget_as_suggestionsData_getHealthActorsSuggestions>
      get serializer =>
          _$ggetAsSuggestionsDataGetHealthActorsSuggestionsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_as_suggestionsData_getHealthActorsSuggestions.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_as_suggestionsData_getHealthActorsSuggestions? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_as_suggestionsData_getHealthActorsSuggestions.serializer,
        json,
      );
}

abstract class Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions
    implements
        Built<
            Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions,
            Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestionsBuilder> {
  Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions._();

  factory Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions(
          [void Function(
                  Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestionsBuilder
                      b)
              updates]) =
      _$Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions;

  static void _initializeBuilder(
          Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestionsBuilder
              b) =>
      b..G__typename = 'HealthActorsSuggestionsModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get nationalId;
  String? get name;
  String get type;
  String? get address;
  String? get profession;
  String? get email;
  static Serializer<
          Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions>
      get serializer =>
          _$ggetAsSuggestionsDataGetHealthActorsSuggestionsHealthActorsSuggestionsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_as_suggestionsData_getHealthActorsSuggestions_healthActorsSuggestions
                .serializer,
            json,
          );
}
