// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_rappel.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_agenda_update_rappel.query.data.gql.g.dart';

abstract class Gupdate_rappelData
    implements Built<Gupdate_rappelData, Gupdate_rappelDataBuilder> {
  Gupdate_rappelData._();

  factory Gupdate_rappelData(
          [void Function(Gupdate_rappelDataBuilder b) updates]) =
      _$Gupdate_rappelData;

  static void _initializeBuilder(Gupdate_rappelDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gupdate_rappelData_updateReminder get updateReminder;
  static Serializer<Gupdate_rappelData> get serializer =>
      _$gupdateRappelDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_rappelData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_rappelData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_rappelData.serializer,
        json,
      );
}

abstract class Gupdate_rappelData_updateReminder
    implements
        Built<Gupdate_rappelData_updateReminder,
            Gupdate_rappelData_updateReminderBuilder>,
        _i2.Grappel {
  Gupdate_rappelData_updateReminder._();

  factory Gupdate_rappelData_updateReminder(
          [void Function(Gupdate_rappelData_updateReminderBuilder b) updates]) =
      _$Gupdate_rappelData_updateReminder;

  static void _initializeBuilder(Gupdate_rappelData_updateReminderBuilder b) =>
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
  Gupdate_rappelData_updateReminder_author? get author;
  static Serializer<Gupdate_rappelData_updateReminder> get serializer =>
      _$gupdateRappelDataUpdateReminderSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_rappelData_updateReminder.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_rappelData_updateReminder? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_rappelData_updateReminder.serializer,
        json,
      );
}

abstract class Gupdate_rappelData_updateReminder_author
    implements
        Built<Gupdate_rappelData_updateReminder_author,
            Gupdate_rappelData_updateReminder_authorBuilder>,
        _i2.Grappel_author {
  Gupdate_rappelData_updateReminder_author._();

  factory Gupdate_rappelData_updateReminder_author(
      [void Function(Gupdate_rappelData_updateReminder_authorBuilder b)
          updates]) = _$Gupdate_rappelData_updateReminder_author;

  static void _initializeBuilder(
          Gupdate_rappelData_updateReminder_authorBuilder b) =>
      b..G__typename = 'AgendaAuthorViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get authorLabel;
  static Serializer<Gupdate_rappelData_updateReminder_author> get serializer =>
      _$gupdateRappelDataUpdateReminderAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_rappelData_updateReminder_author.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_rappelData_updateReminder_author? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_rappelData_updateReminder_author.serializer,
        json,
      );
}
