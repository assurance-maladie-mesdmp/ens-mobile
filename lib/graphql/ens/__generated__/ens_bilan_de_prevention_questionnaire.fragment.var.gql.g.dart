// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_bilan_de_prevention_questionnaire.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GquestionnaireVars> _$gquestionnaireVarsSerializer =
    new _$GquestionnaireVarsSerializer();

class _$GquestionnaireVarsSerializer
    implements StructuredSerializer<GquestionnaireVars> {
  @override
  final Iterable<Type> types = const [GquestionnaireVars, _$GquestionnaireVars];
  @override
  final String wireName = 'GquestionnaireVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GquestionnaireVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GquestionnaireVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GquestionnaireVarsBuilder().build();
  }
}

class _$GquestionnaireVars extends GquestionnaireVars {
  factory _$GquestionnaireVars(
          [void Function(GquestionnaireVarsBuilder)? updates]) =>
      (new GquestionnaireVarsBuilder()..update(updates))._build();

  _$GquestionnaireVars._() : super._();

  @override
  GquestionnaireVars rebuild(
          void Function(GquestionnaireVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GquestionnaireVarsBuilder toBuilder() =>
      new GquestionnaireVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GquestionnaireVars;
  }

  @override
  int get hashCode {
    return 990005716;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GquestionnaireVars').toString();
  }
}

class GquestionnaireVarsBuilder
    implements Builder<GquestionnaireVars, GquestionnaireVarsBuilder> {
  _$GquestionnaireVars? _$v;

  GquestionnaireVarsBuilder();

  @override
  void replace(GquestionnaireVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GquestionnaireVars;
  }

  @override
  void update(void Function(GquestionnaireVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GquestionnaireVars build() => _build();

  _$GquestionnaireVars _build() {
    final _$result = _$v ?? new _$GquestionnaireVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
