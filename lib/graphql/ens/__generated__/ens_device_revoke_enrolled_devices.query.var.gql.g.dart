// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_device_revoke_enrolled_devices.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Grevoke_enrolled_devicesVars>
    _$grevokeEnrolledDevicesVarsSerializer =
    new _$Grevoke_enrolled_devicesVarsSerializer();

class _$Grevoke_enrolled_devicesVarsSerializer
    implements StructuredSerializer<Grevoke_enrolled_devicesVars> {
  @override
  final Iterable<Type> types = const [
    Grevoke_enrolled_devicesVars,
    _$Grevoke_enrolled_devicesVars
  ];
  @override
  final String wireName = 'Grevoke_enrolled_devicesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Grevoke_enrolled_devicesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  Grevoke_enrolled_devicesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new Grevoke_enrolled_devicesVarsBuilder().build();
  }
}

class _$Grevoke_enrolled_devicesVars extends Grevoke_enrolled_devicesVars {
  factory _$Grevoke_enrolled_devicesVars(
          [void Function(Grevoke_enrolled_devicesVarsBuilder)? updates]) =>
      (new Grevoke_enrolled_devicesVarsBuilder()..update(updates))._build();

  _$Grevoke_enrolled_devicesVars._() : super._();

  @override
  Grevoke_enrolled_devicesVars rebuild(
          void Function(Grevoke_enrolled_devicesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Grevoke_enrolled_devicesVarsBuilder toBuilder() =>
      new Grevoke_enrolled_devicesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Grevoke_enrolled_devicesVars;
  }

  @override
  int get hashCode {
    return 652201867;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'Grevoke_enrolled_devicesVars')
        .toString();
  }
}

class Grevoke_enrolled_devicesVarsBuilder
    implements
        Builder<Grevoke_enrolled_devicesVars,
            Grevoke_enrolled_devicesVarsBuilder> {
  _$Grevoke_enrolled_devicesVars? _$v;

  Grevoke_enrolled_devicesVarsBuilder();

  @override
  void replace(Grevoke_enrolled_devicesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Grevoke_enrolled_devicesVars;
  }

  @override
  void update(void Function(Grevoke_enrolled_devicesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Grevoke_enrolled_devicesVars build() => _build();

  _$Grevoke_enrolled_devicesVars _build() {
    final _$result = _$v ?? new _$Grevoke_enrolled_devicesVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
