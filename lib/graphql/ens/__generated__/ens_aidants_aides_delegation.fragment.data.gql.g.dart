// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_aidants_aides_delegation.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GdelegationData> _$gdelegationDataSerializer =
    new _$GdelegationDataSerializer();
Serializer<GdelegationData_delegate> _$gdelegationDataDelegateSerializer =
    new _$GdelegationData_delegateSerializer();
Serializer<GdelegationData_delegator> _$gdelegationDataDelegatorSerializer =
    new _$GdelegationData_delegatorSerializer();

class _$GdelegationDataSerializer
    implements StructuredSerializer<GdelegationData> {
  @override
  final Iterable<Type> types = const [GdelegationData, _$GdelegationData];
  @override
  final String wireName = 'GdelegationData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GdelegationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'startDate',
      serializers.serialize(object.startDate,
          specifiedType: const FullType(String)),
      'endDate',
      serializers.serialize(object.endDate,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.delegate;
    if (value != null) {
      result
        ..add('delegate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GdelegationData_delegate)));
    }
    value = object.delegator;
    if (value != null) {
      result
        ..add('delegator')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GdelegationData_delegator)));
    }
    return result;
  }

  @override
  GdelegationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdelegationDataBuilder();

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
                  specifiedType: const FullType(GdelegationData_delegate))!
              as GdelegationData_delegate);
          break;
        case 'delegator':
          result.delegator.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GdelegationData_delegator))!
              as GdelegationData_delegator);
          break;
        case 'startDate':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'endDate':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GdelegationData_delegateSerializer
    implements StructuredSerializer<GdelegationData_delegate> {
  @override
  final Iterable<Type> types = const [
    GdelegationData_delegate,
    _$GdelegationData_delegate
  ];
  @override
  final String wireName = 'GdelegationData_delegate';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GdelegationData_delegate object,
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
  GdelegationData_delegate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdelegationData_delegateBuilder();

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

class _$GdelegationData_delegatorSerializer
    implements StructuredSerializer<GdelegationData_delegator> {
  @override
  final Iterable<Type> types = const [
    GdelegationData_delegator,
    _$GdelegationData_delegator
  ];
  @override
  final String wireName = 'GdelegationData_delegator';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GdelegationData_delegator object,
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
  GdelegationData_delegator deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdelegationData_delegatorBuilder();

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

class _$GdelegationData extends GdelegationData {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final GdelegationData_delegate? delegate;
  @override
  final GdelegationData_delegator? delegator;
  @override
  final String startDate;
  @override
  final String endDate;

  factory _$GdelegationData([void Function(GdelegationDataBuilder)? updates]) =>
      (new GdelegationDataBuilder()..update(updates))._build();

  _$GdelegationData._(
      {required this.G__typename,
      required this.id,
      this.delegate,
      this.delegator,
      required this.startDate,
      required this.endDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GdelegationData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GdelegationData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        startDate, r'GdelegationData', 'startDate');
    BuiltValueNullFieldError.checkNotNull(
        endDate, r'GdelegationData', 'endDate');
  }

  @override
  GdelegationData rebuild(void Function(GdelegationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdelegationDataBuilder toBuilder() =>
      new GdelegationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdelegationData &&
        G__typename == other.G__typename &&
        id == other.id &&
        delegate == other.delegate &&
        delegator == other.delegator &&
        startDate == other.startDate &&
        endDate == other.endDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, delegate.hashCode);
    _$hash = $jc(_$hash, delegator.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GdelegationData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('delegate', delegate)
          ..add('delegator', delegator)
          ..add('startDate', startDate)
          ..add('endDate', endDate))
        .toString();
  }
}

class GdelegationDataBuilder
    implements Builder<GdelegationData, GdelegationDataBuilder> {
  _$GdelegationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GdelegationData_delegateBuilder? _delegate;
  GdelegationData_delegateBuilder get delegate =>
      _$this._delegate ??= new GdelegationData_delegateBuilder();
  set delegate(GdelegationData_delegateBuilder? delegate) =>
      _$this._delegate = delegate;

  GdelegationData_delegatorBuilder? _delegator;
  GdelegationData_delegatorBuilder get delegator =>
      _$this._delegator ??= new GdelegationData_delegatorBuilder();
  set delegator(GdelegationData_delegatorBuilder? delegator) =>
      _$this._delegator = delegator;

  String? _startDate;
  String? get startDate => _$this._startDate;
  set startDate(String? startDate) => _$this._startDate = startDate;

  String? _endDate;
  String? get endDate => _$this._endDate;
  set endDate(String? endDate) => _$this._endDate = endDate;

  GdelegationDataBuilder() {
    GdelegationData._initializeBuilder(this);
  }

  GdelegationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _delegate = $v.delegate?.toBuilder();
      _delegator = $v.delegator?.toBuilder();
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GdelegationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdelegationData;
  }

  @override
  void update(void Function(GdelegationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdelegationData build() => _build();

  _$GdelegationData _build() {
    _$GdelegationData _$result;
    try {
      _$result = _$v ??
          new _$GdelegationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GdelegationData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GdelegationData', 'id'),
              delegate: _delegate?.build(),
              delegator: _delegator?.build(),
              startDate: BuiltValueNullFieldError.checkNotNull(
                  startDate, r'GdelegationData', 'startDate'),
              endDate: BuiltValueNullFieldError.checkNotNull(
                  endDate, r'GdelegationData', 'endDate'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'delegate';
        _delegate?.build();
        _$failedField = 'delegator';
        _delegator?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GdelegationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GdelegationData_delegate extends GdelegationData_delegate {
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

  factory _$GdelegationData_delegate(
          [void Function(GdelegationData_delegateBuilder)? updates]) =>
      (new GdelegationData_delegateBuilder()..update(updates))._build();

  _$GdelegationData_delegate._(
      {required this.G__typename,
      required this.idp,
      required this.givenNames,
      required this.familyName,
      required this.birthDate,
      required this.gender})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GdelegationData_delegate', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        idp, r'GdelegationData_delegate', 'idp');
    BuiltValueNullFieldError.checkNotNull(
        givenNames, r'GdelegationData_delegate', 'givenNames');
    BuiltValueNullFieldError.checkNotNull(
        familyName, r'GdelegationData_delegate', 'familyName');
    BuiltValueNullFieldError.checkNotNull(
        birthDate, r'GdelegationData_delegate', 'birthDate');
    BuiltValueNullFieldError.checkNotNull(
        gender, r'GdelegationData_delegate', 'gender');
  }

  @override
  GdelegationData_delegate rebuild(
          void Function(GdelegationData_delegateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdelegationData_delegateBuilder toBuilder() =>
      new GdelegationData_delegateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdelegationData_delegate &&
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
    return (newBuiltValueToStringHelper(r'GdelegationData_delegate')
          ..add('G__typename', G__typename)
          ..add('idp', idp)
          ..add('givenNames', givenNames)
          ..add('familyName', familyName)
          ..add('birthDate', birthDate)
          ..add('gender', gender))
        .toString();
  }
}

class GdelegationData_delegateBuilder
    implements
        Builder<GdelegationData_delegate, GdelegationData_delegateBuilder> {
  _$GdelegationData_delegate? _$v;

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

  GdelegationData_delegateBuilder() {
    GdelegationData_delegate._initializeBuilder(this);
  }

  GdelegationData_delegateBuilder get _$this {
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
  void replace(GdelegationData_delegate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdelegationData_delegate;
  }

  @override
  void update(void Function(GdelegationData_delegateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdelegationData_delegate build() => _build();

  _$GdelegationData_delegate _build() {
    final _$result = _$v ??
        new _$GdelegationData_delegate._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GdelegationData_delegate', 'G__typename'),
            idp: BuiltValueNullFieldError.checkNotNull(
                idp, r'GdelegationData_delegate', 'idp'),
            givenNames: BuiltValueNullFieldError.checkNotNull(
                givenNames, r'GdelegationData_delegate', 'givenNames'),
            familyName: BuiltValueNullFieldError.checkNotNull(
                familyName, r'GdelegationData_delegate', 'familyName'),
            birthDate: BuiltValueNullFieldError.checkNotNull(
                birthDate, r'GdelegationData_delegate', 'birthDate'),
            gender: BuiltValueNullFieldError.checkNotNull(
                gender, r'GdelegationData_delegate', 'gender'));
    replace(_$result);
    return _$result;
  }
}

class _$GdelegationData_delegator extends GdelegationData_delegator {
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

  factory _$GdelegationData_delegator(
          [void Function(GdelegationData_delegatorBuilder)? updates]) =>
      (new GdelegationData_delegatorBuilder()..update(updates))._build();

  _$GdelegationData_delegator._(
      {required this.G__typename,
      required this.idp,
      required this.givenNames,
      required this.familyName,
      required this.birthDate,
      required this.gender})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GdelegationData_delegator', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        idp, r'GdelegationData_delegator', 'idp');
    BuiltValueNullFieldError.checkNotNull(
        givenNames, r'GdelegationData_delegator', 'givenNames');
    BuiltValueNullFieldError.checkNotNull(
        familyName, r'GdelegationData_delegator', 'familyName');
    BuiltValueNullFieldError.checkNotNull(
        birthDate, r'GdelegationData_delegator', 'birthDate');
    BuiltValueNullFieldError.checkNotNull(
        gender, r'GdelegationData_delegator', 'gender');
  }

  @override
  GdelegationData_delegator rebuild(
          void Function(GdelegationData_delegatorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdelegationData_delegatorBuilder toBuilder() =>
      new GdelegationData_delegatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdelegationData_delegator &&
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
    return (newBuiltValueToStringHelper(r'GdelegationData_delegator')
          ..add('G__typename', G__typename)
          ..add('idp', idp)
          ..add('givenNames', givenNames)
          ..add('familyName', familyName)
          ..add('birthDate', birthDate)
          ..add('gender', gender))
        .toString();
  }
}

class GdelegationData_delegatorBuilder
    implements
        Builder<GdelegationData_delegator, GdelegationData_delegatorBuilder> {
  _$GdelegationData_delegator? _$v;

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

  GdelegationData_delegatorBuilder() {
    GdelegationData_delegator._initializeBuilder(this);
  }

  GdelegationData_delegatorBuilder get _$this {
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
  void replace(GdelegationData_delegator other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdelegationData_delegator;
  }

  @override
  void update(void Function(GdelegationData_delegatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdelegationData_delegator build() => _build();

  _$GdelegationData_delegator _build() {
    final _$result = _$v ??
        new _$GdelegationData_delegator._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GdelegationData_delegator', 'G__typename'),
            idp: BuiltValueNullFieldError.checkNotNull(
                idp, r'GdelegationData_delegator', 'idp'),
            givenNames: BuiltValueNullFieldError.checkNotNull(
                givenNames, r'GdelegationData_delegator', 'givenNames'),
            familyName: BuiltValueNullFieldError.checkNotNull(
                familyName, r'GdelegationData_delegator', 'familyName'),
            birthDate: BuiltValueNullFieldError.checkNotNull(
                birthDate, r'GdelegationData_delegator', 'birthDate'),
            gender: BuiltValueNullFieldError.checkNotNull(
                gender, r'GdelegationData_delegator', 'gender'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
