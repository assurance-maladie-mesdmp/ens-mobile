// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_delete_notification.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_notificationData> _$gdeleteNotificationDataSerializer =
    new _$Gdelete_notificationDataSerializer();
Serializer<Gdelete_notificationData_deleteNotification>
    _$gdeleteNotificationDataDeleteNotificationSerializer =
    new _$Gdelete_notificationData_deleteNotificationSerializer();

class _$Gdelete_notificationDataSerializer
    implements StructuredSerializer<Gdelete_notificationData> {
  @override
  final Iterable<Type> types = const [
    Gdelete_notificationData,
    _$Gdelete_notificationData
  ];
  @override
  final String wireName = 'Gdelete_notificationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_notificationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'deleteNotification',
      serializers.serialize(object.deleteNotification,
          specifiedType:
              const FullType(Gdelete_notificationData_deleteNotification)),
    ];

    return result;
  }

  @override
  Gdelete_notificationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_notificationDataBuilder();

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
        case 'deleteNotification':
          result.deleteNotification.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gdelete_notificationData_deleteNotification))!
              as Gdelete_notificationData_deleteNotification);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_notificationData_deleteNotificationSerializer
    implements
        StructuredSerializer<Gdelete_notificationData_deleteNotification> {
  @override
  final Iterable<Type> types = const [
    Gdelete_notificationData_deleteNotification,
    _$Gdelete_notificationData_deleteNotification
  ];
  @override
  final String wireName = 'Gdelete_notificationData_deleteNotification';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gdelete_notificationData_deleteNotification object,
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
  Gdelete_notificationData_deleteNotification deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_notificationData_deleteNotificationBuilder();

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

class _$Gdelete_notificationData extends Gdelete_notificationData {
  @override
  final String G__typename;
  @override
  final Gdelete_notificationData_deleteNotification deleteNotification;

  factory _$Gdelete_notificationData(
          [void Function(Gdelete_notificationDataBuilder)? updates]) =>
      (new Gdelete_notificationDataBuilder()..update(updates))._build();

  _$Gdelete_notificationData._(
      {required this.G__typename, required this.deleteNotification})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_notificationData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        deleteNotification, r'Gdelete_notificationData', 'deleteNotification');
  }

  @override
  Gdelete_notificationData rebuild(
          void Function(Gdelete_notificationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_notificationDataBuilder toBuilder() =>
      new Gdelete_notificationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_notificationData &&
        G__typename == other.G__typename &&
        deleteNotification == other.deleteNotification;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deleteNotification.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_notificationData')
          ..add('G__typename', G__typename)
          ..add('deleteNotification', deleteNotification))
        .toString();
  }
}

class Gdelete_notificationDataBuilder
    implements
        Builder<Gdelete_notificationData, Gdelete_notificationDataBuilder> {
  _$Gdelete_notificationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gdelete_notificationData_deleteNotificationBuilder? _deleteNotification;
  Gdelete_notificationData_deleteNotificationBuilder get deleteNotification =>
      _$this._deleteNotification ??=
          new Gdelete_notificationData_deleteNotificationBuilder();
  set deleteNotification(
          Gdelete_notificationData_deleteNotificationBuilder?
              deleteNotification) =>
      _$this._deleteNotification = deleteNotification;

  Gdelete_notificationDataBuilder() {
    Gdelete_notificationData._initializeBuilder(this);
  }

  Gdelete_notificationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteNotification = $v.deleteNotification.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_notificationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_notificationData;
  }

  @override
  void update(void Function(Gdelete_notificationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_notificationData build() => _build();

  _$Gdelete_notificationData _build() {
    _$Gdelete_notificationData _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_notificationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gdelete_notificationData', 'G__typename'),
              deleteNotification: deleteNotification.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteNotification';
        deleteNotification.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_notificationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gdelete_notificationData_deleteNotification
    extends Gdelete_notificationData_deleteNotification {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gdelete_notificationData_deleteNotification(
          [void Function(Gdelete_notificationData_deleteNotificationBuilder)?
              updates]) =>
      (new Gdelete_notificationData_deleteNotificationBuilder()
            ..update(updates))
          ._build();

  _$Gdelete_notificationData_deleteNotification._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gdelete_notificationData_deleteNotification', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gdelete_notificationData_deleteNotification', 'success');
  }

  @override
  Gdelete_notificationData_deleteNotification rebuild(
          void Function(Gdelete_notificationData_deleteNotificationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_notificationData_deleteNotificationBuilder toBuilder() =>
      new Gdelete_notificationData_deleteNotificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_notificationData_deleteNotification &&
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
            r'Gdelete_notificationData_deleteNotification')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gdelete_notificationData_deleteNotificationBuilder
    implements
        Builder<Gdelete_notificationData_deleteNotification,
            Gdelete_notificationData_deleteNotificationBuilder> {
  _$Gdelete_notificationData_deleteNotification? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gdelete_notificationData_deleteNotificationBuilder() {
    Gdelete_notificationData_deleteNotification._initializeBuilder(this);
  }

  Gdelete_notificationData_deleteNotificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_notificationData_deleteNotification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_notificationData_deleteNotification;
  }

  @override
  void update(
      void Function(Gdelete_notificationData_deleteNotificationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_notificationData_deleteNotification build() => _build();

  _$Gdelete_notificationData_deleteNotification _build() {
    final _$result = _$v ??
        new _$Gdelete_notificationData_deleteNotification._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gdelete_notificationData_deleteNotification', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(success,
                r'Gdelete_notificationData_deleteNotification', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
