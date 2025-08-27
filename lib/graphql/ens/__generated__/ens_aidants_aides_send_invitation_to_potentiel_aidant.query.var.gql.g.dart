// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_aidants_aides_send_invitation_to_potentiel_aidant.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gsend_invitation_to_potentiel_aidantVars>
    _$gsendInvitationToPotentielAidantVarsSerializer =
    new _$Gsend_invitation_to_potentiel_aidantVarsSerializer();

class _$Gsend_invitation_to_potentiel_aidantVarsSerializer
    implements StructuredSerializer<Gsend_invitation_to_potentiel_aidantVars> {
  @override
  final Iterable<Type> types = const [
    Gsend_invitation_to_potentiel_aidantVars,
    _$Gsend_invitation_to_potentiel_aidantVars
  ];
  @override
  final String wireName = 'Gsend_invitation_to_potentiel_aidantVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gsend_invitation_to_potentiel_aidantVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'delegationInviteToCaregivingInput',
      serializers.serialize(object.delegationInviteToCaregivingInput,
          specifiedType:
              const FullType(_i1.GDelegationInviteToCaregivingInput)),
    ];

    return result;
  }

  @override
  Gsend_invitation_to_potentiel_aidantVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gsend_invitation_to_potentiel_aidantVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'delegationInviteToCaregivingInput':
          result.delegationInviteToCaregivingInput.replace(
              serializers.deserialize(value,
                      specifiedType: const FullType(
                          _i1.GDelegationInviteToCaregivingInput))!
                  as _i1.GDelegationInviteToCaregivingInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_invitation_to_potentiel_aidantVars
    extends Gsend_invitation_to_potentiel_aidantVars {
  @override
  final _i1.GDelegationInviteToCaregivingInput
      delegationInviteToCaregivingInput;

  factory _$Gsend_invitation_to_potentiel_aidantVars(
          [void Function(Gsend_invitation_to_potentiel_aidantVarsBuilder)?
              updates]) =>
      (new Gsend_invitation_to_potentiel_aidantVarsBuilder()..update(updates))
          ._build();

  _$Gsend_invitation_to_potentiel_aidantVars._(
      {required this.delegationInviteToCaregivingInput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        delegationInviteToCaregivingInput,
        r'Gsend_invitation_to_potentiel_aidantVars',
        'delegationInviteToCaregivingInput');
  }

  @override
  Gsend_invitation_to_potentiel_aidantVars rebuild(
          void Function(Gsend_invitation_to_potentiel_aidantVarsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_invitation_to_potentiel_aidantVarsBuilder toBuilder() =>
      new Gsend_invitation_to_potentiel_aidantVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsend_invitation_to_potentiel_aidantVars &&
        delegationInviteToCaregivingInput ==
            other.delegationInviteToCaregivingInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, delegationInviteToCaregivingInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gsend_invitation_to_potentiel_aidantVars')
          ..add('delegationInviteToCaregivingInput',
              delegationInviteToCaregivingInput))
        .toString();
  }
}

class Gsend_invitation_to_potentiel_aidantVarsBuilder
    implements
        Builder<Gsend_invitation_to_potentiel_aidantVars,
            Gsend_invitation_to_potentiel_aidantVarsBuilder> {
  _$Gsend_invitation_to_potentiel_aidantVars? _$v;

  _i1.GDelegationInviteToCaregivingInputBuilder?
      _delegationInviteToCaregivingInput;
  _i1.GDelegationInviteToCaregivingInputBuilder
      get delegationInviteToCaregivingInput =>
          _$this._delegationInviteToCaregivingInput ??=
              new _i1.GDelegationInviteToCaregivingInputBuilder();
  set delegationInviteToCaregivingInput(
          _i1.GDelegationInviteToCaregivingInputBuilder?
              delegationInviteToCaregivingInput) =>
      _$this._delegationInviteToCaregivingInput =
          delegationInviteToCaregivingInput;

  Gsend_invitation_to_potentiel_aidantVarsBuilder();

  Gsend_invitation_to_potentiel_aidantVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _delegationInviteToCaregivingInput =
          $v.delegationInviteToCaregivingInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsend_invitation_to_potentiel_aidantVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsend_invitation_to_potentiel_aidantVars;
  }

  @override
  void update(
      void Function(Gsend_invitation_to_potentiel_aidantVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_invitation_to_potentiel_aidantVars build() => _build();

  _$Gsend_invitation_to_potentiel_aidantVars _build() {
    _$Gsend_invitation_to_potentiel_aidantVars _$result;
    try {
      _$result = _$v ??
          new _$Gsend_invitation_to_potentiel_aidantVars._(
              delegationInviteToCaregivingInput:
                  delegationInviteToCaregivingInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'delegationInviteToCaregivingInput';
        delegationInviteToCaregivingInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gsend_invitation_to_potentiel_aidantVars',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
