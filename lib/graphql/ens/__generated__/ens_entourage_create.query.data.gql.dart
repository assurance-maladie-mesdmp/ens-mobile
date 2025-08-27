// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_entourage_create.query.data.gql.g.dart';

abstract class Gcreate_entourage_contactData
    implements
        Built<Gcreate_entourage_contactData,
            Gcreate_entourage_contactDataBuilder> {
  Gcreate_entourage_contactData._();

  factory Gcreate_entourage_contactData(
          [void Function(Gcreate_entourage_contactDataBuilder b) updates]) =
      _$Gcreate_entourage_contactData;

  static void _initializeBuilder(Gcreate_entourage_contactDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gcreate_entourage_contactData_postEntourageContact get postEntourageContact;
  static Serializer<Gcreate_entourage_contactData> get serializer =>
      _$gcreateEntourageContactDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcreate_entourage_contactData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_entourage_contactData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcreate_entourage_contactData.serializer,
        json,
      );
}

abstract class Gcreate_entourage_contactData_postEntourageContact
    implements
        Built<Gcreate_entourage_contactData_postEntourageContact,
            Gcreate_entourage_contactData_postEntourageContactBuilder> {
  Gcreate_entourage_contactData_postEntourageContact._();

  factory Gcreate_entourage_contactData_postEntourageContact(
      [void Function(
              Gcreate_entourage_contactData_postEntourageContactBuilder b)
          updates]) = _$Gcreate_entourage_contactData_postEntourageContact;

  static void _initializeBuilder(
          Gcreate_entourage_contactData_postEntourageContactBuilder b) =>
      b..G__typename = 'WishesModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get effectiveDate;
  static Serializer<Gcreate_entourage_contactData_postEntourageContact>
      get serializer =>
          _$gcreateEntourageContactDataPostEntourageContactSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcreate_entourage_contactData_postEntourageContact.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_entourage_contactData_postEntourageContact? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcreate_entourage_contactData_postEntourageContact.serializer,
        json,
      );
}
