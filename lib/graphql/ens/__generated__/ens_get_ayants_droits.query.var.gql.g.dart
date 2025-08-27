// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_get_ayants_droits.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_ayants_droitsVars> _$ggetAyantsDroitsVarsSerializer =
    new _$Gget_ayants_droitsVarsSerializer();

class _$Gget_ayants_droitsVarsSerializer
    implements StructuredSerializer<Gget_ayants_droitsVars> {
  @override
  final Iterable<Type> types = const [
    Gget_ayants_droitsVars,
    _$Gget_ayants_droitsVars
  ];
  @override
  final String wireName = 'Gget_ayants_droitsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_ayants_droitsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GGetAyantsDroitsInput)),
      'getPendingInvitationsInput',
      serializers.serialize(object.getPendingInvitationsInput,
          specifiedType: const FullType(_i1.GGetPendingInvitationInput)),
    ];

    return result;
  }

  @override
  Gget_ayants_droitsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_ayants_droitsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GGetAyantsDroitsInput))!
              as _i1.GGetAyantsDroitsInput);
          break;
        case 'getPendingInvitationsInput':
          result.getPendingInvitationsInput.replace(serializers.deserialize(
                  value,
                  specifiedType:
                      const FullType(_i1.GGetPendingInvitationInput))!
              as _i1.GGetPendingInvitationInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_ayants_droitsVars extends Gget_ayants_droitsVars {
  @override
  final _i1.GGetAyantsDroitsInput input;
  @override
  final _i1.GGetPendingInvitationInput getPendingInvitationsInput;

  factory _$Gget_ayants_droitsVars(
          [void Function(Gget_ayants_droitsVarsBuilder)? updates]) =>
      (new Gget_ayants_droitsVarsBuilder()..update(updates))._build();

  _$Gget_ayants_droitsVars._(
      {required this.input, required this.getPendingInvitationsInput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        input, r'Gget_ayants_droitsVars', 'input');
    BuiltValueNullFieldError.checkNotNull(getPendingInvitationsInput,
        r'Gget_ayants_droitsVars', 'getPendingInvitationsInput');
  }

  @override
  Gget_ayants_droitsVars rebuild(
          void Function(Gget_ayants_droitsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_ayants_droitsVarsBuilder toBuilder() =>
      new Gget_ayants_droitsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_ayants_droitsVars &&
        input == other.input &&
        getPendingInvitationsInput == other.getPendingInvitationsInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jc(_$hash, getPendingInvitationsInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_ayants_droitsVars')
          ..add('input', input)
          ..add('getPendingInvitationsInput', getPendingInvitationsInput))
        .toString();
  }
}

class Gget_ayants_droitsVarsBuilder
    implements Builder<Gget_ayants_droitsVars, Gget_ayants_droitsVarsBuilder> {
  _$Gget_ayants_droitsVars? _$v;

  _i1.GGetAyantsDroitsInputBuilder? _input;
  _i1.GGetAyantsDroitsInputBuilder get input =>
      _$this._input ??= new _i1.GGetAyantsDroitsInputBuilder();
  set input(_i1.GGetAyantsDroitsInputBuilder? input) => _$this._input = input;

  _i1.GGetPendingInvitationInputBuilder? _getPendingInvitationsInput;
  _i1.GGetPendingInvitationInputBuilder get getPendingInvitationsInput =>
      _$this._getPendingInvitationsInput ??=
          new _i1.GGetPendingInvitationInputBuilder();
  set getPendingInvitationsInput(
          _i1.GGetPendingInvitationInputBuilder? getPendingInvitationsInput) =>
      _$this._getPendingInvitationsInput = getPendingInvitationsInput;

  Gget_ayants_droitsVarsBuilder();

  Gget_ayants_droitsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _getPendingInvitationsInput = $v.getPendingInvitationsInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_ayants_droitsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_ayants_droitsVars;
  }

  @override
  void update(void Function(Gget_ayants_droitsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_ayants_droitsVars build() => _build();

  _$Gget_ayants_droitsVars _build() {
    _$Gget_ayants_droitsVars _$result;
    try {
      _$result = _$v ??
          new _$Gget_ayants_droitsVars._(
              input: input.build(),
              getPendingInvitationsInput: getPendingInvitationsInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
        _$failedField = 'getPendingInvitationsInput';
        getPendingInvitationsInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_ayants_droitsVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
