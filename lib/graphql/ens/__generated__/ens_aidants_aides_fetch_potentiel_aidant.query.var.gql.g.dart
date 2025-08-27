// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_aidants_aides_fetch_potentiel_aidant.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gfetch_potentiel_aidantVars> _$gfetchPotentielAidantVarsSerializer =
    new _$Gfetch_potentiel_aidantVarsSerializer();

class _$Gfetch_potentiel_aidantVarsSerializer
    implements StructuredSerializer<Gfetch_potentiel_aidantVars> {
  @override
  final Iterable<Type> types = const [
    Gfetch_potentiel_aidantVars,
    _$Gfetch_potentiel_aidantVars
  ];
  @override
  final String wireName = 'Gfetch_potentiel_aidantVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gfetch_potentiel_aidantVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'delegationMatchPotentialDelegateInput',
      serializers.serialize(object.delegationMatchPotentialDelegateInput,
          specifiedType:
              const FullType(_i1.GDelegationMatchPotentialDelegateInput)),
    ];

    return result;
  }

  @override
  Gfetch_potentiel_aidantVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gfetch_potentiel_aidantVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'delegationMatchPotentialDelegateInput':
          result.delegationMatchPotentialDelegateInput.replace(
              serializers.deserialize(value,
                      specifiedType: const FullType(
                          _i1.GDelegationMatchPotentialDelegateInput))!
                  as _i1.GDelegationMatchPotentialDelegateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gfetch_potentiel_aidantVars extends Gfetch_potentiel_aidantVars {
  @override
  final _i1.GDelegationMatchPotentialDelegateInput
      delegationMatchPotentialDelegateInput;

  factory _$Gfetch_potentiel_aidantVars(
          [void Function(Gfetch_potentiel_aidantVarsBuilder)? updates]) =>
      (new Gfetch_potentiel_aidantVarsBuilder()..update(updates))._build();

  _$Gfetch_potentiel_aidantVars._(
      {required this.delegationMatchPotentialDelegateInput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        delegationMatchPotentialDelegateInput,
        r'Gfetch_potentiel_aidantVars',
        'delegationMatchPotentialDelegateInput');
  }

  @override
  Gfetch_potentiel_aidantVars rebuild(
          void Function(Gfetch_potentiel_aidantVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gfetch_potentiel_aidantVarsBuilder toBuilder() =>
      new Gfetch_potentiel_aidantVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gfetch_potentiel_aidantVars &&
        delegationMatchPotentialDelegateInput ==
            other.delegationMatchPotentialDelegateInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, delegationMatchPotentialDelegateInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gfetch_potentiel_aidantVars')
          ..add('delegationMatchPotentialDelegateInput',
              delegationMatchPotentialDelegateInput))
        .toString();
  }
}

class Gfetch_potentiel_aidantVarsBuilder
    implements
        Builder<Gfetch_potentiel_aidantVars,
            Gfetch_potentiel_aidantVarsBuilder> {
  _$Gfetch_potentiel_aidantVars? _$v;

  _i1.GDelegationMatchPotentialDelegateInputBuilder?
      _delegationMatchPotentialDelegateInput;
  _i1.GDelegationMatchPotentialDelegateInputBuilder
      get delegationMatchPotentialDelegateInput =>
          _$this._delegationMatchPotentialDelegateInput ??=
              new _i1.GDelegationMatchPotentialDelegateInputBuilder();
  set delegationMatchPotentialDelegateInput(
          _i1.GDelegationMatchPotentialDelegateInputBuilder?
              delegationMatchPotentialDelegateInput) =>
      _$this._delegationMatchPotentialDelegateInput =
          delegationMatchPotentialDelegateInput;

  Gfetch_potentiel_aidantVarsBuilder();

  Gfetch_potentiel_aidantVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _delegationMatchPotentialDelegateInput =
          $v.delegationMatchPotentialDelegateInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gfetch_potentiel_aidantVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gfetch_potentiel_aidantVars;
  }

  @override
  void update(void Function(Gfetch_potentiel_aidantVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gfetch_potentiel_aidantVars build() => _build();

  _$Gfetch_potentiel_aidantVars _build() {
    _$Gfetch_potentiel_aidantVars _$result;
    try {
      _$result = _$v ??
          new _$Gfetch_potentiel_aidantVars._(
              delegationMatchPotentialDelegateInput:
                  delegationMatchPotentialDelegateInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'delegationMatchPotentialDelegateInput';
        delegationMatchPotentialDelegateInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gfetch_potentiel_aidantVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
