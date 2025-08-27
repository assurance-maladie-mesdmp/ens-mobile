// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_enrolement_liste_rattachement.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GprofilRattacheData> _$gprofilRattacheDataSerializer =
    new _$GprofilRattacheDataSerializer();

class _$GprofilRattacheDataSerializer
    implements StructuredSerializer<GprofilRattacheData> {
  @override
  final Iterable<Type> types = const [
    GprofilRattacheData,
    _$GprofilRattacheData
  ];
  @override
  final String wireName = 'GprofilRattacheData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GprofilRattacheData object,
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
      'dateOfBirth',
      serializers.serialize(object.dateOfBirth,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.nir;
    if (value != null) {
      result
        ..add('nir')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GprofilRattacheData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GprofilRattacheDataBuilder();

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
        case 'dateOfBirth':
          result.dateOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'nir':
          result.nir = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GprofilRattacheData extends GprofilRattacheData {
  @override
  final String G__typename;
  @override
  final String lastName;
  @override
  final String firstName;
  @override
  final String dateOfBirth;
  @override
  final String? nir;

  factory _$GprofilRattacheData(
          [void Function(GprofilRattacheDataBuilder)? updates]) =>
      (new GprofilRattacheDataBuilder()..update(updates))._build();

  _$GprofilRattacheData._(
      {required this.G__typename,
      required this.lastName,
      required this.firstName,
      required this.dateOfBirth,
      this.nir})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GprofilRattacheData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        lastName, r'GprofilRattacheData', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        firstName, r'GprofilRattacheData', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        dateOfBirth, r'GprofilRattacheData', 'dateOfBirth');
  }

  @override
  GprofilRattacheData rebuild(
          void Function(GprofilRattacheDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GprofilRattacheDataBuilder toBuilder() =>
      new GprofilRattacheDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GprofilRattacheData &&
        G__typename == other.G__typename &&
        lastName == other.lastName &&
        firstName == other.firstName &&
        dateOfBirth == other.dateOfBirth &&
        nir == other.nir;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, nir.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GprofilRattacheData')
          ..add('G__typename', G__typename)
          ..add('lastName', lastName)
          ..add('firstName', firstName)
          ..add('dateOfBirth', dateOfBirth)
          ..add('nir', nir))
        .toString();
  }
}

class GprofilRattacheDataBuilder
    implements Builder<GprofilRattacheData, GprofilRattacheDataBuilder> {
  _$GprofilRattacheData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _dateOfBirth;
  String? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(String? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _nir;
  String? get nir => _$this._nir;
  set nir(String? nir) => _$this._nir = nir;

  GprofilRattacheDataBuilder() {
    GprofilRattacheData._initializeBuilder(this);
  }

  GprofilRattacheDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _lastName = $v.lastName;
      _firstName = $v.firstName;
      _dateOfBirth = $v.dateOfBirth;
      _nir = $v.nir;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GprofilRattacheData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GprofilRattacheData;
  }

  @override
  void update(void Function(GprofilRattacheDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GprofilRattacheData build() => _build();

  _$GprofilRattacheData _build() {
    final _$result = _$v ??
        new _$GprofilRattacheData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GprofilRattacheData', 'G__typename'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'GprofilRattacheData', 'lastName'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'GprofilRattacheData', 'firstName'),
            dateOfBirth: BuiltValueNullFieldError.checkNotNull(
                dateOfBirth, r'GprofilRattacheData', 'dateOfBirth'),
            nir: nir);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
