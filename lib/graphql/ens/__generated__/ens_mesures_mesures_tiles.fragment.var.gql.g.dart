// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_mesures_tiles.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GmesuresTilesVars> _$gmesuresTilesVarsSerializer =
    new _$GmesuresTilesVarsSerializer();

class _$GmesuresTilesVarsSerializer
    implements StructuredSerializer<GmesuresTilesVars> {
  @override
  final Iterable<Type> types = const [GmesuresTilesVars, _$GmesuresTilesVars];
  @override
  final String wireName = 'GmesuresTilesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GmesuresTilesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GmesuresTilesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GmesuresTilesVarsBuilder().build();
  }
}

class _$GmesuresTilesVars extends GmesuresTilesVars {
  factory _$GmesuresTilesVars(
          [void Function(GmesuresTilesVarsBuilder)? updates]) =>
      (new GmesuresTilesVarsBuilder()..update(updates))._build();

  _$GmesuresTilesVars._() : super._();

  @override
  GmesuresTilesVars rebuild(void Function(GmesuresTilesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmesuresTilesVarsBuilder toBuilder() =>
      new GmesuresTilesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmesuresTilesVars;
  }

  @override
  int get hashCode {
    return 619335194;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GmesuresTilesVars').toString();
  }
}

class GmesuresTilesVarsBuilder
    implements Builder<GmesuresTilesVars, GmesuresTilesVarsBuilder> {
  _$GmesuresTilesVars? _$v;

  GmesuresTilesVarsBuilder();

  @override
  void replace(GmesuresTilesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmesuresTilesVars;
  }

  @override
  void update(void Function(GmesuresTilesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmesuresTilesVars build() => _build();

  _$GmesuresTilesVars _build() {
    final _$result = _$v ?? new _$GmesuresTilesVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
