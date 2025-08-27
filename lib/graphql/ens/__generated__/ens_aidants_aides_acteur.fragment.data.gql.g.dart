// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_aidants_aides_acteur.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GacteurData> _$gacteurDataSerializer = new _$GacteurDataSerializer();

class _$GacteurDataSerializer implements StructuredSerializer<GacteurData> {
  @override
  final Iterable<Type> types = const [GacteurData, _$GacteurData];
  @override
  final String wireName = 'GacteurData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GacteurData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'idp',
      serializers.serialize(object.idp, specifiedType: const FullType(String)),
      'givenNames',
      serializers.serialize(object.givenNames,
          specifiedType: const FullType(String)),
      'familyName',
      serializers.serialize(object.familyName,
          specifiedType: const FullType(String)),
      'birthDate',
      serializers.serialize(object.birthDate,
          specifiedType: const FullType(String)),
      'gender',
      serializers.serialize(object.gender,
          specifiedType: const FullType(_i1.GGender)),
    ];

    return result;
  }

  @override
  GacteurData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GacteurDataBuilder();

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
        case 'idp':
          result.idp = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'givenNames':
          result.givenNames = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'familyName':
          result.familyName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'birthDate':
          result.birthDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(_i1.GGender))! as _i1.GGender;
          break;
      }
    }

    return result.build();
  }
}

class _$GacteurData extends GacteurData {
  @override
  final String G__typename;
  @override
  final String idp;
  @override
  final String givenNames;
  @override
  final String familyName;
  @override
  final String birthDate;
  @override
  final _i1.GGender gender;

  factory _$GacteurData([void Function(GacteurDataBuilder)? updates]) =>
      (new GacteurDataBuilder()..update(updates))._build();

  _$GacteurData._(
      {required this.G__typename,
      required this.idp,
      required this.givenNames,
      required this.familyName,
      required this.birthDate,
      required this.gender})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GacteurData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(idp, r'GacteurData', 'idp');
    BuiltValueNullFieldError.checkNotNull(
        givenNames, r'GacteurData', 'givenNames');
    BuiltValueNullFieldError.checkNotNull(
        familyName, r'GacteurData', 'familyName');
    BuiltValueNullFieldError.checkNotNull(
        birthDate, r'GacteurData', 'birthDate');
    BuiltValueNullFieldError.checkNotNull(gender, r'GacteurData', 'gender');
  }

  @override
  GacteurData rebuild(void Function(GacteurDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GacteurDataBuilder toBuilder() => new GacteurDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GacteurData &&
        G__typename == other.G__typename &&
        idp == other.idp &&
        givenNames == other.givenNames &&
        familyName == other.familyName &&
        birthDate == other.birthDate &&
        gender == other.gender;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, idp.hashCode);
    _$hash = $jc(_$hash, givenNames.hashCode);
    _$hash = $jc(_$hash, familyName.hashCode);
    _$hash = $jc(_$hash, birthDate.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GacteurData')
          ..add('G__typename', G__typename)
          ..add('idp', idp)
          ..add('givenNames', givenNames)
          ..add('familyName', familyName)
          ..add('birthDate', birthDate)
          ..add('gender', gender))
        .toString();
  }
}

class GacteurDataBuilder implements Builder<GacteurData, GacteurDataBuilder> {
  _$GacteurData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _idp;
  String? get idp => _$this._idp;
  set idp(String? idp) => _$this._idp = idp;

  String? _givenNames;
  String? get givenNames => _$this._givenNames;
  set givenNames(String? givenNames) => _$this._givenNames = givenNames;

  String? _familyName;
  String? get familyName => _$this._familyName;
  set familyName(String? familyName) => _$this._familyName = familyName;

  String? _birthDate;
  String? get birthDate => _$this._birthDate;
  set birthDate(String? birthDate) => _$this._birthDate = birthDate;

  _i1.GGender? _gender;
  _i1.GGender? get gender => _$this._gender;
  set gender(_i1.GGender? gender) => _$this._gender = gender;

  GacteurDataBuilder() {
    GacteurData._initializeBuilder(this);
  }

  GacteurDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _idp = $v.idp;
      _givenNames = $v.givenNames;
      _familyName = $v.familyName;
      _birthDate = $v.birthDate;
      _gender = $v.gender;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GacteurData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GacteurData;
  }

  @override
  void update(void Function(GacteurDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GacteurData build() => _build();

  _$GacteurData _build() {
    final _$result = _$v ??
        new _$GacteurData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GacteurData', 'G__typename'),
            idp: BuiltValueNullFieldError.checkNotNull(
                idp, r'GacteurData', 'idp'),
            givenNames: BuiltValueNullFieldError.checkNotNull(
                givenNames, r'GacteurData', 'givenNames'),
            familyName: BuiltValueNullFieldError.checkNotNull(
                familyName, r'GacteurData', 'familyName'),
            birthDate: BuiltValueNullFieldError.checkNotNull(
                birthDate, r'GacteurData', 'birthDate'),
            gender: BuiltValueNullFieldError.checkNotNull(
                gender, r'GacteurData', 'gender'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
