// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_vaccination_get_vaccins.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_vaccinsVars> _$ggetVaccinsVarsSerializer =
    new _$Gget_vaccinsVarsSerializer();

class _$Gget_vaccinsVarsSerializer
    implements StructuredSerializer<Gget_vaccinsVars> {
  @override
  final Iterable<Type> types = const [Gget_vaccinsVars, _$Gget_vaccinsVars];
  @override
  final String wireName = 'Gget_vaccinsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gget_vaccinsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  Gget_vaccinsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new Gget_vaccinsVarsBuilder().build();
  }
}

class _$Gget_vaccinsVars extends Gget_vaccinsVars {
  factory _$Gget_vaccinsVars(
          [void Function(Gget_vaccinsVarsBuilder)? updates]) =>
      (new Gget_vaccinsVarsBuilder()..update(updates))._build();

  _$Gget_vaccinsVars._() : super._();

  @override
  Gget_vaccinsVars rebuild(void Function(Gget_vaccinsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_vaccinsVarsBuilder toBuilder() =>
      new Gget_vaccinsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_vaccinsVars;
  }

  @override
  int get hashCode {
    return 555396614;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'Gget_vaccinsVars').toString();
  }
}

class Gget_vaccinsVarsBuilder
    implements Builder<Gget_vaccinsVars, Gget_vaccinsVarsBuilder> {
  _$Gget_vaccinsVars? _$v;

  Gget_vaccinsVarsBuilder();

  @override
  void replace(Gget_vaccinsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_vaccinsVars;
  }

  @override
  void update(void Function(Gget_vaccinsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_vaccinsVars build() => _build();

  _$Gget_vaccinsVars _build() {
    final _$result = _$v ?? new _$Gget_vaccinsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
