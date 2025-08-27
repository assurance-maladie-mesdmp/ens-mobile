// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ps_get_resultat_de_recherche_ps.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_resultat_de_recherche_professionnels_de_santeData>
    _$ggetResultatDeRechercheProfessionnelsDeSanteDataSerializer =
    new _$Gget_resultat_de_recherche_professionnels_de_santeDataSerializer();
Serializer<
        Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity>
    _$ggetResultatDeRechercheProfessionnelsDeSanteDataGetProfessionelSanteGroupedCitySerializer =
    new _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCitySerializer();
Serializer<
        Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps>
    _$ggetResultatDeRechercheProfessionnelsDeSanteDataGetProfessionelSanteGroupedCityPsSerializer =
    new _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_psSerializer();
Serializer<
        Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress>
    _$ggetResultatDeRechercheProfessionnelsDeSanteDataGetProfessionelSanteGroupedCityPsStructureAddressSerializer =
    new _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddressSerializer();

class _$Gget_resultat_de_recherche_professionnels_de_santeDataSerializer
    implements
        StructuredSerializer<
            Gget_resultat_de_recherche_professionnels_de_santeData> {
  @override
  final Iterable<Type> types = const [
    Gget_resultat_de_recherche_professionnels_de_santeData,
    _$Gget_resultat_de_recherche_professionnels_de_santeData
  ];
  @override
  final String wireName =
      'Gget_resultat_de_recherche_professionnels_de_santeData';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_resultat_de_recherche_professionnels_de_santeData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getProfessionelSanteGroupedCity',
      serializers.serialize(object.getProfessionelSanteGroupedCity,
          specifiedType: const FullType(
              Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity)),
    ];

    return result;
  }

  @override
  Gget_resultat_de_recherche_professionnels_de_santeData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_resultat_de_recherche_professionnels_de_santeDataBuilder();

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
        case 'getProfessionelSanteGroupedCity':
          result.getProfessionelSanteGroupedCity.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity))!
              as Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCitySerializer
    implements
        StructuredSerializer<
            Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity> {
  @override
  final Iterable<Type> types = const [
    Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity,
    _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity
  ];
  @override
  final String wireName =
      'Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'ps',
      serializers.serialize(object.ps,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps)
          ])),
    ];

    return result;
  }

  @override
  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCityBuilder();

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
        case 'ps':
          result.ps.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_psSerializer
    implements
        StructuredSerializer<
            Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps> {
  @override
  final Iterable<Type> types = const [
    Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps,
    _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps
  ];
  @override
  final String wireName =
      'Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'structureAddress',
      serializers.serialize(object.structureAddress,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress)
          ])),
      'active',
      serializers.serialize(object.active, specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.identifiant;
    if (value != null) {
      result
        ..add('identifiant')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.profession;
    if (value != null) {
      result
        ..add('profession')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.specialities;
    if (value != null) {
      result
        ..add('specialities')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_psBuilder();

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
        case 'identifiant':
          result.identifiant = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'profession':
          result.profession = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'structureAddress':
          result.structureAddress.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress)
              ]))! as BuiltList<Object?>);
          break;
        case 'specialities':
          result.specialities = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddressSerializer
    implements
        StructuredSerializer<
            Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress> {
  @override
  final Iterable<Type> types = const [
    Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress,
    _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress
  ];
  @override
  final String wireName =
      'Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.cityZipCode;
    if (value != null) {
      result
        ..add('cityZipCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.roadNumber;
    if (value != null) {
      result
        ..add('roadNumber')
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
    value = object.road;
    if (value != null) {
      result
        ..add('road')
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
    return result;
  }

  @override
  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddressBuilder();

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
        case 'cityZipCode':
          result.cityZipCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'roadNumber':
          result.roadNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'labelRoadType':
          result.labelRoadType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'road':
          result.road = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'commune':
          result.commune = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_resultat_de_recherche_professionnels_de_santeData
    extends Gget_resultat_de_recherche_professionnels_de_santeData {
  @override
  final String G__typename;
  @override
  final Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity
      getProfessionelSanteGroupedCity;

  factory _$Gget_resultat_de_recherche_professionnels_de_santeData(
          [void Function(
                  Gget_resultat_de_recherche_professionnels_de_santeDataBuilder)?
              updates]) =>
      (new Gget_resultat_de_recherche_professionnels_de_santeDataBuilder()
            ..update(updates))
          ._build();

  _$Gget_resultat_de_recherche_professionnels_de_santeData._(
      {required this.G__typename,
      required this.getProfessionelSanteGroupedCity})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_resultat_de_recherche_professionnels_de_santeData',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getProfessionelSanteGroupedCity,
        r'Gget_resultat_de_recherche_professionnels_de_santeData',
        'getProfessionelSanteGroupedCity');
  }

  @override
  Gget_resultat_de_recherche_professionnels_de_santeData rebuild(
          void Function(
                  Gget_resultat_de_recherche_professionnels_de_santeDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_resultat_de_recherche_professionnels_de_santeDataBuilder toBuilder() =>
      new Gget_resultat_de_recherche_professionnels_de_santeDataBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_resultat_de_recherche_professionnels_de_santeData &&
        G__typename == other.G__typename &&
        getProfessionelSanteGroupedCity ==
            other.getProfessionelSanteGroupedCity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getProfessionelSanteGroupedCity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_resultat_de_recherche_professionnels_de_santeData')
          ..add('G__typename', G__typename)
          ..add('getProfessionelSanteGroupedCity',
              getProfessionelSanteGroupedCity))
        .toString();
  }
}

class Gget_resultat_de_recherche_professionnels_de_santeDataBuilder
    implements
        Builder<Gget_resultat_de_recherche_professionnels_de_santeData,
            Gget_resultat_de_recherche_professionnels_de_santeDataBuilder> {
  _$Gget_resultat_de_recherche_professionnels_de_santeData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCityBuilder?
      _getProfessionelSanteGroupedCity;
  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCityBuilder
      get getProfessionelSanteGroupedCity => _$this
              ._getProfessionelSanteGroupedCity ??=
          new Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCityBuilder();
  set getProfessionelSanteGroupedCity(
          Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCityBuilder?
              getProfessionelSanteGroupedCity) =>
      _$this._getProfessionelSanteGroupedCity = getProfessionelSanteGroupedCity;

  Gget_resultat_de_recherche_professionnels_de_santeDataBuilder() {
    Gget_resultat_de_recherche_professionnels_de_santeData._initializeBuilder(
        this);
  }

  Gget_resultat_de_recherche_professionnels_de_santeDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getProfessionelSanteGroupedCity =
          $v.getProfessionelSanteGroupedCity.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_resultat_de_recherche_professionnels_de_santeData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_resultat_de_recherche_professionnels_de_santeData;
  }

  @override
  void update(
      void Function(
              Gget_resultat_de_recherche_professionnels_de_santeDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_resultat_de_recherche_professionnels_de_santeData build() => _build();

  _$Gget_resultat_de_recherche_professionnels_de_santeData _build() {
    _$Gget_resultat_de_recherche_professionnels_de_santeData _$result;
    try {
      _$result = _$v ??
          new _$Gget_resultat_de_recherche_professionnels_de_santeData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_resultat_de_recherche_professionnels_de_santeData',
                  'G__typename'),
              getProfessionelSanteGroupedCity:
                  getProfessionelSanteGroupedCity.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getProfessionelSanteGroupedCity';
        getProfessionelSanteGroupedCity.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_resultat_de_recherche_professionnels_de_santeData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity
    extends Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity {
  @override
  final String G__typename;
  @override
  final BuiltList<
      Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps> ps;

  factory _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity(
          [void Function(
                  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCityBuilder)?
              updates]) =>
      (new Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCityBuilder()
            ..update(updates))
          ._build();

  _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity._(
      {required this.G__typename, required this.ps})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        ps,
        r'Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity',
        'ps');
  }

  @override
  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity
      rebuild(
              void Function(
                      Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCityBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCityBuilder
      toBuilder() =>
          new Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCityBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity &&
        G__typename == other.G__typename &&
        ps == other.ps;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, ps.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity')
          ..add('G__typename', G__typename)
          ..add('ps', ps))
        .toString();
  }
}

class Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCityBuilder
    implements
        Builder<
            Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity,
            Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCityBuilder> {
  _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<
          Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps>?
      _ps;
  ListBuilder<
          Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps>
      get ps => _$this._ps ??= new ListBuilder<
          Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps>();
  set ps(
          ListBuilder<
                  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps>?
              ps) =>
      _$this._ps = ps;

  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCityBuilder() {
    Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity
        ._initializeBuilder(this);
  }

  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCityBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _ps = $v.ps.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity;
  }

  @override
  void update(
      void Function(
              Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCityBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity
      build() => _build();

  _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity
      _build() {
    _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity',
                  'G__typename'),
              ps: ps.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ps';
        ps.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps
    extends Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps {
  @override
  final String G__typename;
  @override
  final String? identifiant;
  @override
  final String lastName;
  @override
  final String firstName;
  @override
  final String? profession;
  @override
  final BuiltList<
          Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress>
      structureAddress;
  @override
  final String? specialities;
  @override
  final bool active;

  factory _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps(
          [void Function(
                  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_psBuilder)?
              updates]) =>
      (new Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_psBuilder()
            ..update(updates))
          ._build();

  _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps._(
      {required this.G__typename,
      this.identifiant,
      required this.lastName,
      required this.firstName,
      this.profession,
      required this.structureAddress,
      this.specialities,
      required this.active})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        lastName,
        r'Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps',
        'lastName');
    BuiltValueNullFieldError.checkNotNull(
        firstName,
        r'Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps',
        'firstName');
    BuiltValueNullFieldError.checkNotNull(
        structureAddress,
        r'Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps',
        'structureAddress');
    BuiltValueNullFieldError.checkNotNull(
        active,
        r'Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps',
        'active');
  }

  @override
  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps
      rebuild(
              void Function(
                      Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_psBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_psBuilder
      toBuilder() =>
          new Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_psBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps &&
        G__typename == other.G__typename &&
        identifiant == other.identifiant &&
        lastName == other.lastName &&
        firstName == other.firstName &&
        profession == other.profession &&
        structureAddress == other.structureAddress &&
        specialities == other.specialities &&
        active == other.active;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, identifiant.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, profession.hashCode);
    _$hash = $jc(_$hash, structureAddress.hashCode);
    _$hash = $jc(_$hash, specialities.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps')
          ..add('G__typename', G__typename)
          ..add('identifiant', identifiant)
          ..add('lastName', lastName)
          ..add('firstName', firstName)
          ..add('profession', profession)
          ..add('structureAddress', structureAddress)
          ..add('specialities', specialities)
          ..add('active', active))
        .toString();
  }
}

class Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_psBuilder
    implements
        Builder<
            Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps,
            Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_psBuilder> {
  _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _identifiant;
  String? get identifiant => _$this._identifiant;
  set identifiant(String? identifiant) => _$this._identifiant = identifiant;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _profession;
  String? get profession => _$this._profession;
  set profession(String? profession) => _$this._profession = profession;

  ListBuilder<
          Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress>?
      _structureAddress;
  ListBuilder<
          Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress>
      get structureAddress => _$this._structureAddress ??= new ListBuilder<
          Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress>();
  set structureAddress(
          ListBuilder<
                  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress>?
              structureAddress) =>
      _$this._structureAddress = structureAddress;

  String? _specialities;
  String? get specialities => _$this._specialities;
  set specialities(String? specialities) => _$this._specialities = specialities;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_psBuilder() {
    Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps
        ._initializeBuilder(this);
  }

  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_psBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _identifiant = $v.identifiant;
      _lastName = $v.lastName;
      _firstName = $v.firstName;
      _profession = $v.profession;
      _structureAddress = $v.structureAddress.toBuilder();
      _specialities = $v.specialities;
      _active = $v.active;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps;
  }

  @override
  void update(
      void Function(
              Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_psBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps
      build() => _build();

  _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps
      _build() {
    _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps',
                  'G__typename'),
              identifiant: identifiant,
              lastName: BuiltValueNullFieldError.checkNotNull(
                  lastName,
                  r'Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps',
                  'lastName'),
              firstName: BuiltValueNullFieldError.checkNotNull(
                  firstName,
                  r'Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps',
                  'firstName'),
              profession: profession,
              structureAddress: structureAddress.build(),
              specialities: specialities,
              active: BuiltValueNullFieldError.checkNotNull(
                  active,
                  r'Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps',
                  'active'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'structureAddress';
        structureAddress.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress
    extends Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress {
  @override
  final String G__typename;
  @override
  final String? cityZipCode;
  @override
  final String? roadNumber;
  @override
  final String? labelRoadType;
  @override
  final String? road;
  @override
  final String? commune;

  factory _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress(
          [void Function(
                  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddressBuilder)?
              updates]) =>
      (new Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddressBuilder()
            ..update(updates))
          ._build();

  _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress._(
      {required this.G__typename,
      this.cityZipCode,
      this.roadNumber,
      this.labelRoadType,
      this.road,
      this.commune})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress',
        'G__typename');
  }

  @override
  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress
      rebuild(
              void Function(
                      Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddressBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddressBuilder
      toBuilder() =>
          new Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddressBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress &&
        G__typename == other.G__typename &&
        cityZipCode == other.cityZipCode &&
        roadNumber == other.roadNumber &&
        labelRoadType == other.labelRoadType &&
        road == other.road &&
        commune == other.commune;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, cityZipCode.hashCode);
    _$hash = $jc(_$hash, roadNumber.hashCode);
    _$hash = $jc(_$hash, labelRoadType.hashCode);
    _$hash = $jc(_$hash, road.hashCode);
    _$hash = $jc(_$hash, commune.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress')
          ..add('G__typename', G__typename)
          ..add('cityZipCode', cityZipCode)
          ..add('roadNumber', roadNumber)
          ..add('labelRoadType', labelRoadType)
          ..add('road', road)
          ..add('commune', commune))
        .toString();
  }
}

class Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddressBuilder
    implements
        Builder<
            Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress,
            Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddressBuilder> {
  _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _cityZipCode;
  String? get cityZipCode => _$this._cityZipCode;
  set cityZipCode(String? cityZipCode) => _$this._cityZipCode = cityZipCode;

  String? _roadNumber;
  String? get roadNumber => _$this._roadNumber;
  set roadNumber(String? roadNumber) => _$this._roadNumber = roadNumber;

  String? _labelRoadType;
  String? get labelRoadType => _$this._labelRoadType;
  set labelRoadType(String? labelRoadType) =>
      _$this._labelRoadType = labelRoadType;

  String? _road;
  String? get road => _$this._road;
  set road(String? road) => _$this._road = road;

  String? _commune;
  String? get commune => _$this._commune;
  set commune(String? commune) => _$this._commune = commune;

  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddressBuilder() {
    Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress
        ._initializeBuilder(this);
  }

  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddressBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _cityZipCode = $v.cityZipCode;
      _roadNumber = $v.roadNumber;
      _labelRoadType = $v.labelRoadType;
      _road = $v.road;
      _commune = $v.commune;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress;
  }

  @override
  void update(
      void Function(
              Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddressBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress
      build() => _build();

  _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress
      _build() {
    final _$result = _$v ??
        new _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress',
                'G__typename'),
            cityZipCode: cityZipCode,
            roadNumber: roadNumber,
            labelRoadType: labelRoadType,
            road: road,
            commune: commune);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
