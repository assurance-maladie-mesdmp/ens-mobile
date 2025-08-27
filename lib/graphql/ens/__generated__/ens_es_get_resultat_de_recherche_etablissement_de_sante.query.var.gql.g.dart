// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_es_get_resultat_de_recherche_etablissement_de_sante.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_resultat_de_recherche_etablissements_de_santeVars>
    _$ggetResultatDeRechercheEtablissementsDeSanteVarsSerializer =
    new _$Gget_resultat_de_recherche_etablissements_de_santeVarsSerializer();

class _$Gget_resultat_de_recherche_etablissements_de_santeVarsSerializer
    implements
        StructuredSerializer<
            Gget_resultat_de_recherche_etablissements_de_santeVars> {
  @override
  final Iterable<Type> types = const [
    Gget_resultat_de_recherche_etablissements_de_santeVars,
    _$Gget_resultat_de_recherche_etablissements_de_santeVars
  ];
  @override
  final String wireName =
      'Gget_resultat_de_recherche_etablissements_de_santeVars';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_resultat_de_recherche_etablissements_de_santeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'searchStructureInput',
      serializers.serialize(object.searchStructureInput,
          specifiedType: const FullType(_i1.GSearchStructureInputModel)),
    ];

    return result;
  }

  @override
  Gget_resultat_de_recherche_etablissements_de_santeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_resultat_de_recherche_etablissements_de_santeVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'searchStructureInput':
          result.searchStructureInput.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GSearchStructureInputModel))!
              as _i1.GSearchStructureInputModel);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_resultat_de_recherche_etablissements_de_santeVars
    extends Gget_resultat_de_recherche_etablissements_de_santeVars {
  @override
  final _i1.GSearchStructureInputModel searchStructureInput;

  factory _$Gget_resultat_de_recherche_etablissements_de_santeVars(
          [void Function(
                  Gget_resultat_de_recherche_etablissements_de_santeVarsBuilder)?
              updates]) =>
      (new Gget_resultat_de_recherche_etablissements_de_santeVarsBuilder()
            ..update(updates))
          ._build();

  _$Gget_resultat_de_recherche_etablissements_de_santeVars._(
      {required this.searchStructureInput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        searchStructureInput,
        r'Gget_resultat_de_recherche_etablissements_de_santeVars',
        'searchStructureInput');
  }

  @override
  Gget_resultat_de_recherche_etablissements_de_santeVars rebuild(
          void Function(
                  Gget_resultat_de_recherche_etablissements_de_santeVarsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_resultat_de_recherche_etablissements_de_santeVarsBuilder toBuilder() =>
      new Gget_resultat_de_recherche_etablissements_de_santeVarsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_resultat_de_recherche_etablissements_de_santeVars &&
        searchStructureInput == other.searchStructureInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, searchStructureInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_resultat_de_recherche_etablissements_de_santeVars')
          ..add('searchStructureInput', searchStructureInput))
        .toString();
  }
}

class Gget_resultat_de_recherche_etablissements_de_santeVarsBuilder
    implements
        Builder<Gget_resultat_de_recherche_etablissements_de_santeVars,
            Gget_resultat_de_recherche_etablissements_de_santeVarsBuilder> {
  _$Gget_resultat_de_recherche_etablissements_de_santeVars? _$v;

  _i1.GSearchStructureInputModelBuilder? _searchStructureInput;
  _i1.GSearchStructureInputModelBuilder get searchStructureInput =>
      _$this._searchStructureInput ??=
          new _i1.GSearchStructureInputModelBuilder();
  set searchStructureInput(
          _i1.GSearchStructureInputModelBuilder? searchStructureInput) =>
      _$this._searchStructureInput = searchStructureInput;

  Gget_resultat_de_recherche_etablissements_de_santeVarsBuilder();

  Gget_resultat_de_recherche_etablissements_de_santeVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _searchStructureInput = $v.searchStructureInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_resultat_de_recherche_etablissements_de_santeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_resultat_de_recherche_etablissements_de_santeVars;
  }

  @override
  void update(
      void Function(
              Gget_resultat_de_recherche_etablissements_de_santeVarsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_resultat_de_recherche_etablissements_de_santeVars build() => _build();

  _$Gget_resultat_de_recherche_etablissements_de_santeVars _build() {
    _$Gget_resultat_de_recherche_etablissements_de_santeVars _$result;
    try {
      _$result = _$v ??
          new _$Gget_resultat_de_recherche_etablissements_de_santeVars._(
              searchStructureInput: searchStructureInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'searchStructureInput';
        searchStructureInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_resultat_de_recherche_etablissements_de_santeVars',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
