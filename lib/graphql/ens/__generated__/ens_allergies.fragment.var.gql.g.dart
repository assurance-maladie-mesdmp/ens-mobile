// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_allergies.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GallergieVars> _$gallergieVarsSerializer =
    new _$GallergieVarsSerializer();

class _$GallergieVarsSerializer implements StructuredSerializer<GallergieVars> {
  @override
  final Iterable<Type> types = const [GallergieVars, _$GallergieVars];
  @override
  final String wireName = 'GallergieVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GallergieVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GallergieVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GallergieVarsBuilder().build();
  }
}

class _$GallergieVars extends GallergieVars {
  factory _$GallergieVars([void Function(GallergieVarsBuilder)? updates]) =>
      (new GallergieVarsBuilder()..update(updates))._build();

  _$GallergieVars._() : super._();

  @override
  GallergieVars rebuild(void Function(GallergieVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallergieVarsBuilder toBuilder() => new GallergieVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallergieVars;
  }

  @override
  int get hashCode {
    return 586535502;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GallergieVars').toString();
  }
}

class GallergieVarsBuilder
    implements Builder<GallergieVars, GallergieVarsBuilder> {
  _$GallergieVars? _$v;

  GallergieVarsBuilder();

  @override
  void replace(GallergieVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallergieVars;
  }

  @override
  void update(void Function(GallergieVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GallergieVars build() => _build();

  _$GallergieVars _build() {
    final _$result = _$v ?? new _$GallergieVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
