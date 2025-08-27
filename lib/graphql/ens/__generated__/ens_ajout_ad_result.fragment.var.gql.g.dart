// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ajout_ad_result.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GactivationProfilResultVars>
    _$gactivationProfilResultVarsSerializer =
    new _$GactivationProfilResultVarsSerializer();

class _$GactivationProfilResultVarsSerializer
    implements StructuredSerializer<GactivationProfilResultVars> {
  @override
  final Iterable<Type> types = const [
    GactivationProfilResultVars,
    _$GactivationProfilResultVars
  ];
  @override
  final String wireName = 'GactivationProfilResultVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GactivationProfilResultVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GactivationProfilResultVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GactivationProfilResultVarsBuilder().build();
  }
}

class _$GactivationProfilResultVars extends GactivationProfilResultVars {
  factory _$GactivationProfilResultVars(
          [void Function(GactivationProfilResultVarsBuilder)? updates]) =>
      (new GactivationProfilResultVarsBuilder()..update(updates))._build();

  _$GactivationProfilResultVars._() : super._();

  @override
  GactivationProfilResultVars rebuild(
          void Function(GactivationProfilResultVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GactivationProfilResultVarsBuilder toBuilder() =>
      new GactivationProfilResultVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GactivationProfilResultVars;
  }

  @override
  int get hashCode {
    return 730305871;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GactivationProfilResultVars')
        .toString();
  }
}

class GactivationProfilResultVarsBuilder
    implements
        Builder<GactivationProfilResultVars,
            GactivationProfilResultVarsBuilder> {
  _$GactivationProfilResultVars? _$v;

  GactivationProfilResultVarsBuilder();

  @override
  void replace(GactivationProfilResultVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GactivationProfilResultVars;
  }

  @override
  void update(void Function(GactivationProfilResultVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GactivationProfilResultVars build() => _build();

  _$GactivationProfilResultVars _build() {
    final _$result = _$v ?? new _$GactivationProfilResultVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
