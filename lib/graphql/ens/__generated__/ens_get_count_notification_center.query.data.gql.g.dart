// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_get_count_notification_center.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_unread_notification_center_countData>
    _$ggetUnreadNotificationCenterCountDataSerializer =
    new _$Gget_unread_notification_center_countDataSerializer();
Serializer<Gget_unread_notification_center_countData_fetchNotificationCenter>
    _$ggetUnreadNotificationCenterCountDataFetchNotificationCenterSerializer =
    new _$Gget_unread_notification_center_countData_fetchNotificationCenterSerializer();

class _$Gget_unread_notification_center_countDataSerializer
    implements StructuredSerializer<Gget_unread_notification_center_countData> {
  @override
  final Iterable<Type> types = const [
    Gget_unread_notification_center_countData,
    _$Gget_unread_notification_center_countData
  ];
  @override
  final String wireName = 'Gget_unread_notification_center_countData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_unread_notification_center_countData object,
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
                Gget_unread_notification_center_countData_fetchNotificationCenter)));
    }
    return result;
  }

  @override
  Gget_unread_notification_center_countData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_unread_notification_center_countDataBuilder();

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
                      Gget_unread_notification_center_countData_fetchNotificationCenter))!
              as Gget_unread_notification_center_countData_fetchNotificationCenter);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_unread_notification_center_countData_fetchNotificationCenterSerializer
    implements
        StructuredSerializer<
            Gget_unread_notification_center_countData_fetchNotificationCenter> {
  @override
  final Iterable<Type> types = const [
    Gget_unread_notification_center_countData_fetchNotificationCenter,
    _$Gget_unread_notification_center_countData_fetchNotificationCenter
  ];
  @override
  final String wireName =
      'Gget_unread_notification_center_countData_fetchNotificationCenter';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_unread_notification_center_countData_fetchNotificationCenter object,
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
  Gget_unread_notification_center_countData_fetchNotificationCenter deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_unread_notification_center_countData_fetchNotificationCenterBuilder();

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

class _$Gget_unread_notification_center_countData
    extends Gget_unread_notification_center_countData {
  @override
  final String G__typename;
  @override
  final Gget_unread_notification_center_countData_fetchNotificationCenter?
      fetchNotificationCenter;

  factory _$Gget_unread_notification_center_countData(
          [void Function(Gget_unread_notification_center_countDataBuilder)?
              updates]) =>
      (new Gget_unread_notification_center_countDataBuilder()..update(updates))
          ._build();

  _$Gget_unread_notification_center_countData._(
      {required this.G__typename, this.fetchNotificationCenter})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_unread_notification_center_countData', 'G__typename');
  }

  @override
  Gget_unread_notification_center_countData rebuild(
          void Function(Gget_unread_notification_center_countDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_unread_notification_center_countDataBuilder toBuilder() =>
      new Gget_unread_notification_center_countDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_unread_notification_center_countData &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_unread_notification_center_countData')
          ..add('G__typename', G__typename)
          ..add('fetchNotificationCenter', fetchNotificationCenter))
        .toString();
  }
}

