// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_document_dossier_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GdossierVars> _$gdossierVarsSerializer =
    new _$GdossierVarsSerializer();

class _$GdossierVarsSerializer implements StructuredSerializer<GdossierVars> {
  @override
  final Iterable<Type> types = const [GdossierVars, _$GdossierVars];
  @override
  final String wireName = 'GdossierVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GdossierVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GdossierVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GdossierVarsBuilder().build();
  }
}

class _$GdossierVars extends GdossierVars {
  factory _$GdossierVars([void Function(GdossierVarsBuilder)? updates]) =>
      (new GdossierVarsBuilder()..update(updates))._build();

  _$GdossierVars._() : super._();

  @override
  GdossierVars rebuild(void Function(GdossierVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdossierVarsBuilder toBuilder() => new GdossierVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdossierVars;
  }

  @override
  int get hashCode {
    return 77301632;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GdossierVars').toString();
  }
}

class GdossierVarsBuilder
    implements Builder<GdossierVars, GdossierVarsBuilder> {
  _$GdossierVars? _$v;

  GdossierVarsBuilder();

  @override
  void replace(GdossierVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdossierVars;
  }

  @override
  void update(void Function(GdossierVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdossierVars build() => _build();

  _$GdossierVars _build() {
    final _$result = _$v ?? new _$GdossierVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
