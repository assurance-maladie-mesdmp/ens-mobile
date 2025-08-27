// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_messagerie_create_contact.query.data.gql.g.dart';

abstract class Gcreate_contactData
    implements Built<Gcreate_contactData, Gcreate_contactDataBuilder> {
  Gcreate_contactData._();

  factory Gcreate_contactData(
          [void Function(Gcreate_contactDataBuilder b) updates]) =
      _$Gcreate_contactData;

  static void _initializeBuilder(Gcreate_contactDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gcreate_contactData_createContactWithControl get createContactWithControl;
  static Serializer<Gcreate_contactData> get serializer =>
      _$gcreateContactDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcreate_contactData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_contactData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcreate_contactData.serializer,
        json,
      );
}

abstract class Gcreate_contactData_createContactWithControl
    implements
        Built<Gcreate_contactData_createContactWithControl,
            Gcreate_contactData_createContactWithControlBuilder> {
  Gcreate_contactData_createContactWithControl._();

  factory Gcreate_contactData_createContactWithControl(
      [void Function(Gcreate_contactData_createContactWithControlBuilder b)
          updates]) = _$Gcreate_contactData_createContactWithControl;

  static void _initializeBuilder(
          Gcreate_contactData_createContactWithControlBuilder b) =>
      b..G__typename = 'CreateContactModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  String get contactId;
  static Serializer<Gcreate_contactData_createContactWithControl>
      get serializer => _$gcreateContactDataCreateContactWithControlSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcreate_contactData_createContactWithControl.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_contactData_createContactWithControl? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcreate_contactData_createContactWithControl.serializer,
        json,
      );
}
