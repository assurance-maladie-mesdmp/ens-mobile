// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_aidants_aides_accept_invitation_from_aide.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gaccept_invitation_from_aideVars>
    _$gacceptInvitationFromAideVarsSerializer =
    new _$Gaccept_invitation_from_aideVarsSerializer();

class _$Gaccept_invitation_from_aideVarsSerializer
    implements StructuredSerializer<Gaccept_invitation_from_aideVars> {
  @override
  final Iterable<Type> types = const [
    Gaccept_invitation_from_aideVars,
    _$Gaccept_invitation_from_aideVars
  ];
  @override
  final String wireName = 'Gaccept_invitation_from_aideVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gaccept_invitation_from_aideVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GDelegationAcceptInvitationInput)),
    ];

    return result;
  }

  @override
  Gaccept_invitation_from_aideVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gaccept_invitation_from_aideVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GDelegationAcceptInvitationInput))!
              as _i1.GDelegationAcceptInvitationInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gaccept_invitation_from_aideVars
    extends Gaccept_invitation_from_aideVars {
  @override
  final _i1.GDelegationAcceptInvitationInput input;

  factory _$Gaccept_invitation_from_aideVars(
          [void Function(Gaccept_invitation_from_aideVarsBuilder)? updates]) =>
      (new Gaccept_invitation_from_aideVarsBuilder()..update(updates))._build();

  _$Gaccept_invitation_from_aideVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        input, r'Gaccept_invitation_from_aideVars', 'input');
  }

  @override
  Gaccept_invitation_from_aideVars rebuild(
          void Function(Gaccept_invitation_from_aideVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gaccept_invitation_from_aideVarsBuilder toBuilder() =>
      new Gaccept_invitation_from_aideVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gaccept_invitation_from_aideVars && input == other.input;
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
    return (newBuiltValueToStringHelper(r'Gaccept_invitation_from_aideVars')
          ..add('input', input))
        .toString();
  }
}

class Gaccept_invitation_from_aideVarsBuilder
    implements
        Builder<Gaccept_invitation_from_aideVars,
            Gaccept_invitation_from_aideVarsBuilder> {
  _$Gaccept_invitation_from_aideVars? _$v;

  _i1.GDelegationAcceptInvitationInputBuilder? _input;
  _i1.GDelegationAcceptInvitationInputBuilder get input =>
      _$this._input ??= new _i1.GDelegationAcceptInvitationInputBuilder();
  set input(_i1.GDelegationAcceptInvitationInputBuilder? input) =>
      _$this._input = input;

  Gaccept_invitation_from_aideVarsBuilder();

  Gaccept_invitation_from_aideVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gaccept_invitation_from_aideVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gaccept_invitation_from_aideVars;
  }

  @override
  void update(void Function(Gaccept_invitation_from_aideVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gaccept_invitation_from_aideVars build() => _build();

  _$Gaccept_invitation_from_aideVars _build() {
    _$Gaccept_invitation_from_aideVars _$result;
    try {
      _$result =
          _$v ?? new _$Gaccept_invitation_from_aideVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gaccept_invitation_from_aideVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
