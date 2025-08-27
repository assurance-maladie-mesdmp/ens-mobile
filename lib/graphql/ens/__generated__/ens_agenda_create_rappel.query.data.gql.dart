// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_rappel.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_agenda_create_rappel.query.data.gql.g.dart';

abstract class Gcreate_rappelData
    implements Built<Gcreate_rappelData, Gcreate_rappelDataBuilder> {
  Gcreate_rappelData._();

  factory Gcreate_rappelData(
          [void Function(Gcreate_rappelDataBuilder b) updates]) =
      _$Gcreate_rappelData;

  static void _initializeBuilder(Gcreate_rappelDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gcreate_rappelData_createReminder get createReminder;
  static Serializer<Gcreate_rappelData> get serializer =>
      _$gcreateRappelDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcreate_rappelData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_rappelData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcreate_rappelData.serializer,
        json,
      );
}

abstract class Gcreate_rappelData_createReminder
    implements
        Built<Gcreate_rappelData_createReminder,
            Gcreate_rappelData_createReminderBuilder>,
        _i2.Grappel {
  Gcreate_rappelData_createReminder._();

  factory Gcreate_rappelData_createReminder(
          [void Function(Gcreate_rappelData_createReminderBuilder b) updates]) =
      _$Gcreate_rappelData_createReminder;

  static void _initializeBuilder(Gcreate_rappelData_createReminderBuilder b) =>
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
  Gcreate_rappelData_createReminder_author? get author;
  static Serializer<Gcreate_rappelData_createReminder> get serializer =>
      _$gcreateRappelDataCreateReminderSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcreate_rappelData_createReminder.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_rappelData_createReminder? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcreate_rappelData_createReminder.serializer,
        json,
      );
}

abstract class Gcreate_rappelData_createReminder_author
    implements
        Built<Gcreate_rappelData_createReminder_author,
            Gcreate_rappelData_createReminder_authorBuilder>,
        _i2.Grappel_author {
  Gcreate_rappelData_createReminder_author._();

  factory Gcreate_rappelData_createReminder_author(
      [void Function(Gcreate_rappelData_createReminder_authorBuilder b)
          updates]) = _$Gcreate_rappelData_createReminder_author;

  static void _initializeBuilder(
          Gcreate_rappelData_createReminder_authorBuilder b) =>
      b..G__typename = 'AgendaAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get authorLabel;
  static Serializer<Gcreate_rappelData_createReminder_author> get serializer =>
      _$gcreateRappelDataCreateReminderAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcreate_rappelData_createReminder_author.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_rappelData_createReminder_author? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcreate_rappelData_createReminder_author.serializer,
        json,
      );
}
