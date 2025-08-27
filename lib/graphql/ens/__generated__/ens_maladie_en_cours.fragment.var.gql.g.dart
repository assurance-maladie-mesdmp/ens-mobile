// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_maladie_en_cours.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GmaladieEnCoursVars> _$gmaladieEnCoursVarsSerializer =
    new _$GmaladieEnCoursVarsSerializer();

class _$GmaladieEnCoursVarsSerializer
    implements StructuredSerializer<GmaladieEnCoursVars> {
  @override
  final Iterable<Type> types = const [
    GmaladieEnCoursVars,
    _$GmaladieEnCoursVars
  ];
  @override
  final String wireName = 'GmaladieEnCoursVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmaladieEnCoursVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GmaladieEnCoursVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GmaladieEnCoursVarsBuilder().build();
  }
}

class _$GmaladieEnCoursVars extends GmaladieEnCoursVars {
  factory _$GmaladieEnCoursVars(
          [void Function(GmaladieEnCoursVarsBuilder)? updates]) =>
      (new GmaladieEnCoursVarsBuilder()..update(updates))._build();

  _$GmaladieEnCoursVars._() : super._();

  @override
  GmaladieEnCoursVars rebuild(
          void Function(GmaladieEnCoursVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmaladieEnCoursVarsBuilder toBuilder() =>
      new GmaladieEnCoursVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmaladieEnCoursVars;
  }

  @override
  int get hashCode {
    return 713613522;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GmaladieEnCoursVars').toString();
  }
}

class GmaladieEnCoursVarsBuilder
    implements Builder<GmaladieEnCoursVars, GmaladieEnCoursVarsBuilder> {
  _$GmaladieEnCoursVars? _$v;

  GmaladieEnCoursVarsBuilder();

  @override
  void replace(GmaladieEnCoursVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmaladieEnCoursVars;
  }

  @override
  void update(void Function(GmaladieEnCoursVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmaladieEnCoursVars build() => _build();

  _$GmaladieEnCoursVars _build() {
    final _$result = _$v ?? new _$GmaladieEnCoursVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
