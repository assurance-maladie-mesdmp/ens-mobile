// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_account_change_contact.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gchange_contactVars> _$gchangeContactVarsSerializer =
    new _$Gchange_contactVarsSerializer();

class _$Gchange_contactVarsSerializer
    implements StructuredSerializer<Gchange_contactVars> {
  @override
  final Iterable<Type> types = const [
    Gchange_contactVars,
    _$Gchange_contactVars
  ];
  @override
  final String wireName = 'Gchange_contactVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gchange_contactVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GChangeContactInput)),
    ];

    return result;
  }

  @override
  Gchange_contactVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gchange_contactVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GChangeContactInput))!
              as _i1.GChangeContactInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gchange_contactVars extends Gchange_contactVars {
  @override
  final _i1.GChangeContactInput input;

  factory _$Gchange_contactVars(
          [void Function(Gchange_contactVarsBuilder)? updates]) =>
      (new Gchange_contactVarsBuilder()..update(updates))._build();

  _$Gchange_contactVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        input, r'Gchange_contactVars', 'input');
  }

  @override
  Gchange_contactVars rebuild(
          void Function(Gchange_contactVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gchange_contactVarsBuilder toBuilder() =>
      new Gchange_contactVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gchange_contactVars && input == other.input;
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
    return (newBuiltValueToStringHelper(r'Gchange_contactVars')
          ..add('input', input))
        .toString();
  }
}

class Gchange_contactVarsBuilder
    implements Builder<Gchange_contactVars, Gchange_contactVarsBuilder> {
  _$Gchange_contactVars? _$v;

  _i1.GChangeContactInputBuilder? _input;
  _i1.GChangeContactInputBuilder get input =>
      _$this._input ??= new _i1.GChangeContactInputBuilder();
  set input(_i1.GChangeContactInputBuilder? input) => _$this._input = input;

  Gchange_contactVarsBuilder();

  Gchange_contactVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gchange_contactVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gchange_contactVars;
  }

  @override
  void update(void Function(Gchange_contactVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gchange_contactVars build() => _build();

  _$Gchange_contactVars _build() {
    _$Gchange_contactVars _$result;
    try {
      _$result = _$v ?? new _$Gchange_contactVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gchange_contactVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
