// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_aidants_aides_get_delegations_pour_aidant.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_delegations_pour_aidantVars>
    _$ggetDelegationsPourAidantVarsSerializer =
    new _$Gget_delegations_pour_aidantVarsSerializer();

class _$Gget_delegations_pour_aidantVarsSerializer
    implements StructuredSerializer<Gget_delegations_pour_aidantVars> {
  @override
  final Iterable<Type> types = const [
    Gget_delegations_pour_aidantVars,
    _$Gget_delegations_pour_aidantVars
  ];
  @override
  final String wireName = 'Gget_delegations_pour_aidantVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_delegations_pour_aidantVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  Gget_delegations_pour_aidantVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new Gget_delegations_pour_aidantVarsBuilder().build();
  }
}

class _$Gget_delegations_pour_aidantVars
    extends Gget_delegations_pour_aidantVars {
  factory _$Gget_delegations_pour_aidantVars(
          [void Function(Gget_delegations_pour_aidantVarsBuilder)? updates]) =>
      (new Gget_delegations_pour_aidantVarsBuilder()..update(updates))._build();

  _$Gget_delegations_pour_aidantVars._() : super._();

  @override
  Gget_delegations_pour_aidantVars rebuild(
          void Function(Gget_delegations_pour_aidantVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_delegations_pour_aidantVarsBuilder toBuilder() =>
      new Gget_delegations_pour_aidantVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_delegations_pour_aidantVars;
  }

  @override
  int get hashCode {
    return 267547107;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'Gget_delegations_pour_aidantVars')
        .toString();
  }
}

class Gget_delegations_pour_aidantVarsBuilder
    implements
        Builder<Gget_delegations_pour_aidantVars,
            Gget_delegations_pour_aidantVarsBuilder> {
  _$Gget_delegations_pour_aidantVars? _$v;

  Gget_delegations_pour_aidantVarsBuilder();

  @override
  void replace(Gget_delegations_pour_aidantVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_delegations_pour_aidantVars;
  }

  @override
  void update(void Function(Gget_delegations_pour_aidantVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_delegations_pour_aidantVars build() => _build();

  _$Gget_delegations_pour_aidantVars _build() {
    final _$result = _$v ?? new _$Gget_delegations_pour_aidantVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
