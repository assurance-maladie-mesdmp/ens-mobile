// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_catalogue_service_detail.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GdetailServiceVars> _$gdetailServiceVarsSerializer =
    new _$GdetailServiceVarsSerializer();

class _$GdetailServiceVarsSerializer
    implements StructuredSerializer<GdetailServiceVars> {
  @override
  final Iterable<Type> types = const [GdetailServiceVars, _$GdetailServiceVars];
  @override
  final String wireName = 'GdetailServiceVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GdetailServiceVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GdetailServiceVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GdetailServiceVarsBuilder().build();
  }
}

class _$GdetailServiceVars extends GdetailServiceVars {
  factory _$GdetailServiceVars(
          [void Function(GdetailServiceVarsBuilder)? updates]) =>
      (new GdetailServiceVarsBuilder()..update(updates))._build();

  _$GdetailServiceVars._() : super._();

  @override
  GdetailServiceVars rebuild(
          void Function(GdetailServiceVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdetailServiceVarsBuilder toBuilder() =>
      new GdetailServiceVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdetailServiceVars;
  }

  @override
  int get hashCode {
    return 810059708;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GdetailServiceVars').toString();
  }
}

class GdetailServiceVarsBuilder
    implements Builder<GdetailServiceVars, GdetailServiceVarsBuilder> {
  _$GdetailServiceVars? _$v;

  GdetailServiceVarsBuilder();

  @override
  void replace(GdetailServiceVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdetailServiceVars;
  }

  @override
  void update(void Function(GdetailServiceVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdetailServiceVars build() => _build();

  _$GdetailServiceVars _build() {
    final _$result = _$v ?? new _$GdetailServiceVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
