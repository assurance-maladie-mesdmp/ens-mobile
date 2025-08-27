// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_enrolement_liste_rattachement.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GprofilRattacheVars> _$gprofilRattacheVarsSerializer =
    new _$GprofilRattacheVarsSerializer();

class _$GprofilRattacheVarsSerializer
    implements StructuredSerializer<GprofilRattacheVars> {
  @override
  final Iterable<Type> types = const [
    GprofilRattacheVars,
    _$GprofilRattacheVars
  ];
  @override
  final String wireName = 'GprofilRattacheVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GprofilRattacheVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GprofilRattacheVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GprofilRattacheVarsBuilder().build();
  }
}

class _$GprofilRattacheVars extends GprofilRattacheVars {
  factory _$GprofilRattacheVars(
          [void Function(GprofilRattacheVarsBuilder)? updates]) =>
      (new GprofilRattacheVarsBuilder()..update(updates))._build();

  _$GprofilRattacheVars._() : super._();

  @override
  GprofilRattacheVars rebuild(
          void Function(GprofilRattacheVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GprofilRattacheVarsBuilder toBuilder() =>
      new GprofilRattacheVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GprofilRattacheVars;
  }

  @override
  int get hashCode {
    return 28394726;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GprofilRattacheVars').toString();
  }
}

class GprofilRattacheVarsBuilder
    implements Builder<GprofilRattacheVars, GprofilRattacheVarsBuilder> {
  _$GprofilRattacheVars? _$v;

  GprofilRattacheVarsBuilder();

  @override
  void replace(GprofilRattacheVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GprofilRattacheVars;
  }

  @override
  void update(void Function(GprofilRattacheVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GprofilRattacheVars build() => _build();

  _$GprofilRattacheVars _build() {
    final _$result = _$v ?? new _$GprofilRattacheVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
