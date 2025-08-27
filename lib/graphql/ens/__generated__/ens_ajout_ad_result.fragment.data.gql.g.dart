// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ajout_ad_result.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GactivationProfilResultData>
    _$gactivationProfilResultDataSerializer =
    new _$GactivationProfilResultDataSerializer();

class _$GactivationProfilResultDataSerializer
    implements StructuredSerializer<GactivationProfilResultData> {
  @override
  final Iterable<Type> types = const [
    GactivationProfilResultData,
    _$GactivationProfilResultData
  ];
  @override
  final String wireName = 'GactivationProfilResultData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GactivationProfilResultData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'index',
      serializers.serialize(object.index,
          specifiedType: const FullType(double)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.idEns;
    if (value != null) {
      result
        ..add('idEns')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  GactivationProfilResultData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GactivationProfilResultDataBuilder();

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
        case 'index':
          result.index = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'idEns':
          result.idEns = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GactivationProfilResultData extends GactivationProfilResultData {
  @override
  final String G__typename;
  @override
  final double index;
  @override
  final double? idEns;
  @override
  final String firstName;
  @override
  final String lastName;

  factory _$GactivationProfilResultData(
          [void Function(GactivationProfilResultDataBuilder)? updates]) =>
      (new GactivationProfilResultDataBuilder()..update(updates))._build();

  _$GactivationProfilResultData._(
      {required this.G__typename,
      required this.index,
      this.idEns,
      required this.firstName,
      required this.lastName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GactivationProfilResultData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        index, r'GactivationProfilResultData', 'index');
    BuiltValueNullFieldError.checkNotNull(
        firstName, r'GactivationProfilResultData', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, r'GactivationProfilResultData', 'lastName');
  }

  @override
  GactivationProfilResultData rebuild(
          void Function(GactivationProfilResultDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GactivationProfilResultDataBuilder toBuilder() =>
      new GactivationProfilResultDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GactivationProfilResultData &&
        G__typename == other.G__typename &&
        index == other.index &&
        idEns == other.idEns &&
        firstName == other.firstName &&
        lastName == other.lastName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jc(_$hash, idEns.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GactivationProfilResultData')
          ..add('G__typename', G__typename)
          ..add('index', index)
          ..add('idEns', idEns)
          ..add('firstName', firstName)
          ..add('lastName', lastName))
        .toString();
  }
}

class GactivationProfilResultDataBuilder
    implements
        Builder<GactivationProfilResultData,
            GactivationProfilResultDataBuilder> {
  _$GactivationProfilResultData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _index;
  double? get index => _$this._index;
  set index(double? index) => _$this._index = index;

  double? _idEns;
  double? get idEns => _$this._idEns;
  set idEns(double? idEns) => _$this._idEns = idEns;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  GactivationProfilResultDataBuilder() {
    GactivationProfilResultData._initializeBuilder(this);
  }

  GactivationProfilResultDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _index = $v.index;
      _idEns = $v.idEns;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GactivationProfilResultData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GactivationProfilResultData;
  }

  @override
  void update(void Function(GactivationProfilResultDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GactivationProfilResultData build() => _build();

  _$GactivationProfilResultData _build() {
    final _$result = _$v ??
        new _$GactivationProfilResultData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GactivationProfilResultData', 'G__typename'),
            index: BuiltValueNullFieldError.checkNotNull(
                index, r'GactivationProfilResultData', 'index'),
            idEns: idEns,
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'GactivationProfilResultData', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'GactivationProfilResultData', 'lastName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
