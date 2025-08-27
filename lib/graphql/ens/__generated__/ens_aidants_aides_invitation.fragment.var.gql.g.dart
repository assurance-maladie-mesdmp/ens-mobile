// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_aidants_aides_invitation.fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GinvitationVars> _$ginvitationVarsSerializer =
    new _$GinvitationVarsSerializer();

class _$GinvitationVarsSerializer
    implements StructuredSerializer<GinvitationVars> {
  @override
  final Iterable<Type> types = const [GinvitationVars, _$GinvitationVars];
  @override
  final String wireName = 'GinvitationVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GinvitationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GinvitationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GinvitationVarsBuilder().build();
  }
}

class _$GinvitationVars extends GinvitationVars {
  factory _$GinvitationVars([void Function(GinvitationVarsBuilder)? updates]) =>
      (new GinvitationVarsBuilder()..update(updates))._build();

  _$GinvitationVars._() : super._();

  @override
  GinvitationVars rebuild(void Function(GinvitationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GinvitationVarsBuilder toBuilder() =>
      new GinvitationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GinvitationVars;
  }

  @override
  int get hashCode {
    return 374918848;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GinvitationVars').toString();
  }
}

class GinvitationVarsBuilder
    implements Builder<GinvitationVars, GinvitationVarsBuilder> {
  _$GinvitationVars? _$v;

  GinvitationVarsBuilder();

  @override
  void replace(GinvitationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GinvitationVars;
  }

  @override
  void update(void Function(GinvitationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GinvitationVars build() => _build();

  _$GinvitationVars _build() {
    final _$result = _$v ?? new _$GinvitationVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
