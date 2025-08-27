// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_ps_inactifs_check_contacts_status.var.gql.g.dart';

abstract class Gcheck_inactifs_ps_contacts_statusVars
    implements
        Built<Gcheck_inactifs_ps_contacts_statusVars,
            Gcheck_inactifs_ps_contacts_statusVarsBuilder> {
  Gcheck_inactifs_ps_contacts_statusVars._();

  factory Gcheck_inactifs_ps_contacts_statusVars(
      [void Function(Gcheck_inactifs_ps_contacts_statusVarsBuilder b)
          updates]) = _$Gcheck_inactifs_ps_contacts_statusVars;

  BuiltList<_i1.GContactDetailsInput> get contactDetailsInput;
  static Serializer<Gcheck_inactifs_ps_contacts_statusVars> get serializer =>
      _$gcheckInactifsPsContactsStatusVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gcheck_inactifs_ps_contacts_statusVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcheck_inactifs_ps_contacts_statusVars? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gcheck_inactifs_ps_contacts_statusVars.serializer,
        json,
      );
}
