// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_enrolement_send_new_code.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gsend_new_enrolement_codeVars>
    _$gsendNewEnrolementCodeVarsSerializer =
    new _$Gsend_new_enrolement_codeVarsSerializer();

class _$Gsend_new_enrolement_codeVarsSerializer
    implements StructuredSerializer<Gsend_new_enrolement_codeVars> {
  @override
  final Iterable<Type> types = const [
    Gsend_new_enrolement_codeVars,
    _$Gsend_new_enrolement_codeVars
  ];
  @override
  final String wireName = 'Gsend_new_enrolement_codeVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gsend_new_enrolement_codeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GSendNewEnrolmentCodeInput)),
    ];

    return result;
  }

  @override
  Gsend_new_enrolement_codeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gsend_new_enrolement_codeVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GSendNewEnrolmentCodeInput))!
              as _i1.GSendNewEnrolmentCodeInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_new_enrolement_codeVars extends Gsend_new_enrolement_codeVars {
  @override
  final _i1.GSendNewEnrolmentCodeInput input;

  factory _$Gsend_new_enrolement_codeVars(
          [void Function(Gsend_new_enrolement_codeVarsBuilder)? updates]) =>
      (new Gsend_new_enrolement_codeVarsBuilder()..update(updates))._build();

  _$Gsend_new_enrolement_codeVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        input, r'Gsend_new_enrolement_codeVars', 'input');
  }

  @override
  Gsend_new_enrolement_codeVars rebuild(
          void Function(Gsend_new_enrolement_codeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_new_enrolement_codeVarsBuilder toBuilder() =>
      new Gsend_new_enrolement_codeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsend_new_enrolement_codeVars && input == other.input;
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
    return (newBuiltValueToStringHelper(r'Gsend_new_enrolement_codeVars')
          ..add('input', input))
        .toString();
  }
}

class Gsend_new_enrolement_codeVarsBuilder
    implements
        Builder<Gsend_new_enrolement_codeVars,
            Gsend_new_enrolement_codeVarsBuilder> {
  _$Gsend_new_enrolement_codeVars? _$v;

  _i1.GSendNewEnrolmentCodeInputBuilder? _input;
  _i1.GSendNewEnrolmentCodeInputBuilder get input =>
      _$this._input ??= new _i1.GSendNewEnrolmentCodeInputBuilder();
  set input(_i1.GSendNewEnrolmentCodeInputBuilder? input) =>
      _$this._input = input;

  Gsend_new_enrolement_codeVarsBuilder();

  Gsend_new_enrolement_codeVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsend_new_enrolement_codeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsend_new_enrolement_codeVars;
  }

  @override
  void update(void Function(Gsend_new_enrolement_codeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_new_enrolement_codeVars build() => _build();

  _$Gsend_new_enrolement_codeVars _build() {
    _$Gsend_new_enrolement_codeVars _$result;
    try {
      _$result =
          _$v ?? new _$Gsend_new_enrolement_codeVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gsend_new_enrolement_codeVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
