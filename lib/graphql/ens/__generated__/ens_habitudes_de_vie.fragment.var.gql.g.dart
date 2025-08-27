// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_habitudes_de_vie.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GhabitudesDeVieVars> _$ghabitudesDeVieVarsSerializer =
    new _$GhabitudesDeVieVarsSerializer();

class _$GhabitudesDeVieVarsSerializer
    implements StructuredSerializer<GhabitudesDeVieVars> {
  @override
  final Iterable<Type> types = const [
    GhabitudesDeVieVars,
    _$GhabitudesDeVieVars
  ];
  @override
  final String wireName = 'GhabitudesDeVieVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GhabitudesDeVieVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GhabitudesDeVieVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GhabitudesDeVieVarsBuilder().build();
  }
}

class _$GhabitudesDeVieVars extends GhabitudesDeVieVars {
  factory _$GhabitudesDeVieVars(
          [void Function(GhabitudesDeVieVarsBuilder)? updates]) =>
      (new GhabitudesDeVieVarsBuilder()..update(updates))._build();

  _$GhabitudesDeVieVars._() : super._();

  @override
  GhabitudesDeVieVars rebuild(
          void Function(GhabitudesDeVieVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GhabitudesDeVieVarsBuilder toBuilder() =>
      new GhabitudesDeVieVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GhabitudesDeVieVars;
  }

  @override
  int get hashCode {
    return 648744492;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GhabitudesDeVieVars').toString();
  }
}

class GhabitudesDeVieVarsBuilder
    implements Builder<GhabitudesDeVieVars, GhabitudesDeVieVarsBuilder> {
  _$GhabitudesDeVieVars? _$v;

  GhabitudesDeVieVarsBuilder();

  @override
  void replace(GhabitudesDeVieVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GhabitudesDeVieVars;
  }

  @override
  void update(void Function(GhabitudesDeVieVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GhabitudesDeVieVars build() => _build();

  _$GhabitudesDeVieVars _build() {
    final _$result = _$v ?? new _$GhabitudesDeVieVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
