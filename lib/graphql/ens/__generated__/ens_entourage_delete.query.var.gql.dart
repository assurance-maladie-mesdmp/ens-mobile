// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_entourage_delete.query.var.gql.g.dart';

abstract class Gdelete_entourage_contactVars
    implements
        Built<Gdelete_entourage_contactVars,
            Gdelete_entourage_contactVarsBuilder> {
  Gdelete_entourage_contactVars._();

  factory Gdelete_entourage_contactVars(
          [void Function(Gdelete_entourage_contactVarsBuilder b) updates]) =
      _$Gdelete_entourage_contactVars;

  String get contactId;
  String get patientId;
  static Serializer<Gdelete_entourage_contactVars> get serializer =>
      _$gdeleteEntourageContactVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_entourage_contactVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_entourage_contactVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_entourage_contactVars.serializer,
        json,
      );
}
