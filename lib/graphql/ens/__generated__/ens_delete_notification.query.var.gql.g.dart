// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_delete_notification.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_notificationVars> _$gdeleteNotificationVarsSerializer =
    new _$Gdelete_notificationVarsSerializer();

class _$Gdelete_notificationVarsSerializer
    implements StructuredSerializer<Gdelete_notificationVars> {
  @override
  final Iterable<Type> types = const [
    Gdelete_notificationVars,
    _$Gdelete_notificationVars
  ];
  @override
  final String wireName = 'Gdelete_notificationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_notificationVars object,
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
  Gdelete_notificationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_notificationVarsBuilder();

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

class _$Gdelete_notificationVars extends Gdelete_notificationVars {
  @override
  final String notificationId;
  @override
  final String patientId;

  factory _$Gdelete_notificationVars(
          [void Function(Gdelete_notificationVarsBuilder)? updates]) =>
      (new Gdelete_notificationVarsBuilder()..update(updates))._build();

  _$Gdelete_notificationVars._(
      {required this.notificationId, required this.patientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        notificationId, r'Gdelete_notificationVars', 'notificationId');
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gdelete_notificationVars', 'patientId');
  }

  @override
  Gdelete_notificationVars rebuild(
          void Function(Gdelete_notificationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_notificationVarsBuilder toBuilder() =>
      new Gdelete_notificationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_notificationVars &&
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
    return (newBuiltValueToStringHelper(r'Gdelete_notificationVars')
          ..add('notificationId', notificationId)
          ..add('patientId', patientId))
        .toString();
  }
}

class Gdelete_notificationVarsBuilder
    implements
        Builder<Gdelete_notificationVars, Gdelete_notificationVarsBuilder> {
  _$Gdelete_notificationVars? _$v;

  String? _notificationId;
  String? get notificationId => _$this._notificationId;
  set notificationId(String? notificationId) =>
      _$this._notificationId = notificationId;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gdelete_notificationVarsBuilder();

  Gdelete_notificationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _notificationId = $v.notificationId;
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_notificationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_notificationVars;
  }

  @override
  void update(void Function(Gdelete_notificationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_notificationVars build() => _build();

  _$Gdelete_notificationVars _build() {
    final _$result = _$v ??
        new _$Gdelete_notificationVars._(
            notificationId: BuiltValueNullFieldError.checkNotNull(
                notificationId, r'Gdelete_notificationVars', 'notificationId'),
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gdelete_notificationVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
