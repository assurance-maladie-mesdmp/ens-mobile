// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_update_mesure_target.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_mesure_targetVars> _$gupdateMesureTargetVarsSerializer =
    new _$Gupdate_mesure_targetVarsSerializer();

class _$Gupdate_mesure_targetVarsSerializer
    implements StructuredSerializer<Gupdate_mesure_targetVars> {
  @override
  final Iterable<Type> types = const [
    Gupdate_mesure_targetVars,
    _$Gupdate_mesure_targetVars
  ];
  @override
  final String wireName = 'Gupdate_mesure_targetVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_mesure_targetVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'editMesureTarget',
      serializers.serialize(object.editMesureTarget,
          specifiedType: const FullType(_i1.GEditMeasureTargetInput)),
    ];

    return result;
  }

  @override
  Gupdate_mesure_targetVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_mesure_targetVarsBuilder();

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
        case 'editMesureTarget':
          result.editMesureTarget.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GEditMeasureTargetInput))!
              as _i1.GEditMeasureTargetInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_mesure_targetVars extends Gupdate_mesure_targetVars {
  @override
  final String patientId;
  @override
  final _i1.GEditMeasureTargetInput editMesureTarget;

  factory _$Gupdate_mesure_targetVars(
          [void Function(Gupdate_mesure_targetVarsBuilder)? updates]) =>
      (new Gupdate_mesure_targetVarsBuilder()..update(updates))._build();

  _$Gupdate_mesure_targetVars._(
      {required this.patientId, required this.editMesureTarget})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gupdate_mesure_targetVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(
        editMesureTarget, r'Gupdate_mesure_targetVars', 'editMesureTarget');
  }

  @override
  Gupdate_mesure_targetVars rebuild(
          void Function(Gupdate_mesure_targetVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_mesure_targetVarsBuilder toBuilder() =>
      new Gupdate_mesure_targetVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_mesure_targetVars &&
        patientId == other.patientId &&
        editMesureTarget == other.editMesureTarget;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, editMesureTarget.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_mesure_targetVars')
          ..add('patientId', patientId)
          ..add('editMesureTarget', editMesureTarget))
        .toString();
  }
}

class Gupdate_mesure_targetVarsBuilder
    implements
        Builder<Gupdate_mesure_targetVars, Gupdate_mesure_targetVarsBuilder> {
  _$Gupdate_mesure_targetVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  _i1.GEditMeasureTargetInputBuilder? _editMesureTarget;
  _i1.GEditMeasureTargetInputBuilder get editMesureTarget =>
      _$this._editMesureTarget ??= new _i1.GEditMeasureTargetInputBuilder();
  set editMesureTarget(_i1.GEditMeasureTargetInputBuilder? editMesureTarget) =>
      _$this._editMesureTarget = editMesureTarget;

  Gupdate_mesure_targetVarsBuilder();

  Gupdate_mesure_targetVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _editMesureTarget = $v.editMesureTarget.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_mesure_targetVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_mesure_targetVars;
  }

  @override
  void update(void Function(Gupdate_mesure_targetVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_mesure_targetVars build() => _build();

  _$Gupdate_mesure_targetVars _build() {
    _$Gupdate_mesure_targetVars _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_mesure_targetVars._(
              patientId: BuiltValueNullFieldError.checkNotNull(
                  patientId, r'Gupdate_mesure_targetVars', 'patientId'),
              editMesureTarget: editMesureTarget.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'editMesureTarget';
        editMesureTarget.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_mesure_targetVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
