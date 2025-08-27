// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ayants_droits.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GayantDroitsVars> _$gayantDroitsVarsSerializer =
    new _$GayantDroitsVarsSerializer();

class _$GayantDroitsVarsSerializer
    implements StructuredSerializer<GayantDroitsVars> {
  @override
  final Iterable<Type> types = const [GayantDroitsVars, _$GayantDroitsVars];
  @override
  final String wireName = 'GayantDroitsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GayantDroitsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GayantDroitsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GayantDroitsVarsBuilder().build();
  }
}

class _$GayantDroitsVars extends GayantDroitsVars {
  factory _$GayantDroitsVars(
          [void Function(GayantDroitsVarsBuilder)? updates]) =>
      (new GayantDroitsVarsBuilder()..update(updates))._build();

  _$GayantDroitsVars._() : super._();

  @override
  GayantDroitsVars rebuild(void Function(GayantDroitsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GayantDroitsVarsBuilder toBuilder() =>
      new GayantDroitsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GayantDroitsVars;
  }

  @override
  int get hashCode {
    return 367508547;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GayantDroitsVars').toString();
  }
}

class GayantDroitsVarsBuilder
    implements Builder<GayantDroitsVars, GayantDroitsVarsBuilder> {
  _$GayantDroitsVars? _$v;

  GayantDroitsVarsBuilder();

  @override
  void replace(GayantDroitsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GayantDroitsVars;
  }

  @override
  void update(void Function(GayantDroitsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GayantDroitsVars build() => _build();

  _$GayantDroitsVars _build() {
    final _$result = _$v ?? new _$GayantDroitsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
