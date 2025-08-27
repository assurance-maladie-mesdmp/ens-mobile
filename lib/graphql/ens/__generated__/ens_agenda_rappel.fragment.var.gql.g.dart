// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_agenda_rappel.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GrappelVars> _$grappelVarsSerializer = new _$GrappelVarsSerializer();

class _$GrappelVarsSerializer implements StructuredSerializer<GrappelVars> {
  @override
  final Iterable<Type> types = const [GrappelVars, _$GrappelVars];
  @override
  final String wireName = 'GrappelVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GrappelVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GrappelVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GrappelVarsBuilder().build();
  }
}

class _$GrappelVars extends GrappelVars {
  factory _$GrappelVars([void Function(GrappelVarsBuilder)? updates]) =>
      (new GrappelVarsBuilder()..update(updates))._build();

  _$GrappelVars._() : super._();

  @override
  GrappelVars rebuild(void Function(GrappelVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GrappelVarsBuilder toBuilder() => new GrappelVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GrappelVars;
  }

  @override
  int get hashCode {
    return 652621220;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GrappelVars').toString();
  }
}

class GrappelVarsBuilder implements Builder<GrappelVars, GrappelVarsBuilder> {
  _$GrappelVars? _$v;

  GrappelVarsBuilder();

  @override
  void replace(GrappelVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GrappelVars;
  }

  @override
  void update(void Function(GrappelVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GrappelVars build() => _build();

  _$GrappelVars _build() {
    final _$result = _$v ?? new _$GrappelVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
