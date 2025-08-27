// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_last_mesure.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GlastMesureVars> _$glastMesureVarsSerializer =
    new _$GlastMesureVarsSerializer();

class _$GlastMesureVarsSerializer
    implements StructuredSerializer<GlastMesureVars> {
  @override
  final Iterable<Type> types = const [GlastMesureVars, _$GlastMesureVars];
  @override
  final String wireName = 'GlastMesureVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GlastMesureVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GlastMesureVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GlastMesureVarsBuilder().build();
  }
}

class _$GlastMesureVars extends GlastMesureVars {
  factory _$GlastMesureVars([void Function(GlastMesureVarsBuilder)? updates]) =>
      (new GlastMesureVarsBuilder()..update(updates))._build();

  _$GlastMesureVars._() : super._();

  @override
  GlastMesureVars rebuild(void Function(GlastMesureVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlastMesureVarsBuilder toBuilder() =>
      new GlastMesureVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlastMesureVars;
  }

  @override
  int get hashCode {
    return 251103465;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GlastMesureVars').toString();
  }
}

class GlastMesureVarsBuilder
    implements Builder<GlastMesureVars, GlastMesureVarsBuilder> {
  _$GlastMesureVars? _$v;

  GlastMesureVarsBuilder();

  @override
  void replace(GlastMesureVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlastMesureVars;
  }

  @override
  void update(void Function(GlastMesureVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlastMesureVars build() => _build();

  _$GlastMesureVars _build() {
    final _$result = _$v ?? new _$GlastMesureVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
