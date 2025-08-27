// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_aidants_aides_get_delegations_pour_aide.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_delegations_pour_aideVars>
    _$ggetDelegationsPourAideVarsSerializer =
    new _$Gget_delegations_pour_aideVarsSerializer();

class _$Gget_delegations_pour_aideVarsSerializer
    implements StructuredSerializer<Gget_delegations_pour_aideVars> {
  @override
  final Iterable<Type> types = const [
    Gget_delegations_pour_aideVars,
    _$Gget_delegations_pour_aideVars
  ];
  @override
  final String wireName = 'Gget_delegations_pour_aideVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_delegations_pour_aideVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  Gget_delegations_pour_aideVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new Gget_delegations_pour_aideVarsBuilder().build();
  }
}

class _$Gget_delegations_pour_aideVars extends Gget_delegations_pour_aideVars {
  factory _$Gget_delegations_pour_aideVars(
          [void Function(Gget_delegations_pour_aideVarsBuilder)? updates]) =>
      (new Gget_delegations_pour_aideVarsBuilder()..update(updates))._build();

  _$Gget_delegations_pour_aideVars._() : super._();

  @override
  Gget_delegations_pour_aideVars rebuild(
          void Function(Gget_delegations_pour_aideVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_delegations_pour_aideVarsBuilder toBuilder() =>
      new Gget_delegations_pour_aideVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_delegations_pour_aideVars;
  }

  @override
  int get hashCode {
    return 757325507;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'Gget_delegations_pour_aideVars')
        .toString();
  }
}

class Gget_delegations_pour_aideVarsBuilder
    implements
        Builder<Gget_delegations_pour_aideVars,
            Gget_delegations_pour_aideVarsBuilder> {
  _$Gget_delegations_pour_aideVars? _$v;

  Gget_delegations_pour_aideVarsBuilder();

  @override
  void replace(Gget_delegations_pour_aideVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_delegations_pour_aideVars;
  }

  @override
  void update(void Function(Gget_delegations_pour_aideVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_delegations_pour_aideVars build() => _build();

  _$Gget_delegations_pour_aideVars _build() {
    final _$result = _$v ?? new _$Gget_delegations_pour_aideVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
