// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_entourage_delete.query.data.gql.g.dart';

abstract class Gdelete_entourage_contactData
    implements
        Built<Gdelete_entourage_contactData,
            Gdelete_entourage_contactDataBuilder> {
  Gdelete_entourage_contactData._();

  factory Gdelete_entourage_contactData(
          [void Function(Gdelete_entourage_contactDataBuilder b) updates]) =
      _$Gdelete_entourage_contactData;

  static void _initializeBuilder(Gdelete_entourage_contactDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gdelete_entourage_contactData_deleteEntourageContact
      get deleteEntourageContact;
  static Serializer<Gdelete_entourage_contactData> get serializer =>
      _$gdeleteEntourageContactDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_entourage_contactData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_entourage_contactData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_entourage_contactData.serializer,
        json,
      );
}

abstract class Gdelete_entourage_contactData_deleteEntourageContact
    implements
        Built<Gdelete_entourage_contactData_deleteEntourageContact,
            Gdelete_entourage_contactData_deleteEntourageContactBuilder> {
  Gdelete_entourage_contactData_deleteEntourageContact._();

  factory Gdelete_entourage_contactData_deleteEntourageContact(
      [void Function(
              Gdelete_entourage_contactData_deleteEntourageContactBuilder b)
          updates]) = _$Gdelete_entourage_contactData_deleteEntourageContact;

  static void _initializeBuilder(
          Gdelete_entourage_contactData_deleteEntourageContactBuilder b) =>
      b..G__typename = 'WishesModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get effectiveDate;
  static Serializer<Gdelete_entourage_contactData_deleteEntourageContact>
      get serializer =>
          _$gdeleteEntourageContactDataDeleteEntourageContactSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_entourage_contactData_deleteEntourageContact.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_entourage_contactData_deleteEntourageContact? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_entourage_contactData_deleteEntourageContact.serializer,
        json,
      );
}
