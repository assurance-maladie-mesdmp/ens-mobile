// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_notification_get_preference_notification.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_preference_notificationData>
    _$ggetPreferenceNotificationDataSerializer =
    new _$Gget_preference_notificationDataSerializer();
Serializer<Gget_preference_notificationData_getPreferenceNotification>
    _$ggetPreferenceNotificationDataGetPreferenceNotificationSerializer =
    new _$Gget_preference_notificationData_getPreferenceNotificationSerializer();
Serializer<
        Gget_preference_notificationData_getPreferenceNotification_preferenceNotification>
    _$ggetPreferenceNotificationDataGetPreferenceNotificationPreferenceNotificationSerializer =
    new _$Gget_preference_notificationData_getPreferenceNotification_preferenceNotificationSerializer();

class _$Gget_preference_notificationDataSerializer
    implements StructuredSerializer<Gget_preference_notificationData> {
  @override
  final Iterable<Type> types = const [
    Gget_preference_notificationData,
    _$Gget_preference_notificationData
  ];
  @override
  final String wireName = 'Gget_preference_notificationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_preference_notificationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getPreferenceNotification',
      serializers.serialize(object.getPreferenceNotification,
          specifiedType: const FullType(
              Gget_preference_notificationData_getPreferenceNotification)),
    ];

    return result;
  }

  @override
  Gget_preference_notificationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_preference_notificationDataBuilder();

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
        case 'getPreferenceNotification':
          result.getPreferenceNotification.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Gget_preference_notificationData_getPreferenceNotification))!
              as Gget_preference_notificationData_getPreferenceNotification);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_preference_notificationData_getPreferenceNotificationSerializer
    implements
        StructuredSerializer<
            Gget_preference_notificationData_getPreferenceNotification> {
  @override
  final Iterable<Type> types = const [
    Gget_preference_notificationData_getPreferenceNotification,
    _$Gget_preference_notificationData_getPreferenceNotification
  ];
  @override
  final String wireName =
      'Gget_preference_notificationData_getPreferenceNotification';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_preference_notificationData_getPreferenceNotification object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.preferenceNotification;
    if (value != null) {
      result
        ..add('preferenceNotification')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_preference_notificationData_getPreferenceNotification_preferenceNotification)
            ])));
    }
    return result;
  }

  @override
  Gget_preference_notificationData_getPreferenceNotification deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_preference_notificationData_getPreferenceNotificationBuilder();

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
        case 'preferenceNotification':
          result.preferenceNotification.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_preference_notificationData_getPreferenceNotification_preferenceNotification)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_preference_notificationData_getPreferenceNotification_preferenceNotificationSerializer
    implements
        StructuredSerializer<
            Gget_preference_notificationData_getPreferenceNotification_preferenceNotification> {
  @override
  final Iterable<Type> types = const [
    Gget_preference_notificationData_getPreferenceNotification_preferenceNotification,
    _$Gget_preference_notificationData_getPreferenceNotification_preferenceNotification
  ];
  @override
  final String wireName =
      'Gget_preference_notificationData_getPreferenceNotification_preferenceNotification';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_preference_notificationData_getPreferenceNotification_preferenceNotification
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'typeNotification',
      serializers.serialize(object.typeNotification,
          specifiedType: const FullType(_i2.GPreferenceNotificationEnum)),
      'isActive',
      serializers.serialize(object.isActive,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gget_preference_notificationData_getPreferenceNotification_preferenceNotification
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_preference_notificationData_getPreferenceNotification_preferenceNotificationBuilder();

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
        case 'typeNotification':
          result.typeNotification = serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i2.GPreferenceNotificationEnum))!
              as _i2.GPreferenceNotificationEnum;
          break;
        case 'isActive':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_preference_notificationData
    extends Gget_preference_notificationData {
  @override
  final String G__typename;
  @override
  final Gget_preference_notificationData_getPreferenceNotification
      getPreferenceNotification;

  factory _$Gget_preference_notificationData(
          [void Function(Gget_preference_notificationDataBuilder)? updates]) =>
      (new Gget_preference_notificationDataBuilder()..update(updates))._build();

  _$Gget_preference_notificationData._(
      {required this.G__typename, required this.getPreferenceNotification})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_preference_notificationData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(getPreferenceNotification,
        r'Gget_preference_notificationData', 'getPreferenceNotification');
  }

  @override
  Gget_preference_notificationData rebuild(
          void Function(Gget_preference_notificationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_preference_notificationDataBuilder toBuilder() =>
      new Gget_preference_notificationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_preference_notificationData &&
        G__typename == other.G__typename &&
        getPreferenceNotification == other.getPreferenceNotification;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getPreferenceNotification.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_preference_notificationData')
          ..add('G__typename', G__typename)
          ..add('getPreferenceNotification', getPreferenceNotification))
        .toString();
  }
}

