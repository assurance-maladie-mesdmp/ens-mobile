// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_get_notification_center.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_notification_centerData>
    _$ggetNotificationCenterDataSerializer =
    new _$Gget_notification_centerDataSerializer();
Serializer<Gget_notification_centerData_fetchNotificationCenter>
    _$ggetNotificationCenterDataFetchNotificationCenterSerializer =
    new _$Gget_notification_centerData_fetchNotificationCenterSerializer();
Serializer<Gget_notification_centerData_fetchNotificationCenter_profiles>
    _$ggetNotificationCenterDataFetchNotificationCenterProfilesSerializer =
    new _$Gget_notification_centerData_fetchNotificationCenter_profilesSerializer();
Serializer<
        Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil>
    _$ggetNotificationCenterDataFetchNotificationCenterProfilesEnsProfilSerializer =
    new _$Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfilSerializer();
Serializer<
        Gget_notification_centerData_fetchNotificationCenter_profiles_notifications>
    _$ggetNotificationCenterDataFetchNotificationCenterProfilesNotificationsSerializer =
    new _$Gget_notification_centerData_fetchNotificationCenter_profiles_notificationsSerializer();
Serializer<
        Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor>
    _$ggetNotificationCenterDataFetchNotificationCenterProfilesNotificationsActorSerializer =
    new _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actorSerializer();
Serializer<
        Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource>
    _$ggetNotificationCenterDataFetchNotificationCenterProfilesNotificationsResourceSerializer =
    new _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resourceSerializer();

