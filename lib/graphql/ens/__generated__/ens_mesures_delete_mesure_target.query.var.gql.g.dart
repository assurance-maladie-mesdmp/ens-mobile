// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_delete_mesure_target.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_mesure_targetVars> _$gdeleteMesureTargetVarsSerializer =
    new _$Gdelete_mesure_targetVarsSerializer();

class _$Gdelete_mesure_targetVarsSerializer
    implements StructuredSerializer<Gdelete_mesure_targetVars> {
  @override
  final Iterable<Type> types = const [
    Gdelete_mesure_targetVars,
    _$Gdelete_mesure_targetVars
  ];
  @override
  final String wireName = 'Gdelete_mesure_targetVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_mesure_targetVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'targetId',
      serializers.serialize(object.targetId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gdelete_mesure_targetVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_mesure_targetVarsBuilder();

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
        case 'targetId':
          result.targetId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_mesure_targetVars extends Gdelete_mesure_targetVars {
  @override
  final String patientId;
  @override
  final String targetId;

  factory _$Gdelete_mesure_targetVars(
          [void Function(Gdelete_mesure_targetVarsBuilder)? updates]) =>
      (new Gdelete_mesure_targetVarsBuilder()..update(updates))._build();

  _$Gdelete_mesure_targetVars._(
      {required this.patientId, required this.targetId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gdelete_mesure_targetVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(
        targetId, r'Gdelete_mesure_targetVars', 'targetId');
  }

  @override
  Gdelete_mesure_targetVars rebuild(
          void Function(Gdelete_mesure_targetVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_mesure_targetVarsBuilder toBuilder() =>
      new Gdelete_mesure_targetVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_mesure_targetVars &&
        patientId == other.patientId &&
        targetId == other.targetId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, targetId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_mesure_targetVars')
          ..add('patientId', patientId)
          ..add('targetId', targetId))
        .toString();
  }
}

class Gdelete_mesure_targetVarsBuilder
    implements
        Builder<Gdelete_mesure_targetVars, Gdelete_mesure_targetVarsBuilder> {
  _$Gdelete_mesure_targetVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _targetId;
  String? get targetId => _$this._targetId;
  set targetId(String? targetId) => _$this._targetId = targetId;

  Gdelete_mesure_targetVarsBuilder();

  Gdelete_mesure_targetVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _targetId = $v.targetId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_mesure_targetVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_mesure_targetVars;
  }

  @override
  void update(void Function(Gdelete_mesure_targetVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_mesure_targetVars build() => _build();

  _$Gdelete_mesure_targetVars _build() {
    final _$result = _$v ??
        new _$Gdelete_mesure_targetVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gdelete_mesure_targetVars', 'patientId'),
            targetId: BuiltValueNullFieldError.checkNotNull(
                targetId, r'Gdelete_mesure_targetVars', 'targetId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
