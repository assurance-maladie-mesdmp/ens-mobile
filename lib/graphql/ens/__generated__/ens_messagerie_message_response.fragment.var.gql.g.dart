// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_messagerie_message_response.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GmessageResponseVars> _$gmessageResponseVarsSerializer =
    new _$GmessageResponseVarsSerializer();
Serializer<GContactDetailFragmentVars> _$gContactDetailFragmentVarsSerializer =
    new _$GContactDetailFragmentVarsSerializer();

class _$GmessageResponseVarsSerializer
    implements StructuredSerializer<GmessageResponseVars> {
  @override
  final Iterable<Type> types = const [
    GmessageResponseVars,
    _$GmessageResponseVars
  ];
  @override
  final String wireName = 'GmessageResponseVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmessageResponseVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GmessageResponseVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GmessageResponseVarsBuilder().build();
  }
}

class _$GContactDetailFragmentVarsSerializer
    implements StructuredSerializer<GContactDetailFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GContactDetailFragmentVars,
    _$GContactDetailFragmentVars
  ];
  @override
  final String wireName = 'GContactDetailFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GContactDetailFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GContactDetailFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GContactDetailFragmentVarsBuilder().build();
  }
}

class _$GmessageResponseVars extends GmessageResponseVars {
  factory _$GmessageResponseVars(
          [void Function(GmessageResponseVarsBuilder)? updates]) =>
      (new GmessageResponseVarsBuilder()..update(updates))._build();

  _$GmessageResponseVars._() : super._();

  @override
  GmessageResponseVars rebuild(
          void Function(GmessageResponseVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmessageResponseVarsBuilder toBuilder() =>
      new GmessageResponseVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmessageResponseVars;
  }

  @override
  int get hashCode {
    return 383046721;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GmessageResponseVars').toString();
  }
}

class GmessageResponseVarsBuilder
    implements Builder<GmessageResponseVars, GmessageResponseVarsBuilder> {
  _$GmessageResponseVars? _$v;

  GmessageResponseVarsBuilder();

  @override
  void replace(GmessageResponseVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmessageResponseVars;
  }

  @override
  void update(void Function(GmessageResponseVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmessageResponseVars build() => _build();

  _$GmessageResponseVars _build() {
    final _$result = _$v ?? new _$GmessageResponseVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GContactDetailFragmentVars extends GContactDetailFragmentVars {
  factory _$GContactDetailFragmentVars(
          [void Function(GContactDetailFragmentVarsBuilder)? updates]) =>
      (new GContactDetailFragmentVarsBuilder()..update(updates))._build();

  _$GContactDetailFragmentVars._() : super._();

  @override
  GContactDetailFragmentVars rebuild(
          void Function(GContactDetailFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GContactDetailFragmentVarsBuilder toBuilder() =>
      new GContactDetailFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GContactDetailFragmentVars;
  }

  @override
  int get hashCode {
    return 1025603583;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GContactDetailFragmentVars')
        .toString();
  }
}

class GContactDetailFragmentVarsBuilder
    implements
        Builder<GContactDetailFragmentVars, GContactDetailFragmentVarsBuilder> {
  _$GContactDetailFragmentVars? _$v;

  GContactDetailFragmentVarsBuilder();

  @override
  void replace(GContactDetailFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GContactDetailFragmentVars;
  }

  @override
  void update(void Function(GContactDetailFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GContactDetailFragmentVars build() => _build();

  _$GContactDetailFragmentVars _build() {
    final _$result = _$v ?? new _$GContactDetailFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
