// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_account_change_contact.query.data.gql.g.dart';

abstract class Gchange_contactData
    implements Built<Gchange_contactData, Gchange_contactDataBuilder> {
  Gchange_contactData._();

  factory Gchange_contactData(
          [void Function(Gchange_contactDataBuilder b) updates]) =
      _$Gchange_contactData;

  static void _initializeBuilder(Gchange_contactDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gchange_contactData_changeContact get changeContact;
  static Serializer<Gchange_contactData> get serializer =>
      _$gchangeContactDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gchange_contactData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gchange_contactData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gchange_contactData.serializer,
        json,
      );
}

abstract class Gchange_contactData_changeContact
    implements
        Built<Gchange_contactData_changeContact,
            Gchange_contactData_changeContactBuilder> {
  Gchange_contactData_changeContact._();

  factory Gchange_contactData_changeContact(
          [void Function(Gchange_contactData_changeContactBuilder b) updates]) =
      _$Gchange_contactData_changeContact;

  static void _initializeBuilder(Gchange_contactData_changeContactBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gchange_contactData_changeContact> get serializer =>
      _$gchangeContactDataChangeContactSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gchange_contactData_changeContact.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gchange_contactData_changeContact? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gchange_contactData_changeContact.serializer,
        json,
      );
}
