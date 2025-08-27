// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_discipline.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GdisciplineResponseVars> _$gdisciplineResponseVarsSerializer =
    new _$GdisciplineResponseVarsSerializer();

class _$GdisciplineResponseVarsSerializer
    implements StructuredSerializer<GdisciplineResponseVars> {
  @override
  final Iterable<Type> types = const [
    GdisciplineResponseVars,
    _$GdisciplineResponseVars
  ];
  @override
  final String wireName = 'GdisciplineResponseVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GdisciplineResponseVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GdisciplineResponseVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GdisciplineResponseVarsBuilder().build();
  }
}

class _$GdisciplineResponseVars extends GdisciplineResponseVars {
  factory _$GdisciplineResponseVars(
          [void Function(GdisciplineResponseVarsBuilder)? updates]) =>
      (new GdisciplineResponseVarsBuilder()..update(updates))._build();

  _$GdisciplineResponseVars._() : super._();

  @override
  GdisciplineResponseVars rebuild(
          void Function(GdisciplineResponseVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdisciplineResponseVarsBuilder toBuilder() =>
      new GdisciplineResponseVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdisciplineResponseVars;
  }

  @override
  int get hashCode {
    return 211019051;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GdisciplineResponseVars').toString();
  }
}

class GdisciplineResponseVarsBuilder
    implements
        Builder<GdisciplineResponseVars, GdisciplineResponseVarsBuilder> {
  _$GdisciplineResponseVars? _$v;

  GdisciplineResponseVarsBuilder();

  @override
  void replace(GdisciplineResponseVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdisciplineResponseVars;
  }

  @override
  void update(void Function(GdisciplineResponseVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdisciplineResponseVars build() => _build();

  _$GdisciplineResponseVars _build() {
    final _$result = _$v ?? new _$GdisciplineResponseVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
