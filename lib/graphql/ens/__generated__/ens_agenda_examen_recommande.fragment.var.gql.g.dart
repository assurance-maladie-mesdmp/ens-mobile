// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_agenda_examen_recommande.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GexamenRecommandeVars> _$gexamenRecommandeVarsSerializer =
    new _$GexamenRecommandeVarsSerializer();

class _$GexamenRecommandeVarsSerializer
    implements StructuredSerializer<GexamenRecommandeVars> {
  @override
  final Iterable<Type> types = const [
    GexamenRecommandeVars,
    _$GexamenRecommandeVars
  ];
  @override
  final String wireName = 'GexamenRecommandeVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GexamenRecommandeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GexamenRecommandeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GexamenRecommandeVarsBuilder().build();
  }
}

class _$GexamenRecommandeVars extends GexamenRecommandeVars {
  factory _$GexamenRecommandeVars(
          [void Function(GexamenRecommandeVarsBuilder)? updates]) =>
      (new GexamenRecommandeVarsBuilder()..update(updates))._build();

  _$GexamenRecommandeVars._() : super._();

  @override
  GexamenRecommandeVars rebuild(
          void Function(GexamenRecommandeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GexamenRecommandeVarsBuilder toBuilder() =>
      new GexamenRecommandeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GexamenRecommandeVars;
  }

  @override
  int get hashCode {
    return 772696653;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GexamenRecommandeVars').toString();
  }
}

class GexamenRecommandeVarsBuilder
    implements Builder<GexamenRecommandeVars, GexamenRecommandeVarsBuilder> {
  _$GexamenRecommandeVars? _$v;

  GexamenRecommandeVarsBuilder();

  @override
  void replace(GexamenRecommandeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GexamenRecommandeVars;
  }

  @override
  void update(void Function(GexamenRecommandeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GexamenRecommandeVars build() => _build();

  _$GexamenRecommandeVars _build() {
    final _$result = _$v ?? new _$GexamenRecommandeVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
