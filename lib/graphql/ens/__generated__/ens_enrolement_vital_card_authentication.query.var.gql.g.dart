// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_enrolement_vital_card_authentication.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gvital_card_authenticationVars>
    _$gvitalCardAuthenticationVarsSerializer =
    new _$Gvital_card_authenticationVarsSerializer();

class _$Gvital_card_authenticationVarsSerializer
    implements StructuredSerializer<Gvital_card_authenticationVars> {
  @override
  final Iterable<Type> types = const [
    Gvital_card_authenticationVars,
    _$Gvital_card_authenticationVars
  ];
  @override
  final String wireName = 'Gvital_card_authenticationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gvital_card_authenticationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GVitalCardAuthenticationInput)),
    ];

    return result;
  }

  @override
  Gvital_card_authenticationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gvital_card_authenticationVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GVitalCardAuthenticationInput))!
              as _i1.GVitalCardAuthenticationInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gvital_card_authenticationVars extends Gvital_card_authenticationVars {
  @override
  final _i1.GVitalCardAuthenticationInput input;

  factory _$Gvital_card_authenticationVars(
          [void Function(Gvital_card_authenticationVarsBuilder)? updates]) =>
      (new Gvital_card_authenticationVarsBuilder()..update(updates))._build();

  _$Gvital_card_authenticationVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        input, r'Gvital_card_authenticationVars', 'input');
  }

  @override
  Gvital_card_authenticationVars rebuild(
          void Function(Gvital_card_authenticationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gvital_card_authenticationVarsBuilder toBuilder() =>
      new Gvital_card_authenticationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gvital_card_authenticationVars && input == other.input;
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
    return (newBuiltValueToStringHelper(r'Gvital_card_authenticationVars')
          ..add('input', input))
        .toString();
  }
}

class Gvital_card_authenticationVarsBuilder
    implements
        Builder<Gvital_card_authenticationVars,
            Gvital_card_authenticationVarsBuilder> {
  _$Gvital_card_authenticationVars? _$v;

  _i1.GVitalCardAuthenticationInputBuilder? _input;
  _i1.GVitalCardAuthenticationInputBuilder get input =>
      _$this._input ??= new _i1.GVitalCardAuthenticationInputBuilder();
  set input(_i1.GVitalCardAuthenticationInputBuilder? input) =>
      _$this._input = input;

  Gvital_card_authenticationVarsBuilder();

  Gvital_card_authenticationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gvital_card_authenticationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gvital_card_authenticationVars;
  }

  @override
  void update(void Function(Gvital_card_authenticationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gvital_card_authenticationVars build() => _build();

  _$Gvital_card_authenticationVars _build() {
    _$Gvital_card_authenticationVars _$result;
    try {
      _$result =
          _$v ?? new _$Gvital_card_authenticationVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gvital_card_authenticationVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
