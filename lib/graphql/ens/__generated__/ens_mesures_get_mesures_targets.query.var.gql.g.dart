// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_get_mesures_targets.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_mesures_targetsVars> _$ggetMesuresTargetsVarsSerializer =
    new _$Gget_mesures_targetsVarsSerializer();

class _$Gget_mesures_targetsVarsSerializer
    implements StructuredSerializer<Gget_mesures_targetsVars> {
  @override
  final Iterable<Type> types = const [
    Gget_mesures_targetsVars,
    _$Gget_mesures_targetsVars
  ];
  @override
  final String wireName = 'Gget_mesures_targetsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_mesures_targetsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_mesures_targetsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_mesures_targetsVarsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$Gget_mesures_targetsVars extends Gget_mesures_targetsVars {
  @override
  final String patientId;

  factory _$Gget_mesures_targetsVars(
          [void Function(Gget_mesures_targetsVarsBuilder)? updates]) =>
      (new Gget_mesures_targetsVarsBuilder()..update(updates))._build();

  _$Gget_mesures_targetsVars._({required this.patientId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_mesures_targetsVars', 'patientId');
  }

  @override
  Gget_mesures_targetsVars rebuild(
          void Function(Gget_mesures_targetsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_mesures_targetsVarsBuilder toBuilder() =>
      new Gget_mesures_targetsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_mesures_targetsVars && patientId == other.patientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_mesures_targetsVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_mesures_targetsVarsBuilder
    implements
        Builder<Gget_mesures_targetsVars, Gget_mesures_targetsVarsBuilder> {
  _$Gget_mesures_targetsVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_mesures_targetsVarsBuilder();

  Gget_mesures_targetsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_mesures_targetsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_mesures_targetsVars;
  }

  @override
  void update(void Function(Gget_mesures_targetsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_mesures_targetsVars build() => _build();

  _$Gget_mesures_targetsVars _build() {
    final _$result = _$v ??
        new _$Gget_mesures_targetsVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_mesures_targetsVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
