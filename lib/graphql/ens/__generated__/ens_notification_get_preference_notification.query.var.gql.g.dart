// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_notification_get_preference_notification.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_preference_notificationVars>
    _$ggetPreferenceNotificationVarsSerializer =
    new _$Gget_preference_notificationVarsSerializer();

class _$Gget_preference_notificationVarsSerializer
    implements StructuredSerializer<Gget_preference_notificationVars> {
  @override
  final Iterable<Type> types = const [
    Gget_preference_notificationVars,
    _$Gget_preference_notificationVars
  ];
  @override
  final String wireName = 'Gget_preference_notificationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_preference_notificationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'getPersonalInformationInput',
      serializers.serialize(object.getPersonalInformationInput,
          specifiedType: const FullType(_i1.GGetPersonalInformationInput)),
    ];

    return result;
  }

  @override
  Gget_preference_notificationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_preference_notificationVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'getPersonalInformationInput':
          result.getPersonalInformationInput.replace(serializers.deserialize(
                  value,
                  specifiedType:
                      const FullType(_i1.GGetPersonalInformationInput))!
              as _i1.GGetPersonalInformationInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_preference_notificationVars
    extends Gget_preference_notificationVars {
  @override
  final _i1.GGetPersonalInformationInput getPersonalInformationInput;

  factory _$Gget_preference_notificationVars(
          [void Function(Gget_preference_notificationVarsBuilder)? updates]) =>
      (new Gget_preference_notificationVarsBuilder()..update(updates))._build();

  _$Gget_preference_notificationVars._(
      {required this.getPersonalInformationInput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(getPersonalInformationInput,
        r'Gget_preference_notificationVars', 'getPersonalInformationInput');
  }

  @override
  Gget_preference_notificationVars rebuild(
          void Function(Gget_preference_notificationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_preference_notificationVarsBuilder toBuilder() =>
      new Gget_preference_notificationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_preference_notificationVars &&
        getPersonalInformationInput == other.getPersonalInformationInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, getPersonalInformationInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_preference_notificationVars')
          ..add('getPersonalInformationInput', getPersonalInformationInput))
        .toString();
  }
}

class Gget_preference_notificationVarsBuilder
    implements
        Builder<Gget_preference_notificationVars,
            Gget_preference_notificationVarsBuilder> {
  _$Gget_preference_notificationVars? _$v;

  _i1.GGetPersonalInformationInputBuilder? _getPersonalInformationInput;
  _i1.GGetPersonalInformationInputBuilder get getPersonalInformationInput =>
      _$this._getPersonalInformationInput ??=
          new _i1.GGetPersonalInformationInputBuilder();
  set getPersonalInformationInput(
          _i1.GGetPersonalInformationInputBuilder?
              getPersonalInformationInput) =>
      _$this._getPersonalInformationInput = getPersonalInformationInput;

  Gget_preference_notificationVarsBuilder();

  Gget_preference_notificationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _getPersonalInformationInput = $v.getPersonalInformationInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_preference_notificationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_preference_notificationVars;
  }

  @override
  void update(void Function(Gget_preference_notificationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_preference_notificationVars build() => _build();

  _$Gget_preference_notificationVars _build() {
    _$Gget_preference_notificationVars _$result;
    try {
      _$result = _$v ??
          new _$Gget_preference_notificationVars._(
              getPersonalInformationInput: getPersonalInformationInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getPersonalInformationInput';
        getPersonalInformationInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_preference_notificationVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
