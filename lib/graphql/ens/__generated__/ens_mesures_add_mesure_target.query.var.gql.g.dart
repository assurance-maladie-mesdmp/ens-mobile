// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_add_mesure_target.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gadd_mesure_targetVars> _$gaddMesureTargetVarsSerializer =
    new _$Gadd_mesure_targetVarsSerializer();

class _$Gadd_mesure_targetVarsSerializer
    implements StructuredSerializer<Gadd_mesure_targetVars> {
  @override
  final Iterable<Type> types = const [
    Gadd_mesure_targetVars,
    _$Gadd_mesure_targetVars
  ];
  @override
  final String wireName = 'Gadd_mesure_targetVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_mesure_targetVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'mesureTarget',
      serializers.serialize(object.mesureTarget,
          specifiedType: const FullType(_i1.GMeasureTargetInput)),
    ];

    return result;
  }

  @override
  Gadd_mesure_targetVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_mesure_targetVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'mesureTarget':
          result.mesureTarget.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GMeasureTargetInput))!
              as _i1.GMeasureTargetInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_mesure_targetVars extends Gadd_mesure_targetVars {
  @override
  final String patientId;
  @override
  final _i1.GMeasureTargetInput mesureTarget;

  factory _$Gadd_mesure_targetVars(
          [void Function(Gadd_mesure_targetVarsBuilder)? updates]) =>
      (new Gadd_mesure_targetVarsBuilder()..update(updates))._build();

  _$Gadd_mesure_targetVars._(
      {required this.patientId, required this.mesureTarget})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gadd_mesure_targetVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(
        mesureTarget, r'Gadd_mesure_targetVars', 'mesureTarget');
  }

  @override
  Gadd_mesure_targetVars rebuild(
          void Function(Gadd_mesure_targetVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_mesure_targetVarsBuilder toBuilder() =>
      new Gadd_mesure_targetVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_mesure_targetVars &&
        patientId == other.patientId &&
        mesureTarget == other.mesureTarget;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, mesureTarget.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_mesure_targetVars')
          ..add('patientId', patientId)
          ..add('mesureTarget', mesureTarget))
        .toString();
  }
}

class Gadd_mesure_targetVarsBuilder
    implements Builder<Gadd_mesure_targetVars, Gadd_mesure_targetVarsBuilder> {
  _$Gadd_mesure_targetVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  _i1.GMeasureTargetInputBuilder? _mesureTarget;
  _i1.GMeasureTargetInputBuilder get mesureTarget =>
      _$this._mesureTarget ??= new _i1.GMeasureTargetInputBuilder();
  set mesureTarget(_i1.GMeasureTargetInputBuilder? mesureTarget) =>
      _$this._mesureTarget = mesureTarget;

  Gadd_mesure_targetVarsBuilder();

  Gadd_mesure_targetVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _mesureTarget = $v.mesureTarget.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_mesure_targetVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_mesure_targetVars;
  }

  @override
  void update(void Function(Gadd_mesure_targetVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_mesure_targetVars build() => _build();

  _$Gadd_mesure_targetVars _build() {
    _$Gadd_mesure_targetVars _$result;
    try {
      _$result = _$v ??
          new _$Gadd_mesure_targetVars._(
              patientId: BuiltValueNullFieldError.checkNotNull(
                  patientId, r'Gadd_mesure_targetVars', 'patientId'),
              mesureTarget: mesureTarget.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mesureTarget';
        mesureTarget.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_mesure_targetVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
