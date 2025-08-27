// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_account_delete_notification_token.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_notification_tokenVars>
    _$gdeleteNotificationTokenVarsSerializer =
    new _$Gdelete_notification_tokenVarsSerializer();

class _$Gdelete_notification_tokenVarsSerializer
    implements StructuredSerializer<Gdelete_notification_tokenVars> {
  @override
  final Iterable<Type> types = const [
    Gdelete_notification_tokenVars,
    _$Gdelete_notification_tokenVars
  ];
  @override
  final String wireName = 'Gdelete_notification_tokenVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_notification_tokenVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gdelete_notification_tokenVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_notification_tokenVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_notification_tokenVars extends Gdelete_notification_tokenVars {
  @override
  final String patientId;

  factory _$Gdelete_notification_tokenVars(
          [void Function(Gdelete_notification_tokenVarsBuilder)? updates]) =>
      (new Gdelete_notification_tokenVarsBuilder()..update(updates))._build();

  _$Gdelete_notification_tokenVars._({required this.patientId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gdelete_notification_tokenVars', 'patientId');
  }

  @override
  Gdelete_notification_tokenVars rebuild(
          void Function(Gdelete_notification_tokenVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_notification_tokenVarsBuilder toBuilder() =>
      new Gdelete_notification_tokenVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_notification_tokenVars &&
        patientId == other.patientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_notification_tokenVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gdelete_notification_tokenVarsBuilder
    implements
        Builder<Gdelete_notification_tokenVars,
            Gdelete_notification_tokenVarsBuilder> {
  _$Gdelete_notification_tokenVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gdelete_notification_tokenVarsBuilder();

  Gdelete_notification_tokenVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_notification_tokenVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_notification_tokenVars;
  }

  @override
  void update(void Function(Gdelete_notification_tokenVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_notification_tokenVars build() => _build();

  _$Gdelete_notification_tokenVars _build() {
    final _$result = _$v ??
        new _$Gdelete_notification_tokenVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gdelete_notification_tokenVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
