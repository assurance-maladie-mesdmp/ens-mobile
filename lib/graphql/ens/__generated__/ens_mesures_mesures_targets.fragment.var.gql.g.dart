// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_mesures_targets.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GmesuresTargetsVars> _$gmesuresTargetsVarsSerializer =
    new _$GmesuresTargetsVarsSerializer();

class _$GmesuresTargetsVarsSerializer
    implements StructuredSerializer<GmesuresTargetsVars> {
  @override
  final Iterable<Type> types = const [
    GmesuresTargetsVars,
    _$GmesuresTargetsVars
  ];
  @override
  final String wireName = 'GmesuresTargetsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmesuresTargetsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GmesuresTargetsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GmesuresTargetsVarsBuilder().build();
  }
}

class _$GmesuresTargetsVars extends GmesuresTargetsVars {
  factory _$GmesuresTargetsVars(
          [void Function(GmesuresTargetsVarsBuilder)? updates]) =>
      (new GmesuresTargetsVarsBuilder()..update(updates))._build();

  _$GmesuresTargetsVars._() : super._();

  @override
  GmesuresTargetsVars rebuild(
          void Function(GmesuresTargetsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmesuresTargetsVarsBuilder toBuilder() =>
      new GmesuresTargetsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmesuresTargetsVars;
  }

  @override
  int get hashCode {
    return 931343063;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GmesuresTargetsVars').toString();
  }
}

class GmesuresTargetsVarsBuilder
    implements Builder<GmesuresTargetsVars, GmesuresTargetsVarsBuilder> {
  _$GmesuresTargetsVars? _$v;

  GmesuresTargetsVarsBuilder();

  @override
  void replace(GmesuresTargetsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmesuresTargetsVars;
  }

  @override
  void update(void Function(GmesuresTargetsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmesuresTargetsVars build() => _build();

  _$GmesuresTargetsVars _build() {
    final _$result = _$v ?? new _$GmesuresTargetsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
