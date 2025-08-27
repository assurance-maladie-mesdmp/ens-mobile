// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_enrolement_generate_new_code.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Ggenerate_new_enrolement_codeVars>
    _$ggenerateNewEnrolementCodeVarsSerializer =
    new _$Ggenerate_new_enrolement_codeVarsSerializer();

class _$Ggenerate_new_enrolement_codeVarsSerializer
    implements StructuredSerializer<Ggenerate_new_enrolement_codeVars> {
  @override
  final Iterable<Type> types = const [
    Ggenerate_new_enrolement_codeVars,
    _$Ggenerate_new_enrolement_codeVars
  ];
  @override
  final String wireName = 'Ggenerate_new_enrolement_codeVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Ggenerate_new_enrolement_codeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GGenerateNewEnrolmentCodeInput)),
    ];

    return result;
  }

  @override
  Ggenerate_new_enrolement_codeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Ggenerate_new_enrolement_codeVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GGenerateNewEnrolmentCodeInput))!
              as _i1.GGenerateNewEnrolmentCodeInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Ggenerate_new_enrolement_codeVars
    extends Ggenerate_new_enrolement_codeVars {
  @override
  final _i1.GGenerateNewEnrolmentCodeInput input;

  factory _$Ggenerate_new_enrolement_codeVars(
          [void Function(Ggenerate_new_enrolement_codeVarsBuilder)? updates]) =>
      (new Ggenerate_new_enrolement_codeVarsBuilder()..update(updates))
          ._build();

  _$Ggenerate_new_enrolement_codeVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        input, r'Ggenerate_new_enrolement_codeVars', 'input');
  }

  @override
  Ggenerate_new_enrolement_codeVars rebuild(
          void Function(Ggenerate_new_enrolement_codeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Ggenerate_new_enrolement_codeVarsBuilder toBuilder() =>
      new Ggenerate_new_enrolement_codeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ggenerate_new_enrolement_codeVars && input == other.input;
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
    return (newBuiltValueToStringHelper(r'Ggenerate_new_enrolement_codeVars')
          ..add('input', input))
        .toString();
  }
}

class Ggenerate_new_enrolement_codeVarsBuilder
    implements
        Builder<Ggenerate_new_enrolement_codeVars,
            Ggenerate_new_enrolement_codeVarsBuilder> {
  _$Ggenerate_new_enrolement_codeVars? _$v;

  _i1.GGenerateNewEnrolmentCodeInputBuilder? _input;
  _i1.GGenerateNewEnrolmentCodeInputBuilder get input =>
      _$this._input ??= new _i1.GGenerateNewEnrolmentCodeInputBuilder();
  set input(_i1.GGenerateNewEnrolmentCodeInputBuilder? input) =>
      _$this._input = input;

  Ggenerate_new_enrolement_codeVarsBuilder();

  Ggenerate_new_enrolement_codeVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Ggenerate_new_enrolement_codeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Ggenerate_new_enrolement_codeVars;
  }

  @override
  void update(
      void Function(Ggenerate_new_enrolement_codeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Ggenerate_new_enrolement_codeVars build() => _build();

  _$Ggenerate_new_enrolement_codeVars _build() {
    _$Ggenerate_new_enrolement_codeVars _$result;
    try {
      _$result = _$v ??
          new _$Ggenerate_new_enrolement_codeVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Ggenerate_new_enrolement_codeVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
