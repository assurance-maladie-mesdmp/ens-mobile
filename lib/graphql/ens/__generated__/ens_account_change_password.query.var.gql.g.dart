// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_account_change_password.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gchange_passwordVars> _$gchangePasswordVarsSerializer =
    new _$Gchange_passwordVarsSerializer();

class _$Gchange_passwordVarsSerializer
    implements StructuredSerializer<Gchange_passwordVars> {
  @override
  final Iterable<Type> types = const [
    Gchange_passwordVars,
    _$Gchange_passwordVars
  ];
  @override
  final String wireName = 'Gchange_passwordVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gchange_passwordVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GChangePasswordInput)),
    ];

    return result;
  }

  @override
  Gchange_passwordVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gchange_passwordVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GChangePasswordInput))!
              as _i1.GChangePasswordInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gchange_passwordVars extends Gchange_passwordVars {
  @override
  final _i1.GChangePasswordInput input;

  factory _$Gchange_passwordVars(
          [void Function(Gchange_passwordVarsBuilder)? updates]) =>
      (new Gchange_passwordVarsBuilder()..update(updates))._build();

  _$Gchange_passwordVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        input, r'Gchange_passwordVars', 'input');
  }

  @override
  Gchange_passwordVars rebuild(
          void Function(Gchange_passwordVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gchange_passwordVarsBuilder toBuilder() =>
      new Gchange_passwordVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gchange_passwordVars && input == other.input;
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
    return (newBuiltValueToStringHelper(r'Gchange_passwordVars')
          ..add('input', input))
        .toString();
  }
}

class Gchange_passwordVarsBuilder
    implements Builder<Gchange_passwordVars, Gchange_passwordVarsBuilder> {
  _$Gchange_passwordVars? _$v;

  _i1.GChangePasswordInputBuilder? _input;
  _i1.GChangePasswordInputBuilder get input =>
      _$this._input ??= new _i1.GChangePasswordInputBuilder();
  set input(_i1.GChangePasswordInputBuilder? input) => _$this._input = input;

  Gchange_passwordVarsBuilder();

  Gchange_passwordVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gchange_passwordVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gchange_passwordVars;
  }

  @override
  void update(void Function(Gchange_passwordVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gchange_passwordVars build() => _build();

  _$Gchange_passwordVars _build() {
    _$Gchange_passwordVars _$result;
    try {
      _$result = _$v ?? new _$Gchange_passwordVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gchange_passwordVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
