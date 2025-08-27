// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_maladies.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GmaladieVars> _$gmaladieVarsSerializer =
    new _$GmaladieVarsSerializer();
Serializer<GtraitementLieVars> _$gtraitementLieVarsSerializer =
    new _$GtraitementLieVarsSerializer();

class _$GmaladieVarsSerializer implements StructuredSerializer<GmaladieVars> {
  @override
  final Iterable<Type> types = const [GmaladieVars, _$GmaladieVars];
  @override
  final String wireName = 'GmaladieVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GmaladieVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GmaladieVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GmaladieVarsBuilder().build();
  }
}

class _$GtraitementLieVarsSerializer
    implements StructuredSerializer<GtraitementLieVars> {
  @override
  final Iterable<Type> types = const [GtraitementLieVars, _$GtraitementLieVars];
  @override
  final String wireName = 'GtraitementLieVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GtraitementLieVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GtraitementLieVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GtraitementLieVarsBuilder().build();
  }
}

class _$GmaladieVars extends GmaladieVars {
  factory _$GmaladieVars([void Function(GmaladieVarsBuilder)? updates]) =>
      (new GmaladieVarsBuilder()..update(updates))._build();

  _$GmaladieVars._() : super._();

  @override
  GmaladieVars rebuild(void Function(GmaladieVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmaladieVarsBuilder toBuilder() => new GmaladieVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmaladieVars;
  }

  @override
  int get hashCode {
    return 899922955;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GmaladieVars').toString();
  }
}

class GmaladieVarsBuilder
    implements Builder<GmaladieVars, GmaladieVarsBuilder> {
  _$GmaladieVars? _$v;

  GmaladieVarsBuilder();

  @override
  void replace(GmaladieVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmaladieVars;
  }

  @override
  void update(void Function(GmaladieVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmaladieVars build() => _build();

  _$GmaladieVars _build() {
    final _$result = _$v ?? new _$GmaladieVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GtraitementLieVars extends GtraitementLieVars {
  factory _$GtraitementLieVars(
          [void Function(GtraitementLieVarsBuilder)? updates]) =>
      (new GtraitementLieVarsBuilder()..update(updates))._build();

  _$GtraitementLieVars._() : super._();

  @override
  GtraitementLieVars rebuild(
          void Function(GtraitementLieVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GtraitementLieVarsBuilder toBuilder() =>
      new GtraitementLieVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GtraitementLieVars;
  }

  @override
  int get hashCode {
    return 711940815;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GtraitementLieVars').toString();
  }
}

class GtraitementLieVarsBuilder
    implements Builder<GtraitementLieVars, GtraitementLieVarsBuilder> {
  _$GtraitementLieVars? _$v;

  GtraitementLieVarsBuilder();

  @override
  void replace(GtraitementLieVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GtraitementLieVars;
  }

  @override
  void update(void Function(GtraitementLieVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GtraitementLieVars build() => _build();

  _$GtraitementLieVars _build() {
    final _$result = _$v ?? new _$GtraitementLieVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
