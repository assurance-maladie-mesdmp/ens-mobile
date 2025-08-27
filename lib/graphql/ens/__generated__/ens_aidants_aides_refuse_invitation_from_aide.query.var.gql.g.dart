// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_aidants_aides_refuse_invitation_from_aide.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Grefuse_invitation_from_aideVars>
    _$grefuseInvitationFromAideVarsSerializer =
    new _$Grefuse_invitation_from_aideVarsSerializer();

class _$Grefuse_invitation_from_aideVarsSerializer
    implements StructuredSerializer<Grefuse_invitation_from_aideVars> {
  @override
  final Iterable<Type> types = const [
    Grefuse_invitation_from_aideVars,
    _$Grefuse_invitation_from_aideVars
  ];
  @override
  final String wireName = 'Grefuse_invitation_from_aideVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Grefuse_invitation_from_aideVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GDelegationRefuseInvitationInput)),
    ];

    return result;
  }

  @override
  Grefuse_invitation_from_aideVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Grefuse_invitation_from_aideVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GDelegationRefuseInvitationInput))!
              as _i1.GDelegationRefuseInvitationInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Grefuse_invitation_from_aideVars
    extends Grefuse_invitation_from_aideVars {
  @override
  final _i1.GDelegationRefuseInvitationInput input;

  factory _$Grefuse_invitation_from_aideVars(
          [void Function(Grefuse_invitation_from_aideVarsBuilder)? updates]) =>
      (new Grefuse_invitation_from_aideVarsBuilder()..update(updates))._build();

  _$Grefuse_invitation_from_aideVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        input, r'Grefuse_invitation_from_aideVars', 'input');
  }

  @override
  Grefuse_invitation_from_aideVars rebuild(
          void Function(Grefuse_invitation_from_aideVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Grefuse_invitation_from_aideVarsBuilder toBuilder() =>
      new Grefuse_invitation_from_aideVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Grefuse_invitation_from_aideVars && input == other.input;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Grefuse_invitation_from_aideVars')
          ..add('input', input))
        .toString();
  }
}

class Grefuse_invitation_from_aideVarsBuilder
    implements
        Builder<Grefuse_invitation_from_aideVars,
            Grefuse_invitation_from_aideVarsBuilder> {
  _$Grefuse_invitation_from_aideVars? _$v;

  _i1.GDelegationRefuseInvitationInputBuilder? _input;
  _i1.GDelegationRefuseInvitationInputBuilder get input =>
      _$this._input ??= new _i1.GDelegationRefuseInvitationInputBuilder();
  set input(_i1.GDelegationRefuseInvitationInputBuilder? input) =>
      _$this._input = input;

  Grefuse_invitation_from_aideVarsBuilder();

  Grefuse_invitation_from_aideVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Grefuse_invitation_from_aideVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Grefuse_invitation_from_aideVars;
  }

  @override
  void update(void Function(Grefuse_invitation_from_aideVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Grefuse_invitation_from_aideVars build() => _build();

  _$Grefuse_invitation_from_aideVars _build() {
    _$Grefuse_invitation_from_aideVars _$result;
    try {
      _$result =
          _$v ?? new _$Grefuse_invitation_from_aideVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Grefuse_invitation_from_aideVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