class Gget_preference_notificationDataBuilder
    implements
        Builder<Gget_preference_notificationData,
            Gget_preference_notificationDataBuilder> {
  _$Gget_preference_notificationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_preference_notificationData_getPreferenceNotificationBuilder?
      _getPreferenceNotification;
  Gget_preference_notificationData_getPreferenceNotificationBuilder
      get getPreferenceNotification => _$this._getPreferenceNotification ??=
          new Gget_preference_notificationData_getPreferenceNotificationBuilder();
  set getPreferenceNotification(
          Gget_preference_notificationData_getPreferenceNotificationBuilder?
              getPreferenceNotification) =>
      _$this._getPreferenceNotification = getPreferenceNotification;

  Gget_preference_notificationDataBuilder() {
    Gget_preference_notificationData._initializeBuilder(this);
  }

  Gget_preference_notificationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getPreferenceNotification = $v.getPreferenceNotification.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_preference_notificationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_preference_notificationData;
  }

  @override
  void update(void Function(Gget_preference_notificationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_preference_notificationData build() => _build();

  _$Gget_preference_notificationData _build() {
    _$Gget_preference_notificationData _$result;
    try {
      _$result = _$v ??
          new _$Gget_preference_notificationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_preference_notificationData', 'G__typename'),
              getPreferenceNotification: getPreferenceNotification.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getPreferenceNotification';
        getPreferenceNotification.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_preference_notificationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_preference_notificationData_getPreferenceNotification
    extends Gget_preference_notificationData_getPreferenceNotification {
  @override
  final String G__typename;
  @override
  final BuiltList<
          Gget_preference_notificationData_getPreferenceNotification_preferenceNotification>?
      preferenceNotification;

  factory _$Gget_preference_notificationData_getPreferenceNotification(
          [void Function(
                  Gget_preference_notificationData_getPreferenceNotificationBuilder)?
              updates]) =>
      (new Gget_preference_notificationData_getPreferenceNotificationBuilder()
            ..update(updates))
          ._build();

  _$Gget_preference_notificationData_getPreferenceNotification._(
      {required this.G__typename, this.preferenceNotification})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_preference_notificationData_getPreferenceNotification',
        'G__typename');
  }

  @override
  Gget_preference_notificationData_getPreferenceNotification rebuild(
          void Function(
                  Gget_preference_notificationData_getPreferenceNotificationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_preference_notificationData_getPreferenceNotificationBuilder
      toBuilder() =>
          new Gget_preference_notificationData_getPreferenceNotificationBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_preference_notificationData_getPreferenceNotification &&
        G__typename == other.G__typename &&
        preferenceNotification == other.preferenceNotification;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, preferenceNotification.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_preference_notificationData_getPreferenceNotification')
          ..add('G__typename', G__typename)
          ..add('preferenceNotification', preferenceNotification))
        .toString();
  }
}

class Gget_preference_notificationData_getPreferenceNotificationBuilder
    implements
        Builder<Gget_preference_notificationData_getPreferenceNotification,
            Gget_preference_notificationData_getPreferenceNotificationBuilder> {
  _$Gget_preference_notificationData_getPreferenceNotification? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<
          Gget_preference_notificationData_getPreferenceNotification_preferenceNotification>?
      _preferenceNotification;
  ListBuilder<
          Gget_preference_notificationData_getPreferenceNotification_preferenceNotification>
      get preferenceNotification =>
          _$this._preferenceNotification ??= new ListBuilder<
              Gget_preference_notificationData_getPreferenceNotification_preferenceNotification>();
  set preferenceNotification(
          ListBuilder<
                  Gget_preference_notificationData_getPreferenceNotification_preferenceNotification>?
              preferenceNotification) =>
      _$this._preferenceNotification = preferenceNotification;

  Gget_preference_notificationData_getPreferenceNotificationBuilder() {
    Gget_preference_notificationData_getPreferenceNotification
        ._initializeBuilder(this);
  }

  Gget_preference_notificationData_getPreferenceNotificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _preferenceNotification = $v.preferenceNotification?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_preference_notificationData_getPreferenceNotification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_preference_notificationData_getPreferenceNotification;
  }

  @override
  void update(
      void Function(
              Gget_preference_notificationData_getPreferenceNotificationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_preference_notificationData_getPreferenceNotification build() =>
      _build();

  _$Gget_preference_notificationData_getPreferenceNotification _build() {
    _$Gget_preference_notificationData_getPreferenceNotification _$result;
    try {
      _$result = _$v ??
          new _$Gget_preference_notificationData_getPreferenceNotification._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_preference_notificationData_getPreferenceNotification',
                  'G__typename'),
              preferenceNotification: _preferenceNotification?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'preferenceNotification';
        _preferenceNotification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_preference_notificationData_getPreferenceNotification',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_preference_notificationData_getPreferenceNotification_preferenceNotification
    extends Gget_preference_notificationData_getPreferenceNotification_preferenceNotification {
  @override
  final String G__typename;
  @override
  final _i2.GPreferenceNotificationEnum typeNotification;
  @override
  final bool isActive;

  factory _$Gget_preference_notificationData_getPreferenceNotification_preferenceNotification(
          [void Function(
                  Gget_preference_notificationData_getPreferenceNotification_preferenceNotificationBuilder)?
              updates]) =>
      (new Gget_preference_notificationData_getPreferenceNotification_preferenceNotificationBuilder()
            ..update(updates))
          ._build();

  _$Gget_preference_notificationData_getPreferenceNotification_preferenceNotification._(
      {required this.G__typename,
      required this.typeNotification,
      required this.isActive})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_preference_notificationData_getPreferenceNotification_preferenceNotification',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        typeNotification,
        r'Gget_preference_notificationData_getPreferenceNotification_preferenceNotification',
        'typeNotification');
    BuiltValueNullFieldError.checkNotNull(
        isActive,
        r'Gget_preference_notificationData_getPreferenceNotification_preferenceNotification',
        'isActive');
  }

  @override
  Gget_preference_notificationData_getPreferenceNotification_preferenceNotification
      rebuild(
              void Function(
                      Gget_preference_notificationData_getPreferenceNotification_preferenceNotificationBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_preference_notificationData_getPreferenceNotification_preferenceNotificationBuilder
      toBuilder() =>
          new Gget_preference_notificationData_getPreferenceNotification_preferenceNotificationBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_preference_notificationData_getPreferenceNotification_preferenceNotification &&
        G__typename == other.G__typename &&
        typeNotification == other.typeNotification &&
        isActive == other.isActive;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, typeNotification.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_preference_notificationData_getPreferenceNotification_preferenceNotification')
          ..add('G__typename', G__typename)
          ..add('typeNotification', typeNotification)
          ..add('isActive', isActive))
        .toString();
  }
}

class Gget_preference_notificationData_getPreferenceNotification_preferenceNotificationBuilder
    implements
        Builder<
            Gget_preference_notificationData_getPreferenceNotification_preferenceNotification,
            Gget_preference_notificationData_getPreferenceNotification_preferenceNotificationBuilder> {
  _$Gget_preference_notificationData_getPreferenceNotification_preferenceNotification?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GPreferenceNotificationEnum? _typeNotification;
  _i2.GPreferenceNotificationEnum? get typeNotification =>
      _$this._typeNotification;
  set typeNotification(_i2.GPreferenceNotificationEnum? typeNotification) =>
      _$this._typeNotification = typeNotification;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  Gget_preference_notificationData_getPreferenceNotification_preferenceNotificationBuilder() {
    Gget_preference_notificationData_getPreferenceNotification_preferenceNotification
        ._initializeBuilder(this);
  }

  Gget_preference_notificationData_getPreferenceNotification_preferenceNotificationBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _typeNotification = $v.typeNotification;
      _isActive = $v.isActive;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_preference_notificationData_getPreferenceNotification_preferenceNotification
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_preference_notificationData_getPreferenceNotification_preferenceNotification;
  }

  @override
  void update(
      void Function(
              Gget_preference_notificationData_getPreferenceNotification_preferenceNotificationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_preference_notificationData_getPreferenceNotification_preferenceNotification
      build() => _build();

  _$Gget_preference_notificationData_getPreferenceNotification_preferenceNotification
      _build() {
    final _$result = _$v ??
        new _$Gget_preference_notificationData_getPreferenceNotification_preferenceNotification
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_preference_notificationData_getPreferenceNotification_preferenceNotification',
                'G__typename'),
            typeNotification: BuiltValueNullFieldError.checkNotNull(
                typeNotification,
                r'Gget_preference_notificationData_getPreferenceNotification_preferenceNotification',
                'typeNotification'),
            isActive: BuiltValueNullFieldError.checkNotNull(
                isActive,
                r'Gget_preference_notificationData_getPreferenceNotification_preferenceNotification',
                'isActive'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