class Gget_unread_notification_center_countDataBuilder
    implements
        Builder<Gget_unread_notification_center_countData,
            Gget_unread_notification_center_countDataBuilder> {
  _$Gget_unread_notification_center_countData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_unread_notification_center_countData_fetchNotificationCenterBuilder?
      _fetchNotificationCenter;
  Gget_unread_notification_center_countData_fetchNotificationCenterBuilder
      get fetchNotificationCenter => _$this._fetchNotificationCenter ??=
          new Gget_unread_notification_center_countData_fetchNotificationCenterBuilder();
  set fetchNotificationCenter(
          Gget_unread_notification_center_countData_fetchNotificationCenterBuilder?
              fetchNotificationCenter) =>
      _$this._fetchNotificationCenter = fetchNotificationCenter;

  Gget_unread_notification_center_countDataBuilder() {
    Gget_unread_notification_center_countData._initializeBuilder(this);
  }

  Gget_unread_notification_center_countDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _fetchNotificationCenter = $v.fetchNotificationCenter?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_unread_notification_center_countData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_unread_notification_center_countData;
  }

  @override
  void update(
      void Function(Gget_unread_notification_center_countDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_unread_notification_center_countData build() => _build();

  _$Gget_unread_notification_center_countData _build() {
    _$Gget_unread_notification_center_countData _$result;
    try {
      _$result = _$v ??
          new _$Gget_unread_notification_center_countData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_unread_notification_center_countData', 'G__typename'),
              fetchNotificationCenter: _fetchNotificationCenter?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fetchNotificationCenter';
        _fetchNotificationCenter?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_unread_notification_center_countData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_unread_notification_center_countData_fetchNotificationCenter
    extends Gget_unread_notification_center_countData_fetchNotificationCenter {
  @override
  final String G__typename;
  @override
  final int unreadNotificationsCount;

  factory _$Gget_unread_notification_center_countData_fetchNotificationCenter(
          [void Function(
                  Gget_unread_notification_center_countData_fetchNotificationCenterBuilder)?
              updates]) =>
      (new Gget_unread_notification_center_countData_fetchNotificationCenterBuilder()
            ..update(updates))
          ._build();

  _$Gget_unread_notification_center_countData_fetchNotificationCenter._(
      {required this.G__typename, required this.unreadNotificationsCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_unread_notification_center_countData_fetchNotificationCenter',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        unreadNotificationsCount,
        r'Gget_unread_notification_center_countData_fetchNotificationCenter',
        'unreadNotificationsCount');
  }

  @override
  Gget_unread_notification_center_countData_fetchNotificationCenter rebuild(
          void Function(
                  Gget_unread_notification_center_countData_fetchNotificationCenterBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_unread_notification_center_countData_fetchNotificationCenterBuilder
      toBuilder() =>
          new Gget_unread_notification_center_countData_fetchNotificationCenterBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_unread_notification_center_countData_fetchNotificationCenter &&
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
            r'Gget_unread_notification_center_countData_fetchNotificationCenter')
          ..add('G__typename', G__typename)
          ..add('unreadNotificationsCount', unreadNotificationsCount))
        .toString();
  }
}

class Gget_unread_notification_center_countData_fetchNotificationCenterBuilder
    implements
        Builder<
            Gget_unread_notification_center_countData_fetchNotificationCenter,
            Gget_unread_notification_center_countData_fetchNotificationCenterBuilder> {
  _$Gget_unread_notification_center_countData_fetchNotificationCenter? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _unreadNotificationsCount;
  int? get unreadNotificationsCount => _$this._unreadNotificationsCount;
  set unreadNotificationsCount(int? unreadNotificationsCount) =>
      _$this._unreadNotificationsCount = unreadNotificationsCount;

  Gget_unread_notification_center_countData_fetchNotificationCenterBuilder() {
    Gget_unread_notification_center_countData_fetchNotificationCenter
        ._initializeBuilder(this);
  }

  Gget_unread_notification_center_countData_fetchNotificationCenterBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _unreadNotificationsCount = $v.unreadNotificationsCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_unread_notification_center_countData_fetchNotificationCenter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_unread_notification_center_countData_fetchNotificationCenter;
  }

  @override
  void update(
      void Function(
              Gget_unread_notification_center_countData_fetchNotificationCenterBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_unread_notification_center_countData_fetchNotificationCenter build() =>
      _build();

  _$Gget_unread_notification_center_countData_fetchNotificationCenter _build() {
    final _$result = _$v ??
        new _$Gget_unread_notification_center_countData_fetchNotificationCenter
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_unread_notification_center_countData_fetchNotificationCenter',
                'G__typename'),
            unreadNotificationsCount: BuiltValueNullFieldError.checkNotNull(
                unreadNotificationsCount,
                r'Gget_unread_notification_center_countData_fetchNotificationCenter',
                'unreadNotificationsCount'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
