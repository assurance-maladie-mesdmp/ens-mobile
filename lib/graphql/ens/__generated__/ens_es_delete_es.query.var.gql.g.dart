// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_es_delete_es.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_etablissement_de_santeVars>
    _$gdeleteEtablissementDeSanteVarsSerializer =
    new _$Gdelete_etablissement_de_santeVarsSerializer();

class _$Gdelete_etablissement_de_santeVarsSerializer
    implements StructuredSerializer<Gdelete_etablissement_de_santeVars> {
  @override
  final Iterable<Type> types = const [
    Gdelete_etablissement_de_santeVars,
    _$Gdelete_etablissement_de_santeVars
  ];
  @override
  final String wireName = 'Gdelete_etablissement_de_santeVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_etablissement_de_santeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'esOrganizationId',
      serializers.serialize(object.esOrganizationId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gdelete_etablissement_de_santeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_etablissement_de_santeVarsBuilder();

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
        case 'esOrganizationId':
          result.esOrganizationId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_etablissement_de_santeVars
    extends Gdelete_etablissement_de_santeVars {
  @override
  final String patientId;
  @override
  final String esOrganizationId;

  factory _$Gdelete_etablissement_de_santeVars(
          [void Function(Gdelete_etablissement_de_santeVarsBuilder)?
              updates]) =>
      (new Gdelete_etablissement_de_santeVarsBuilder()..update(updates))
          ._build();

  _$Gdelete_etablissement_de_santeVars._(
      {required this.patientId, required this.esOrganizationId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gdelete_etablissement_de_santeVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(esOrganizationId,
        r'Gdelete_etablissement_de_santeVars', 'esOrganizationId');
  }

  @override
  Gdelete_etablissement_de_santeVars rebuild(
          void Function(Gdelete_etablissement_de_santeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_etablissement_de_santeVarsBuilder toBuilder() =>
      new Gdelete_etablissement_de_santeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_etablissement_de_santeVars &&
        patientId == other.patientId &&
        esOrganizationId == other.esOrganizationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, esOrganizationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_etablissement_de_santeVars')
          ..add('patientId', patientId)
          ..add('esOrganizationId', esOrganizationId))
        .toString();
  }
}

class Gdelete_etablissement_de_santeVarsBuilder
    implements
        Builder<Gdelete_etablissement_de_santeVars,
            Gdelete_etablissement_de_santeVarsBuilder> {
  _$Gdelete_etablissement_de_santeVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _esOrganizationId;
  String? get esOrganizationId => _$this._esOrganizationId;
  set esOrganizationId(String? esOrganizationId) =>
      _$this._esOrganizationId = esOrganizationId;

  Gdelete_etablissement_de_santeVarsBuilder();

  Gdelete_etablissement_de_santeVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _esOrganizationId = $v.esOrganizationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_etablissement_de_santeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_etablissement_de_santeVars;
  }

  @override
  void update(
      void Function(Gdelete_etablissement_de_santeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_etablissement_de_santeVars build() => _build();

  _$Gdelete_etablissement_de_santeVars _build() {
    final _$result = _$v ??
        new _$Gdelete_etablissement_de_santeVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gdelete_etablissement_de_santeVars', 'patientId'),
            esOrganizationId: BuiltValueNullFieldError.checkNotNull(
                esOrganizationId,
                r'Gdelete_etablissement_de_santeVars',
                'esOrganizationId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
