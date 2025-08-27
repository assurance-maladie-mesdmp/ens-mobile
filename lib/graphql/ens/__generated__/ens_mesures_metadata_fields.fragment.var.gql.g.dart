// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_metadata_fields.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GmetadataFieldsVars> _$gmetadataFieldsVarsSerializer =
    new _$GmetadataFieldsVarsSerializer();

class _$GmetadataFieldsVarsSerializer
    implements StructuredSerializer<GmetadataFieldsVars> {
  @override
  final Iterable<Type> types = const [
    GmetadataFieldsVars,
    _$GmetadataFieldsVars
  ];
  @override
  final String wireName = 'GmetadataFieldsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmetadataFieldsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GmetadataFieldsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GmetadataFieldsVarsBuilder().build();
  }
}

class _$GmetadataFieldsVars extends GmetadataFieldsVars {
  factory _$GmetadataFieldsVars(
          [void Function(GmetadataFieldsVarsBuilder)? updates]) =>
      (new GmetadataFieldsVarsBuilder()..update(updates))._build();

  _$GmetadataFieldsVars._() : super._();

  @override
  GmetadataFieldsVars rebuild(
          void Function(GmetadataFieldsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmetadataFieldsVarsBuilder toBuilder() =>
      new GmetadataFieldsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmetadataFieldsVars;
  }

  @override
  int get hashCode {
    return 700692151;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GmetadataFieldsVars').toString();
  }
}

class GmetadataFieldsVarsBuilder
    implements Builder<GmetadataFieldsVars, GmetadataFieldsVarsBuilder> {
  _$GmetadataFieldsVars? _$v;

  GmetadataFieldsVarsBuilder();

  @override
  void replace(GmetadataFieldsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmetadataFieldsVars;
  }

  @override
  void update(void Function(GmetadataFieldsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmetadataFieldsVars build() => _build();

  _$GmetadataFieldsVars _build() {
    final _$result = _$v ?? new _$GmetadataFieldsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
