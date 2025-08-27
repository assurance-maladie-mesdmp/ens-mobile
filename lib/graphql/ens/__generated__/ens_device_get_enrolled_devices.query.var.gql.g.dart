// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_device_get_enrolled_devices.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_enrolled_devicesVars> _$ggetEnrolledDevicesVarsSerializer =
    new _$Gget_enrolled_devicesVarsSerializer();

class _$Gget_enrolled_devicesVarsSerializer
    implements StructuredSerializer<Gget_enrolled_devicesVars> {
  @override
  final Iterable<Type> types = const [
    Gget_enrolled_devicesVars,
    _$Gget_enrolled_devicesVars
  ];
  @override
  final String wireName = 'Gget_enrolled_devicesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_enrolled_devicesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  Gget_enrolled_devicesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new Gget_enrolled_devicesVarsBuilder().build();
  }
}

class _$Gget_enrolled_devicesVars extends Gget_enrolled_devicesVars {
  factory _$Gget_enrolled_devicesVars(
          [void Function(Gget_enrolled_devicesVarsBuilder)? updates]) =>
      (new Gget_enrolled_devicesVarsBuilder()..update(updates))._build();

  _$Gget_enrolled_devicesVars._() : super._();

  @override
  Gget_enrolled_devicesVars rebuild(
          void Function(Gget_enrolled_devicesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_enrolled_devicesVarsBuilder toBuilder() =>
      new Gget_enrolled_devicesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_enrolled_devicesVars;
  }

  @override
  int get hashCode {
    return 570345313;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'Gget_enrolled_devicesVars').toString();
  }
}

class Gget_enrolled_devicesVarsBuilder
    implements
        Builder<Gget_enrolled_devicesVars, Gget_enrolled_devicesVarsBuilder> {
  _$Gget_enrolled_devicesVars? _$v;

  Gget_enrolled_devicesVarsBuilder();

  @override
  void replace(Gget_enrolled_devicesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_enrolled_devicesVars;
  }

  @override
  void update(void Function(Gget_enrolled_devicesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_enrolled_devicesVars build() => _build();

  _$Gget_enrolled_devicesVars _build() {
    final _$result = _$v ?? new _$Gget_enrolled_devicesVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
