// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ps_get_resultat_de_recherche_ps.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_resultat_de_recherche_professionnels_de_santeVars>
    _$ggetResultatDeRechercheProfessionnelsDeSanteVarsSerializer =
    new _$Gget_resultat_de_recherche_professionnels_de_santeVarsSerializer();

class _$Gget_resultat_de_recherche_professionnels_de_santeVarsSerializer
    implements
        StructuredSerializer<
            Gget_resultat_de_recherche_professionnels_de_santeVars> {
  @override
  final Iterable<Type> types = const [
    Gget_resultat_de_recherche_professionnels_de_santeVars,
    _$Gget_resultat_de_recherche_professionnels_de_santeVars
  ];
  @override
  final String wireName =
      'Gget_resultat_de_recherche_professionnels_de_santeVars';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_resultat_de_recherche_professionnels_de_santeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.cityCode;
    if (value != null) {
      result
        ..add('cityCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.departmentCode;
    if (value != null) {
      result
        ..add('departmentCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.zipCode;
    if (value != null) {
      result
        ..add('zipCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.professionCode;
    if (value != null) {
      result
        ..add('professionCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.experticeCode;
    if (value != null) {
      result
        ..add('experticeCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_resultat_de_recherche_professionnels_de_santeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_resultat_de_recherche_professionnels_de_santeVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'cityCode':
          result.cityCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'departmentCode':
          result.departmentCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'zipCode':
          result.zipCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'professionCode':
          result.professionCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'experticeCode':
          result.experticeCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_resultat_de_recherche_professionnels_de_santeVars
    extends Gget_resultat_de_recherche_professionnels_de_santeVars {
  @override
  final String name;
  @override
  final String firstName;
  @override
  final String? cityCode;
  @override
  final String? departmentCode;
  @override
  final String? zipCode;
  @override
  final String? professionCode;
  @override
  final String? experticeCode;

  factory _$Gget_resultat_de_recherche_professionnels_de_santeVars(
          [void Function(
                  Gget_resultat_de_recherche_professionnels_de_santeVarsBuilder)?
              updates]) =>
      (new Gget_resultat_de_recherche_professionnels_de_santeVarsBuilder()
            ..update(updates))
          ._build();

  _$Gget_resultat_de_recherche_professionnels_de_santeVars._(
      {required this.name,
      required this.firstName,
      this.cityCode,
      this.departmentCode,
      this.zipCode,
      this.professionCode,
      this.experticeCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name,
        r'Gget_resultat_de_recherche_professionnels_de_santeVars', 'name');
    BuiltValueNullFieldError.checkNotNull(firstName,
        r'Gget_resultat_de_recherche_professionnels_de_santeVars', 'firstName');
  }

  @override
  Gget_resultat_de_recherche_professionnels_de_santeVars rebuild(
          void Function(
                  Gget_resultat_de_recherche_professionnels_de_santeVarsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_resultat_de_recherche_professionnels_de_santeVarsBuilder toBuilder() =>
      new Gget_resultat_de_recherche_professionnels_de_santeVarsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_resultat_de_recherche_professionnels_de_santeVars &&
        name == other.name &&
        firstName == other.firstName &&
        cityCode == other.cityCode &&
        departmentCode == other.departmentCode &&
        zipCode == other.zipCode &&
        professionCode == other.professionCode &&
        experticeCode == other.experticeCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, cityCode.hashCode);
    _$hash = $jc(_$hash, departmentCode.hashCode);
    _$hash = $jc(_$hash, zipCode.hashCode);
    _$hash = $jc(_$hash, professionCode.hashCode);
    _$hash = $jc(_$hash, experticeCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_resultat_de_recherche_professionnels_de_santeVars')
          ..add('name', name)
          ..add('firstName', firstName)
          ..add('cityCode', cityCode)
          ..add('departmentCode', departmentCode)
          ..add('zipCode', zipCode)
          ..add('professionCode', professionCode)
          ..add('experticeCode', experticeCode))
        .toString();
  }
}

class Gget_resultat_de_recherche_professionnels_de_santeVarsBuilder
    implements
        Builder<Gget_resultat_de_recherche_professionnels_de_santeVars,
            Gget_resultat_de_recherche_professionnels_de_santeVarsBuilder> {
  _$Gget_resultat_de_recherche_professionnels_de_santeVars? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _cityCode;
  String? get cityCode => _$this._cityCode;
  set cityCode(String? cityCode) => _$this._cityCode = cityCode;

  String? _departmentCode;
  String? get departmentCode => _$this._departmentCode;
  set departmentCode(String? departmentCode) =>
      _$this._departmentCode = departmentCode;

  String? _zipCode;
  String? get zipCode => _$this._zipCode;
  set zipCode(String? zipCode) => _$this._zipCode = zipCode;

  String? _professionCode;
  String? get professionCode => _$this._professionCode;
  set professionCode(String? professionCode) =>
      _$this._professionCode = professionCode;

  String? _experticeCode;
  String? get experticeCode => _$this._experticeCode;
  set experticeCode(String? experticeCode) =>
      _$this._experticeCode = experticeCode;

  Gget_resultat_de_recherche_professionnels_de_santeVarsBuilder();

  Gget_resultat_de_recherche_professionnels_de_santeVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _firstName = $v.firstName;
      _cityCode = $v.cityCode;
      _departmentCode = $v.departmentCode;
      _zipCode = $v.zipCode;
      _professionCode = $v.professionCode;
      _experticeCode = $v.experticeCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_resultat_de_recherche_professionnels_de_santeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_resultat_de_recherche_professionnels_de_santeVars;
  }

  @override
  void update(
      void Function(
              Gget_resultat_de_recherche_professionnels_de_santeVarsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_resultat_de_recherche_professionnels_de_santeVars build() => _build();

  _$Gget_resultat_de_recherche_professionnels_de_santeVars _build() {
    final _$result = _$v ??
        new _$Gget_resultat_de_recherche_professionnels_de_santeVars._(
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'Gget_resultat_de_recherche_professionnels_de_santeVars',
                'name'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName,
                r'Gget_resultat_de_recherche_professionnels_de_santeVars',
                'firstName'),
            cityCode: cityCode,
            departmentCode: departmentCode,
            zipCode: zipCode,
            professionCode: professionCode,
            experticeCode: experticeCode);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
