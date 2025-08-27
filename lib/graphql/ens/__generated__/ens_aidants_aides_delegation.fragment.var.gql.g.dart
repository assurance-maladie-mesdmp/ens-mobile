// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_aidants_aides_delegation.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GdelegationVars> _$gdelegationVarsSerializer =
    new _$GdelegationVarsSerializer();

class _$GdelegationVarsSerializer
    implements StructuredSerializer<GdelegationVars> {
  @override
  final Iterable<Type> types = const [GdelegationVars, _$GdelegationVars];
  @override
  final String wireName = 'GdelegationVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GdelegationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GdelegationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GdelegationVarsBuilder().build();
  }
}

class _$GdelegationVars extends GdelegationVars {
  factory _$GdelegationVars([void Function(GdelegationVarsBuilder)? updates]) =>
      (new GdelegationVarsBuilder()..update(updates))._build();

  _$GdelegationVars._() : super._();

  @override
  GdelegationVars rebuild(void Function(GdelegationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdelegationVarsBuilder toBuilder() =>
      new GdelegationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdelegationVars;
  }

  @override
  int get hashCode {
    return 807815354;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GdelegationVars').toString();
  }
}

class GdelegationVarsBuilder
    implements Builder<GdelegationVars, GdelegationVarsBuilder> {
  _$GdelegationVars? _$v;

  GdelegationVarsBuilder();

  @override
  void replace(GdelegationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdelegationVars;
  }

  @override
  void update(void Function(GdelegationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdelegationVars build() => _build();

  _$GdelegationVars _build() {
    final _$result = _$v ?? new _$GdelegationVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
