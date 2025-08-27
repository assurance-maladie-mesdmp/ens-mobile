// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_add_mesure.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gadd_mesureVars> _$gaddMesureVarsSerializer =
    new _$Gadd_mesureVarsSerializer();

class _$Gadd_mesureVarsSerializer
    implements StructuredSerializer<Gadd_mesureVars> {
  @override
  final Iterable<Type> types = const [Gadd_mesureVars, _$Gadd_mesureVars];
  @override
  final String wireName = 'Gadd_mesureVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gadd_mesureVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'mesure',
      serializers.serialize(object.mesure,
          specifiedType: const FullType(_i1.GMeasureInput)),
    ];

    return result;
  }

  @override
  Gadd_mesureVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_mesureVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'mesure':
          result.mesure.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GMeasureInput))!
              as _i1.GMeasureInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_mesureVars extends Gadd_mesureVars {
  @override
  final _i1.GMeasureInput mesure;

  factory _$Gadd_mesureVars([void Function(Gadd_mesureVarsBuilder)? updates]) =>
      (new Gadd_mesureVarsBuilder()..update(updates))._build();

  _$Gadd_mesureVars._({required this.mesure}) : super._() {
    BuiltValueNullFieldError.checkNotNull(mesure, r'Gadd_mesureVars', 'mesure');
  }

  @override
  Gadd_mesureVars rebuild(void Function(Gadd_mesureVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_mesureVarsBuilder toBuilder() =>
      new Gadd_mesureVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_mesureVars && mesure == other.mesure;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mesure.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_mesureVars')
          ..add('mesure', mesure))
        .toString();
  }
}

class Gadd_mesureVarsBuilder
    implements Builder<Gadd_mesureVars, Gadd_mesureVarsBuilder> {
  _$Gadd_mesureVars? _$v;

  _i1.GMeasureInputBuilder? _mesure;
  _i1.GMeasureInputBuilder get mesure =>
      _$this._mesure ??= new _i1.GMeasureInputBuilder();
  set mesure(_i1.GMeasureInputBuilder? mesure) => _$this._mesure = mesure;

  Gadd_mesureVarsBuilder();

  Gadd_mesureVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mesure = $v.mesure.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_mesureVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_mesureVars;
  }

  @override
  void update(void Function(Gadd_mesureVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_mesureVars build() => _build();

  _$Gadd_mesureVars _build() {
    _$Gadd_mesureVars _$result;
    try {
      _$result = _$v ?? new _$Gadd_mesureVars._(mesure: mesure.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mesure';
        mesure.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_mesureVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
