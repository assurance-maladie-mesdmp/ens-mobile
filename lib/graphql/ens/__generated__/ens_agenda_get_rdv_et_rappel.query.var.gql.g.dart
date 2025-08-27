// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_agenda_get_rdv_et_rappel.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_rdv_et_rappelVars> _$ggetRdvEtRappelVarsSerializer =
    new _$Gget_rdv_et_rappelVarsSerializer();

class _$Gget_rdv_et_rappelVarsSerializer
    implements StructuredSerializer<Gget_rdv_et_rappelVars> {
  @override
  final Iterable<Type> types = const [
    Gget_rdv_et_rappelVars,
    _$Gget_rdv_et_rappelVars
  ];
  @override
  final String wireName = 'Gget_rdv_et_rappelVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_rdv_et_rappelVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_rdv_et_rappelVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_rdv_et_rappelVarsBuilder();

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

class _$Gget_rdv_et_rappelVars extends Gget_rdv_et_rappelVars {
  @override
  final String patientId;

  factory _$Gget_rdv_et_rappelVars(
          [void Function(Gget_rdv_et_rappelVarsBuilder)? updates]) =>
      (new Gget_rdv_et_rappelVarsBuilder()..update(updates))._build();

  _$Gget_rdv_et_rappelVars._({required this.patientId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_rdv_et_rappelVars', 'patientId');
  }

  @override
  Gget_rdv_et_rappelVars rebuild(
          void Function(Gget_rdv_et_rappelVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_rdv_et_rappelVarsBuilder toBuilder() =>
      new Gget_rdv_et_rappelVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_rdv_et_rappelVars && patientId == other.patientId;
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
    return (newBuiltValueToStringHelper(r'Gget_rdv_et_rappelVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_rdv_et_rappelVarsBuilder
    implements Builder<Gget_rdv_et_rappelVars, Gget_rdv_et_rappelVarsBuilder> {
  _$Gget_rdv_et_rappelVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_rdv_et_rappelVarsBuilder();

  Gget_rdv_et_rappelVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_rdv_et_rappelVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_rdv_et_rappelVars;
  }

  @override
  void update(void Function(Gget_rdv_et_rappelVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_rdv_et_rappelVars build() => _build();

  _$Gget_rdv_et_rappelVars _build() {
    final _$result = _$v ??
        new _$Gget_rdv_et_rappelVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_rdv_et_rappelVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
