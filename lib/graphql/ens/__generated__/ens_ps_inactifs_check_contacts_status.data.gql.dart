// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_ps_inactifs_check_contacts_status.data.gql.g.dart';

abstract class Gcheck_inactifs_ps_contacts_statusData
    implements
        Built<Gcheck_inactifs_ps_contacts_statusData,
            Gcheck_inactifs_ps_contacts_statusDataBuilder> {
  Gcheck_inactifs_ps_contacts_statusData._();

  factory Gcheck_inactifs_ps_contacts_statusData(
      [void Function(Gcheck_inactifs_ps_contacts_statusDataBuilder b)
          updates]) = _$Gcheck_inactifs_ps_contacts_statusData;

  static void _initializeBuilder(
          Gcheck_inactifs_ps_contacts_statusDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus
      get checkContactsStatus;
  static Serializer<Gcheck_inactifs_ps_contacts_statusData> get serializer =>
      _$gcheckInactifsPsContactsStatusDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcheck_inactifs_ps_contacts_statusData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcheck_inactifs_ps_contacts_statusData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcheck_inactifs_ps_contacts_statusData.serializer,
        json,
      );
}

abstract class Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus
    implements
        Built<Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus,
            Gcheck_inactifs_ps_contacts_statusData_checkContactsStatusBuilder> {
  Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus._();

  factory Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus(
      [void Function(
              Gcheck_inactifs_ps_contacts_statusData_checkContactsStatusBuilder
                  b)
          updates]) = _$Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus;

  static void _initializeBuilder(
          Gcheck_inactifs_ps_contacts_statusData_checkContactsStatusBuilder
              b) =>
      b..G__typename = 'InactiveContactListModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<
          Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts>
      get inactiveContacts;
  static Serializer<Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus>
      get serializer =>
          _$gcheckInactifsPsContactsStatusDataCheckContactsStatusSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus.serializer,
        json,
      );
}

abstract class Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts
    implements
        Built<
            Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts,
            Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContactsBuilder> {
  Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts._();

  factory Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts(
          [void Function(
                  Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContactsBuilder
                      b)
              updates]) =
      _$Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts;

  static void _initializeBuilder(
          Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContactsBuilder
              b) =>
      b..G__typename = 'InactiveContactModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get idNat;
  String get fullName;
  static Serializer<
          Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts>
      get serializer =>
          _$gcheckInactifsPsContactsStatusDataCheckContactsStatusInactiveContactsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts
                .serializer,
            json,
          );
}
