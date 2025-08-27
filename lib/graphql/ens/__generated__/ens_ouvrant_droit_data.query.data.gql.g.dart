// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ouvrant_droit_data.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_ouvrant_droits_dataData> _$ggetOuvrantDroitsDataDataSerializer =
    new _$Gget_ouvrant_droits_dataDataSerializer();
Serializer<Gget_ouvrant_droits_dataData_getPersonalInformation>
    _$ggetOuvrantDroitsDataDataGetPersonalInformationSerializer =
    new _$Gget_ouvrant_droits_dataData_getPersonalInformationSerializer();
Serializer<Gget_ouvrant_droits_dataData_getAyantsDroits>
    _$ggetOuvrantDroitsDataDataGetAyantsDroitsSerializer =
    new _$Gget_ouvrant_droits_dataData_getAyantsDroitsSerializer();
Serializer<Gget_ouvrant_droits_dataData_fetchNotificationCenter>
    _$ggetOuvrantDroitsDataDataFetchNotificationCenterSerializer =
    new _$Gget_ouvrant_droits_dataData_fetchNotificationCenterSerializer();
Serializer<Gget_ouvrant_droits_dataData_getPendingInvitations>
    _$ggetOuvrantDroitsDataDataGetPendingInvitationsSerializer =
    new _$Gget_ouvrant_droits_dataData_getPendingInvitationsSerializer();
Serializer<
        Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations>
    _$ggetOuvrantDroitsDataDataGetPendingInvitationsPendingInvitationsSerializer =
    new _$Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitationsSerializer();

