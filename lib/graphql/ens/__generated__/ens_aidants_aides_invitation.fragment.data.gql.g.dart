// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_aidants_aides_invitation.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GinvitationData> _$ginvitationDataSerializer =
    new _$GinvitationDataSerializer();
Serializer<GinvitationData_delegate> _$ginvitationDataDelegateSerializer =
    new _$GinvitationData_delegateSerializer();

class _$GinvitationDataSerializer
    implements StructuredSerializer<GinvitationData> {
  @override
  final Iterable<Type> types = const [GinvitationData, _$GinvitationData];
  @override
  final String wireName = 'GinvitationData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GinvitationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'delegate',
      serializers.serialize(object.delegate,
          specifiedType: const FullType(GinvitationData_delegate)),
      'creationDate',
      serializers.serialize(object.creationDate,
          specifiedType: const FullType(String)),
      'expirationDate',
      serializers.serialize(object.expirationDate,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GinvitationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GinvitationDataBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'delegate':
          result.delegate.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GinvitationData_delegate))!
              as GinvitationData_delegate);
          break;
        case 'creationDate':
          result.creationDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'expirationDate':
          result.expirationDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GinvitationData_delegateSerializer
    implements StructuredSerializer<GinvitationData_delegate> {
  @override
  final Iterable<Type> types = const [
    GinvitationData_delegate,
    _$GinvitationData_delegate
  ];
  @override
  final String wireName = 'GinvitationData_delegate';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GinvitationData_delegate object,
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
          specifiedType: const FullType(_i2.GGender)),
    ];

    return result;
  }

  @override
  GinvitationData_delegate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GinvitationData_delegateBuilder();

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
              specifiedType: const FullType(_i2.GGender))! as _i2.GGender;
          break;
      }
    }

    return result.build();
  }
}

class _$GinvitationData extends GinvitationData {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final GinvitationData_delegate delegate;
  @override
  final String creationDate;
  @override
  final String expirationDate;

  factory _$GinvitationData([void Function(GinvitationDataBuilder)? updates]) =>
      (new GinvitationDataBuilder()..update(updates))._build();

  _$GinvitationData._(
      {required this.G__typename,
      required this.id,
      required this.delegate,
      required this.creationDate,
      required this.expirationDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GinvitationData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GinvitationData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        delegate, r'GinvitationData', 'delegate');
    BuiltValueNullFieldError.checkNotNull(
        creationDate, r'GinvitationData', 'creationDate');
    BuiltValueNullFieldError.checkNotNull(
        expirationDate, r'GinvitationData', 'expirationDate');
  }

  @override
  GinvitationData rebuild(void Function(GinvitationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GinvitationDataBuilder toBuilder() =>
      new GinvitationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GinvitationData &&
        G__typename == other.G__typename &&
        id == other.id &&
        delegate == other.delegate &&
        creationDate == other.creationDate &&
        expirationDate == other.expirationDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, delegate.hashCode);
    _$hash = $jc(_$hash, creationDate.hashCode);
    _$hash = $jc(_$hash, expirationDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GinvitationData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('delegate', delegate)
          ..add('creationDate', creationDate)
          ..add('expirationDate', expirationDate))
        .toString();
  }
}

