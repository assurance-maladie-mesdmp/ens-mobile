// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_documents.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GensDocumentVars> _$gensDocumentVarsSerializer =
    new _$GensDocumentVarsSerializer();

class _$GensDocumentVarsSerializer
    implements StructuredSerializer<GensDocumentVars> {
  @override
  final Iterable<Type> types = const [GensDocumentVars, _$GensDocumentVars];
  @override
  final String wireName = 'GensDocumentVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GensDocumentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GensDocumentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GensDocumentVarsBuilder().build();
  }
}

class _$GensDocumentVars extends GensDocumentVars {
  factory _$GensDocumentVars(
          [void Function(GensDocumentVarsBuilder)? updates]) =>
      (new GensDocumentVarsBuilder()..update(updates))._build();

  _$GensDocumentVars._() : super._();

  @override
  GensDocumentVars rebuild(void Function(GensDocumentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GensDocumentVarsBuilder toBuilder() =>
      new GensDocumentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GensDocumentVars;
  }

  @override
  int get hashCode {
    return 54869353;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GensDocumentVars').toString();
  }
}

class GensDocumentVarsBuilder
    implements Builder<GensDocumentVars, GensDocumentVarsBuilder> {
  _$GensDocumentVars? _$v;

  GensDocumentVarsBuilder();

  @override
  void replace(GensDocumentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GensDocumentVars;
  }

  @override
  void update(void Function(GensDocumentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GensDocumentVars build() => _build();

  _$GensDocumentVars _build() {
    final _$result = _$v ?? new _$GensDocumentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
