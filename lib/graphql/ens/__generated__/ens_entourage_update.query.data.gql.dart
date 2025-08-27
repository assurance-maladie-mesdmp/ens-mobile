// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_entourage_update.query.data.gql.g.dart';

abstract class Gmodify_entourage_contactData
    implements
        Built<Gmodify_entourage_contactData,
            Gmodify_entourage_contactDataBuilder> {
  Gmodify_entourage_contactData._();

  factory Gmodify_entourage_contactData(
          [void Function(Gmodify_entourage_contactDataBuilder b) updates]) =
      _$Gmodify_entourage_contactData;

  static void _initializeBuilder(Gmodify_entourage_contactDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gmodify_entourage_contactData_putEntourageContact get putEntourageContact;
  static Serializer<Gmodify_entourage_contactData> get serializer =>
      _$gmodifyEntourageContactDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gmodify_entourage_contactData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gmodify_entourage_contactData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gmodify_entourage_contactData.serializer,
        json,
      );
}

abstract class Gmodify_entourage_contactData_putEntourageContact
    implements
        Built<Gmodify_entourage_contactData_putEntourageContact,
            Gmodify_entourage_contactData_putEntourageContactBuilder> {
  Gmodify_entourage_contactData_putEntourageContact._();

  factory Gmodify_entourage_contactData_putEntourageContact(
      [void Function(Gmodify_entourage_contactData_putEntourageContactBuilder b)
          updates]) = _$Gmodify_entourage_contactData_putEntourageContact;

  static void _initializeBuilder(
          Gmodify_entourage_contactData_putEntourageContactBuilder b) =>
      b..G__typename = 'WishesModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get effectiveDate;
  static Serializer<Gmodify_entourage_contactData_putEntourageContact>
      get serializer =>
          _$gmodifyEntourageContactDataPutEntourageContactSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gmodify_entourage_contactData_putEntourageContact.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gmodify_entourage_contactData_putEntourageContact? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gmodify_entourage_contactData_putEntourageContact.serializer,
        json,
      );
}
