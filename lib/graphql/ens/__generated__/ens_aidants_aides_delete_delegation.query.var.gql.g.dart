// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_aidants_aides_delete_delegation.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_delegationVars> _$gdeleteDelegationVarsSerializer =
    new _$Gdelete_delegationVarsSerializer();

class _$Gdelete_delegationVarsSerializer
    implements StructuredSerializer<Gdelete_delegationVars> {
  @override
  final Iterable<Type> types = const [
    Gdelete_delegationVars,
    _$Gdelete_delegationVars
  ];
  @override
  final String wireName = 'Gdelete_delegationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_delegationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GDelegationRevokeInput)),
    ];

    return result;
  }

  @override
  Gdelete_delegationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_delegationVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GDelegationRevokeInput))!
              as _i1.GDelegationRevokeInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_delegationVars extends Gdelete_delegationVars {
  @override
  final _i1.GDelegationRevokeInput input;

  factory _$Gdelete_delegationVars(
          [void Function(Gdelete_delegationVarsBuilder)? updates]) =>
      (new Gdelete_delegationVarsBuilder()..update(updates))._build();

  _$Gdelete_delegationVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        input, r'Gdelete_delegationVars', 'input');
  }

  @override
  Gdelete_delegationVars rebuild(
          void Function(Gdelete_delegationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_delegationVarsBuilder toBuilder() =>
      new Gdelete_delegationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_delegationVars && input == other.input;
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
    return (newBuiltValueToStringHelper(r'Gdelete_delegationVars')
          ..add('input', input))
        .toString();
  }
}

class Gdelete_delegationVarsBuilder
    implements Builder<Gdelete_delegationVars, Gdelete_delegationVarsBuilder> {
  _$Gdelete_delegationVars? _$v;

  _i1.GDelegationRevokeInputBuilder? _input;
  _i1.GDelegationRevokeInputBuilder get input =>
      _$this._input ??= new _i1.GDelegationRevokeInputBuilder();
  set input(_i1.GDelegationRevokeInputBuilder? input) => _$this._input = input;

  Gdelete_delegationVarsBuilder();

  Gdelete_delegationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_delegationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_delegationVars;
  }

  @override
  void update(void Function(Gdelete_delegationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_delegationVars build() => _build();

  _$Gdelete_delegationVars _build() {
    _$Gdelete_delegationVars _$result;
    try {
      _$result = _$v ?? new _$Gdelete_delegationVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_delegationVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
