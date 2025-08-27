// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_agenda_rappel.fragment.data.gql.g.dart';

abstract class Grappel {
  String get G__typename;
  String get id;
  String get date;
  String get title;
  String get comment;
  Grappel_author? get author;
  Map<String, dynamic> toJson();
}

abstract class Grappel_author {
  String get G__typename;
  String get authorLabel;
  Map<String, dynamic> toJson();
}

abstract class GrappelData
    implements Built<GrappelData, GrappelDataBuilder>, Grappel {
  GrappelData._();

  factory GrappelData([void Function(GrappelDataBuilder b) updates]) =
      _$GrappelData;

  static void _initializeBuilder(GrappelDataBuilder b) =>
      b..G__typename = 'ReminderViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get date;
  @override
  String get title;
  @override
  String get comment;
  @override
  GrappelData_author? get author;
  static Serializer<GrappelData> get serializer => _$grappelDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GrappelData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GrappelData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GrappelData.serializer,
        json,
      );
}

abstract class GrappelData_author
    implements
        Built<GrappelData_author, GrappelData_authorBuilder>,
        Grappel_author {
  GrappelData_author._();

  factory GrappelData_author(
          [void Function(GrappelData_authorBuilder b) updates]) =
      _$GrappelData_author;

  static void _initializeBuilder(GrappelData_authorBuilder b) =>
      b..G__typename = 'AgendaAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get authorLabel;
  static Serializer<GrappelData_author> get serializer =>
      _$grappelDataAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GrappelData_author.serializer,
        this,
      ) as Map<String, dynamic>);

  static GrappelData_author? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GrappelData_author.serializer,
        json,
      );
}
