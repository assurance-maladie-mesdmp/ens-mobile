// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_es_add_es.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gadd_etablissement_de_santeVars>
    _$gaddEtablissementDeSanteVarsSerializer =
    new _$Gadd_etablissement_de_santeVarsSerializer();

class _$Gadd_etablissement_de_santeVarsSerializer
    implements StructuredSerializer<Gadd_etablissement_de_santeVars> {
  @override
  final Iterable<Type> types = const [
    Gadd_etablissement_de_santeVars,
    _$Gadd_etablissement_de_santeVars
  ];
  @override
  final String wireName = 'Gadd_etablissement_de_santeVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_etablissement_de_santeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'esId',
      serializers.serialize(object.esId, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gadd_etablissement_de_santeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_etablissement_de_santeVarsBuilder();

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
        case 'esId':
          result.esId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_etablissement_de_santeVars
    extends Gadd_etablissement_de_santeVars {
  @override
  final String patientId;
  @override
  final String esId;

  factory _$Gadd_etablissement_de_santeVars(
          [void Function(Gadd_etablissement_de_santeVarsBuilder)? updates]) =>
      (new Gadd_etablissement_de_santeVarsBuilder()..update(updates))._build();

  _$Gadd_etablissement_de_santeVars._(
      {required this.patientId, required this.esId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gadd_etablissement_de_santeVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(
        esId, r'Gadd_etablissement_de_santeVars', 'esId');
  }

  @override
  Gadd_etablissement_de_santeVars rebuild(
          void Function(Gadd_etablissement_de_santeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_etablissement_de_santeVarsBuilder toBuilder() =>
      new Gadd_etablissement_de_santeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_etablissement_de_santeVars &&
        patientId == other.patientId &&
        esId == other.esId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, esId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_etablissement_de_santeVars')
          ..add('patientId', patientId)
          ..add('esId', esId))
        .toString();
  }
}

class Gadd_etablissement_de_santeVarsBuilder
    implements
        Builder<Gadd_etablissement_de_santeVars,
            Gadd_etablissement_de_santeVarsBuilder> {
  _$Gadd_etablissement_de_santeVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _esId;
  String? get esId => _$this._esId;
  set esId(String? esId) => _$this._esId = esId;

  Gadd_etablissement_de_santeVarsBuilder();

  Gadd_etablissement_de_santeVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _esId = $v.esId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_etablissement_de_santeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_etablissement_de_santeVars;
  }

  @override
  void update(void Function(Gadd_etablissement_de_santeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_etablissement_de_santeVars build() => _build();

  _$Gadd_etablissement_de_santeVars _build() {
    final _$result = _$v ??
        new _$Gadd_etablissement_de_santeVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gadd_etablissement_de_santeVars', 'patientId'),
            esId: BuiltValueNullFieldError.checkNotNull(
                esId, r'Gadd_etablissement_de_santeVars', 'esId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
