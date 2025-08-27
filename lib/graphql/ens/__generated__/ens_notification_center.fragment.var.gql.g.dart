// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_notification_center.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GnotificationCenterVars> _$gnotificationCenterVarsSerializer =
    new _$GnotificationCenterVarsSerializer();

class _$GnotificationCenterVarsSerializer
    implements StructuredSerializer<GnotificationCenterVars> {
  @override
  final Iterable<Type> types = const [
    GnotificationCenterVars,
    _$GnotificationCenterVars
  ];
  @override
  final String wireName = 'GnotificationCenterVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GnotificationCenterVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GnotificationCenterVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GnotificationCenterVarsBuilder().build();
  }
}

class _$GnotificationCenterVars extends GnotificationCenterVars {
  factory _$GnotificationCenterVars(
          [void Function(GnotificationCenterVarsBuilder)? updates]) =>
      (new GnotificationCenterVarsBuilder()..update(updates))._build();

  _$GnotificationCenterVars._() : super._();

  @override
  GnotificationCenterVars rebuild(
          void Function(GnotificationCenterVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GnotificationCenterVarsBuilder toBuilder() =>
      new GnotificationCenterVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GnotificationCenterVars;
  }

  @override
  int get hashCode {
    return 1021654996;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GnotificationCenterVars').toString();
  }
}

class GnotificationCenterVarsBuilder
    implements
        Builder<GnotificationCenterVars, GnotificationCenterVarsBuilder> {
  _$GnotificationCenterVars? _$v;

  GnotificationCenterVarsBuilder();

  @override
  void replace(GnotificationCenterVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GnotificationCenterVars;
  }

  @override
  void update(void Function(GnotificationCenterVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GnotificationCenterVars build() => _build();

  _$GnotificationCenterVars _build() {
    final _$result = _$v ?? new _$GnotificationCenterVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
