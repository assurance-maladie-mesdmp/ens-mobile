// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_account_validate_otp.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gvalidate_otpVars> _$gvalidateOtpVarsSerializer =
    new _$Gvalidate_otpVarsSerializer();

class _$Gvalidate_otpVarsSerializer
    implements StructuredSerializer<Gvalidate_otpVars> {
  @override
  final Iterable<Type> types = const [Gvalidate_otpVars, _$Gvalidate_otpVars];
  @override
  final String wireName = 'Gvalidate_otpVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gvalidate_otpVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GValidateOtpInput)),
    ];

    return result;
  }

  @override
  Gvalidate_otpVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gvalidate_otpVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GValidateOtpInput))!
              as _i1.GValidateOtpInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gvalidate_otpVars extends Gvalidate_otpVars {
  @override
  final _i1.GValidateOtpInput input;

  factory _$Gvalidate_otpVars(
          [void Function(Gvalidate_otpVarsBuilder)? updates]) =>
      (new Gvalidate_otpVarsBuilder()..update(updates))._build();

  _$Gvalidate_otpVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(input, r'Gvalidate_otpVars', 'input');
  }

  @override
  Gvalidate_otpVars rebuild(void Function(Gvalidate_otpVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gvalidate_otpVarsBuilder toBuilder() =>
      new Gvalidate_otpVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gvalidate_otpVars && input == other.input;
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
    return (newBuiltValueToStringHelper(r'Gvalidate_otpVars')
          ..add('input', input))
        .toString();
  }
}

class Gvalidate_otpVarsBuilder
    implements Builder<Gvalidate_otpVars, Gvalidate_otpVarsBuilder> {
  _$Gvalidate_otpVars? _$v;

  _i1.GValidateOtpInputBuilder? _input;
  _i1.GValidateOtpInputBuilder get input =>
      _$this._input ??= new _i1.GValidateOtpInputBuilder();
  set input(_i1.GValidateOtpInputBuilder? input) => _$this._input = input;

  Gvalidate_otpVarsBuilder();

  Gvalidate_otpVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gvalidate_otpVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gvalidate_otpVars;
  }

  @override
  void update(void Function(Gvalidate_otpVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gvalidate_otpVars build() => _build();

  _$Gvalidate_otpVars _build() {
    _$Gvalidate_otpVars _$result;
    try {
      _$result = _$v ?? new _$Gvalidate_otpVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gvalidate_otpVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
