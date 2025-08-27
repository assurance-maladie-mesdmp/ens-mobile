// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_es.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gadresse_ps_esVars> _$gadressePsEsVarsSerializer =
    new _$Gadresse_ps_esVarsSerializer();

class _$Gadresse_ps_esVarsSerializer
    implements StructuredSerializer<Gadresse_ps_esVars> {
  @override
  final Iterable<Type> types = const [Gadresse_ps_esVars, _$Gadresse_ps_esVars];
  @override
  final String wireName = 'Gadresse_ps_esVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadresse_ps_esVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  Gadresse_ps_esVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new Gadresse_ps_esVarsBuilder().build();
  }
}

class _$Gadresse_ps_esVars extends Gadresse_ps_esVars {
  factory _$Gadresse_ps_esVars(
          [void Function(Gadresse_ps_esVarsBuilder)? updates]) =>
      (new Gadresse_ps_esVarsBuilder()..update(updates))._build();

  _$Gadresse_ps_esVars._() : super._();

  @override
  Gadresse_ps_esVars rebuild(
          void Function(Gadresse_ps_esVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadresse_ps_esVarsBuilder toBuilder() =>
      new Gadresse_ps_esVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadresse_ps_esVars;
  }

  @override
  int get hashCode {
    return 475946157;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'Gadresse_ps_esVars').toString();
  }
}

class Gadresse_ps_esVarsBuilder
    implements Builder<Gadresse_ps_esVars, Gadresse_ps_esVarsBuilder> {
  _$Gadresse_ps_esVars? _$v;

  Gadresse_ps_esVarsBuilder();

  @override
  void replace(Gadresse_ps_esVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadresse_ps_esVars;
  }

  @override
  void update(void Function(Gadresse_ps_esVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadresse_ps_esVars build() => _build();

  _$Gadresse_ps_esVars _build() {
    final _$result = _$v ?? new _$Gadresse_ps_esVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