class _$Gget_ouvrant_droits_dataDataSerializer
    implements StructuredSerializer<Gget_ouvrant_droits_dataData> {
  @override
  final Iterable<Type> types = const [
    Gget_ouvrant_droits_dataData,
    _$Gget_ouvrant_droits_dataData
  ];
  @override
  final String wireName = 'Gget_ouvrant_droits_dataData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_ouvrant_droits_dataData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getPendingInvitations',
      serializers.serialize(object.getPendingInvitations,
          specifiedType: const FullType(
              Gget_ouvrant_droits_dataData_getPendingInvitations)),
    ];
    Object? value;
    value = object.getPersonalInformation;
    if (value != null) {
      result
        ..add('getPersonalInformation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_ouvrant_droits_dataData_getPersonalInformation)));
    }
    value = object.getAyantsDroits;
    if (value != null) {
      result
        ..add('getAyantsDroits')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(Gget_ouvrant_droits_dataData_getAyantsDroits)
            ])));
    }
    value = object.fetchNotificationCenter;
    if (value != null) {
      result
        ..add('fetchNotificationCenter')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_ouvrant_droits_dataData_fetchNotificationCenter)));
    }
    return result;
  }

  @override
  Gget_ouvrant_droits_dataData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_ouvrant_droits_dataDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'getPersonalInformation':
          result.getPersonalInformation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_ouvrant_droits_dataData_getPersonalInformation))!
              as Gget_ouvrant_droits_dataData_getPersonalInformation);
          break;
        case 'getAyantsDroits':
          result.getAyantsDroits.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gget_ouvrant_droits_dataData_getAyantsDroits)
              ]))! as BuiltList<Object?>);
          break;
        case 'fetchNotificationCenter':
          result.fetchNotificationCenter.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_ouvrant_droits_dataData_fetchNotificationCenter))!
              as Gget_ouvrant_droits_dataData_fetchNotificationCenter);
          break;
        case 'getPendingInvitations':
          result.getPendingInvitations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_ouvrant_droits_dataData_getPendingInvitations))!
              as Gget_ouvrant_droits_dataData_getPendingInvitations);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_ouvrant_droits_dataData_getPersonalInformationSerializer
    implements
        StructuredSerializer<
            Gget_ouvrant_droits_dataData_getPersonalInformation> {
  @override
  final Iterable<Type> types = const [
    Gget_ouvrant_droits_dataData_getPersonalInformation,
    _$Gget_ouvrant_droits_dataData_getPersonalInformation
  ];
  @override
  final String wireName = 'Gget_ouvrant_droits_dataData_getPersonalInformation';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_ouvrant_droits_dataData_getPersonalInformation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'birthDate',
      serializers.serialize(object.birthDate,
          specifiedType: const FullType(String)),
      'sex',
      serializers.serialize(object.sex, specifiedType: const FullType(String)),
      'ins',
      serializers.serialize(object.ins, specifiedType: const FullType(String)),
      'hasConfidentialitySettingsSet',
      serializers.serialize(object.hasConfidentialitySettingsSet,
          specifiedType: const FullType(bool)),
      'ensStatus',
      serializers.serialize(object.ensStatus,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.mail;
    if (value != null) {
      result
        ..add('mail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.onboarding;
    if (value != null) {
      result
        ..add('onboarding')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.inseeCode;
    if (value != null) {
      result
        ..add('inseeCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cguAcceptedAt;
    if (value != null) {
      result
        ..add('cguAcceptedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_ouvrant_droits_dataData_getPersonalInformation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_ouvrant_droits_dataData_getPersonalInformationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'birthDate':
          result.birthDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'sex':
          result.sex = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'mail':
          result.mail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ins':
          result.ins = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'onboarding':
          result.onboarding = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'inseeCode':
          result.inseeCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cguAcceptedAt':
          result.cguAcceptedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'hasConfidentialitySettingsSet':
          result.hasConfidentialitySettingsSet = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'ensStatus':
          result.ensStatus = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_ouvrant_droits_dataData_getAyantsDroitsSerializer
    implements
        StructuredSerializer<Gget_ouvrant_droits_dataData_getAyantsDroits> {
  @override
  final Iterable<Type> types = const [
    Gget_ouvrant_droits_dataData_getAyantsDroits,
    _$Gget_ouvrant_droits_dataData_getAyantsDroits
  ];
  @override
  final String wireName = 'Gget_ouvrant_droits_dataData_getAyantsDroits';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_ouvrant_droits_dataData_getAyantsDroits object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'isAide',
      serializers.serialize(object.isAide, specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gget_ouvrant_droits_dataData_getAyantsDroits deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_ouvrant_droits_dataData_getAyantsDroitsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'isAide':
          result.isAide = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_ouvrant_droits_dataData_fetchNotificationCenterSerializer
    implements
        StructuredSerializer<
            Gget_ouvrant_droits_dataData_fetchNotificationCenter> {
  @override
  final Iterable<Type> types = const [
    Gget_ouvrant_droits_dataData_fetchNotificationCenter,
    _$Gget_ouvrant_droits_dataData_fetchNotificationCenter
  ];
  @override
  final String wireName =
      'Gget_ouvrant_droits_dataData_fetchNotificationCenter';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_ouvrant_droits_dataData_fetchNotificationCenter object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'unreadNotificationsCount',
      serializers.serialize(object.unreadNotificationsCount,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Gget_ouvrant_droits_dataData_fetchNotificationCenter deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_ouvrant_droits_dataData_fetchNotificationCenterBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'unreadNotificationsCount':
          result.unreadNotificationsCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_ouvrant_droits_dataData_getPendingInvitationsSerializer
    implements
        StructuredSerializer<
            Gget_ouvrant_droits_dataData_getPendingInvitations> {
  @override
  final Iterable<Type> types = const [
    Gget_ouvrant_droits_dataData_getPendingInvitations,
    _$Gget_ouvrant_droits_dataData_getPendingInvitations
  ];
  @override
  final String wireName = 'Gget_ouvrant_droits_dataData_getPendingInvitations';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_ouvrant_droits_dataData_getPendingInvitations object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.pendingInvitations;
    if (value != null) {
      result
        ..add('pendingInvitations')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations)
            ])));
    }
    return result;
  }

  @override
  Gget_ouvrant_droits_dataData_getPendingInvitations deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_ouvrant_droits_dataData_getPendingInvitationsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'pendingInvitations':
          result.pendingInvitations.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitationsSerializer
    implements
        StructuredSerializer<
            Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations> {
  @override
  final Iterable<Type> types = const [
    Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations,
    _$Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations
  ];
  @override
  final String wireName =
      'Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'statut',
      serializers.serialize(object.statut,
          specifiedType: const FullType(_i4.GDemandeAccesStatutEnum)),
      'idEns',
      serializers.serialize(object.idEns,
          specifiedType: const FullType(String)),
      'endDate',
      serializers.serialize(object.endDate,
          specifiedType: const FullType(String)),
      'birthDate',
      serializers.serialize(object.birthDate,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitationsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'statut':
          result.statut = serializers.deserialize(value,
                  specifiedType: const FullType(_i4.GDemandeAccesStatutEnum))!
              as _i4.GDemandeAccesStatutEnum;
          break;
        case 'idEns':
          result.idEns = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'endDate':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'birthDate':
          result.birthDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_ouvrant_droits_dataData extends Gget_ouvrant_droits_dataData {
  @override
  final String G__typename;
  @override
  final Gget_ouvrant_droits_dataData_getPersonalInformation?
      getPersonalInformation;
  @override
  final BuiltList<Gget_ouvrant_droits_dataData_getAyantsDroits>?
      getAyantsDroits;
  @override
  final Gget_ouvrant_droits_dataData_fetchNotificationCenter?
      fetchNotificationCenter;
  @override
  final Gget_ouvrant_droits_dataData_getPendingInvitations
      getPendingInvitations;

  factory _$Gget_ouvrant_droits_dataData(
          [void Function(Gget_ouvrant_droits_dataDataBuilder)? updates]) =>
      (new Gget_ouvrant_droits_dataDataBuilder()..update(updates))._build();

  _$Gget_ouvrant_droits_dataData._(
      {required this.G__typename,
      this.getPersonalInformation,
      this.getAyantsDroits,
      this.fetchNotificationCenter,
      required this.getPendingInvitations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_ouvrant_droits_dataData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(getPendingInvitations,
        r'Gget_ouvrant_droits_dataData', 'getPendingInvitations');
  }

  @override
  Gget_ouvrant_droits_dataData rebuild(
          void Function(Gget_ouvrant_droits_dataDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_ouvrant_droits_dataDataBuilder toBuilder() =>
      new Gget_ouvrant_droits_dataDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_ouvrant_droits_dataData &&
        G__typename == other.G__typename &&
        getPersonalInformation == other.getPersonalInformation &&
        getAyantsDroits == other.getAyantsDroits &&
        fetchNotificationCenter == other.fetchNotificationCenter &&
        getPendingInvitations == other.getPendingInvitations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getPersonalInformation.hashCode);
    _$hash = $jc(_$hash, getAyantsDroits.hashCode);
    _$hash = $jc(_$hash, fetchNotificationCenter.hashCode);
    _$hash = $jc(_$hash, getPendingInvitations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_ouvrant_droits_dataData')
          ..add('G__typename', G__typename)
          ..add('getPersonalInformation', getPersonalInformation)
          ..add('getAyantsDroits', getAyantsDroits)
          ..add('fetchNotificationCenter', fetchNotificationCenter)
          ..add('getPendingInvitations', getPendingInvitations))
        .toString();
  }
}

class Gget_ouvrant_droits_dataDataBuilder
    implements
        Builder<Gget_ouvrant_droits_dataData,
            Gget_ouvrant_droits_dataDataBuilder> {
  _$Gget_ouvrant_droits_dataData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_ouvrant_droits_dataData_getPersonalInformationBuilder?
      _getPersonalInformation;
  Gget_ouvrant_droits_dataData_getPersonalInformationBuilder
      get getPersonalInformation => _$this._getPersonalInformation ??=
          new Gget_ouvrant_droits_dataData_getPersonalInformationBuilder();
  set getPersonalInformation(
          Gget_ouvrant_droits_dataData_getPersonalInformationBuilder?
              getPersonalInformation) =>
      _$this._getPersonalInformation = getPersonalInformation;

  ListBuilder<Gget_ouvrant_droits_dataData_getAyantsDroits>? _getAyantsDroits;
  ListBuilder<Gget_ouvrant_droits_dataData_getAyantsDroits>
      get getAyantsDroits => _$this._getAyantsDroits ??=
          new ListBuilder<Gget_ouvrant_droits_dataData_getAyantsDroits>();
  set getAyantsDroits(
          ListBuilder<Gget_ouvrant_droits_dataData_getAyantsDroits>?
              getAyantsDroits) =>
      _$this._getAyantsDroits = getAyantsDroits;

  Gget_ouvrant_droits_dataData_fetchNotificationCenterBuilder?
      _fetchNotificationCenter;
  Gget_ouvrant_droits_dataData_fetchNotificationCenterBuilder
      get fetchNotificationCenter => _$this._fetchNotificationCenter ??=
          new Gget_ouvrant_droits_dataData_fetchNotificationCenterBuilder();
  set fetchNotificationCenter(
          Gget_ouvrant_droits_dataData_fetchNotificationCenterBuilder?
              fetchNotificationCenter) =>
      _$this._fetchNotificationCenter = fetchNotificationCenter;

  Gget_ouvrant_droits_dataData_getPendingInvitationsBuilder?
      _getPendingInvitations;
  Gget_ouvrant_droits_dataData_getPendingInvitationsBuilder
      get getPendingInvitations => _$this._getPendingInvitations ??=
          new Gget_ouvrant_droits_dataData_getPendingInvitationsBuilder();
  set getPendingInvitations(
          Gget_ouvrant_droits_dataData_getPendingInvitationsBuilder?
              getPendingInvitations) =>
      _$this._getPendingInvitations = getPendingInvitations;

  Gget_ouvrant_droits_dataDataBuilder() {
    Gget_ouvrant_droits_dataData._initializeBuilder(this);
  }

  Gget_ouvrant_droits_dataDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getPersonalInformation = $v.getPersonalInformation?.toBuilder();
      _getAyantsDroits = $v.getAyantsDroits?.toBuilder();
      _fetchNotificationCenter = $v.fetchNotificationCenter?.toBuilder();
      _getPendingInvitations = $v.getPendingInvitations.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_ouvrant_droits_dataData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_ouvrant_droits_dataData;
  }

  @override
  void update(void Function(Gget_ouvrant_droits_dataDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_ouvrant_droits_dataData build() => _build();

  _$Gget_ouvrant_droits_dataData _build() {
    _$Gget_ouvrant_droits_dataData _$result;
    try {
      _$result = _$v ??
          new _$Gget_ouvrant_droits_dataData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_ouvrant_droits_dataData', 'G__typename'),
              getPersonalInformation: _getPersonalInformation?.build(),
              getAyantsDroits: _getAyantsDroits?.build(),
              fetchNotificationCenter: _fetchNotificationCenter?.build(),
              getPendingInvitations: getPendingInvitations.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getPersonalInformation';
        _getPersonalInformation?.build();
        _$failedField = 'getAyantsDroits';
        _getAyantsDroits?.build();
        _$failedField = 'fetchNotificationCenter';
        _fetchNotificationCenter?.build();
        _$failedField = 'getPendingInvitations';
        getPendingInvitations.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_ouvrant_droits_dataData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_ouvrant_droits_dataData_getPersonalInformation
    extends Gget_ouvrant_droits_dataData_getPersonalInformation {
  @override
  final String G__typename;
  @override
  final String lastName;
  @override
  final String firstName;
  @override
  final String birthDate;
  @override
  final String sex;
  @override
  final String? mail;
  @override
  final String? phoneNumber;
  @override
  final String ins;
  @override
  final String? onboarding;
  @override
  final String? inseeCode;
  @override
  final String? cguAcceptedAt;
  @override
  final bool hasConfidentialitySettingsSet;
  @override
  final String ensStatus;

  factory _$Gget_ouvrant_droits_dataData_getPersonalInformation(
          [void Function(
                  Gget_ouvrant_droits_dataData_getPersonalInformationBuilder)?
              updates]) =>
      (new Gget_ouvrant_droits_dataData_getPersonalInformationBuilder()
            ..update(updates))
          ._build();

  _$Gget_ouvrant_droits_dataData_getPersonalInformation._(
      {required this.G__typename,
      required this.lastName,
      required this.firstName,
      required this.birthDate,
      required this.sex,
      this.mail,
      this.phoneNumber,
      required this.ins,
      this.onboarding,
      this.inseeCode,
      this.cguAcceptedAt,
      required this.hasConfidentialitySettingsSet,
      required this.ensStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_ouvrant_droits_dataData_getPersonalInformation', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(lastName,
        r'Gget_ouvrant_droits_dataData_getPersonalInformation', 'lastName');
    BuiltValueNullFieldError.checkNotNull(firstName,
        r'Gget_ouvrant_droits_dataData_getPersonalInformation', 'firstName');
    BuiltValueNullFieldError.checkNotNull(birthDate,
        r'Gget_ouvrant_droits_dataData_getPersonalInformation', 'birthDate');
    BuiltValueNullFieldError.checkNotNull(
        sex, r'Gget_ouvrant_droits_dataData_getPersonalInformation', 'sex');
    BuiltValueNullFieldError.checkNotNull(
        ins, r'Gget_ouvrant_droits_dataData_getPersonalInformation', 'ins');
    BuiltValueNullFieldError.checkNotNull(
        hasConfidentialitySettingsSet,
        r'Gget_ouvrant_droits_dataData_getPersonalInformation',
        'hasConfidentialitySettingsSet');
    BuiltValueNullFieldError.checkNotNull(ensStatus,
        r'Gget_ouvrant_droits_dataData_getPersonalInformation', 'ensStatus');
  }

  @override
  Gget_ouvrant_droits_dataData_getPersonalInformation rebuild(
          void Function(
                  Gget_ouvrant_droits_dataData_getPersonalInformationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_ouvrant_droits_dataData_getPersonalInformationBuilder toBuilder() =>
      new Gget_ouvrant_droits_dataData_getPersonalInformationBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_ouvrant_droits_dataData_getPersonalInformation &&
        G__typename == other.G__typename &&
        lastName == other.lastName &&
        firstName == other.firstName &&
        birthDate == other.birthDate &&
        sex == other.sex &&
        mail == other.mail &&
        phoneNumber == other.phoneNumber &&
        ins == other.ins &&
        onboarding == other.onboarding &&
        inseeCode == other.inseeCode &&
        cguAcceptedAt == other.cguAcceptedAt &&
        hasConfidentialitySettingsSet == other.hasConfidentialitySettingsSet &&
        ensStatus == other.ensStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, birthDate.hashCode);
    _$hash = $jc(_$hash, sex.hashCode);
    _$hash = $jc(_$hash, mail.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, ins.hashCode);
    _$hash = $jc(_$hash, onboarding.hashCode);
    _$hash = $jc(_$hash, inseeCode.hashCode);
    _$hash = $jc(_$hash, cguAcceptedAt.hashCode);
    _$hash = $jc(_$hash, hasConfidentialitySettingsSet.hashCode);
    _$hash = $jc(_$hash, ensStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_ouvrant_droits_dataData_getPersonalInformation')
          ..add('G__typename', G__typename)
          ..add('lastName', lastName)
          ..add('firstName', firstName)
          ..add('birthDate', birthDate)
          ..add('sex', sex)
          ..add('mail', mail)
          ..add('phoneNumber', phoneNumber)
          ..add('ins', ins)
          ..add('onboarding', onboarding)
          ..add('inseeCode', inseeCode)
          ..add('cguAcceptedAt', cguAcceptedAt)
          ..add('hasConfidentialitySettingsSet', hasConfidentialitySettingsSet)
          ..add('ensStatus', ensStatus))
        .toString();
  }
}

class Gget_ouvrant_droits_dataData_getPersonalInformationBuilder
    implements
        Builder<Gget_ouvrant_droits_dataData_getPersonalInformation,
            Gget_ouvrant_droits_dataData_getPersonalInformationBuilder> {
  _$Gget_ouvrant_droits_dataData_getPersonalInformation? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _birthDate;
  String? get birthDate => _$this._birthDate;
  set birthDate(String? birthDate) => _$this._birthDate = birthDate;

  String? _sex;
  String? get sex => _$this._sex;
  set sex(String? sex) => _$this._sex = sex;

  String? _mail;
  String? get mail => _$this._mail;
  set mail(String? mail) => _$this._mail = mail;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _ins;
  String? get ins => _$this._ins;
  set ins(String? ins) => _$this._ins = ins;

  String? _onboarding;
  String? get onboarding => _$this._onboarding;
  set onboarding(String? onboarding) => _$this._onboarding = onboarding;

  String? _inseeCode;
  String? get inseeCode => _$this._inseeCode;
  set inseeCode(String? inseeCode) => _$this._inseeCode = inseeCode;

  String? _cguAcceptedAt;
  String? get cguAcceptedAt => _$this._cguAcceptedAt;
  set cguAcceptedAt(String? cguAcceptedAt) =>
      _$this._cguAcceptedAt = cguAcceptedAt;

  bool? _hasConfidentialitySettingsSet;
  bool? get hasConfidentialitySettingsSet =>
      _$this._hasConfidentialitySettingsSet;
  set hasConfidentialitySettingsSet(bool? hasConfidentialitySettingsSet) =>
      _$this._hasConfidentialitySettingsSet = hasConfidentialitySettingsSet;

  String? _ensStatus;
  String? get ensStatus => _$this._ensStatus;
  set ensStatus(String? ensStatus) => _$this._ensStatus = ensStatus;

  Gget_ouvrant_droits_dataData_getPersonalInformationBuilder() {
    Gget_ouvrant_droits_dataData_getPersonalInformation._initializeBuilder(
        this);
  }

  Gget_ouvrant_droits_dataData_getPersonalInformationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _lastName = $v.lastName;
      _firstName = $v.firstName;
      _birthDate = $v.birthDate;
      _sex = $v.sex;
      _mail = $v.mail;
      _phoneNumber = $v.phoneNumber;
      _ins = $v.ins;
      _onboarding = $v.onboarding;
      _inseeCode = $v.inseeCode;
      _cguAcceptedAt = $v.cguAcceptedAt;
      _hasConfidentialitySettingsSet = $v.hasConfidentialitySettingsSet;
      _ensStatus = $v.ensStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_ouvrant_droits_dataData_getPersonalInformation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_ouvrant_droits_dataData_getPersonalInformation;
  }

  @override
  void update(
      void Function(Gget_ouvrant_droits_dataData_getPersonalInformationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_ouvrant_droits_dataData_getPersonalInformation build() => _build();

  _$Gget_ouvrant_droits_dataData_getPersonalInformation _build() {
    final _$result = _$v ??
        new _$Gget_ouvrant_droits_dataData_getPersonalInformation._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'Gget_ouvrant_droits_dataData_getPersonalInformation', 'G__typename'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'Gget_ouvrant_droits_dataData_getPersonalInformation', 'lastName'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'Gget_ouvrant_droits_dataData_getPersonalInformation', 'firstName'),
            birthDate: BuiltValueNullFieldError.checkNotNull(
                birthDate, r'Gget_ouvrant_droits_dataData_getPersonalInformation', 'birthDate'),
            sex: BuiltValueNullFieldError.checkNotNull(
                sex, r'Gget_ouvrant_droits_dataData_getPersonalInformation', 'sex'),
            mail: mail,
            phoneNumber: phoneNumber,
            ins: BuiltValueNullFieldError.checkNotNull(
                ins, r'Gget_ouvrant_droits_dataData_getPersonalInformation', 'ins'),
            onboarding: onboarding,
            inseeCode: inseeCode,
            cguAcceptedAt: cguAcceptedAt,
            hasConfidentialitySettingsSet: BuiltValueNullFieldError.checkNotNull(
                hasConfidentialitySettingsSet, r'Gget_ouvrant_droits_dataData_getPersonalInformation', 'hasConfidentialitySettingsSet'),
            ensStatus: BuiltValueNullFieldError.checkNotNull(ensStatus, r'Gget_ouvrant_droits_dataData_getPersonalInformation', 'ensStatus'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_ouvrant_droits_dataData_getAyantsDroits
    extends Gget_ouvrant_droits_dataData_getAyantsDroits {
  @override
  final String G__typename;
  @override
  final String patientId;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final bool isAide;

  factory _$Gget_ouvrant_droits_dataData_getAyantsDroits(
          [void Function(Gget_ouvrant_droits_dataData_getAyantsDroitsBuilder)?
              updates]) =>
      (new Gget_ouvrant_droits_dataData_getAyantsDroitsBuilder()
            ..update(updates))
          ._build();

  _$Gget_ouvrant_droits_dataData_getAyantsDroits._(
      {required this.G__typename,
      required this.patientId,
      required this.firstName,
      required this.lastName,
      required this.isAide})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_ouvrant_droits_dataData_getAyantsDroits', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(patientId,
        r'Gget_ouvrant_droits_dataData_getAyantsDroits', 'patientId');
    BuiltValueNullFieldError.checkNotNull(firstName,
        r'Gget_ouvrant_droits_dataData_getAyantsDroits', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, r'Gget_ouvrant_droits_dataData_getAyantsDroits', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        isAide, r'Gget_ouvrant_droits_dataData_getAyantsDroits', 'isAide');
  }

  @override
  Gget_ouvrant_droits_dataData_getAyantsDroits rebuild(
          void Function(Gget_ouvrant_droits_dataData_getAyantsDroitsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_ouvrant_droits_dataData_getAyantsDroitsBuilder toBuilder() =>
      new Gget_ouvrant_droits_dataData_getAyantsDroitsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_ouvrant_droits_dataData_getAyantsDroits &&
        G__typename == other.G__typename &&
        patientId == other.patientId &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        isAide == other.isAide;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, isAide.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_ouvrant_droits_dataData_getAyantsDroits')
          ..add('G__typename', G__typename)
          ..add('patientId', patientId)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('isAide', isAide))
        .toString();
  }
}

class Gget_ouvrant_droits_dataData_getAyantsDroitsBuilder
    implements
        Builder<Gget_ouvrant_droits_dataData_getAyantsDroits,
            Gget_ouvrant_droits_dataData_getAyantsDroitsBuilder> {
  _$Gget_ouvrant_droits_dataData_getAyantsDroits? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  bool? _isAide;
  bool? get isAide => _$this._isAide;
  set isAide(bool? isAide) => _$this._isAide = isAide;

  Gget_ouvrant_droits_dataData_getAyantsDroitsBuilder() {
    Gget_ouvrant_droits_dataData_getAyantsDroits._initializeBuilder(this);
  }

  Gget_ouvrant_droits_dataData_getAyantsDroitsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _patientId = $v.patientId;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _isAide = $v.isAide;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_ouvrant_droits_dataData_getAyantsDroits other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_ouvrant_droits_dataData_getAyantsDroits;
  }

  @override
  void update(
      void Function(Gget_ouvrant_droits_dataData_getAyantsDroitsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_ouvrant_droits_dataData_getAyantsDroits build() => _build();

  _$Gget_ouvrant_droits_dataData_getAyantsDroits _build() {
    final _$result = _$v ??
        new _$Gget_ouvrant_droits_dataData_getAyantsDroits._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gget_ouvrant_droits_dataData_getAyantsDroits', 'G__typename'),
            patientId: BuiltValueNullFieldError.checkNotNull(patientId,
                r'Gget_ouvrant_droits_dataData_getAyantsDroits', 'patientId'),
            firstName: BuiltValueNullFieldError.checkNotNull(firstName,
                r'Gget_ouvrant_droits_dataData_getAyantsDroits', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(lastName,
                r'Gget_ouvrant_droits_dataData_getAyantsDroits', 'lastName'),
            isAide: BuiltValueNullFieldError.checkNotNull(
                isAide, r'Gget_ouvrant_droits_dataData_getAyantsDroits', 'isAide'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_ouvrant_droits_dataData_fetchNotificationCenter
    extends Gget_ouvrant_droits_dataData_fetchNotificationCenter {
  @override
  final String G__typename;
  @override
  final int unreadNotificationsCount;

  factory _$Gget_ouvrant_droits_dataData_fetchNotificationCenter(
          [void Function(
                  Gget_ouvrant_droits_dataData_fetchNotificationCenterBuilder)?
              updates]) =>
      (new Gget_ouvrant_droits_dataData_fetchNotificationCenterBuilder()
            ..update(updates))
          ._build();

  _$Gget_ouvrant_droits_dataData_fetchNotificationCenter._(
      {required this.G__typename, required this.unreadNotificationsCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_ouvrant_droits_dataData_fetchNotificationCenter', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        unreadNotificationsCount,
        r'Gget_ouvrant_droits_dataData_fetchNotificationCenter',
        'unreadNotificationsCount');
  }

  @override
  Gget_ouvrant_droits_dataData_fetchNotificationCenter rebuild(
          void Function(
                  Gget_ouvrant_droits_dataData_fetchNotificationCenterBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_ouvrant_droits_dataData_fetchNotificationCenterBuilder toBuilder() =>
      new Gget_ouvrant_droits_dataData_fetchNotificationCenterBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_ouvrant_droits_dataData_fetchNotificationCenter &&
        G__typename == other.G__typename &&
        unreadNotificationsCount == other.unreadNotificationsCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, unreadNotificationsCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_ouvrant_droits_dataData_fetchNotificationCenter')
          ..add('G__typename', G__typename)
          ..add('unreadNotificationsCount', unreadNotificationsCount))
        .toString();
  }
}

class Gget_ouvrant_droits_dataData_fetchNotificationCenterBuilder
    implements
        Builder<Gget_ouvrant_droits_dataData_fetchNotificationCenter,
            Gget_ouvrant_droits_dataData_fetchNotificationCenterBuilder> {
  _$Gget_ouvrant_droits_dataData_fetchNotificationCenter? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _unreadNotificationsCount;
  int? get unreadNotificationsCount => _$this._unreadNotificationsCount;
  set unreadNotificationsCount(int? unreadNotificationsCount) =>
      _$this._unreadNotificationsCount = unreadNotificationsCount;

  Gget_ouvrant_droits_dataData_fetchNotificationCenterBuilder() {
    Gget_ouvrant_droits_dataData_fetchNotificationCenter._initializeBuilder(
        this);
  }

  Gget_ouvrant_droits_dataData_fetchNotificationCenterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _unreadNotificationsCount = $v.unreadNotificationsCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_ouvrant_droits_dataData_fetchNotificationCenter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_ouvrant_droits_dataData_fetchNotificationCenter;
  }

  @override
  void update(
      void Function(
              Gget_ouvrant_droits_dataData_fetchNotificationCenterBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_ouvrant_droits_dataData_fetchNotificationCenter build() => _build();

  _$Gget_ouvrant_droits_dataData_fetchNotificationCenter _build() {
    final _$result = _$v ??
        new _$Gget_ouvrant_droits_dataData_fetchNotificationCenter._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_ouvrant_droits_dataData_fetchNotificationCenter',
                'G__typename'),
            unreadNotificationsCount: BuiltValueNullFieldError.checkNotNull(
                unreadNotificationsCount,
                r'Gget_ouvrant_droits_dataData_fetchNotificationCenter',
                'unreadNotificationsCount'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_ouvrant_droits_dataData_getPendingInvitations
    extends Gget_ouvrant_droits_dataData_getPendingInvitations {
  @override
  final String G__typename;
  @override
  final BuiltList<
          Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations>?
      pendingInvitations;

  factory _$Gget_ouvrant_droits_dataData_getPendingInvitations(
          [void Function(
                  Gget_ouvrant_droits_dataData_getPendingInvitationsBuilder)?
              updates]) =>
      (new Gget_ouvrant_droits_dataData_getPendingInvitationsBuilder()
            ..update(updates))
          ._build();

  _$Gget_ouvrant_droits_dataData_getPendingInvitations._(
      {required this.G__typename, this.pendingInvitations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_ouvrant_droits_dataData_getPendingInvitations', 'G__typename');
  }

  @override
  Gget_ouvrant_droits_dataData_getPendingInvitations rebuild(
          void Function(
                  Gget_ouvrant_droits_dataData_getPendingInvitationsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_ouvrant_droits_dataData_getPendingInvitationsBuilder toBuilder() =>
      new Gget_ouvrant_droits_dataData_getPendingInvitationsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_ouvrant_droits_dataData_getPendingInvitations &&
        G__typename == other.G__typename &&
        pendingInvitations == other.pendingInvitations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pendingInvitations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_ouvrant_droits_dataData_getPendingInvitations')
          ..add('G__typename', G__typename)
          ..add('pendingInvitations', pendingInvitations))
        .toString();
  }
}

class Gget_ouvrant_droits_dataData_getPendingInvitationsBuilder
    implements
        Builder<Gget_ouvrant_droits_dataData_getPendingInvitations,
            Gget_ouvrant_droits_dataData_getPendingInvitationsBuilder> {
  _$Gget_ouvrant_droits_dataData_getPendingInvitations? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<
          Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations>?
      _pendingInvitations;
  ListBuilder<
          Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations>
      get pendingInvitations => _$this._pendingInvitations ??= new ListBuilder<
          Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations>();
  set pendingInvitations(
          ListBuilder<
                  Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations>?
              pendingInvitations) =>
      _$this._pendingInvitations = pendingInvitations;

  Gget_ouvrant_droits_dataData_getPendingInvitationsBuilder() {
    Gget_ouvrant_droits_dataData_getPendingInvitations._initializeBuilder(this);
  }

  Gget_ouvrant_droits_dataData_getPendingInvitationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pendingInvitations = $v.pendingInvitations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_ouvrant_droits_dataData_getPendingInvitations other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_ouvrant_droits_dataData_getPendingInvitations;
  }

  @override
  void update(
      void Function(Gget_ouvrant_droits_dataData_getPendingInvitationsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_ouvrant_droits_dataData_getPendingInvitations build() => _build();

  _$Gget_ouvrant_droits_dataData_getPendingInvitations _build() {
    _$Gget_ouvrant_droits_dataData_getPendingInvitations _$result;
    try {
      _$result = _$v ??
          new _$Gget_ouvrant_droits_dataData_getPendingInvitations._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_ouvrant_droits_dataData_getPendingInvitations',
                  'G__typename'),
              pendingInvitations: _pendingInvitations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pendingInvitations';
        _pendingInvitations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_ouvrant_droits_dataData_getPendingInvitations',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations
    extends Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations {
  @override
  final String G__typename;
  @override
  final String lastName;
  @override
  final String firstName;
  @override
  final _i4.GDemandeAccesStatutEnum statut;
  @override
  final String idEns;
  @override
  final String endDate;
  @override
  final String birthDate;

  factory _$Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations(
          [void Function(
                  Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitationsBuilder)?
              updates]) =>
      (new Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitationsBuilder()
            ..update(updates))
          ._build();

  _$Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations._(
      {required this.G__typename,
      required this.lastName,
      required this.firstName,
      required this.statut,
      required this.idEns,
      required this.endDate,
      required this.birthDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        lastName,
        r'Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations',
        'lastName');
    BuiltValueNullFieldError.checkNotNull(
        firstName,
        r'Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations',
        'firstName');
    BuiltValueNullFieldError.checkNotNull(
        statut,
        r'Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations',
        'statut');
    BuiltValueNullFieldError.checkNotNull(
        idEns,
        r'Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations',
        'idEns');
    BuiltValueNullFieldError.checkNotNull(
        endDate,
        r'Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations',
        'endDate');
    BuiltValueNullFieldError.checkNotNull(
        birthDate,
        r'Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations',
        'birthDate');
  }

  @override
  Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations rebuild(
          void Function(
                  Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitationsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitationsBuilder
      toBuilder() =>
          new Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitationsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations &&
        G__typename == other.G__typename &&
        lastName == other.lastName &&
        firstName == other.firstName &&
        statut == other.statut &&
        idEns == other.idEns &&
        endDate == other.endDate &&
        birthDate == other.birthDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, statut.hashCode);
    _$hash = $jc(_$hash, idEns.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, birthDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations')
          ..add('G__typename', G__typename)
          ..add('lastName', lastName)
          ..add('firstName', firstName)
          ..add('statut', statut)
          ..add('idEns', idEns)
          ..add('endDate', endDate)
          ..add('birthDate', birthDate))
        .toString();
  }
}

class Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitationsBuilder
    implements
        Builder<
            Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations,
            Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitationsBuilder> {
  _$Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  _i4.GDemandeAccesStatutEnum? _statut;
  _i4.GDemandeAccesStatutEnum? get statut => _$this._statut;
  set statut(_i4.GDemandeAccesStatutEnum? statut) => _$this._statut = statut;

  String? _idEns;
  String? get idEns => _$this._idEns;
  set idEns(String? idEns) => _$this._idEns = idEns;

  String? _endDate;
  String? get endDate => _$this._endDate;
  set endDate(String? endDate) => _$this._endDate = endDate;

  String? _birthDate;
  String? get birthDate => _$this._birthDate;
  set birthDate(String? birthDate) => _$this._birthDate = birthDate;

  Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitationsBuilder() {
    Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations
        ._initializeBuilder(this);
  }

  Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitationsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _lastName = $v.lastName;
      _firstName = $v.firstName;
      _statut = $v.statut;
      _idEns = $v.idEns;
      _endDate = $v.endDate;
      _birthDate = $v.birthDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations;
  }

  @override
  void update(
      void Function(
              Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitationsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations
      build() => _build();

  _$Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations
      _build() {
    final _$result = _$v ??
        new _$Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations',
                'G__typename'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations', 'lastName'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName,
                r'Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations',
                'firstName'),
            statut: BuiltValueNullFieldError.checkNotNull(
                statut, r'Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations', 'statut'),
            idEns: BuiltValueNullFieldError.checkNotNull(
                idEns, r'Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations', 'idEns'),
            endDate: BuiltValueNullFieldError.checkNotNull(
                endDate, r'Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations', 'endDate'),
            birthDate: BuiltValueNullFieldError.checkNotNull(birthDate, r'Gget_ouvrant_droits_dataData_getPendingInvitations_pendingInvitations', 'birthDate'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
