// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_get_consents_for_service_by_oid.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_consents_for_service_by_oidData>
    _$ggetConsentsForServiceByOidDataSerializer =
    new _$Gget_consents_for_service_by_oidDataSerializer();
Serializer<
        Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid>
    _$ggetConsentsForServiceByOidDataFetchFinalitiesConsentsForServiceByOidSerializer =
    new _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOidSerializer();
Serializer<
        Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees>
    _$ggetConsentsForServiceByOidDataFetchFinalitiesConsentsForServiceByOidEchangesDeDonneesSerializer =
    new _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonneesSerializer();
Serializer<
        Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories>
    _$ggetConsentsForServiceByOidDataFetchFinalitiesConsentsForServiceByOidEchangesDeDonneesCategoriesSerializer =
    new _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categoriesSerializer();

class _$Gget_consents_for_service_by_oidDataSerializer
    implements StructuredSerializer<Gget_consents_for_service_by_oidData> {
  @override
  final Iterable<Type> types = const [
    Gget_consents_for_service_by_oidData,
    _$Gget_consents_for_service_by_oidData
  ];
  @override
  final String wireName = 'Gget_consents_for_service_by_oidData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_consents_for_service_by_oidData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'fetchFinalitiesConsentsForServiceByOid',
      serializers.serialize(object.fetchFinalitiesConsentsForServiceByOid,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid)
          ])),
    ];

    return result;
  }

  @override
  Gget_consents_for_service_by_oidData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_consents_for_service_by_oidDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'fetchFinalitiesConsentsForServiceByOid':
          result.fetchFinalitiesConsentsForServiceByOid
              .replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType(
                        Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid)
                  ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOidSerializer
    implements
        StructuredSerializer<
            Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid> {
  @override
  final Iterable<Type> types = const [
    Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid,
    _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid
  ];
  @override
  final String wireName =
      'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'libelle',
      serializers.serialize(object.libelle,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'codeFinalite',
      serializers.serialize(object.codeFinalite,
          specifiedType: const FullType(String)),
      'consenti',
      serializers.serialize(object.consenti,
          specifiedType: const FullType(bool)),
      'echangesDeDonnees',
      serializers.serialize(object.echangesDeDonnees,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees)
          ])),
    ];

    return result;
  }

  @override
  Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOidBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'libelle':
          result.libelle = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'codeFinalite':
          result.codeFinalite = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'consenti':
          result.consenti = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'echangesDeDonnees':
          result.echangesDeDonnees.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonneesSerializer
    implements
        StructuredSerializer<
            Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees> {
  @override
  final Iterable<Type> types = const [
    Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees,
    _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees
  ];
  @override
  final String wireName =
      'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'perimetre',
      serializers.serialize(object.perimetre,
          specifiedType: const FullType(String)),
      'action',
      serializers.serialize(object.action,
          specifiedType: const FullType(String)),
      'categories',
      serializers.serialize(object.categories,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories)
          ])),
    ];

    return result;
  }

  @override
  Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonneesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'perimetre':
          result.perimetre = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'action':
          result.action = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categoriesSerializer
    implements
        StructuredSerializer<
            Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories> {
  @override
  final Iterable<Type> types = const [
    Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories,
    _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories
  ];
  @override
  final String wireName =
      'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'titre',
      serializers.serialize(object.titre,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categoriesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'titre':
          result.titre = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_consents_for_service_by_oidData
    extends Gget_consents_for_service_by_oidData {
  @override
  final String G__typename;
  @override
  final BuiltList<
          Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid>
      fetchFinalitiesConsentsForServiceByOid;

  factory _$Gget_consents_for_service_by_oidData(
          [void Function(Gget_consents_for_service_by_oidDataBuilder)?
              updates]) =>
      (new Gget_consents_for_service_by_oidDataBuilder()..update(updates))
          ._build();

  _$Gget_consents_for_service_by_oidData._(
      {required this.G__typename,
      required this.fetchFinalitiesConsentsForServiceByOid})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_consents_for_service_by_oidData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        fetchFinalitiesConsentsForServiceByOid,
        r'Gget_consents_for_service_by_oidData',
        'fetchFinalitiesConsentsForServiceByOid');
  }

  @override
  Gget_consents_for_service_by_oidData rebuild(
          void Function(Gget_consents_for_service_by_oidDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_consents_for_service_by_oidDataBuilder toBuilder() =>
      new Gget_consents_for_service_by_oidDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_consents_for_service_by_oidData &&
        G__typename == other.G__typename &&
        fetchFinalitiesConsentsForServiceByOid ==
            other.fetchFinalitiesConsentsForServiceByOid;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, fetchFinalitiesConsentsForServiceByOid.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_consents_for_service_by_oidData')
          ..add('G__typename', G__typename)
          ..add('fetchFinalitiesConsentsForServiceByOid',
              fetchFinalitiesConsentsForServiceByOid))
        .toString();
  }
}

