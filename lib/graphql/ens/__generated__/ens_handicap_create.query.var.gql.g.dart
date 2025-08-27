// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_handicap_create.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gadd_handicapVars> _$gaddHandicapVarsSerializer =
    new _$Gadd_handicapVarsSerializer();

class _$Gadd_handicapVarsSerializer
    implements StructuredSerializer<Gadd_handicapVars> {
  @override
  final Iterable<Type> types = const [Gadd_handicapVars, _$Gadd_handicapVars];
  @override
  final String wireName = 'Gadd_handicapVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gadd_handicapVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'disabilityInput',
      serializers.serialize(object.disabilityInput,
          specifiedType: const FullType(_i1.GDisabilityInput)),
    ];

    return result;
  }

  @override
  Gadd_handicapVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_handicapVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'disabilityInput':
          result.disabilityInput.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GDisabilityInput))!
              as _i1.GDisabilityInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_handicapVars extends Gadd_handicapVars {
  @override
  final _i1.GDisabilityInput disabilityInput;

  factory _$Gadd_handicapVars(
          [void Function(Gadd_handicapVarsBuilder)? updates]) =>
      (new Gadd_handicapVarsBuilder()..update(updates))._build();

  _$Gadd_handicapVars._({required this.disabilityInput}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        disabilityInput, r'Gadd_handicapVars', 'disabilityInput');
  }

  @override
  Gadd_handicapVars rebuild(void Function(Gadd_handicapVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_handicapVarsBuilder toBuilder() =>
      new Gadd_handicapVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_handicapVars &&
        disabilityInput == other.disabilityInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, disabilityInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_handicapVars')
          ..add('disabilityInput', disabilityInput))
        .toString();
  }
}

class Gadd_handicapVarsBuilder
    implements Builder<Gadd_handicapVars, Gadd_handicapVarsBuilder> {
  _$Gadd_handicapVars? _$v;

  _i1.GDisabilityInputBuilder? _disabilityInput;
  _i1.GDisabilityInputBuilder get disabilityInput =>
      _$this._disabilityInput ??= new _i1.GDisabilityInputBuilder();
  set disabilityInput(_i1.GDisabilityInputBuilder? disabilityInput) =>
      _$this._disabilityInput = disabilityInput;

  Gadd_handicapVarsBuilder();

  Gadd_handicapVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _disabilityInput = $v.disabilityInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_handicapVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_handicapVars;
  }

  @override
  void update(void Function(Gadd_handicapVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_handicapVars build() => _build();

  _$Gadd_handicapVars _build() {
    _$Gadd_handicapVars _$result;
    try {
      _$result = _$v ??
          new _$Gadd_handicapVars._(disabilityInput: disabilityInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'disabilityInput';
        disabilityInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_handicapVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
