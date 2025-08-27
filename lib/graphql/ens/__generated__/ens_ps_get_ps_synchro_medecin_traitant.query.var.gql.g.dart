// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ps_get_ps_synchro_medecin_traitant.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_pml_professionnels_sante_synchro_medecin_traitantVars>
    _$ggetPmlProfessionnelsSanteSynchroMedecinTraitantVarsSerializer =
    new _$Gget_pml_professionnels_sante_synchro_medecin_traitantVarsSerializer();

class _$Gget_pml_professionnels_sante_synchro_medecin_traitantVarsSerializer
    implements
        StructuredSerializer<
            Gget_pml_professionnels_sante_synchro_medecin_traitantVars> {
  @override
  final Iterable<Type> types = const [
    Gget_pml_professionnels_sante_synchro_medecin_traitantVars,
    _$Gget_pml_professionnels_sante_synchro_medecin_traitantVars
  ];
  @override
  final String wireName =
      'Gget_pml_professionnels_sante_synchro_medecin_traitantVars';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_pml_professionnels_sante_synchro_medecin_traitantVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_pml_professionnels_sante_synchro_medecin_traitantVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_pml_professionnels_sante_synchro_medecin_traitantVarsBuilder();

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

class _$Gget_pml_professionnels_sante_synchro_medecin_traitantVars
    extends Gget_pml_professionnels_sante_synchro_medecin_traitantVars {
  @override
  final String patientId;

  factory _$Gget_pml_professionnels_sante_synchro_medecin_traitantVars(
          [void Function(
                  Gget_pml_professionnels_sante_synchro_medecin_traitantVarsBuilder)?
              updates]) =>
      (new Gget_pml_professionnels_sante_synchro_medecin_traitantVarsBuilder()
            ..update(updates))
          ._build();

  _$Gget_pml_professionnels_sante_synchro_medecin_traitantVars._(
      {required this.patientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId,
        r'Gget_pml_professionnels_sante_synchro_medecin_traitantVars',
        'patientId');
  }

  @override
  Gget_pml_professionnels_sante_synchro_medecin_traitantVars rebuild(
          void Function(
                  Gget_pml_professionnels_sante_synchro_medecin_traitantVarsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_pml_professionnels_sante_synchro_medecin_traitantVarsBuilder
      toBuilder() =>
          new Gget_pml_professionnels_sante_synchro_medecin_traitantVarsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_pml_professionnels_sante_synchro_medecin_traitantVars &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_pml_professionnels_sante_synchro_medecin_traitantVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_pml_professionnels_sante_synchro_medecin_traitantVarsBuilder
    implements
        Builder<Gget_pml_professionnels_sante_synchro_medecin_traitantVars,
            Gget_pml_professionnels_sante_synchro_medecin_traitantVarsBuilder> {
  _$Gget_pml_professionnels_sante_synchro_medecin_traitantVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_pml_professionnels_sante_synchro_medecin_traitantVarsBuilder();

  Gget_pml_professionnels_sante_synchro_medecin_traitantVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_pml_professionnels_sante_synchro_medecin_traitantVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_pml_professionnels_sante_synchro_medecin_traitantVars;
  }

  @override
  void update(
      void Function(
              Gget_pml_professionnels_sante_synchro_medecin_traitantVarsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_pml_professionnels_sante_synchro_medecin_traitantVars build() =>
      _build();

  _$Gget_pml_professionnels_sante_synchro_medecin_traitantVars _build() {
    final _$result = _$v ??
        new _$Gget_pml_professionnels_sante_synchro_medecin_traitantVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId,
                r'Gget_pml_professionnels_sante_synchro_medecin_traitantVars',
                'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
