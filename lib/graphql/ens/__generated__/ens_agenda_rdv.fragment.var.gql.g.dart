// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_agenda_rdv.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GrdvVars> _$grdvVarsSerializer = new _$GrdvVarsSerializer();

class _$GrdvVarsSerializer implements StructuredSerializer<GrdvVars> {
  @override
  final Iterable<Type> types = const [GrdvVars, _$GrdvVars];
  @override
  final String wireName = 'GrdvVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GrdvVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GrdvVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GrdvVarsBuilder().build();
  }
}

class _$GrdvVars extends GrdvVars {
  factory _$GrdvVars([void Function(GrdvVarsBuilder)? updates]) =>
      (new GrdvVarsBuilder()..update(updates))._build();

  _$GrdvVars._() : super._();

  @override
  GrdvVars rebuild(void Function(GrdvVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GrdvVarsBuilder toBuilder() => new GrdvVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GrdvVars;
  }

  @override
  int get hashCode {
    return 914011142;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GrdvVars').toString();
  }
}

class GrdvVarsBuilder implements Builder<GrdvVars, GrdvVarsBuilder> {
  _$GrdvVars? _$v;

  GrdvVarsBuilder();

  @override
  void replace(GrdvVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GrdvVars;
  }

  @override
  void update(void Function(GrdvVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GrdvVars build() => _build();

  _$GrdvVars _build() {
    final _$result = _$v ?? new _$GrdvVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
