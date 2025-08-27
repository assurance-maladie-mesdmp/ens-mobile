// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_agenda_get_rappel_by_id_and_patient_id.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_rappel_by_id_and_patient_idVars>
    _$ggetRappelByIdAndPatientIdVarsSerializer =
    new _$Gget_rappel_by_id_and_patient_idVarsSerializer();

class _$Gget_rappel_by_id_and_patient_idVarsSerializer
    implements StructuredSerializer<Gget_rappel_by_id_and_patient_idVars> {
  @override
  final Iterable<Type> types = const [
    Gget_rappel_by_id_and_patient_idVars,
    _$Gget_rappel_by_id_and_patient_idVars
  ];
  @override
  final String wireName = 'Gget_rappel_by_id_and_patient_idVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_rappel_by_id_and_patient_idVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'rappelId',
      serializers.serialize(object.rappelId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_rappel_by_id_and_patient_idVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_rappel_by_id_and_patient_idVarsBuilder();

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
        case 'rappelId':
          result.rappelId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_rappel_by_id_and_patient_idVars
    extends Gget_rappel_by_id_and_patient_idVars {
  @override
  final String patientId;
  @override
  final String rappelId;

  factory _$Gget_rappel_by_id_and_patient_idVars(
          [void Function(Gget_rappel_by_id_and_patient_idVarsBuilder)?
              updates]) =>
      (new Gget_rappel_by_id_and_patient_idVarsBuilder()..update(updates))
          ._build();

  _$Gget_rappel_by_id_and_patient_idVars._(
      {required this.patientId, required this.rappelId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_rappel_by_id_and_patient_idVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(
        rappelId, r'Gget_rappel_by_id_and_patient_idVars', 'rappelId');
  }

  @override
  Gget_rappel_by_id_and_patient_idVars rebuild(
          void Function(Gget_rappel_by_id_and_patient_idVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_rappel_by_id_and_patient_idVarsBuilder toBuilder() =>
      new Gget_rappel_by_id_and_patient_idVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_rappel_by_id_and_patient_idVars &&
        patientId == other.patientId &&
        rappelId == other.rappelId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, rappelId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_rappel_by_id_and_patient_idVars')
          ..add('patientId', patientId)
          ..add('rappelId', rappelId))
        .toString();
  }
}

class Gget_rappel_by_id_and_patient_idVarsBuilder
    implements
        Builder<Gget_rappel_by_id_and_patient_idVars,
            Gget_rappel_by_id_and_patient_idVarsBuilder> {
  _$Gget_rappel_by_id_and_patient_idVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _rappelId;
  String? get rappelId => _$this._rappelId;
  set rappelId(String? rappelId) => _$this._rappelId = rappelId;

  Gget_rappel_by_id_and_patient_idVarsBuilder();

  Gget_rappel_by_id_and_patient_idVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _rappelId = $v.rappelId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_rappel_by_id_and_patient_idVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_rappel_by_id_and_patient_idVars;
  }

  @override
  void update(
      void Function(Gget_rappel_by_id_and_patient_idVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_rappel_by_id_and_patient_idVars build() => _build();

  _$Gget_rappel_by_id_and_patient_idVars _build() {
    final _$result = _$v ??
        new _$Gget_rappel_by_id_and_patient_idVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(patientId,
                r'Gget_rappel_by_id_and_patient_idVars', 'patientId'),
            rappelId: BuiltValueNullFieldError.checkNotNull(
                rappelId, r'Gget_rappel_by_id_and_patient_idVars', 'rappelId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
