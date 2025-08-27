// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_notification_set_preference_notification.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gset_preference_notificationData>
    _$gsetPreferenceNotificationDataSerializer =
    new _$Gset_preference_notificationDataSerializer();
Serializer<Gset_preference_notificationData_setPreferenceNotification>
    _$gsetPreferenceNotificationDataSetPreferenceNotificationSerializer =
    new _$Gset_preference_notificationData_setPreferenceNotificationSerializer();

class _$Gset_preference_notificationDataSerializer
    implements StructuredSerializer<Gset_preference_notificationData> {
  @override
  final Iterable<Type> types = const [
    Gset_preference_notificationData,
    _$Gset_preference_notificationData
  ];
  @override
  final String wireName = 'Gset_preference_notificationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gset_preference_notificationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'setPreferenceNotification',
      serializers.serialize(object.setPreferenceNotification,
          specifiedType: const FullType(
              Gset_preference_notificationData_setPreferenceNotification)),
    ];

    return result;
  }

  @override
  Gset_preference_notificationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gset_preference_notificationDataBuilder();

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
        case 'setPreferenceNotification':
          result.setPreferenceNotification.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Gset_preference_notificationData_setPreferenceNotification))!
              as Gset_preference_notificationData_setPreferenceNotification);
          break;
      }
    }

    return result.build();
  }
}

class _$Gset_preference_notificationData_setPreferenceNotificationSerializer
    implements
        StructuredSerializer<
            Gset_preference_notificationData_setPreferenceNotification> {
  @override
  final Iterable<Type> types = const [
    Gset_preference_notificationData_setPreferenceNotification,
    _$Gset_preference_notificationData_setPreferenceNotification
  ];
  @override
  final String wireName =
      'Gset_preference_notificationData_setPreferenceNotification';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gset_preference_notificationData_setPreferenceNotification object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'success',
      serializers.serialize(object.success,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gset_preference_notificationData_setPreferenceNotification deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gset_preference_notificationData_setPreferenceNotificationBuilder();

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
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gset_preference_notificationData
    extends Gset_preference_notificationData {
  @override
  final String G__typename;
  @override
  final Gset_preference_notificationData_setPreferenceNotification
      setPreferenceNotification;

  factory _$Gset_preference_notificationData(
          [void Function(Gset_preference_notificationDataBuilder)? updates]) =>
      (new Gset_preference_notificationDataBuilder()..update(updates))._build();

  _$Gset_preference_notificationData._(
      {required this.G__typename, required this.setPreferenceNotification})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gset_preference_notificationData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(setPreferenceNotification,
        r'Gset_preference_notificationData', 'setPreferenceNotification');
  }

  @override
  Gset_preference_notificationData rebuild(
          void Function(Gset_preference_notificationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gset_preference_notificationDataBuilder toBuilder() =>
      new Gset_preference_notificationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gset_preference_notificationData &&
        G__typename == other.G__typename &&
        setPreferenceNotification == other.setPreferenceNotification;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, setPreferenceNotification.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gset_preference_notificationData')
          ..add('G__typename', G__typename)
          ..add('setPreferenceNotification', setPreferenceNotification))
        .toString();
  }
}

class Gset_preference_notificationDataBuilder
    implements
        Builder<Gset_preference_notificationData,
            Gset_preference_notificationDataBuilder> {
  _$Gset_preference_notificationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gset_preference_notificationData_setPreferenceNotificationBuilder?
      _setPreferenceNotification;
  Gset_preference_notificationData_setPreferenceNotificationBuilder
      get setPreferenceNotification => _$this._setPreferenceNotification ??=
          new Gset_preference_notificationData_setPreferenceNotificationBuilder();
  set setPreferenceNotification(
          Gset_preference_notificationData_setPreferenceNotificationBuilder?
              setPreferenceNotification) =>
      _$this._setPreferenceNotification = setPreferenceNotification;

  Gset_preference_notificationDataBuilder() {
    Gset_preference_notificationData._initializeBuilder(this);
  }

  Gset_preference_notificationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _setPreferenceNotification = $v.setPreferenceNotification.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gset_preference_notificationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gset_preference_notificationData;
  }

  @override
  void update(void Function(Gset_preference_notificationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gset_preference_notificationData build() => _build();

  _$Gset_preference_notificationData _build() {
    _$Gset_preference_notificationData _$result;
    try {
      _$result = _$v ??
          new _$Gset_preference_notificationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gset_preference_notificationData', 'G__typename'),
              setPreferenceNotification: setPreferenceNotification.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'setPreferenceNotification';
        setPreferenceNotification.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gset_preference_notificationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gset_preference_notificationData_setPreferenceNotification
    extends Gset_preference_notificationData_setPreferenceNotification {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gset_preference_notificationData_setPreferenceNotification(
          [void Function(
                  Gset_preference_notificationData_setPreferenceNotificationBuilder)?
              updates]) =>
      (new Gset_preference_notificationData_setPreferenceNotificationBuilder()
            ..update(updates))
          ._build();

  _$Gset_preference_notificationData_setPreferenceNotification._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gset_preference_notificationData_setPreferenceNotification',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success,
        r'Gset_preference_notificationData_setPreferenceNotification',
        'success');
  }

  @override
  Gset_preference_notificationData_setPreferenceNotification rebuild(
          void Function(
                  Gset_preference_notificationData_setPreferenceNotificationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gset_preference_notificationData_setPreferenceNotificationBuilder
      toBuilder() =>
          new Gset_preference_notificationData_setPreferenceNotificationBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gset_preference_notificationData_setPreferenceNotification &&
        G__typename == other.G__typename &&
        success == other.success;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gset_preference_notificationData_setPreferenceNotification')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gset_preference_notificationData_setPreferenceNotificationBuilder
    implements
        Builder<Gset_preference_notificationData_setPreferenceNotification,
            Gset_preference_notificationData_setPreferenceNotificationBuilder> {
  _$Gset_preference_notificationData_setPreferenceNotification? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gset_preference_notificationData_setPreferenceNotificationBuilder() {
    Gset_preference_notificationData_setPreferenceNotification
        ._initializeBuilder(this);
  }

  Gset_preference_notificationData_setPreferenceNotificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gset_preference_notificationData_setPreferenceNotification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gset_preference_notificationData_setPreferenceNotification;
  }

  @override
  void update(
      void Function(
              Gset_preference_notificationData_setPreferenceNotificationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gset_preference_notificationData_setPreferenceNotification build() =>
      _build();

  _$Gset_preference_notificationData_setPreferenceNotification _build() {
    final _$result = _$v ??
        new _$Gset_preference_notificationData_setPreferenceNotification._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gset_preference_notificationData_setPreferenceNotification',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gset_preference_notificationData_setPreferenceNotification',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
