// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_incentive_reco.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GincentiveRecoVars> _$gincentiveRecoVarsSerializer =
    new _$GincentiveRecoVarsSerializer();

class _$GincentiveRecoVarsSerializer
    implements StructuredSerializer<GincentiveRecoVars> {
  @override
  final Iterable<Type> types = const [GincentiveRecoVars, _$GincentiveRecoVars];
  @override
  final String wireName = 'GincentiveRecoVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GincentiveRecoVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GincentiveRecoVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GincentiveRecoVarsBuilder().build();
  }
}

class _$GincentiveRecoVars extends GincentiveRecoVars {
  factory _$GincentiveRecoVars(
          [void Function(GincentiveRecoVarsBuilder)? updates]) =>
      (new GincentiveRecoVarsBuilder()..update(updates))._build();

  _$GincentiveRecoVars._() : super._();

  @override
  GincentiveRecoVars rebuild(
          void Function(GincentiveRecoVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GincentiveRecoVarsBuilder toBuilder() =>
      new GincentiveRecoVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GincentiveRecoVars;
  }

  @override
  int get hashCode {
    return 641814309;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GincentiveRecoVars').toString();
  }
}

class GincentiveRecoVarsBuilder
    implements Builder<GincentiveRecoVars, GincentiveRecoVarsBuilder> {
  _$GincentiveRecoVars? _$v;

  GincentiveRecoVarsBuilder();

  @override
  void replace(GincentiveRecoVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GincentiveRecoVars;
  }

  @override
  void update(void Function(GincentiveRecoVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GincentiveRecoVars build() => _build();

  _$GincentiveRecoVars _build() {
    final _$result = _$v ?? new _$GincentiveRecoVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
