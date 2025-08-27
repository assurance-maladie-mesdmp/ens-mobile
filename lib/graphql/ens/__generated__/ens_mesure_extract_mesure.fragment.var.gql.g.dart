// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesure_extract_mesure.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GextractMesureVars> _$gextractMesureVarsSerializer =
    new _$GextractMesureVarsSerializer();

class _$GextractMesureVarsSerializer
    implements StructuredSerializer<GextractMesureVars> {
  @override
  final Iterable<Type> types = const [GextractMesureVars, _$GextractMesureVars];
  @override
  final String wireName = 'GextractMesureVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GextractMesureVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GextractMesureVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GextractMesureVarsBuilder().build();
  }
}

class _$GextractMesureVars extends GextractMesureVars {
  factory _$GextractMesureVars(
          [void Function(GextractMesureVarsBuilder)? updates]) =>
      (new GextractMesureVarsBuilder()..update(updates))._build();

  _$GextractMesureVars._() : super._();

  @override
  GextractMesureVars rebuild(
          void Function(GextractMesureVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GextractMesureVarsBuilder toBuilder() =>
      new GextractMesureVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GextractMesureVars;
  }

  @override
  int get hashCode {
    return 1013403301;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GextractMesureVars').toString();
  }
}

class GextractMesureVarsBuilder
    implements Builder<GextractMesureVars, GextractMesureVarsBuilder> {
  _$GextractMesureVars? _$v;

  GextractMesureVarsBuilder();

  @override
  void replace(GextractMesureVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GextractMesureVars;
  }

  @override
  void update(void Function(GextractMesureVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GextractMesureVars build() => _build();

  _$GextractMesureVars _build() {
    final _$result = _$v ?? new _$GextractMesureVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