class GinvitationDataBuilder
    implements Builder<GinvitationData, GinvitationDataBuilder> {
  _$GinvitationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GinvitationData_delegateBuilder? _delegate;
  GinvitationData_delegateBuilder get delegate =>
      _$this._delegate ??= new GinvitationData_delegateBuilder();
  set delegate(GinvitationData_delegateBuilder? delegate) =>
      _$this._delegate = delegate;

  String? _creationDate;
  String? get creationDate => _$this._creationDate;
  set creationDate(String? creationDate) => _$this._creationDate = creationDate;

  String? _expirationDate;
  String? get expirationDate => _$this._expirationDate;
  set expirationDate(String? expirationDate) =>
      _$this._expirationDate = expirationDate;

  GinvitationDataBuilder() {
    GinvitationData._initializeBuilder(this);
  }

  GinvitationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _delegate = $v.delegate.toBuilder();
      _creationDate = $v.creationDate;
      _expirationDate = $v.expirationDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GinvitationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GinvitationData;
  }

  @override
  void update(void Function(GinvitationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GinvitationData build() => _build();

  _$GinvitationData _build() {
    _$GinvitationData _$result;
    try {
      _$result = _$v ??
          new _$GinvitationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GinvitationData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GinvitationData', 'id'),
              delegate: delegate.build(),
              creationDate: BuiltValueNullFieldError.checkNotNull(
                  creationDate, r'GinvitationData', 'creationDate'),
              expirationDate: BuiltValueNullFieldError.checkNotNull(
                  expirationDate, r'GinvitationData', 'expirationDate'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'delegate';
        delegate.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GinvitationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GinvitationData_delegate extends GinvitationData_delegate {
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
  final _i2.GGender gender;

  factory _$GinvitationData_delegate(
          [void Function(GinvitationData_delegateBuilder)? updates]) =>
      (new GinvitationData_delegateBuilder()..update(updates))._build();

  _$GinvitationData_delegate._(
      {required this.G__typename,
      required this.idp,
      required this.givenNames,
      required this.familyName,
      required this.birthDate,
      required this.gender})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GinvitationData_delegate', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        idp, r'GinvitationData_delegate', 'idp');
    BuiltValueNullFieldError.checkNotNull(
        givenNames, r'GinvitationData_delegate', 'givenNames');
    BuiltValueNullFieldError.checkNotNull(
        familyName, r'GinvitationData_delegate', 'familyName');
    BuiltValueNullFieldError.checkNotNull(
        birthDate, r'GinvitationData_delegate', 'birthDate');
    BuiltValueNullFieldError.checkNotNull(
        gender, r'GinvitationData_delegate', 'gender');
  }

  @override
  GinvitationData_delegate rebuild(
          void Function(GinvitationData_delegateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GinvitationData_delegateBuilder toBuilder() =>
      new GinvitationData_delegateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GinvitationData_delegate &&
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
    return (newBuiltValueToStringHelper(r'GinvitationData_delegate')
          ..add('G__typename', G__typename)
          ..add('idp', idp)
          ..add('givenNames', givenNames)
          ..add('familyName', familyName)
          ..add('birthDate', birthDate)
          ..add('gender', gender))
        .toString();
  }
}

class GinvitationData_delegateBuilder
    implements
        Builder<GinvitationData_delegate, GinvitationData_delegateBuilder> {
  _$GinvitationData_delegate? _$v;

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

  _i2.GGender? _gender;
  _i2.GGender? get gender => _$this._gender;
  set gender(_i2.GGender? gender) => _$this._gender = gender;

  GinvitationData_delegateBuilder() {
    GinvitationData_delegate._initializeBuilder(this);
  }

  GinvitationData_delegateBuilder get _$this {
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
  void replace(GinvitationData_delegate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GinvitationData_delegate;
  }

  @override
  void update(void Function(GinvitationData_delegateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GinvitationData_delegate build() => _build();

  _$GinvitationData_delegate _build() {
    final _$result = _$v ??
        new _$GinvitationData_delegate._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GinvitationData_delegate', 'G__typename'),
            idp: BuiltValueNullFieldError.checkNotNull(
                idp, r'GinvitationData_delegate', 'idp'),
            givenNames: BuiltValueNullFieldError.checkNotNull(
                givenNames, r'GinvitationData_delegate', 'givenNames'),
            familyName: BuiltValueNullFieldError.checkNotNull(
                familyName, r'GinvitationData_delegate', 'familyName'),
            birthDate: BuiltValueNullFieldError.checkNotNull(
                birthDate, r'GinvitationData_delegate', 'birthDate'),
            gender: BuiltValueNullFieldError.checkNotNull(
                gender, r'GinvitationData_delegate', 'gender'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
