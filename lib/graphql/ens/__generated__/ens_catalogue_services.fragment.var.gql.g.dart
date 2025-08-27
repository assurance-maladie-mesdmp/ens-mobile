// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_catalogue_services.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GserviceVars> _$gserviceVarsSerializer =
    new _$GserviceVarsSerializer();
Serializer<GregionVars> _$gregionVarsSerializer = new _$GregionVarsSerializer();
Serializer<GthematicsVars> _$gthematicsVarsSerializer =
    new _$GthematicsVarsSerializer();

class _$GserviceVarsSerializer implements StructuredSerializer<GserviceVars> {
  @override
  final Iterable<Type> types = const [GserviceVars, _$GserviceVars];
  @override
  final String wireName = 'GserviceVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GserviceVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GserviceVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GserviceVarsBuilder().build();
  }
}

class _$GregionVarsSerializer implements StructuredSerializer<GregionVars> {
  @override
  final Iterable<Type> types = const [GregionVars, _$GregionVars];
  @override
  final String wireName = 'GregionVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GregionVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GregionVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GregionVarsBuilder().build();
  }
}

class _$GthematicsVarsSerializer
    implements StructuredSerializer<GthematicsVars> {
  @override
  final Iterable<Type> types = const [GthematicsVars, _$GthematicsVars];
  @override
  final String wireName = 'GthematicsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GthematicsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GthematicsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GthematicsVarsBuilder().build();
  }
}

class _$GserviceVars extends GserviceVars {
  factory _$GserviceVars([void Function(GserviceVarsBuilder)? updates]) =>
      (new GserviceVarsBuilder()..update(updates))._build();

  _$GserviceVars._() : super._();

  @override
  GserviceVars rebuild(void Function(GserviceVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GserviceVarsBuilder toBuilder() => new GserviceVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GserviceVars;
  }

  @override
  int get hashCode {
    return 894389435;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GserviceVars').toString();
  }
}

class GserviceVarsBuilder
    implements Builder<GserviceVars, GserviceVarsBuilder> {
  _$GserviceVars? _$v;

  GserviceVarsBuilder();

  @override
  void replace(GserviceVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GserviceVars;
  }

  @override
  void update(void Function(GserviceVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GserviceVars build() => _build();

  _$GserviceVars _build() {
    final _$result = _$v ?? new _$GserviceVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GregionVars extends GregionVars {
  factory _$GregionVars([void Function(GregionVarsBuilder)? updates]) =>
      (new GregionVarsBuilder()..update(updates))._build();

  _$GregionVars._() : super._();

  @override
  GregionVars rebuild(void Function(GregionVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GregionVarsBuilder toBuilder() => new GregionVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GregionVars;
  }

  @override
  int get hashCode {
    return 584352542;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GregionVars').toString();
  }
}

class GregionVarsBuilder implements Builder<GregionVars, GregionVarsBuilder> {
  _$GregionVars? _$v;

  GregionVarsBuilder();

  @override
  void replace(GregionVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GregionVars;
  }

  @override
  void update(void Function(GregionVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GregionVars build() => _build();

  _$GregionVars _build() {
    final _$result = _$v ?? new _$GregionVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GthematicsVars extends GthematicsVars {
  factory _$GthematicsVars([void Function(GthematicsVarsBuilder)? updates]) =>
      (new GthematicsVarsBuilder()..update(updates))._build();

  _$GthematicsVars._() : super._();

  @override
  GthematicsVars rebuild(void Function(GthematicsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GthematicsVarsBuilder toBuilder() =>
      new GthematicsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GthematicsVars;
  }

  @override
  int get hashCode {
    return 374716149;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GthematicsVars').toString();
  }
}

class GthematicsVarsBuilder
    implements Builder<GthematicsVars, GthematicsVarsBuilder> {
  _$GthematicsVars? _$v;

  GthematicsVarsBuilder();

  @override
  void replace(GthematicsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GthematicsVars;
  }

  @override
  void update(void Function(GthematicsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GthematicsVars build() => _build();

  _$GthematicsVars _build() {
    final _$result = _$v ?? new _$GthematicsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
