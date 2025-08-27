// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_historique_activites_get_mes_activites_traces.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_mes_activites_tracesVars>
    _$ggetMesActivitesTracesVarsSerializer =
    new _$Gget_mes_activites_tracesVarsSerializer();

class _$Gget_mes_activites_tracesVarsSerializer
    implements StructuredSerializer<Gget_mes_activites_tracesVars> {
  @override
  final Iterable<Type> types = const [
    Gget_mes_activites_tracesVars,
    _$Gget_mes_activites_tracesVars
  ];
  @override
  final String wireName = 'Gget_mes_activites_tracesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_mes_activites_tracesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_mes_activites_tracesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_mes_activites_tracesVarsBuilder();

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

class _$Gget_mes_activites_tracesVars extends Gget_mes_activites_tracesVars {
  @override
  final String patientId;

  factory _$Gget_mes_activites_tracesVars(
          [void Function(Gget_mes_activites_tracesVarsBuilder)? updates]) =>
      (new Gget_mes_activites_tracesVarsBuilder()..update(updates))._build();

  _$Gget_mes_activites_tracesVars._({required this.patientId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_mes_activites_tracesVars', 'patientId');
  }

  @override
  Gget_mes_activites_tracesVars rebuild(
          void Function(Gget_mes_activites_tracesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_mes_activites_tracesVarsBuilder toBuilder() =>
      new Gget_mes_activites_tracesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_mes_activites_tracesVars &&
        patientId == other.patientId;
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
    return (newBuiltValueToStringHelper(r'Gget_mes_activites_tracesVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_mes_activites_tracesVarsBuilder
    implements
        Builder<Gget_mes_activites_tracesVars,
            Gget_mes_activites_tracesVarsBuilder> {
  _$Gget_mes_activites_tracesVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_mes_activites_tracesVarsBuilder();

  Gget_mes_activites_tracesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_mes_activites_tracesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_mes_activites_tracesVars;
  }

  @override
  void update(void Function(Gget_mes_activites_tracesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_mes_activites_tracesVars build() => _build();

  _$Gget_mes_activites_tracesVars _build() {
    final _$result = _$v ??
        new _$Gget_mes_activites_tracesVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_mes_activites_tracesVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
