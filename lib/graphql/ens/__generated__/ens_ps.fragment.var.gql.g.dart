// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ps.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GpsVars> _$gpsVarsSerializer = new _$GpsVarsSerializer();

class _$GpsVarsSerializer implements StructuredSerializer<GpsVars> {
  @override
  final Iterable<Type> types = const [GpsVars, _$GpsVars];
  @override
  final String wireName = 'GpsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GpsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GpsVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GpsVarsBuilder().build();
  }
}

class _$GpsVars extends GpsVars {
  factory _$GpsVars([void Function(GpsVarsBuilder)? updates]) =>
      (new GpsVarsBuilder()..update(updates))._build();

  _$GpsVars._() : super._();

  @override
  GpsVars rebuild(void Function(GpsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GpsVarsBuilder toBuilder() => new GpsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GpsVars;
  }

  @override
  int get hashCode {
    return 169946803;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GpsVars').toString();
  }
}

class GpsVarsBuilder implements Builder<GpsVars, GpsVarsBuilder> {
  _$GpsVars? _$v;

  GpsVarsBuilder();

  @override
  void replace(GpsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GpsVars;
  }

  @override
  void update(void Function(GpsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GpsVars build() => _build();

  _$GpsVars _build() {
    final _$result = _$v ?? new _$GpsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