class _$Gget_notification_centerDataSerializer
    implements StructuredSerializer<Gget_notification_centerData> {
  @override
  final Iterable<Type> types = const [
    Gget_notification_centerData,
    _$Gget_notification_centerData
  ];
  @override
  final String wireName = 'Gget_notification_centerData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_notification_centerData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.fetchNotificationCenter;
    if (value != null) {
      result
        ..add('fetchNotificationCenter')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_notification_centerData_fetchNotificationCenter)));
    }
    return result;
  }

  @override
  Gget_notification_centerData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_notification_centerDataBuilder();

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
        case 'fetchNotificationCenter':
          result.fetchNotificationCenter.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_notification_centerData_fetchNotificationCenter))!
              as Gget_notification_centerData_fetchNotificationCenter);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_notification_centerData_fetchNotificationCenterSerializer
    implements
        StructuredSerializer<
            Gget_notification_centerData_fetchNotificationCenter> {
  @override
  final Iterable<Type> types = const [
    Gget_notification_centerData_fetchNotificationCenter,
    _$Gget_notification_centerData_fetchNotificationCenter
  ];
  @override
  final String wireName =
      'Gget_notification_centerData_fetchNotificationCenter';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_notification_centerData_fetchNotificationCenter object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'profiles',
      serializers.serialize(object.profiles,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_notification_centerData_fetchNotificationCenter_profiles)
          ])),
    ];

    return result;
  }

  @override
  Gget_notification_centerData_fetchNotificationCenter deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_notification_centerData_fetchNotificationCenterBuilder();

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
        case 'profiles':
          result.profiles.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_notification_centerData_fetchNotificationCenter_profiles)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_notification_centerData_fetchNotificationCenter_profilesSerializer
    implements
        StructuredSerializer<
            Gget_notification_centerData_fetchNotificationCenter_profiles> {
  @override
  final Iterable<Type> types = const [
    Gget_notification_centerData_fetchNotificationCenter_profiles,
    _$Gget_notification_centerData_fetchNotificationCenter_profiles
  ];
  @override
  final String wireName =
      'Gget_notification_centerData_fetchNotificationCenter_profiles';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_notification_centerData_fetchNotificationCenter_profiles object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'unreadNotificationsCount',
      serializers.serialize(object.unreadNotificationsCount,
          specifiedType: const FullType(int)),
      'ensProfil',
      serializers.serialize(object.ensProfil,
          specifiedType: const FullType(
              Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil)),
      'notifications',
      serializers.serialize(object.notifications,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_notification_centerData_fetchNotificationCenter_profiles_notifications)
          ])),
    ];

    return result;
  }

  @override
  Gget_notification_centerData_fetchNotificationCenter_profiles deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_notification_centerData_fetchNotificationCenter_profilesBuilder();

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
        case 'ensProfil':
          result.ensProfil.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil))!
              as Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil);
          break;
        case 'notifications':
          result.notifications.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_notification_centerData_fetchNotificationCenter_profiles_notifications)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfilSerializer
    implements
        StructuredSerializer<
            Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil> {
  @override
  final Iterable<Type> types = const [
    Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil,
    _$Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil
  ];
  @override
  final String wireName =
      'Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'firstname',
      serializers.serialize(object.firstname,
          specifiedType: const FullType(String)),
      'lastname',
      serializers.serialize(object.lastname,
          specifiedType: const FullType(String)),
      'profileType',
      serializers.serialize(object.profileType,
          specifiedType: const FullType(_i3.GProfileType)),
    ];

    return result;
  }

  @override
  Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfilBuilder();

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
        case 'firstname':
          result.firstname = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastname':
          result.lastname = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'profileType':
          result.profileType = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GProfileType))!
              as _i3.GProfileType;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_notification_centerData_fetchNotificationCenter_profiles_notificationsSerializer
    implements
        StructuredSerializer<
            Gget_notification_centerData_fetchNotificationCenter_profiles_notifications> {
  @override
  final Iterable<Type> types = const [
    Gget_notification_centerData_fetchNotificationCenter_profiles_notifications,
    _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications
  ];
  @override
  final String wireName =
      'Gget_notification_centerData_fetchNotificationCenter_profiles_notifications';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_notification_centerData_fetchNotificationCenter_profiles_notifications
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'elapsedTime',
      serializers.serialize(object.elapsedTime,
          specifiedType: const FullType(String)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
      'read',
      serializers.serialize(object.read, specifiedType: const FullType(bool)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'actor',
      serializers.serialize(object.actor,
          specifiedType: const FullType(
              Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor)),
    ];
    Object? value;
    value = object.resource;
    if (value != null) {
      result
        ..add('resource')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource)));
    }
    value = object.urn;
    if (value != null) {
      result
        ..add('urn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.redirectionLabel;
    if (value != null) {
      result
        ..add('redirectionLabel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_notification_centerData_fetchNotificationCenter_profiles_notifications
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_notification_centerData_fetchNotificationCenter_profiles_notificationsBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'elapsedTime':
          result.elapsedTime = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'read':
          result.read = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'actor':
          result.actor.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor))!
              as Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor);
          break;
        case 'resource':
          result.resource.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource))!
              as Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource);
          break;
        case 'urn':
          result.urn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'redirectionLabel':
          result.redirectionLabel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actorSerializer
    implements
        StructuredSerializer<
            Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor> {
  @override
  final Iterable<Type> types = const [
    Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor,
    _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor
  ];
  @override
  final String wireName =
      'Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GActorType)));
    }
    value = object.fullname;
    if (value != null) {
      result
        ..add('fullname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actorBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(_i3.GActorType)) as _i3.GActorType?;
          break;
        case 'fullname':
          result.fullname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resourceSerializer
    implements
        StructuredSerializer<
            Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource> {
  @override
  final Iterable<Type> types = const [
    Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource,
    _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource
  ];
  @override
  final String wireName =
      'Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GResourceType)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resourceBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GResourceType))
              as _i3.GResourceType?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_notification_centerData extends Gget_notification_centerData {
  @override
  final String G__typename;
  @override
  final Gget_notification_centerData_fetchNotificationCenter?
      fetchNotificationCenter;

  factory _$Gget_notification_centerData(
          [void Function(Gget_notification_centerDataBuilder)? updates]) =>
      (new Gget_notification_centerDataBuilder()..update(updates))._build();

  _$Gget_notification_centerData._(
      {required this.G__typename, this.fetchNotificationCenter})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_notification_centerData', 'G__typename');
  }

  @override
  Gget_notification_centerData rebuild(
          void Function(Gget_notification_centerDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_notification_centerDataBuilder toBuilder() =>
      new Gget_notification_centerDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_notification_centerData &&
        G__typename == other.G__typename &&
        fetchNotificationCenter == other.fetchNotificationCenter;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, fetchNotificationCenter.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_notification_centerData')
          ..add('G__typename', G__typename)
          ..add('fetchNotificationCenter', fetchNotificationCenter))
        .toString();
  }
}

class Gget_notification_centerDataBuilder
    implements
        Builder<Gget_notification_centerData,
            Gget_notification_centerDataBuilder> {
  _$Gget_notification_centerData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_notification_centerData_fetchNotificationCenterBuilder?
      _fetchNotificationCenter;
  Gget_notification_centerData_fetchNotificationCenterBuilder
      get fetchNotificationCenter => _$this._fetchNotificationCenter ??=
          new Gget_notification_centerData_fetchNotificationCenterBuilder();
  set fetchNotificationCenter(
          Gget_notification_centerData_fetchNotificationCenterBuilder?
              fetchNotificationCenter) =>
      _$this._fetchNotificationCenter = fetchNotificationCenter;

  Gget_notification_centerDataBuilder() {
    Gget_notification_centerData._initializeBuilder(this);
  }

  Gget_notification_centerDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _fetchNotificationCenter = $v.fetchNotificationCenter?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_notification_centerData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_notification_centerData;
  }

  @override
  void update(void Function(Gget_notification_centerDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_notification_centerData build() => _build();

  _$Gget_notification_centerData _build() {
    _$Gget_notification_centerData _$result;
    try {
      _$result = _$v ??
          new _$Gget_notification_centerData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_notification_centerData', 'G__typename'),
              fetchNotificationCenter: _fetchNotificationCenter?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fetchNotificationCenter';
        _fetchNotificationCenter?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_notification_centerData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_notification_centerData_fetchNotificationCenter
    extends Gget_notification_centerData_fetchNotificationCenter {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_notification_centerData_fetchNotificationCenter_profiles>
      profiles;

  factory _$Gget_notification_centerData_fetchNotificationCenter(
          [void Function(
                  Gget_notification_centerData_fetchNotificationCenterBuilder)?
              updates]) =>
      (new Gget_notification_centerData_fetchNotificationCenterBuilder()
            ..update(updates))
          ._build();

  _$Gget_notification_centerData_fetchNotificationCenter._(
      {required this.G__typename, required this.profiles})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_notification_centerData_fetchNotificationCenter', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(profiles,
        r'Gget_notification_centerData_fetchNotificationCenter', 'profiles');
  }

  @override
  Gget_notification_centerData_fetchNotificationCenter rebuild(
          void Function(
                  Gget_notification_centerData_fetchNotificationCenterBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_notification_centerData_fetchNotificationCenterBuilder toBuilder() =>
      new Gget_notification_centerData_fetchNotificationCenterBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_notification_centerData_fetchNotificationCenter &&
        G__typename == other.G__typename &&
        profiles == other.profiles;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, profiles.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_notification_centerData_fetchNotificationCenter')
          ..add('G__typename', G__typename)
          ..add('profiles', profiles))
        .toString();
  }
}

class Gget_notification_centerData_fetchNotificationCenterBuilder
    implements
        Builder<Gget_notification_centerData_fetchNotificationCenter,
            Gget_notification_centerData_fetchNotificationCenterBuilder> {
  _$Gget_notification_centerData_fetchNotificationCenter? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_notification_centerData_fetchNotificationCenter_profiles>?
      _profiles;
  ListBuilder<Gget_notification_centerData_fetchNotificationCenter_profiles>
      get profiles => _$this._profiles ??= new ListBuilder<
          Gget_notification_centerData_fetchNotificationCenter_profiles>();
  set profiles(
          ListBuilder<
                  Gget_notification_centerData_fetchNotificationCenter_profiles>?
              profiles) =>
      _$this._profiles = profiles;

  Gget_notification_centerData_fetchNotificationCenterBuilder() {
    Gget_notification_centerData_fetchNotificationCenter._initializeBuilder(
        this);
  }

  Gget_notification_centerData_fetchNotificationCenterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _profiles = $v.profiles.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_notification_centerData_fetchNotificationCenter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_notification_centerData_fetchNotificationCenter;
  }

  @override
  void update(
      void Function(
              Gget_notification_centerData_fetchNotificationCenterBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_notification_centerData_fetchNotificationCenter build() => _build();

  _$Gget_notification_centerData_fetchNotificationCenter _build() {
    _$Gget_notification_centerData_fetchNotificationCenter _$result;
    try {
      _$result = _$v ??
          new _$Gget_notification_centerData_fetchNotificationCenter._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_notification_centerData_fetchNotificationCenter',
                  'G__typename'),
              profiles: profiles.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'profiles';
        profiles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_notification_centerData_fetchNotificationCenter',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_notification_centerData_fetchNotificationCenter_profiles
    extends Gget_notification_centerData_fetchNotificationCenter_profiles {
  @override
  final String G__typename;
  @override
  final int unreadNotificationsCount;
  @override
  final Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil
      ensProfil;
  @override
  final BuiltList<
          Gget_notification_centerData_fetchNotificationCenter_profiles_notifications>
      notifications;

  factory _$Gget_notification_centerData_fetchNotificationCenter_profiles(
          [void Function(
                  Gget_notification_centerData_fetchNotificationCenter_profilesBuilder)?
              updates]) =>
      (new Gget_notification_centerData_fetchNotificationCenter_profilesBuilder()
            ..update(updates))
          ._build();

  _$Gget_notification_centerData_fetchNotificationCenter_profiles._(
      {required this.G__typename,
      required this.unreadNotificationsCount,
      required this.ensProfil,
      required this.notifications})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_notification_centerData_fetchNotificationCenter_profiles',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        unreadNotificationsCount,
        r'Gget_notification_centerData_fetchNotificationCenter_profiles',
        'unreadNotificationsCount');
    BuiltValueNullFieldError.checkNotNull(
        ensProfil,
        r'Gget_notification_centerData_fetchNotificationCenter_profiles',
        'ensProfil');
    BuiltValueNullFieldError.checkNotNull(
        notifications,
        r'Gget_notification_centerData_fetchNotificationCenter_profiles',
        'notifications');
  }

  @override
  Gget_notification_centerData_fetchNotificationCenter_profiles rebuild(
          void Function(
                  Gget_notification_centerData_fetchNotificationCenter_profilesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_notification_centerData_fetchNotificationCenter_profilesBuilder
      toBuilder() =>
          new Gget_notification_centerData_fetchNotificationCenter_profilesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_notification_centerData_fetchNotificationCenter_profiles &&
        G__typename == other.G__typename &&
        unreadNotificationsCount == other.unreadNotificationsCount &&
        ensProfil == other.ensProfil &&
        notifications == other.notifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, unreadNotificationsCount.hashCode);
    _$hash = $jc(_$hash, ensProfil.hashCode);
    _$hash = $jc(_$hash, notifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_notification_centerData_fetchNotificationCenter_profiles')
          ..add('G__typename', G__typename)
          ..add('unreadNotificationsCount', unreadNotificationsCount)
          ..add('ensProfil', ensProfil)
          ..add('notifications', notifications))
        .toString();
  }
}

class Gget_notification_centerData_fetchNotificationCenter_profilesBuilder
    implements
        Builder<Gget_notification_centerData_fetchNotificationCenter_profiles,
            Gget_notification_centerData_fetchNotificationCenter_profilesBuilder> {
  _$Gget_notification_centerData_fetchNotificationCenter_profiles? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _unreadNotificationsCount;
  int? get unreadNotificationsCount => _$this._unreadNotificationsCount;
  set unreadNotificationsCount(int? unreadNotificationsCount) =>
      _$this._unreadNotificationsCount = unreadNotificationsCount;

  Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfilBuilder?
      _ensProfil;
  Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfilBuilder
      get ensProfil => _$this._ensProfil ??=
          new Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfilBuilder();
  set ensProfil(
          Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfilBuilder?
              ensProfil) =>
      _$this._ensProfil = ensProfil;

  ListBuilder<
          Gget_notification_centerData_fetchNotificationCenter_profiles_notifications>?
      _notifications;
  ListBuilder<
          Gget_notification_centerData_fetchNotificationCenter_profiles_notifications>
      get notifications => _$this._notifications ??= new ListBuilder<
          Gget_notification_centerData_fetchNotificationCenter_profiles_notifications>();
  set notifications(
          ListBuilder<
                  Gget_notification_centerData_fetchNotificationCenter_profiles_notifications>?
              notifications) =>
      _$this._notifications = notifications;

  Gget_notification_centerData_fetchNotificationCenter_profilesBuilder() {
    Gget_notification_centerData_fetchNotificationCenter_profiles
        ._initializeBuilder(this);
  }

  Gget_notification_centerData_fetchNotificationCenter_profilesBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _unreadNotificationsCount = $v.unreadNotificationsCount;
      _ensProfil = $v.ensProfil.toBuilder();
      _notifications = $v.notifications.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_notification_centerData_fetchNotificationCenter_profiles other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_notification_centerData_fetchNotificationCenter_profiles;
  }

  @override
  void update(
      void Function(
              Gget_notification_centerData_fetchNotificationCenter_profilesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_notification_centerData_fetchNotificationCenter_profiles build() =>
      _build();

  _$Gget_notification_centerData_fetchNotificationCenter_profiles _build() {
    _$Gget_notification_centerData_fetchNotificationCenter_profiles _$result;
    try {
      _$result = _$v ??
          new _$Gget_notification_centerData_fetchNotificationCenter_profiles._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_notification_centerData_fetchNotificationCenter_profiles',
                  'G__typename'),
              unreadNotificationsCount: BuiltValueNullFieldError.checkNotNull(
                  unreadNotificationsCount,
                  r'Gget_notification_centerData_fetchNotificationCenter_profiles',
                  'unreadNotificationsCount'),
              ensProfil: ensProfil.build(),
              notifications: notifications.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ensProfil';
        ensProfil.build();
        _$failedField = 'notifications';
        notifications.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_notification_centerData_fetchNotificationCenter_profiles',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil
    extends Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil {
  @override
  final String G__typename;
  @override
  final String patientId;
  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final _i3.GProfileType profileType;

  factory _$Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil(
          [void Function(
                  Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfilBuilder)?
              updates]) =>
      (new Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfilBuilder()
            ..update(updates))
          ._build();

  _$Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil._(
      {required this.G__typename,
      required this.patientId,
      required this.firstname,
      required this.lastname,
      required this.profileType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        patientId,
        r'Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil',
        'patientId');
    BuiltValueNullFieldError.checkNotNull(
        firstname,
        r'Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil',
        'firstname');
    BuiltValueNullFieldError.checkNotNull(
        lastname,
        r'Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil',
        'lastname');
    BuiltValueNullFieldError.checkNotNull(
        profileType,
        r'Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil',
        'profileType');
  }

  @override
  Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil rebuild(
          void Function(
                  Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfilBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfilBuilder
      toBuilder() =>
          new Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfilBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil &&
        G__typename == other.G__typename &&
        patientId == other.patientId &&
        firstname == other.firstname &&
        lastname == other.lastname &&
        profileType == other.profileType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, firstname.hashCode);
    _$hash = $jc(_$hash, lastname.hashCode);
    _$hash = $jc(_$hash, profileType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil')
          ..add('G__typename', G__typename)
          ..add('patientId', patientId)
          ..add('firstname', firstname)
          ..add('lastname', lastname)
          ..add('profileType', profileType))
        .toString();
  }
}

class Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfilBuilder
    implements
        Builder<
            Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil,
            Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfilBuilder> {
  _$Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _firstname;
  String? get firstname => _$this._firstname;
  set firstname(String? firstname) => _$this._firstname = firstname;

  String? _lastname;
  String? get lastname => _$this._lastname;
  set lastname(String? lastname) => _$this._lastname = lastname;

  _i3.GProfileType? _profileType;
  _i3.GProfileType? get profileType => _$this._profileType;
  set profileType(_i3.GProfileType? profileType) =>
      _$this._profileType = profileType;

  Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfilBuilder() {
    Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil
        ._initializeBuilder(this);
  }

  Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfilBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _patientId = $v.patientId;
      _firstname = $v.firstname;
      _lastname = $v.lastname;
      _profileType = $v.profileType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil;
  }

  @override
  void update(
      void Function(
              Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfilBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil
      build() => _build();

  _$Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil
      _build() {
    final _$result = _$v ??
        new _$Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil',
                'G__typename'),
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId,
                r'Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil',
                'patientId'),
            firstname: BuiltValueNullFieldError.checkNotNull(
                firstname,
                r'Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil',
                'firstname'),
            lastname: BuiltValueNullFieldError.checkNotNull(
                lastname, r'Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil', 'lastname'),
            profileType: BuiltValueNullFieldError.checkNotNull(
                profileType,
                r'Gget_notification_centerData_fetchNotificationCenter_profiles_ensProfil',
                'profileType'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications
    extends Gget_notification_centerData_fetchNotificationCenter_profiles_notifications {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String date;
  @override
  final String elapsedTime;
  @override
  final String label;
  @override
  final bool read;
  @override
  final String code;
  @override
  final Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor
      actor;
  @override
  final Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource?
      resource;
  @override
  final String? urn;
  @override
  final String? redirectionLabel;

  factory _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications(
          [void Function(
                  Gget_notification_centerData_fetchNotificationCenter_profiles_notificationsBuilder)?
              updates]) =>
      (new Gget_notification_centerData_fetchNotificationCenter_profiles_notificationsBuilder()
            ..update(updates))
          ._build();

  _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications._(
      {required this.G__typename,
      required this.id,
      required this.date,
      required this.elapsedTime,
      required this.label,
      required this.read,
      required this.code,
      required this.actor,
      this.resource,
      this.urn,
      this.redirectionLabel})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_notification_centerData_fetchNotificationCenter_profiles_notifications',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'Gget_notification_centerData_fetchNotificationCenter_profiles_notifications',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        date,
        r'Gget_notification_centerData_fetchNotificationCenter_profiles_notifications',
        'date');
    BuiltValueNullFieldError.checkNotNull(
        elapsedTime,
        r'Gget_notification_centerData_fetchNotificationCenter_profiles_notifications',
        'elapsedTime');
    BuiltValueNullFieldError.checkNotNull(
        label,
        r'Gget_notification_centerData_fetchNotificationCenter_profiles_notifications',
        'label');
    BuiltValueNullFieldError.checkNotNull(
        read,
        r'Gget_notification_centerData_fetchNotificationCenter_profiles_notifications',
        'read');
    BuiltValueNullFieldError.checkNotNull(
        code,
        r'Gget_notification_centerData_fetchNotificationCenter_profiles_notifications',
        'code');
    BuiltValueNullFieldError.checkNotNull(
        actor,
        r'Gget_notification_centerData_fetchNotificationCenter_profiles_notifications',
        'actor');
  }

  @override
  Gget_notification_centerData_fetchNotificationCenter_profiles_notifications
      rebuild(
              void Function(
                      Gget_notification_centerData_fetchNotificationCenter_profiles_notificationsBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_notification_centerData_fetchNotificationCenter_profiles_notificationsBuilder
      toBuilder() =>
          new Gget_notification_centerData_fetchNotificationCenter_profiles_notificationsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_notification_centerData_fetchNotificationCenter_profiles_notifications &&
        G__typename == other.G__typename &&
        id == other.id &&
        date == other.date &&
        elapsedTime == other.elapsedTime &&
        label == other.label &&
        read == other.read &&
        code == other.code &&
        actor == other.actor &&
        resource == other.resource &&
        urn == other.urn &&
        redirectionLabel == other.redirectionLabel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, elapsedTime.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, read.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, actor.hashCode);
    _$hash = $jc(_$hash, resource.hashCode);
    _$hash = $jc(_$hash, urn.hashCode);
    _$hash = $jc(_$hash, redirectionLabel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_notification_centerData_fetchNotificationCenter_profiles_notifications')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('date', date)
          ..add('elapsedTime', elapsedTime)
          ..add('label', label)
          ..add('read', read)
          ..add('code', code)
          ..add('actor', actor)
          ..add('resource', resource)
          ..add('urn', urn)
          ..add('redirectionLabel', redirectionLabel))
        .toString();
  }
}

class Gget_notification_centerData_fetchNotificationCenter_profiles_notificationsBuilder
    implements
        Builder<
            Gget_notification_centerData_fetchNotificationCenter_profiles_notifications,
            Gget_notification_centerData_fetchNotificationCenter_profiles_notificationsBuilder> {
  _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _elapsedTime;
  String? get elapsedTime => _$this._elapsedTime;
  set elapsedTime(String? elapsedTime) => _$this._elapsedTime = elapsedTime;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  bool? _read;
  bool? get read => _$this._read;
  set read(bool? read) => _$this._read = read;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actorBuilder?
      _actor;
  Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actorBuilder
      get actor => _$this._actor ??=
          new Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actorBuilder();
  set actor(
          Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actorBuilder?
              actor) =>
      _$this._actor = actor;

  Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resourceBuilder?
      _resource;
  Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resourceBuilder
      get resource => _$this._resource ??=
          new Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resourceBuilder();
  set resource(
          Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resourceBuilder?
              resource) =>
      _$this._resource = resource;

  String? _urn;
  String? get urn => _$this._urn;
  set urn(String? urn) => _$this._urn = urn;

  String? _redirectionLabel;
  String? get redirectionLabel => _$this._redirectionLabel;
  set redirectionLabel(String? redirectionLabel) =>
      _$this._redirectionLabel = redirectionLabel;

  Gget_notification_centerData_fetchNotificationCenter_profiles_notificationsBuilder() {
    Gget_notification_centerData_fetchNotificationCenter_profiles_notifications
        ._initializeBuilder(this);
  }

  Gget_notification_centerData_fetchNotificationCenter_profiles_notificationsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _date = $v.date;
      _elapsedTime = $v.elapsedTime;
      _label = $v.label;
      _read = $v.read;
      _code = $v.code;
      _actor = $v.actor.toBuilder();
      _resource = $v.resource?.toBuilder();
      _urn = $v.urn;
      _redirectionLabel = $v.redirectionLabel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_notification_centerData_fetchNotificationCenter_profiles_notifications
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications;
  }

  @override
  void update(
      void Function(
              Gget_notification_centerData_fetchNotificationCenter_profiles_notificationsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_notification_centerData_fetchNotificationCenter_profiles_notifications
      build() => _build();

  _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications
      _build() {
    _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_notification_centerData_fetchNotificationCenter_profiles_notifications',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gget_notification_centerData_fetchNotificationCenter_profiles_notifications', 'id'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'Gget_notification_centerData_fetchNotificationCenter_profiles_notifications', 'date'),
              elapsedTime: BuiltValueNullFieldError.checkNotNull(
                  elapsedTime,
                  r'Gget_notification_centerData_fetchNotificationCenter_profiles_notifications',
                  'elapsedTime'),
              label: BuiltValueNullFieldError.checkNotNull(
                  label, r'Gget_notification_centerData_fetchNotificationCenter_profiles_notifications', 'label'),
              read: BuiltValueNullFieldError.checkNotNull(
                  read, r'Gget_notification_centerData_fetchNotificationCenter_profiles_notifications', 'read'),
              code: BuiltValueNullFieldError.checkNotNull(code, r'Gget_notification_centerData_fetchNotificationCenter_profiles_notifications', 'code'),
              actor: actor.build(),
              resource: _resource?.build(),
              urn: urn,
              redirectionLabel: redirectionLabel);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'actor';
        actor.build();
        _$failedField = 'resource';
        _resource?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_notification_centerData_fetchNotificationCenter_profiles_notifications',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor
    extends Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final _i3.GActorType? type;
  @override
  final String? fullname;

  factory _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor(
          [void Function(
                  Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actorBuilder)?
              updates]) =>
      (new Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actorBuilder()
            ..update(updates))
          ._build();

  _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor._(
      {required this.G__typename, this.id, this.type, this.fullname})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor',
        'G__typename');
  }

  @override
  Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor
      rebuild(
              void Function(
                      Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actorBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actorBuilder
      toBuilder() =>
          new Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actorBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor &&
        G__typename == other.G__typename &&
        id == other.id &&
        type == other.type &&
        fullname == other.fullname;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, fullname.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('type', type)
          ..add('fullname', fullname))
        .toString();
  }
}

class Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actorBuilder
    implements
        Builder<
            Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor,
            Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actorBuilder> {
  _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i3.GActorType? _type;
  _i3.GActorType? get type => _$this._type;
  set type(_i3.GActorType? type) => _$this._type = type;

  String? _fullname;
  String? get fullname => _$this._fullname;
  set fullname(String? fullname) => _$this._fullname = fullname;

  Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actorBuilder() {
    Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor
        ._initializeBuilder(this);
  }

  Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actorBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _type = $v.type;
      _fullname = $v.fullname;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor;
  }

  @override
  void update(
      void Function(
              Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actorBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor
      build() => _build();

  _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor
      _build() {
    final _$result = _$v ??
        new _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_actor',
                'G__typename'),
            id: id,
            type: type,
            fullname: fullname);
    replace(_$result);
    return _$result;
  }
}

class _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource
    extends Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource {
  @override
  final String G__typename;
  @override
  final _i3.GResourceType? type;
  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? date;

  factory _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource(
          [void Function(
                  Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resourceBuilder)?
              updates]) =>
      (new Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resourceBuilder()
            ..update(updates))
          ._build();

  _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource._(
      {required this.G__typename, this.type, this.id, this.title, this.date})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource',
        'G__typename');
  }

  @override
  Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource
      rebuild(
              void Function(
                      Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resourceBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resourceBuilder
      toBuilder() =>
          new Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resourceBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource &&
        G__typename == other.G__typename &&
        type == other.type &&
        id == other.id &&
        title == other.title &&
        date == other.date;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource')
          ..add('G__typename', G__typename)
          ..add('type', type)
          ..add('id', id)
          ..add('title', title)
          ..add('date', date))
        .toString();
  }
}

class Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resourceBuilder
    implements
        Builder<
            Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource,
            Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resourceBuilder> {
  _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i3.GResourceType? _type;
  _i3.GResourceType? get type => _$this._type;
  set type(_i3.GResourceType? type) => _$this._type = type;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resourceBuilder() {
    Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource
        ._initializeBuilder(this);
  }

  Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resourceBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _type = $v.type;
      _id = $v.id;
      _title = $v.title;
      _date = $v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource;
  }

  @override
  void update(
      void Function(
              Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resourceBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource
      build() => _build();

  _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource
      _build() {
    final _$result = _$v ??
        new _$Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_notification_centerData_fetchNotificationCenter_profiles_notifications_resource',
                'G__typename'),
            type: type,
            id: id,
            title: title,
            date: date);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
