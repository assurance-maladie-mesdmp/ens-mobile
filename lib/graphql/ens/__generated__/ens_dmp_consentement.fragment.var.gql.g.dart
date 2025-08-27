// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_dmp_consentement.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GdmpConsentementVars> _$gdmpConsentementVarsSerializer =
    new _$GdmpConsentementVarsSerializer();

class _$GdmpConsentementVarsSerializer
    implements StructuredSerializer<GdmpConsentementVars> {
  @override
  final Iterable<Type> types = const [
    GdmpConsentementVars,
    _$GdmpConsentementVars
  ];
  @override
  final String wireName = 'GdmpConsentementVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GdmpConsentementVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GdmpConsentementVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GdmpConsentementVarsBuilder().build();
  }
}

class _$GdmpConsentementVars extends GdmpConsentementVars {
  factory _$GdmpConsentementVars(
          [void Function(GdmpConsentementVarsBuilder)? updates]) =>
      (new GdmpConsentementVarsBuilder()..update(updates))._build();

  _$GdmpConsentementVars._() : super._();

  @override
  GdmpConsentementVars rebuild(
          void Function(GdmpConsentementVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdmpConsentementVarsBuilder toBuilder() =>
      new GdmpConsentementVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdmpConsentementVars;
  }

  @override
  int get hashCode {
    return 325268478;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GdmpConsentementVars').toString();
  }
}

class GdmpConsentementVarsBuilder
    implements Builder<GdmpConsentementVars, GdmpConsentementVarsBuilder> {
  _$GdmpConsentementVars? _$v;

  GdmpConsentementVarsBuilder();

  @override
  void replace(GdmpConsentementVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdmpConsentementVars;
  }

  @override
  void update(void Function(GdmpConsentementVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdmpConsentementVars build() => _build();

  _$GdmpConsentementVars _build() {
    final _$result = _$v ?? new _$GdmpConsentementVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