class Gget_consents_for_service_by_oidDataBuilder
    implements
        Builder<Gget_consents_for_service_by_oidData,
            Gget_consents_for_service_by_oidDataBuilder> {
  _$Gget_consents_for_service_by_oidData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<
          Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid>?
      _fetchFinalitiesConsentsForServiceByOid;
  ListBuilder<
          Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid>
      get fetchFinalitiesConsentsForServiceByOid =>
          _$this._fetchFinalitiesConsentsForServiceByOid ??= new ListBuilder<
              Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid>();
  set fetchFinalitiesConsentsForServiceByOid(
          ListBuilder<
                  Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid>?
              fetchFinalitiesConsentsForServiceByOid) =>
      _$this._fetchFinalitiesConsentsForServiceByOid =
          fetchFinalitiesConsentsForServiceByOid;

  Gget_consents_for_service_by_oidDataBuilder() {
    Gget_consents_for_service_by_oidData._initializeBuilder(this);
  }

  Gget_consents_for_service_by_oidDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _fetchFinalitiesConsentsForServiceByOid =
          $v.fetchFinalitiesConsentsForServiceByOid.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_consents_for_service_by_oidData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_consents_for_service_by_oidData;
  }

  @override
  void update(
      void Function(Gget_consents_for_service_by_oidDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_consents_for_service_by_oidData build() => _build();

  _$Gget_consents_for_service_by_oidData _build() {
    _$Gget_consents_for_service_by_oidData _$result;
    try {
      _$result = _$v ??
          new _$Gget_consents_for_service_by_oidData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_consents_for_service_by_oidData', 'G__typename'),
              fetchFinalitiesConsentsForServiceByOid:
                  fetchFinalitiesConsentsForServiceByOid.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fetchFinalitiesConsentsForServiceByOid';
        fetchFinalitiesConsentsForServiceByOid.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_consents_for_service_by_oidData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid
    extends Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid {
  @override
  final String G__typename;
  @override
  final String libelle;
  @override
  final String description;
  @override
  final String codeFinalite;
  @override
  final bool consenti;
  @override
  final BuiltList<
          Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees>
      echangesDeDonnees;

  factory _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid(
          [void Function(
                  Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOidBuilder)?
              updates]) =>
      (new Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOidBuilder()
            ..update(updates))
          ._build();

  _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid._(
      {required this.G__typename,
      required this.libelle,
      required this.description,
      required this.codeFinalite,
      required this.consenti,
      required this.echangesDeDonnees})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        libelle,
        r'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid',
        'libelle');
    BuiltValueNullFieldError.checkNotNull(
        description,
        r'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid',
        'description');
    BuiltValueNullFieldError.checkNotNull(
        codeFinalite,
        r'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid',
        'codeFinalite');
    BuiltValueNullFieldError.checkNotNull(
        consenti,
        r'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid',
        'consenti');
    BuiltValueNullFieldError.checkNotNull(
        echangesDeDonnees,
        r'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid',
        'echangesDeDonnees');
  }

  @override
  Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid
      rebuild(
              void Function(
                      Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOidBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOidBuilder
      toBuilder() =>
          new Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOidBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid &&
        G__typename == other.G__typename &&
        libelle == other.libelle &&
        description == other.description &&
        codeFinalite == other.codeFinalite &&
        consenti == other.consenti &&
        echangesDeDonnees == other.echangesDeDonnees;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, libelle.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, codeFinalite.hashCode);
    _$hash = $jc(_$hash, consenti.hashCode);
    _$hash = $jc(_$hash, echangesDeDonnees.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid')
          ..add('G__typename', G__typename)
          ..add('libelle', libelle)
          ..add('description', description)
          ..add('codeFinalite', codeFinalite)
          ..add('consenti', consenti)
          ..add('echangesDeDonnees', echangesDeDonnees))
        .toString();
  }
}

class Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOidBuilder
    implements
        Builder<
            Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid,
            Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOidBuilder> {
  _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _libelle;
  String? get libelle => _$this._libelle;
  set libelle(String? libelle) => _$this._libelle = libelle;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _codeFinalite;
  String? get codeFinalite => _$this._codeFinalite;
  set codeFinalite(String? codeFinalite) => _$this._codeFinalite = codeFinalite;

  bool? _consenti;
  bool? get consenti => _$this._consenti;
  set consenti(bool? consenti) => _$this._consenti = consenti;

  ListBuilder<
          Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees>?
      _echangesDeDonnees;
  ListBuilder<
          Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees>
      get echangesDeDonnees => _$this._echangesDeDonnees ??= new ListBuilder<
          Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees>();
  set echangesDeDonnees(
          ListBuilder<
                  Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees>?
              echangesDeDonnees) =>
      _$this._echangesDeDonnees = echangesDeDonnees;

  Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOidBuilder() {
    Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid
        ._initializeBuilder(this);
  }

  Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOidBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _libelle = $v.libelle;
      _description = $v.description;
      _codeFinalite = $v.codeFinalite;
      _consenti = $v.consenti;
      _echangesDeDonnees = $v.echangesDeDonnees.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid;
  }

  @override
  void update(
      void Function(
              Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOidBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid
      build() => _build();

  _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid
      _build() {
    _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid',
                  'G__typename'),
              libelle: BuiltValueNullFieldError.checkNotNull(
                  libelle, r'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid', 'libelle'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description,
                  r'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid',
                  'description'),
              codeFinalite: BuiltValueNullFieldError.checkNotNull(
                  codeFinalite,
                  r'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid',
                  'codeFinalite'),
              consenti: BuiltValueNullFieldError.checkNotNull(
                  consenti,
                  r'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid',
                  'consenti'),
              echangesDeDonnees: echangesDeDonnees.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'echangesDeDonnees';
        echangesDeDonnees.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees
    extends Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees {
  @override
  final String G__typename;
  @override
  final String perimetre;
  @override
  final String action;
  @override
  final BuiltList<
          Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories>
      categories;

  factory _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees(
          [void Function(
                  Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonneesBuilder)?
              updates]) =>
      (new Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonneesBuilder()
            ..update(updates))
          ._build();

  _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees._(
      {required this.G__typename,
      required this.perimetre,
      required this.action,
      required this.categories})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        perimetre,
        r'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees',
        'perimetre');
    BuiltValueNullFieldError.checkNotNull(
        action,
        r'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees',
        'action');
    BuiltValueNullFieldError.checkNotNull(
        categories,
        r'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees',
        'categories');
  }

  @override
  Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees
      rebuild(
              void Function(
                      Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonneesBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonneesBuilder
      toBuilder() =>
          new Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonneesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees &&
        G__typename == other.G__typename &&
        perimetre == other.perimetre &&
        action == other.action &&
        categories == other.categories;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, perimetre.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, categories.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees')
          ..add('G__typename', G__typename)
          ..add('perimetre', perimetre)
          ..add('action', action)
          ..add('categories', categories))
        .toString();
  }
}

class Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonneesBuilder
    implements
        Builder<
            Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees,
            Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonneesBuilder> {
  _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _perimetre;
  String? get perimetre => _$this._perimetre;
  set perimetre(String? perimetre) => _$this._perimetre = perimetre;

  String? _action;
  String? get action => _$this._action;
  set action(String? action) => _$this._action = action;

  ListBuilder<
          Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories>?
      _categories;
  ListBuilder<
          Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories>
      get categories => _$this._categories ??= new ListBuilder<
          Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories>();
  set categories(
          ListBuilder<
                  Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories>?
              categories) =>
      _$this._categories = categories;

  Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonneesBuilder() {
    Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees
        ._initializeBuilder(this);
  }

  Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonneesBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _perimetre = $v.perimetre;
      _action = $v.action;
      _categories = $v.categories.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees;
  }

  @override
  void update(
      void Function(
              Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonneesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees
      build() => _build();

  _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees
      _build() {
    _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees',
                  'G__typename'),
              perimetre: BuiltValueNullFieldError.checkNotNull(
                  perimetre,
                  r'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees',
                  'perimetre'),
              action: BuiltValueNullFieldError.checkNotNull(
                  action,
                  r'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees',
                  'action'),
              categories: categories.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categories';
        categories.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories
    extends Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories {
  @override
  final String G__typename;
  @override
  final String titre;
  @override
  final String description;

  factory _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories(
          [void Function(
                  Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categoriesBuilder)?
              updates]) =>
      (new Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categoriesBuilder()
            ..update(updates))
          ._build();

  _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories._(
      {required this.G__typename,
      required this.titre,
      required this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        titre,
        r'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories',
        'titre');
    BuiltValueNullFieldError.checkNotNull(
        description,
        r'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories',
        'description');
  }

  @override
  Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories
      rebuild(
              void Function(
                      Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categoriesBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categoriesBuilder
      toBuilder() =>
          new Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categoriesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories &&
        G__typename == other.G__typename &&
        titre == other.titre &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, titre.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories')
          ..add('G__typename', G__typename)
          ..add('titre', titre)
          ..add('description', description))
        .toString();
  }
}

class Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categoriesBuilder
    implements
        Builder<
            Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories,
            Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categoriesBuilder> {
  _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _titre;
  String? get titre => _$this._titre;
  set titre(String? titre) => _$this._titre = titre;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categoriesBuilder() {
    Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories
        ._initializeBuilder(this);
  }

  Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categoriesBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _titre = $v.titre;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories;
  }

  @override
  void update(
      void Function(
              Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categoriesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories
      build() => _build();

  _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories
      _build() {
    final _$result = _$v ??
        new _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories',
                'G__typename'),
            titre: BuiltValueNullFieldError.checkNotNull(
                titre,
                r'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories',
                'titre'),
            description: BuiltValueNullFieldError.checkNotNull(
                description,
                r'Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories',
                'description'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
