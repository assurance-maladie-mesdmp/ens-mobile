// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_es_get_resultat_de_recherche_etablissement_de_sante.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_resultat_de_recherche_etablissements_de_santeData>
    _$ggetResultatDeRechercheEtablissementsDeSanteDataSerializer =
    new _$Gget_resultat_de_recherche_etablissements_de_santeDataSerializer();
Serializer<
        Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure>
    _$ggetResultatDeRechercheEtablissementsDeSanteDataSearchStructureSerializer =
    new _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructureSerializer();
Serializer<
        Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures>
    _$ggetResultatDeRechercheEtablissementsDeSanteDataSearchStructureSearchStructuresSerializer =
    new _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructuresSerializer();
Serializer<
        Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address>
    _$ggetResultatDeRechercheEtablissementsDeSanteDataSearchStructureSearchStructuresAddressSerializer =
    new _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_addressSerializer();

class _$Gget_resultat_de_recherche_etablissements_de_santeDataSerializer
    implements
        StructuredSerializer<
            Gget_resultat_de_recherche_etablissements_de_santeData> {
  @override
  final Iterable<Type> types = const [
    Gget_resultat_de_recherche_etablissements_de_santeData,
    _$Gget_resultat_de_recherche_etablissements_de_santeData
  ];
  @override
  final String wireName =
      'Gget_resultat_de_recherche_etablissements_de_santeData';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_resultat_de_recherche_etablissements_de_santeData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'searchStructure',
      serializers.serialize(object.searchStructure,
          specifiedType: const FullType(
              Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure)),
    ];

    return result;
  }

  @override
  Gget_resultat_de_recherche_etablissements_de_santeData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_resultat_de_recherche_etablissements_de_santeDataBuilder();

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
        case 'searchStructure':
          result.searchStructure.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure))!
              as Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructureSerializer
    implements
        StructuredSerializer<
            Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure> {
  @override
  final Iterable<Type> types = const [
    Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure,
    _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure
  ];
  @override
  final String wireName =
      'Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'searchStructures',
      serializers.serialize(object.searchStructures,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures)
          ])),
    ];

    return result;
  }

  @override
  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_resultat_de_recherche_etablissements_de_santeData_searchStructureBuilder();

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
        case 'searchStructures':
          result.searchStructures.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructuresSerializer
    implements
        StructuredSerializer<
            Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures> {
  @override
  final Iterable<Type> types = const [
    Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures,
    _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures
  ];
  @override
  final String wireName =
      'Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'active',
      serializers.serialize(object.active, specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.idFineg;
    if (value != null) {
      result
        ..add('idFineg')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.alias;
    if (value != null) {
      result
        ..add('alias')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mail;
    if (value != null) {
      result
        ..add('mail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address)));
    }
    value = object.activity;
    if (value != null) {
      result
        ..add('activity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructuresBuilder();

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
        case 'idFineg':
          result.idFineg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'alias':
          result.alias = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'mail':
          result.mail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address))!
              as Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address);
          break;
        case 'activity':
          result.activity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_addressSerializer
    implements
        StructuredSerializer<
            Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address> {
  @override
  final Iterable<Type> types = const [
    Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address,
    _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address
  ];
  @override
  final String wireName =
      'Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.roadNumber;
    if (value != null) {
      result
        ..add('roadNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.roadType;
    if (value != null) {
      result
        ..add('roadType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.labelRoadType;
    if (value != null) {
      result
        ..add('labelRoadType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.commune;
    if (value != null) {
      result
        ..add('commune')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cityZipCode;
    if (value != null) {
      result
        ..add('cityZipCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.road;
    if (value != null) {
      result
        ..add('road')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_addressBuilder();

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
        case 'roadNumber':
          result.roadNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'roadType':
          result.roadType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'labelRoadType':
          result.labelRoadType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'commune':
          result.commune = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cityZipCode':
          result.cityZipCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'road':
          result.road = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_resultat_de_recherche_etablissements_de_santeData
    extends Gget_resultat_de_recherche_etablissements_de_santeData {
  @override
  final String G__typename;
  @override
  final Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure
      searchStructure;

  factory _$Gget_resultat_de_recherche_etablissements_de_santeData(
          [void Function(
                  Gget_resultat_de_recherche_etablissements_de_santeDataBuilder)?
              updates]) =>
      (new Gget_resultat_de_recherche_etablissements_de_santeDataBuilder()
            ..update(updates))
          ._build();

  _$Gget_resultat_de_recherche_etablissements_de_santeData._(
      {required this.G__typename, required this.searchStructure})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_resultat_de_recherche_etablissements_de_santeData',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        searchStructure,
        r'Gget_resultat_de_recherche_etablissements_de_santeData',
        'searchStructure');
  }

  @override
  Gget_resultat_de_recherche_etablissements_de_santeData rebuild(
          void Function(
                  Gget_resultat_de_recherche_etablissements_de_santeDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_resultat_de_recherche_etablissements_de_santeDataBuilder toBuilder() =>
      new Gget_resultat_de_recherche_etablissements_de_santeDataBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_resultat_de_recherche_etablissements_de_santeData &&
        G__typename == other.G__typename &&
        searchStructure == other.searchStructure;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, searchStructure.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_resultat_de_recherche_etablissements_de_santeData')
          ..add('G__typename', G__typename)
          ..add('searchStructure', searchStructure))
        .toString();
  }
}

class Gget_resultat_de_recherche_etablissements_de_santeDataBuilder
    implements
        Builder<Gget_resultat_de_recherche_etablissements_de_santeData,
            Gget_resultat_de_recherche_etablissements_de_santeDataBuilder> {
  _$Gget_resultat_de_recherche_etablissements_de_santeData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructureBuilder?
      _searchStructure;
  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructureBuilder
      get searchStructure => _$this._searchStructure ??=
          new Gget_resultat_de_recherche_etablissements_de_santeData_searchStructureBuilder();
  set searchStructure(
          Gget_resultat_de_recherche_etablissements_de_santeData_searchStructureBuilder?
              searchStructure) =>
      _$this._searchStructure = searchStructure;

  Gget_resultat_de_recherche_etablissements_de_santeDataBuilder() {
    Gget_resultat_de_recherche_etablissements_de_santeData._initializeBuilder(
        this);
  }

  Gget_resultat_de_recherche_etablissements_de_santeDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _searchStructure = $v.searchStructure.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_resultat_de_recherche_etablissements_de_santeData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_resultat_de_recherche_etablissements_de_santeData;
  }

  @override
  void update(
      void Function(
              Gget_resultat_de_recherche_etablissements_de_santeDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_resultat_de_recherche_etablissements_de_santeData build() => _build();

  _$Gget_resultat_de_recherche_etablissements_de_santeData _build() {
    _$Gget_resultat_de_recherche_etablissements_de_santeData _$result;
    try {
      _$result = _$v ??
          new _$Gget_resultat_de_recherche_etablissements_de_santeData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_resultat_de_recherche_etablissements_de_santeData',
                  'G__typename'),
              searchStructure: searchStructure.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'searchStructure';
        searchStructure.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_resultat_de_recherche_etablissements_de_santeData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure
    extends Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure {
  @override
  final String G__typename;
  @override
  final BuiltList<
          Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures>
      searchStructures;

  factory _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure(
          [void Function(
                  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructureBuilder)?
              updates]) =>
      (new Gget_resultat_de_recherche_etablissements_de_santeData_searchStructureBuilder()
            ..update(updates))
          ._build();

  _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure._(
      {required this.G__typename, required this.searchStructures})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        searchStructures,
        r'Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure',
        'searchStructures');
  }

  @override
  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure rebuild(
          void Function(
                  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructureBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructureBuilder
      toBuilder() =>
          new Gget_resultat_de_recherche_etablissements_de_santeData_searchStructureBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure &&
        G__typename == other.G__typename &&
        searchStructures == other.searchStructures;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, searchStructures.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure')
          ..add('G__typename', G__typename)
          ..add('searchStructures', searchStructures))
        .toString();
  }
}

class Gget_resultat_de_recherche_etablissements_de_santeData_searchStructureBuilder
    implements
        Builder<
            Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure,
            Gget_resultat_de_recherche_etablissements_de_santeData_searchStructureBuilder> {
  _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<
          Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures>?
      _searchStructures;
  ListBuilder<
          Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures>
      get searchStructures => _$this._searchStructures ??= new ListBuilder<
          Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures>();
  set searchStructures(
          ListBuilder<
                  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures>?
              searchStructures) =>
      _$this._searchStructures = searchStructures;

  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructureBuilder() {
    Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure
        ._initializeBuilder(this);
  }

  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructureBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _searchStructures = $v.searchStructures.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure;
  }

  @override
  void update(
      void Function(
              Gget_resultat_de_recherche_etablissements_de_santeData_searchStructureBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure
      build() => _build();

  _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure
      _build() {
    _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure',
                  'G__typename'),
              searchStructures: searchStructures.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'searchStructures';
        searchStructures.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures
    extends Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures {
  @override
  final String G__typename;
  @override
  final String? idFineg;
  @override
  final String? name;
  @override
  final String? alias;
  @override
  final bool active;
  @override
  final String? mail;
  @override
  final Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address?
      address;
  @override
  final String? activity;

  factory _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures(
          [void Function(
                  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructuresBuilder)?
              updates]) =>
      (new Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructuresBuilder()
            ..update(updates))
          ._build();

  _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures._(
      {required this.G__typename,
      this.idFineg,
      this.name,
      this.alias,
      required this.active,
      this.mail,
      this.address,
      this.activity})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        active,
        r'Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures',
        'active');
  }

  @override
  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures
      rebuild(
              void Function(
                      Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructuresBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructuresBuilder
      toBuilder() =>
          new Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructuresBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures &&
        G__typename == other.G__typename &&
        idFineg == other.idFineg &&
        name == other.name &&
        alias == other.alias &&
        active == other.active &&
        mail == other.mail &&
        address == other.address &&
        activity == other.activity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, idFineg.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, alias.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, mail.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, activity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures')
          ..add('G__typename', G__typename)
          ..add('idFineg', idFineg)
          ..add('name', name)
          ..add('alias', alias)
          ..add('active', active)
          ..add('mail', mail)
          ..add('address', address)
          ..add('activity', activity))
        .toString();
  }
}

class Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructuresBuilder
    implements
        Builder<
            Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures,
            Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructuresBuilder> {
  _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _idFineg;
  String? get idFineg => _$this._idFineg;
  set idFineg(String? idFineg) => _$this._idFineg = idFineg;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _alias;
  String? get alias => _$this._alias;
  set alias(String? alias) => _$this._alias = alias;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  String? _mail;
  String? get mail => _$this._mail;
  set mail(String? mail) => _$this._mail = mail;

  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_addressBuilder?
      _address;
  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_addressBuilder
      get address => _$this._address ??=
          new Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_addressBuilder();
  set address(
          Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_addressBuilder?
              address) =>
      _$this._address = address;

  String? _activity;
  String? get activity => _$this._activity;
  set activity(String? activity) => _$this._activity = activity;

  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructuresBuilder() {
    Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures
        ._initializeBuilder(this);
  }

  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructuresBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _idFineg = $v.idFineg;
      _name = $v.name;
      _alias = $v.alias;
      _active = $v.active;
      _mail = $v.mail;
      _address = $v.address?.toBuilder();
      _activity = $v.activity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures;
  }

  @override
  void update(
      void Function(
              Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructuresBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures
      build() => _build();

  _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures
      _build() {
    _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures',
                  'G__typename'),
              idFineg: idFineg,
              name: name,
              alias: alias,
              active: BuiltValueNullFieldError.checkNotNull(
                  active,
                  r'Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures',
                  'active'),
              mail: mail,
              address: _address?.build(),
              activity: activity);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address
    extends Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address {
  @override
  final String G__typename;
  @override
  final String? roadNumber;
  @override
  final String? roadType;
  @override
  final String? labelRoadType;
  @override
  final String? commune;
  @override
  final String? cityZipCode;
  @override
  final String? road;

  factory _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address(
          [void Function(
                  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_addressBuilder)?
              updates]) =>
      (new Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_addressBuilder()
            ..update(updates))
          ._build();

  _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address._(
      {required this.G__typename,
      this.roadNumber,
      this.roadType,
      this.labelRoadType,
      this.commune,
      this.cityZipCode,
      this.road})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address',
        'G__typename');
  }

  @override
  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address
      rebuild(
              void Function(
                      Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_addressBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_addressBuilder
      toBuilder() =>
          new Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_addressBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address &&
        G__typename == other.G__typename &&
        roadNumber == other.roadNumber &&
        roadType == other.roadType &&
        labelRoadType == other.labelRoadType &&
        commune == other.commune &&
        cityZipCode == other.cityZipCode &&
        road == other.road;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, roadNumber.hashCode);
    _$hash = $jc(_$hash, roadType.hashCode);
    _$hash = $jc(_$hash, labelRoadType.hashCode);
    _$hash = $jc(_$hash, commune.hashCode);
    _$hash = $jc(_$hash, cityZipCode.hashCode);
    _$hash = $jc(_$hash, road.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address')
          ..add('G__typename', G__typename)
          ..add('roadNumber', roadNumber)
          ..add('roadType', roadType)
          ..add('labelRoadType', labelRoadType)
          ..add('commune', commune)
          ..add('cityZipCode', cityZipCode)
          ..add('road', road))
        .toString();
  }
}

class Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_addressBuilder
    implements
        Builder<
            Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address,
            Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_addressBuilder> {
  _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _roadNumber;
  String? get roadNumber => _$this._roadNumber;
  set roadNumber(String? roadNumber) => _$this._roadNumber = roadNumber;

  String? _roadType;
  String? get roadType => _$this._roadType;
  set roadType(String? roadType) => _$this._roadType = roadType;

  String? _labelRoadType;
  String? get labelRoadType => _$this._labelRoadType;
  set labelRoadType(String? labelRoadType) =>
      _$this._labelRoadType = labelRoadType;

  String? _commune;
  String? get commune => _$this._commune;
  set commune(String? commune) => _$this._commune = commune;

  String? _cityZipCode;
  String? get cityZipCode => _$this._cityZipCode;
  set cityZipCode(String? cityZipCode) => _$this._cityZipCode = cityZipCode;

  String? _road;
  String? get road => _$this._road;
  set road(String? road) => _$this._road = road;

  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_addressBuilder() {
    Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address
        ._initializeBuilder(this);
  }

  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_addressBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _roadNumber = $v.roadNumber;
      _roadType = $v.roadType;
      _labelRoadType = $v.labelRoadType;
      _commune = $v.commune;
      _cityZipCode = $v.cityZipCode;
      _road = $v.road;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address;
  }

  @override
  void update(
      void Function(
              Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_addressBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address
      build() => _build();

  _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address
      _build() {
    final _$result = _$v ??
        new _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address',
                'G__typename'),
            roadNumber: roadNumber,
            roadType: roadType,
            labelRoadType: labelRoadType,
            commune: commune,
            cityZipCode: cityZipCode,
            road: road);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
