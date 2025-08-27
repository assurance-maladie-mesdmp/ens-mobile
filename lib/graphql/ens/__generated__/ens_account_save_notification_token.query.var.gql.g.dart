// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_account_save_notification_token.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gsave_notification_tokenVars>
    _$gsaveNotificationTokenVarsSerializer =
    new _$Gsave_notification_tokenVarsSerializer();

class _$Gsave_notification_tokenVarsSerializer
    implements StructuredSerializer<Gsave_notification_tokenVars> {
  @override
  final Iterable<Type> types = const [
    Gsave_notification_tokenVars,
    _$Gsave_notification_tokenVars
  ];
  @override
  final String wireName = 'Gsave_notification_tokenVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gsave_notification_tokenVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'notificationToken',
      serializers.serialize(object.notificationToken,
          specifiedType: const FullType(String)),
      'os',
      serializers.serialize(object.os,
          specifiedType: const FullType(_i1.GMobileOsEnum)),
    ];

    return result;
  }

  @override
  Gsave_notification_tokenVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gsave_notification_tokenVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'notificationToken':
          result.notificationToken = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'os':
          result.os = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GMobileOsEnum))!
              as _i1.GMobileOsEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$Gsave_notification_tokenVars extends Gsave_notification_tokenVars {
  @override
  final String notificationToken;
  @override
  final _i1.GMobileOsEnum os;

  factory _$Gsave_notification_tokenVars(
          [void Function(Gsave_notification_tokenVarsBuilder)? updates]) =>
      (new Gsave_notification_tokenVarsBuilder()..update(updates))._build();

  _$Gsave_notification_tokenVars._(
      {required this.notificationToken, required this.os})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(notificationToken,
        r'Gsave_notification_tokenVars', 'notificationToken');
    BuiltValueNullFieldError.checkNotNull(
        os, r'Gsave_notification_tokenVars', 'os');
  }

  @override
  Gsave_notification_tokenVars rebuild(
          void Function(Gsave_notification_tokenVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsave_notification_tokenVarsBuilder toBuilder() =>
      new Gsave_notification_tokenVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsave_notification_tokenVars &&
        notificationToken == other.notificationToken &&
        os == other.os;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, notificationToken.hashCode);
    _$hash = $jc(_$hash, os.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gsave_notification_tokenVars')
          ..add('notificationToken', notificationToken)
          ..add('os', os))
        .toString();
  }
}

class Gsave_notification_tokenVarsBuilder
    implements
        Builder<Gsave_notification_tokenVars,
            Gsave_notification_tokenVarsBuilder> {
  _$Gsave_notification_tokenVars? _$v;

  String? _notificationToken;
  String? get notificationToken => _$this._notificationToken;
  set notificationToken(String? notificationToken) =>
      _$this._notificationToken = notificationToken;

  _i1.GMobileOsEnum? _os;
  _i1.GMobileOsEnum? get os => _$this._os;
  set os(_i1.GMobileOsEnum? os) => _$this._os = os;

  Gsave_notification_tokenVarsBuilder();

  Gsave_notification_tokenVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _notificationToken = $v.notificationToken;
      _os = $v.os;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsave_notification_tokenVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsave_notification_tokenVars;
  }

  @override
  void update(void Function(Gsave_notification_tokenVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsave_notification_tokenVars build() => _build();

  _$Gsave_notification_tokenVars _build() {
    final _$result = _$v ??
        new _$Gsave_notification_tokenVars._(
            notificationToken: BuiltValueNullFieldError.checkNotNull(
                notificationToken,
                r'Gsave_notification_tokenVars',
                'notificationToken'),
            os: BuiltValueNullFieldError.checkNotNull(
                os, r'Gsave_notification_tokenVars', 'os'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
