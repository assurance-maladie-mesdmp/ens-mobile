// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_enrolement_create_account.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gcreate_accountVars> _$gcreateAccountVarsSerializer =
    new _$Gcreate_accountVarsSerializer();

class _$Gcreate_accountVarsSerializer
    implements StructuredSerializer<Gcreate_accountVars> {
  @override
  final Iterable<Type> types = const [
    Gcreate_accountVars,
    _$Gcreate_accountVars
  ];
  @override
  final String wireName = 'Gcreate_accountVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gcreate_accountVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GCreateAccountEnsInput)),
    ];

    return result;
  }

  @override
  Gcreate_accountVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcreate_accountVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GCreateAccountEnsInput))!
              as _i1.GCreateAccountEnsInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gcreate_accountVars extends Gcreate_accountVars {
  @override
  final _i1.GCreateAccountEnsInput input;

  factory _$Gcreate_accountVars(
          [void Function(Gcreate_accountVarsBuilder)? updates]) =>
      (new Gcreate_accountVarsBuilder()..update(updates))._build();

  _$Gcreate_accountVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        input, r'Gcreate_accountVars', 'input');
  }

  @override
  Gcreate_accountVars rebuild(
          void Function(Gcreate_accountVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_accountVarsBuilder toBuilder() =>
      new Gcreate_accountVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcreate_accountVars && input == other.input;
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
    return (newBuiltValueToStringHelper(r'Gcreate_accountVars')
          ..add('input', input))
        .toString();
  }
}

class Gcreate_accountVarsBuilder
    implements Builder<Gcreate_accountVars, Gcreate_accountVarsBuilder> {
  _$Gcreate_accountVars? _$v;

  _i1.GCreateAccountEnsInputBuilder? _input;
  _i1.GCreateAccountEnsInputBuilder get input =>
      _$this._input ??= new _i1.GCreateAccountEnsInputBuilder();
  set input(_i1.GCreateAccountEnsInputBuilder? input) => _$this._input = input;

  Gcreate_accountVarsBuilder();

  Gcreate_accountVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gcreate_accountVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_accountVars;
  }

  @override
  void update(void Function(Gcreate_accountVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_accountVars build() => _build();

  _$Gcreate_accountVars _build() {
    _$Gcreate_accountVars _$result;
    try {
      _$result = _$v ?? new _$Gcreate_accountVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gcreate_accountVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
