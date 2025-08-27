// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_notification_set_preference_notification.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gset_preference_notificationVars>
    _$gsetPreferenceNotificationVarsSerializer =
    new _$Gset_preference_notificationVarsSerializer();

class _$Gset_preference_notificationVarsSerializer
    implements StructuredSerializer<Gset_preference_notificationVars> {
  @override
  final Iterable<Type> types = const [
    Gset_preference_notificationVars,
    _$Gset_preference_notificationVars
  ];
  @override
  final String wireName = 'Gset_preference_notificationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gset_preference_notificationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'changePreferenceNotificationInput',
      serializers.serialize(object.changePreferenceNotificationInput,
          specifiedType:
              const FullType(_i1.GChangePreferenceNotificationInput)),
    ];

    return result;
  }

  @override
  Gset_preference_notificationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gset_preference_notificationVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'changePreferenceNotificationInput':
          result.changePreferenceNotificationInput.replace(
              serializers.deserialize(value,
                      specifiedType: const FullType(
                          _i1.GChangePreferenceNotificationInput))!
                  as _i1.GChangePreferenceNotificationInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gset_preference_notificationVars
    extends Gset_preference_notificationVars {
  @override
  final _i1.GChangePreferenceNotificationInput
      changePreferenceNotificationInput;

  factory _$Gset_preference_notificationVars(
          [void Function(Gset_preference_notificationVarsBuilder)? updates]) =>
      (new Gset_preference_notificationVarsBuilder()..update(updates))._build();

  _$Gset_preference_notificationVars._(
      {required this.changePreferenceNotificationInput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        changePreferenceNotificationInput,
        r'Gset_preference_notificationVars',
        'changePreferenceNotificationInput');
  }

  @override
  Gset_preference_notificationVars rebuild(
          void Function(Gset_preference_notificationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gset_preference_notificationVarsBuilder toBuilder() =>
      new Gset_preference_notificationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gset_preference_notificationVars &&
        changePreferenceNotificationInput ==
            other.changePreferenceNotificationInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, changePreferenceNotificationInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gset_preference_notificationVars')
          ..add('changePreferenceNotificationInput',
              changePreferenceNotificationInput))
        .toString();
  }
}

class Gset_preference_notificationVarsBuilder
    implements
        Builder<Gset_preference_notificationVars,
            Gset_preference_notificationVarsBuilder> {
  _$Gset_preference_notificationVars? _$v;

  _i1.GChangePreferenceNotificationInputBuilder?
      _changePreferenceNotificationInput;
  _i1.GChangePreferenceNotificationInputBuilder
      get changePreferenceNotificationInput =>
          _$this._changePreferenceNotificationInput ??=
              new _i1.GChangePreferenceNotificationInputBuilder();
  set changePreferenceNotificationInput(
          _i1.GChangePreferenceNotificationInputBuilder?
              changePreferenceNotificationInput) =>
      _$this._changePreferenceNotificationInput =
          changePreferenceNotificationInput;

  Gset_preference_notificationVarsBuilder();

  Gset_preference_notificationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _changePreferenceNotificationInput =
          $v.changePreferenceNotificationInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gset_preference_notificationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gset_preference_notificationVars;
  }

  @override
  void update(void Function(Gset_preference_notificationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gset_preference_notificationVars build() => _build();

  _$Gset_preference_notificationVars _build() {
    _$Gset_preference_notificationVars _$result;
    try {
      _$result = _$v ??
          new _$Gset_preference_notificationVars._(
              changePreferenceNotificationInput:
                  changePreferenceNotificationInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'changePreferenceNotificationInput';
        changePreferenceNotificationInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gset_preference_notificationVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
