// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_update_mesure.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_mesureVars> _$gupdateMesureVarsSerializer =
    new _$Gupdate_mesureVarsSerializer();

class _$Gupdate_mesureVarsSerializer
    implements StructuredSerializer<Gupdate_mesureVars> {
  @override
  final Iterable<Type> types = const [Gupdate_mesureVars, _$Gupdate_mesureVars];
  @override
  final String wireName = 'Gupdate_mesureVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_mesureVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'mesure',
      serializers.serialize(object.mesure,
          specifiedType: const FullType(_i1.GMeasureInput)),
    ];

    return result;
  }

  @override
  Gupdate_mesureVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_mesureVarsBuilder();

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

class _$Gupdate_mesureVars extends Gupdate_mesureVars {
  @override
  final _i1.GMeasureInput mesure;

  factory _$Gupdate_mesureVars(
          [void Function(Gupdate_mesureVarsBuilder)? updates]) =>
      (new Gupdate_mesureVarsBuilder()..update(updates))._build();

  _$Gupdate_mesureVars._({required this.mesure}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        mesure, r'Gupdate_mesureVars', 'mesure');
  }

  @override
  Gupdate_mesureVars rebuild(
          void Function(Gupdate_mesureVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_mesureVarsBuilder toBuilder() =>
      new Gupdate_mesureVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_mesureVars && mesure == other.mesure;
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
    return (newBuiltValueToStringHelper(r'Gupdate_mesureVars')
          ..add('mesure', mesure))
        .toString();
  }
}

class Gupdate_mesureVarsBuilder
    implements Builder<Gupdate_mesureVars, Gupdate_mesureVarsBuilder> {
  _$Gupdate_mesureVars? _$v;

  _i1.GMeasureInputBuilder? _mesure;
  _i1.GMeasureInputBuilder get mesure =>
      _$this._mesure ??= new _i1.GMeasureInputBuilder();
  set mesure(_i1.GMeasureInputBuilder? mesure) => _$this._mesure = mesure;

  Gupdate_mesureVarsBuilder();

  Gupdate_mesureVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mesure = $v.mesure.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_mesureVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_mesureVars;
  }

  @override
  void update(void Function(Gupdate_mesureVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_mesureVars build() => _build();

  _$Gupdate_mesureVars _build() {
    _$Gupdate_mesureVars _$result;
    try {
      _$result = _$v ?? new _$Gupdate_mesureVars._(mesure: mesure.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mesure';
        mesure.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_mesureVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
