// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_entourage_structure.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GentourageStructureVars> _$gentourageStructureVarsSerializer =
    new _$GentourageStructureVarsSerializer();

class _$GentourageStructureVarsSerializer
    implements StructuredSerializer<GentourageStructureVars> {
  @override
  final Iterable<Type> types = const [
    GentourageStructureVars,
    _$GentourageStructureVars
  ];
  @override
  final String wireName = 'GentourageStructureVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GentourageStructureVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GentourageStructureVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GentourageStructureVarsBuilder().build();
  }
}

class _$GentourageStructureVars extends GentourageStructureVars {
  factory _$GentourageStructureVars(
          [void Function(GentourageStructureVarsBuilder)? updates]) =>
      (new GentourageStructureVarsBuilder()..update(updates))._build();

  _$GentourageStructureVars._() : super._();

  @override
  GentourageStructureVars rebuild(
          void Function(GentourageStructureVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GentourageStructureVarsBuilder toBuilder() =>
      new GentourageStructureVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GentourageStructureVars;
  }

  @override
  int get hashCode {
    return 1039987618;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GentourageStructureVars').toString();
  }
}

class GentourageStructureVarsBuilder
    implements
        Builder<GentourageStructureVars, GentourageStructureVarsBuilder> {
  _$GentourageStructureVars? _$v;

  GentourageStructureVarsBuilder();

  @override
  void replace(GentourageStructureVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GentourageStructureVars;
  }

  @override
  void update(void Function(GentourageStructureVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GentourageStructureVars build() => _build();

  _$GentourageStructureVars _build() {
    final _$result = _$v ?? new _$GentourageStructureVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
