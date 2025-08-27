// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_partage_profil_get_partage_profil.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_partage_profilData> _$ggetPartageProfilDataSerializer =
    new _$Gget_partage_profilDataSerializer();
Serializer<Gget_partage_profilData_getLegalRepresentatives>
    _$ggetPartageProfilDataGetLegalRepresentativesSerializer =
    new _$Gget_partage_profilData_getLegalRepresentativesSerializer();
Serializer<Gget_partage_profilData_getLegalRepresentatives_legalRepresentative>
    _$ggetPartageProfilDataGetLegalRepresentativesLegalRepresentativeSerializer =
    new _$Gget_partage_profilData_getLegalRepresentatives_legalRepresentativeSerializer();

class _$Gget_partage_profilDataSerializer
    implements StructuredSerializer<Gget_partage_profilData> {
  @override
  final Iterable<Type> types = const [
    Gget_partage_profilData,
    _$Gget_partage_profilData
  ];
  @override
  final String wireName = 'Gget_partage_profilData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_partage_profilData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getLegalRepresentatives',
      serializers.serialize(object.getLegalRepresentatives,
          specifiedType:
              const FullType(Gget_partage_profilData_getLegalRepresentatives)),
    ];

    return result;
  }

  @override
  Gget_partage_profilData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_partage_profilDataBuilder();

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
        case 'getLegalRepresentatives':
          result.getLegalRepresentatives.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_partage_profilData_getLegalRepresentatives))!
              as Gget_partage_profilData_getLegalRepresentatives);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_partage_profilData_getLegalRepresentativesSerializer
    implements
        StructuredSerializer<Gget_partage_profilData_getLegalRepresentatives> {
  @override
  final Iterable<Type> types = const [
    Gget_partage_profilData_getLegalRepresentatives,
    _$Gget_partage_profilData_getLegalRepresentatives
  ];
  @override
  final String wireName = 'Gget_partage_profilData_getLegalRepresentatives';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_partage_profilData_getLegalRepresentatives object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.legalRepresentative;
    if (value != null) {
      result
        ..add('legalRepresentative')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_partage_profilData_getLegalRepresentatives_legalRepresentative)
            ])));
    }
    return result;
  }

  @override
  Gget_partage_profilData_getLegalRepresentatives deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_partage_profilData_getLegalRepresentativesBuilder();

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
        case 'legalRepresentative':
          result.legalRepresentative.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_partage_profilData_getLegalRepresentatives_legalRepresentative)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_partage_profilData_getLegalRepresentatives_legalRepresentativeSerializer
    implements
        StructuredSerializer<
            Gget_partage_profilData_getLegalRepresentatives_legalRepresentative> {
  @override
  final Iterable<Type> types = const [
    Gget_partage_profilData_getLegalRepresentatives_legalRepresentative,
    _$Gget_partage_profilData_getLegalRepresentatives_legalRepresentative
  ];
  @override
  final String wireName =
      'Gget_partage_profilData_getLegalRepresentatives_legalRepresentative';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_partage_profilData_getLegalRepresentatives_legalRepresentative
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
      'statut',
      serializers.serialize(object.statut,
          specifiedType: const FullType(_i2.GDemandeAccesStatutEnum)),
    ];

    return result;
  }

  @override
  Gget_partage_profilData_getLegalRepresentatives_legalRepresentative
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_partage_profilData_getLegalRepresentatives_legalRepresentativeBuilder();

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
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'statut':
          result.statut = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GDemandeAccesStatutEnum))!
              as _i2.GDemandeAccesStatutEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_partage_profilData extends Gget_partage_profilData {
  @override
  final String G__typename;
  @override
  final Gget_partage_profilData_getLegalRepresentatives getLegalRepresentatives;

  factory _$Gget_partage_profilData(
          [void Function(Gget_partage_profilDataBuilder)? updates]) =>
      (new Gget_partage_profilDataBuilder()..update(updates))._build();

  _$Gget_partage_profilData._(
      {required this.G__typename, required this.getLegalRepresentatives})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_partage_profilData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(getLegalRepresentatives,
        r'Gget_partage_profilData', 'getLegalRepresentatives');
  }

  @override
  Gget_partage_profilData rebuild(
          void Function(Gget_partage_profilDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_partage_profilDataBuilder toBuilder() =>
      new Gget_partage_profilDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_partage_profilData &&
        G__typename == other.G__typename &&
        getLegalRepresentatives == other.getLegalRepresentatives;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getLegalRepresentatives.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_partage_profilData')
          ..add('G__typename', G__typename)
          ..add('getLegalRepresentatives', getLegalRepresentatives))
        .toString();
  }
}

