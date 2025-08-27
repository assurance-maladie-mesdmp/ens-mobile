// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_aidants_aides_acteur.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GacteurVars> _$gacteurVarsSerializer = new _$GacteurVarsSerializer();

class _$GacteurVarsSerializer implements StructuredSerializer<GacteurVars> {
  @override
  final Iterable<Type> types = const [GacteurVars, _$GacteurVars];
  @override
  final String wireName = 'GacteurVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GacteurVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GacteurVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GacteurVarsBuilder().build();
  }
}

class _$GacteurVars extends GacteurVars {
  factory _$GacteurVars([void Function(GacteurVarsBuilder)? updates]) =>
      (new GacteurVarsBuilder()..update(updates))._build();

  _$GacteurVars._() : super._();

  @override
  GacteurVars rebuild(void Function(GacteurVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GacteurVarsBuilder toBuilder() => new GacteurVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GacteurVars;
  }

  @override
  int get hashCode {
    return 321890100;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GacteurVars').toString();
  }
}

class GacteurVarsBuilder implements Builder<GacteurVars, GacteurVarsBuilder> {
  _$GacteurVars? _$v;

  GacteurVarsBuilder();

  @override
  void replace(GacteurVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GacteurVars;
  }

  @override
  void update(void Function(GacteurVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GacteurVars build() => _build();

  _$GacteurVars _build() {
    final _$result = _$v ?? new _$GacteurVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
