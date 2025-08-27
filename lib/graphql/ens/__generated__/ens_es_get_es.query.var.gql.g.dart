// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_es_get_es.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_etablissements_de_santeVars>
    _$ggetEtablissementsDeSanteVarsSerializer =
    new _$Gget_etablissements_de_santeVarsSerializer();

class _$Gget_etablissements_de_santeVarsSerializer
    implements StructuredSerializer<Gget_etablissements_de_santeVars> {
  @override
  final Iterable<Type> types = const [
    Gget_etablissements_de_santeVars,
    _$Gget_etablissements_de_santeVars
  ];
  @override
  final String wireName = 'Gget_etablissements_de_santeVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_etablissements_de_santeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_etablissements_de_santeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_etablissements_de_santeVarsBuilder();

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

class _$Gget_etablissements_de_santeVars
    extends Gget_etablissements_de_santeVars {
  @override
  final String patientId;

  factory _$Gget_etablissements_de_santeVars(
          [void Function(Gget_etablissements_de_santeVarsBuilder)? updates]) =>
      (new Gget_etablissements_de_santeVarsBuilder()..update(updates))._build();

  _$Gget_etablissements_de_santeVars._({required this.patientId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_etablissements_de_santeVars', 'patientId');
  }

  @override
  Gget_etablissements_de_santeVars rebuild(
          void Function(Gget_etablissements_de_santeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_etablissements_de_santeVarsBuilder toBuilder() =>
      new Gget_etablissements_de_santeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_etablissements_de_santeVars &&
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
    return (newBuiltValueToStringHelper(r'Gget_etablissements_de_santeVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_etablissements_de_santeVarsBuilder
    implements
        Builder<Gget_etablissements_de_santeVars,
            Gget_etablissements_de_santeVarsBuilder> {
  _$Gget_etablissements_de_santeVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_etablissements_de_santeVarsBuilder();

  Gget_etablissements_de_santeVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_etablissements_de_santeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_etablissements_de_santeVars;
  }

  @override
  void update(void Function(Gget_etablissements_de_santeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_etablissements_de_santeVars build() => _build();

  _$Gget_etablissements_de_santeVars _build() {
    final _$result = _$v ??
        new _$Gget_etablissements_de_santeVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_etablissements_de_santeVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
