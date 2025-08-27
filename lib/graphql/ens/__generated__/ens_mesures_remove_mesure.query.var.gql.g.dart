// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_remove_mesure.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gremove_mesureVars> _$gremoveMesureVarsSerializer =
    new _$Gremove_mesureVarsSerializer();

class _$Gremove_mesureVarsSerializer
    implements StructuredSerializer<Gremove_mesureVars> {
  @override
  final Iterable<Type> types = const [Gremove_mesureVars, _$Gremove_mesureVars];
  @override
  final String wireName = 'Gremove_mesureVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gremove_mesureVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'deleteMesure',
      serializers.serialize(object.deleteMesure,
          specifiedType: const FullType(_i1.GDeleteMeasureModel)),
    ];

    return result;
  }

  @override
  Gremove_mesureVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gremove_mesureVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'deleteMesure':
          result.deleteMesure.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GDeleteMeasureModel))!
              as _i1.GDeleteMeasureModel);
          break;
      }
    }

    return result.build();
  }
}

class _$Gremove_mesureVars extends Gremove_mesureVars {
  @override
  final _i1.GDeleteMeasureModel deleteMesure;

  factory _$Gremove_mesureVars(
          [void Function(Gremove_mesureVarsBuilder)? updates]) =>
      (new Gremove_mesureVarsBuilder()..update(updates))._build();

  _$Gremove_mesureVars._({required this.deleteMesure}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        deleteMesure, r'Gremove_mesureVars', 'deleteMesure');
  }

  @override
  Gremove_mesureVars rebuild(
          void Function(Gremove_mesureVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gremove_mesureVarsBuilder toBuilder() =>
      new Gremove_mesureVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gremove_mesureVars && deleteMesure == other.deleteMesure;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deleteMesure.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gremove_mesureVars')
          ..add('deleteMesure', deleteMesure))
        .toString();
  }
}

class Gremove_mesureVarsBuilder
    implements Builder<Gremove_mesureVars, Gremove_mesureVarsBuilder> {
  _$Gremove_mesureVars? _$v;

  _i1.GDeleteMeasureModelBuilder? _deleteMesure;
  _i1.GDeleteMeasureModelBuilder get deleteMesure =>
      _$this._deleteMesure ??= new _i1.GDeleteMeasureModelBuilder();
  set deleteMesure(_i1.GDeleteMeasureModelBuilder? deleteMesure) =>
      _$this._deleteMesure = deleteMesure;

  Gremove_mesureVarsBuilder();

  Gremove_mesureVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deleteMesure = $v.deleteMesure.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gremove_mesureVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gremove_mesureVars;
  }

  @override
  void update(void Function(Gremove_mesureVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gremove_mesureVars build() => _build();

  _$Gremove_mesureVars _build() {
    _$Gremove_mesureVars _$result;
    try {
      _$result =
          _$v ?? new _$Gremove_mesureVars._(deleteMesure: deleteMesure.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteMesure';
        deleteMesure.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gremove_mesureVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
