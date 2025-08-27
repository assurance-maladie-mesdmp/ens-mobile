// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mark_notification_as_read.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gmark_notification_as_readVars>
    _$gmarkNotificationAsReadVarsSerializer =
    new _$Gmark_notification_as_readVarsSerializer();

class _$Gmark_notification_as_readVarsSerializer
    implements StructuredSerializer<Gmark_notification_as_readVars> {
  @override
  final Iterable<Type> types = const [
    Gmark_notification_as_readVars,
    _$Gmark_notification_as_readVars
  ];
  @override
  final String wireName = 'Gmark_notification_as_readVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gmark_notification_as_readVars object,
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
  Gmark_notification_as_readVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gmark_notification_as_readVarsBuilder();

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

class _$Gmark_notification_as_readVars extends Gmark_notification_as_readVars {
  @override
  final String notificationId;
  @override
  final String patientId;

  factory _$Gmark_notification_as_readVars(
          [void Function(Gmark_notification_as_readVarsBuilder)? updates]) =>
      (new Gmark_notification_as_readVarsBuilder()..update(updates))._build();

  _$Gmark_notification_as_readVars._(
      {required this.notificationId, required this.patientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        notificationId, r'Gmark_notification_as_readVars', 'notificationId');
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gmark_notification_as_readVars', 'patientId');
  }

  @override
  Gmark_notification_as_readVars rebuild(
          void Function(Gmark_notification_as_readVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gmark_notification_as_readVarsBuilder toBuilder() =>
      new Gmark_notification_as_readVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gmark_notification_as_readVars &&
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
    return (newBuiltValueToStringHelper(r'Gmark_notification_as_readVars')
          ..add('notificationId', notificationId)
          ..add('patientId', patientId))
        .toString();
  }
}

class Gmark_notification_as_readVarsBuilder
    implements
        Builder<Gmark_notification_as_readVars,
            Gmark_notification_as_readVarsBuilder> {
  _$Gmark_notification_as_readVars? _$v;

  String? _notificationId;
  String? get notificationId => _$this._notificationId;
  set notificationId(String? notificationId) =>
      _$this._notificationId = notificationId;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gmark_notification_as_readVarsBuilder();

  Gmark_notification_as_readVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _notificationId = $v.notificationId;
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gmark_notification_as_readVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gmark_notification_as_readVars;
  }

  @override
  void update(void Function(Gmark_notification_as_readVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gmark_notification_as_readVars build() => _build();

  _$Gmark_notification_as_readVars _build() {
    final _$result = _$v ??
        new _$Gmark_notification_as_readVars._(
            notificationId: BuiltValueNullFieldError.checkNotNull(
                notificationId,
                r'Gmark_notification_as_readVars',
                'notificationId'),
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gmark_notification_as_readVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
