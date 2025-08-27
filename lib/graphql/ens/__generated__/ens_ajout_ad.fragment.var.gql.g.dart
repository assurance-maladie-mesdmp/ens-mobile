// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ajout_ad.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GprofilMobileVars> _$gprofilMobileVarsSerializer =
    new _$GprofilMobileVarsSerializer();

class _$GprofilMobileVarsSerializer
    implements StructuredSerializer<GprofilMobileVars> {
  @override
  final Iterable<Type> types = const [GprofilMobileVars, _$GprofilMobileVars];
  @override
  final String wireName = 'GprofilMobileVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GprofilMobileVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GprofilMobileVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GprofilMobileVarsBuilder().build();
  }
}

class _$GprofilMobileVars extends GprofilMobileVars {
  factory _$GprofilMobileVars(
          [void Function(GprofilMobileVarsBuilder)? updates]) =>
      (new GprofilMobileVarsBuilder()..update(updates))._build();

  _$GprofilMobileVars._() : super._();

  @override
  GprofilMobileVars rebuild(void Function(GprofilMobileVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GprofilMobileVarsBuilder toBuilder() =>
      new GprofilMobileVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GprofilMobileVars;
  }

  @override
  int get hashCode {
    return 542134176;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GprofilMobileVars').toString();
  }
}

class GprofilMobileVarsBuilder
    implements Builder<GprofilMobileVars, GprofilMobileVarsBuilder> {
  _$GprofilMobileVars? _$v;

  GprofilMobileVarsBuilder();

  @override
  void replace(GprofilMobileVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GprofilMobileVars;
  }

  @override
  void update(void Function(GprofilMobileVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GprofilMobileVars build() => _build();

  _$GprofilMobileVars _build() {
    final _$result = _$v ?? new _$GprofilMobileVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
