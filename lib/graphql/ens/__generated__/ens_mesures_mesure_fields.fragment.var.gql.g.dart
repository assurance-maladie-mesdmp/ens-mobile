// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_mesure_fields.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GmesureFieldsVars> _$gmesureFieldsVarsSerializer =
    new _$GmesureFieldsVarsSerializer();

class _$GmesureFieldsVarsSerializer
    implements StructuredSerializer<GmesureFieldsVars> {
  @override
  final Iterable<Type> types = const [GmesureFieldsVars, _$GmesureFieldsVars];
  @override
  final String wireName = 'GmesureFieldsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GmesureFieldsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GmesureFieldsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GmesureFieldsVarsBuilder().build();
  }
}

class _$GmesureFieldsVars extends GmesureFieldsVars {
  factory _$GmesureFieldsVars(
          [void Function(GmesureFieldsVarsBuilder)? updates]) =>
      (new GmesureFieldsVarsBuilder()..update(updates))._build();

  _$GmesureFieldsVars._() : super._();

  @override
  GmesureFieldsVars rebuild(void Function(GmesureFieldsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmesureFieldsVarsBuilder toBuilder() =>
      new GmesureFieldsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmesureFieldsVars;
  }

  @override
  int get hashCode {
    return 989355521;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GmesureFieldsVars').toString();
  }
}

class GmesureFieldsVarsBuilder
    implements Builder<GmesureFieldsVars, GmesureFieldsVarsBuilder> {
  _$GmesureFieldsVars? _$v;

  GmesureFieldsVarsBuilder();

  @override
  void replace(GmesureFieldsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmesureFieldsVars;
  }

  @override
  void update(void Function(GmesureFieldsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmesureFieldsVars build() => _build();

  _$GmesureFieldsVars _build() {
    final _$result = _$v ?? new _$GmesureFieldsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
