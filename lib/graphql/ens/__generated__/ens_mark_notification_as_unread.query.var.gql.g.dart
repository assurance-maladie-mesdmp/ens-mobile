// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mark_notification_as_unread.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gmark_notification_as_unreadVars>
    _$gmarkNotificationAsUnreadVarsSerializer =
    new _$Gmark_notification_as_unreadVarsSerializer();

class _$Gmark_notification_as_unreadVarsSerializer
    implements StructuredSerializer<Gmark_notification_as_unreadVars> {
  @override
  final Iterable<Type> types = const [
    Gmark_notification_as_unreadVars,
    _$Gmark_notification_as_unreadVars
  ];
  @override
  final String wireName = 'Gmark_notification_as_unreadVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gmark_notification_as_unreadVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'notificationId',
      serializers.serialize(object.notificationId,
          specifiedType: const FullType(String)),
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gmark_notification_as_unreadVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gmark_notification_as_unreadVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'notificationId':
          result.notificationId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gmark_notification_as_unreadVars
    extends Gmark_notification_as_unreadVars {
  @override
  final String notificationId;
  @override
  final String patientId;

  factory _$Gmark_notification_as_unreadVars(
          [void Function(Gmark_notification_as_unreadVarsBuilder)? updates]) =>
      (new Gmark_notification_as_unreadVarsBuilder()..update(updates))._build();

  _$Gmark_notification_as_unreadVars._(
      {required this.notificationId, required this.patientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        notificationId, r'Gmark_notification_as_unreadVars', 'notificationId');
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gmark_notification_as_unreadVars', 'patientId');
  }

  @override
  Gmark_notification_as_unreadVars rebuild(
          void Function(Gmark_notification_as_unreadVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gmark_notification_as_unreadVarsBuilder toBuilder() =>
      new Gmark_notification_as_unreadVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gmark_notification_as_unreadVars &&
        notificationId == other.notificationId &&
        patientId == other.patientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, notificationId.hashCode);
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gmark_notification_as_unreadVars')
          ..add('notificationId', notificationId)
          ..add('patientId', patientId))
        .toString();
  }
}

class Gmark_notification_as_unreadVarsBuilder
    implements
        Builder<Gmark_notification_as_unreadVars,
            Gmark_notification_as_unreadVarsBuilder> {
  _$Gmark_notification_as_unreadVars? _$v;

  String? _notificationId;
  String? get notificationId => _$this._notificationId;
  set notificationId(String? notificationId) =>
      _$this._notificationId = notificationId;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gmark_notification_as_unreadVarsBuilder();

  Gmark_notification_as_unreadVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _notificationId = $v.notificationId;
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gmark_notification_as_unreadVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gmark_notification_as_unreadVars;
  }

  @override
  void update(void Function(Gmark_notification_as_unreadVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gmark_notification_as_unreadVars build() => _build();

  _$Gmark_notification_as_unreadVars _build() {
    final _$result = _$v ??
        new _$Gmark_notification_as_unreadVars._(
            notificationId: BuiltValueNullFieldError.checkNotNull(
                notificationId,
                r'Gmark_notification_as_unreadVars',
                'notificationId'),
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gmark_notification_as_unreadVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
