// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_get_cities.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_citiesVars> _$ggetCitiesVarsSerializer =
    new _$Gget_citiesVarsSerializer();

class _$Gget_citiesVarsSerializer
    implements StructuredSerializer<Gget_citiesVars> {
  @override
  final Iterable<Type> types = const [Gget_citiesVars, _$Gget_citiesVars];
  @override
  final String wireName = 'Gget_citiesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gget_citiesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GGetCityInput)),
    ];

    return result;
  }

  @override
  Gget_citiesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_citiesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GGetCityInput))!
              as _i1.GGetCityInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_citiesVars extends Gget_citiesVars {
  @override
  final _i1.GGetCityInput input;

  factory _$Gget_citiesVars([void Function(Gget_citiesVarsBuilder)? updates]) =>
      (new Gget_citiesVarsBuilder()..update(updates))._build();

  _$Gget_citiesVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(input, r'Gget_citiesVars', 'input');
  }

  @override
  Gget_citiesVars rebuild(void Function(Gget_citiesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_citiesVarsBuilder toBuilder() =>
      new Gget_citiesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_citiesVars && input == other.input;
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
    return (newBuiltValueToStringHelper(r'Gget_citiesVars')
          ..add('input', input))
        .toString();
  }
}

class Gget_citiesVarsBuilder
    implements Builder<Gget_citiesVars, Gget_citiesVarsBuilder> {
  _$Gget_citiesVars? _$v;

  _i1.GGetCityInputBuilder? _input;
  _i1.GGetCityInputBuilder get input =>
      _$this._input ??= new _i1.GGetCityInputBuilder();
  set input(_i1.GGetCityInputBuilder? input) => _$this._input = input;

  Gget_citiesVarsBuilder();

  Gget_citiesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_citiesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_citiesVars;
  }

  @override
  void update(void Function(Gget_citiesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_citiesVars build() => _build();

  _$Gget_citiesVars _build() {
    _$Gget_citiesVars _$result;
    try {
      _$result = _$v ?? new _$Gget_citiesVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_citiesVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
