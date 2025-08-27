// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_aidants_aides_get_invitations_from_aides.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_invitations_from_aidesVars>
    _$ggetInvitationsFromAidesVarsSerializer =
    new _$Gget_invitations_from_aidesVarsSerializer();

class _$Gget_invitations_from_aidesVarsSerializer
    implements StructuredSerializer<Gget_invitations_from_aidesVars> {
  @override
  final Iterable<Type> types = const [
    Gget_invitations_from_aidesVars,
    _$Gget_invitations_from_aidesVars
  ];
  @override
  final String wireName = 'Gget_invitations_from_aidesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_invitations_from_aidesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  Gget_invitations_from_aidesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new Gget_invitations_from_aidesVarsBuilder().build();
  }
}

class _$Gget_invitations_from_aidesVars
    extends Gget_invitations_from_aidesVars {
  factory _$Gget_invitations_from_aidesVars(
          [void Function(Gget_invitations_from_aidesVarsBuilder)? updates]) =>
      (new Gget_invitations_from_aidesVarsBuilder()..update(updates))._build();

  _$Gget_invitations_from_aidesVars._() : super._();

  @override
  Gget_invitations_from_aidesVars rebuild(
          void Function(Gget_invitations_from_aidesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_invitations_from_aidesVarsBuilder toBuilder() =>
      new Gget_invitations_from_aidesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_invitations_from_aidesVars;
  }

  @override
  int get hashCode {
    return 1019631335;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'Gget_invitations_from_aidesVars')
        .toString();
  }
}

class Gget_invitations_from_aidesVarsBuilder
    implements
        Builder<Gget_invitations_from_aidesVars,
            Gget_invitations_from_aidesVarsBuilder> {
  _$Gget_invitations_from_aidesVars? _$v;

  Gget_invitations_from_aidesVarsBuilder();

  @override
  void replace(Gget_invitations_from_aidesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_invitations_from_aidesVars;
  }

  @override
  void update(void Function(Gget_invitations_from_aidesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_invitations_from_aidesVars build() => _build();

  _$Gget_invitations_from_aidesVars _build() {
    final _$result = _$v ?? new _$Gget_invitations_from_aidesVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