class Gget_partage_profilDataBuilder
    implements
        Builder<Gget_partage_profilData, Gget_partage_profilDataBuilder> {
  _$Gget_partage_profilData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_partage_profilData_getLegalRepresentativesBuilder?
      _getLegalRepresentatives;
  Gget_partage_profilData_getLegalRepresentativesBuilder
      get getLegalRepresentatives => _$this._getLegalRepresentatives ??=
          new Gget_partage_profilData_getLegalRepresentativesBuilder();
  set getLegalRepresentatives(
          Gget_partage_profilData_getLegalRepresentativesBuilder?
              getLegalRepresentatives) =>
      _$this._getLegalRepresentatives = getLegalRepresentatives;

  Gget_partage_profilDataBuilder() {
    Gget_partage_profilData._initializeBuilder(this);
  }

  Gget_partage_profilDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getLegalRepresentatives = $v.getLegalRepresentatives.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_partage_profilData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_partage_profilData;
  }

  @override
  void update(void Function(Gget_partage_profilDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_partage_profilData build() => _build();

  _$Gget_partage_profilData _build() {
    _$Gget_partage_profilData _$result;
    try {
      _$result = _$v ??
          new _$Gget_partage_profilData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_partage_profilData', 'G__typename'),
              getLegalRepresentatives: getLegalRepresentatives.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getLegalRepresentatives';
        getLegalRepresentatives.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_partage_profilData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_partage_profilData_getLegalRepresentatives
    extends Gget_partage_profilData_getLegalRepresentatives {
  @override
  final String G__typename;
  @override
  final BuiltList<
          Gget_partage_profilData_getLegalRepresentatives_legalRepresentative>?
      legalRepresentative;

  factory _$Gget_partage_profilData_getLegalRepresentatives(
          [void Function(
                  Gget_partage_profilData_getLegalRepresentativesBuilder)?
              updates]) =>
      (new Gget_partage_profilData_getLegalRepresentativesBuilder()
            ..update(updates))
          ._build();

  _$Gget_partage_profilData_getLegalRepresentatives._(
      {required this.G__typename, this.legalRepresentative})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_partage_profilData_getLegalRepresentatives', 'G__typename');
  }

  @override
  Gget_partage_profilData_getLegalRepresentatives rebuild(
          void Function(Gget_partage_profilData_getLegalRepresentativesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_partage_profilData_getLegalRepresentativesBuilder toBuilder() =>
      new Gget_partage_profilData_getLegalRepresentativesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_partage_profilData_getLegalRepresentatives &&
        G__typename == other.G__typename &&
        legalRepresentative == other.legalRepresentative;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, legalRepresentative.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_partage_profilData_getLegalRepresentatives')
          ..add('G__typename', G__typename)
          ..add('legalRepresentative', legalRepresentative))
        .toString();
  }
}

class Gget_partage_profilData_getLegalRepresentativesBuilder
    implements
        Builder<Gget_partage_profilData_getLegalRepresentatives,
            Gget_partage_profilData_getLegalRepresentativesBuilder> {
  _$Gget_partage_profilData_getLegalRepresentatives? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<
          Gget_partage_profilData_getLegalRepresentatives_legalRepresentative>?
      _legalRepresentative;
  ListBuilder<
          Gget_partage_profilData_getLegalRepresentatives_legalRepresentative>
      get legalRepresentative => _$this._legalRepresentative ??= new ListBuilder<
          Gget_partage_profilData_getLegalRepresentatives_legalRepresentative>();
  set legalRepresentative(
          ListBuilder<
                  Gget_partage_profilData_getLegalRepresentatives_legalRepresentative>?
              legalRepresentative) =>
      _$this._legalRepresentative = legalRepresentative;

  Gget_partage_profilData_getLegalRepresentativesBuilder() {
    Gget_partage_profilData_getLegalRepresentatives._initializeBuilder(this);
  }

  Gget_partage_profilData_getLegalRepresentativesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _legalRepresentative = $v.legalRepresentative?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_partage_profilData_getLegalRepresentatives other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_partage_profilData_getLegalRepresentatives;
  }

  @override
  void update(
      void Function(Gget_partage_profilData_getLegalRepresentativesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_partage_profilData_getLegalRepresentatives build() => _build();

  _$Gget_partage_profilData_getLegalRepresentatives _build() {
    _$Gget_partage_profilData_getLegalRepresentatives _$result;
    try {
      _$result = _$v ??
          new _$Gget_partage_profilData_getLegalRepresentatives._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_partage_profilData_getLegalRepresentatives',
                  'G__typename'),
              legalRepresentative: _legalRepresentative?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'legalRepresentative';
        _legalRepresentative?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_partage_profilData_getLegalRepresentatives',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_partage_profilData_getLegalRepresentatives_legalRepresentative
    extends Gget_partage_profilData_getLegalRepresentatives_legalRepresentative {
  @override
  final String G__typename;
  @override
  final String lastName;
  @override
  final String firstName;
  @override
  final _i2.GDemandeAccesStatutEnum statut;

  factory _$Gget_partage_profilData_getLegalRepresentatives_legalRepresentative(
          [void Function(
                  Gget_partage_profilData_getLegalRepresentatives_legalRepresentativeBuilder)?
              updates]) =>
      (new Gget_partage_profilData_getLegalRepresentatives_legalRepresentativeBuilder()
            ..update(updates))
          ._build();

  _$Gget_partage_profilData_getLegalRepresentatives_legalRepresentative._(
      {required this.G__typename,
      required this.lastName,
      required this.firstName,
      required this.statut})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_partage_profilData_getLegalRepresentatives_legalRepresentative',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        lastName,
        r'Gget_partage_profilData_getLegalRepresentatives_legalRepresentative',
        'lastName');
    BuiltValueNullFieldError.checkNotNull(
        firstName,
        r'Gget_partage_profilData_getLegalRepresentatives_legalRepresentative',
        'firstName');
    BuiltValueNullFieldError.checkNotNull(
        statut,
        r'Gget_partage_profilData_getLegalRepresentatives_legalRepresentative',
        'statut');
  }

  @override
  Gget_partage_profilData_getLegalRepresentatives_legalRepresentative rebuild(
          void Function(
                  Gget_partage_profilData_getLegalRepresentatives_legalRepresentativeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_partage_profilData_getLegalRepresentatives_legalRepresentativeBuilder
      toBuilder() =>
          new Gget_partage_profilData_getLegalRepresentatives_legalRepresentativeBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_partage_profilData_getLegalRepresentatives_legalRepresentative &&
        G__typename == other.G__typename &&
        lastName == other.lastName &&
        firstName == other.firstName &&
        statut == other.statut;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, statut.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_partage_profilData_getLegalRepresentatives_legalRepresentative')
          ..add('G__typename', G__typename)
          ..add('lastName', lastName)
          ..add('firstName', firstName)
          ..add('statut', statut))
        .toString();
  }
}

class Gget_partage_profilData_getLegalRepresentatives_legalRepresentativeBuilder
    implements
        Builder<
            Gget_partage_profilData_getLegalRepresentatives_legalRepresentative,
            Gget_partage_profilData_getLegalRepresentatives_legalRepresentativeBuilder> {
  _$Gget_partage_profilData_getLegalRepresentatives_legalRepresentative? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  _i2.GDemandeAccesStatutEnum? _statut;
  _i2.GDemandeAccesStatutEnum? get statut => _$this._statut;
  set statut(_i2.GDemandeAccesStatutEnum? statut) => _$this._statut = statut;

  Gget_partage_profilData_getLegalRepresentatives_legalRepresentativeBuilder() {
    Gget_partage_profilData_getLegalRepresentatives_legalRepresentative
        ._initializeBuilder(this);
  }

  Gget_partage_profilData_getLegalRepresentatives_legalRepresentativeBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _lastName = $v.lastName;
      _firstName = $v.firstName;
      _statut = $v.statut;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_partage_profilData_getLegalRepresentatives_legalRepresentative
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_partage_profilData_getLegalRepresentatives_legalRepresentative;
  }

  @override
  void update(
      void Function(
              Gget_partage_profilData_getLegalRepresentatives_legalRepresentativeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_partage_profilData_getLegalRepresentatives_legalRepresentative build() =>
      _build();

  _$Gget_partage_profilData_getLegalRepresentatives_legalRepresentative
      _build() {
    final _$result = _$v ??
        new _$Gget_partage_profilData_getLegalRepresentatives_legalRepresentative._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_partage_profilData_getLegalRepresentatives_legalRepresentative',
                'G__typename'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName,
                r'Gget_partage_profilData_getLegalRepresentatives_legalRepresentative',
                'lastName'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName,
                r'Gget_partage_profilData_getLegalRepresentatives_legalRepresentative',
                'firstName'),
            statut: BuiltValueNullFieldError.checkNotNull(
                statut,
                r'Gget_partage_profilData_getLegalRepresentatives_legalRepresentative',
                'statut'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
