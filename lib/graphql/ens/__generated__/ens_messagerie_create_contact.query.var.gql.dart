// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_messagerie_create_contact.query.var.gql.g.dart';

abstract class Gcreate_contactVars
    implements Built<Gcreate_contactVars, Gcreate_contactVarsBuilder> {
  Gcreate_contactVars._();

  factory Gcreate_contactVars(
          [void Function(Gcreate_contactVarsBuilder b) updates]) =
      _$Gcreate_contactVars;

  String get patientId;
  String get email;
  String get fullName;
  String get esId;
  static Serializer<Gcreate_contactVars> get serializer =>
      _$gcreateContactVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcreate_contactVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_contactVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcreate_contactVars.serializer,
        json,
      );
}
