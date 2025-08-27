// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_groupe_sanguin_get_groupe_sanguin.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_groupe_sanguinData> _$ggetGroupeSanguinDataSerializer =
    new _$Gget_groupe_sanguinDataSerializer();
Serializer<Gget_groupe_sanguinData_fetchBloodGroup>
    _$ggetGroupeSanguinDataFetchBloodGroupSerializer =
    new _$Gget_groupe_sanguinData_fetchBloodGroupSerializer();
Serializer<Gget_groupe_sanguinData_fetchBloodGroup_author>
    _$ggetGroupeSanguinDataFetchBloodGroupAuthorSerializer =
    new _$Gget_groupe_sanguinData_fetchBloodGroup_authorSerializer();

class _$Gget_groupe_sanguinDataSerializer
    implements StructuredSerializer<Gget_groupe_sanguinData> {
  @override
  final Iterable<Type> types = const [
    Gget_groupe_sanguinData,
    _$Gget_groupe_sanguinData
  ];
  @override
  final String wireName = 'Gget_groupe_sanguinData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_groupe_sanguinData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.fetchBloodGroup;
    if (value != null) {
      result
        ..add('fetchBloodGroup')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(Gget_groupe_sanguinData_fetchBloodGroup)));
    }
    return result;
  }

  @override
  Gget_groupe_sanguinData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_groupe_sanguinDataBuilder();

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
        case 'fetchBloodGroup':
          result.fetchBloodGroup.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gget_groupe_sanguinData_fetchBloodGroup))!
              as Gget_groupe_sanguinData_fetchBloodGroup);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_groupe_sanguinData_fetchBloodGroupSerializer
    implements StructuredSerializer<Gget_groupe_sanguinData_fetchBloodGroup> {
  @override
  final Iterable<Type> types = const [
    Gget_groupe_sanguinData_fetchBloodGroup,
    _$Gget_groupe_sanguinData_fetchBloodGroup
  ];
  @override
  final String wireName = 'Gget_groupe_sanguinData_fetchBloodGroup';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_groupe_sanguinData_fetchBloodGroup object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'bloodGroup',
      serializers.serialize(object.bloodGroup,
          specifiedType: const FullType(_i2.GBloodGroupEnum)),
      'author',
      serializers.serialize(object.author,
          specifiedType:
              const FullType(Gget_groupe_sanguinData_fetchBloodGroup_author)),
    ];

    return result;
  }

  @override
  Gget_groupe_sanguinData_fetchBloodGroup deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_groupe_sanguinData_fetchBloodGroupBuilder();

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
        case 'bloodGroup':
          result.bloodGroup = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GBloodGroupEnum))!
              as _i2.GBloodGroupEnum;
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_groupe_sanguinData_fetchBloodGroup_author))!
              as Gget_groupe_sanguinData_fetchBloodGroup_author);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_groupe_sanguinData_fetchBloodGroup_authorSerializer
    implements
        StructuredSerializer<Gget_groupe_sanguinData_fetchBloodGroup_author> {
  @override
  final Iterable<Type> types = const [
    Gget_groupe_sanguinData_fetchBloodGroup_author,
    _$Gget_groupe_sanguinData_fetchBloodGroup_author
  ];
  @override
  final String wireName = 'Gget_groupe_sanguinData_fetchBloodGroup_author';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_groupe_sanguinData_fetchBloodGroup_author object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_groupe_sanguinData_fetchBloodGroup_author deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_groupe_sanguinData_fetchBloodGroup_authorBuilder();

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

class _$Gget_groupe_sanguinData extends Gget_groupe_sanguinData {
  @override
  final String G__typename;
  @override
  final Gget_groupe_sanguinData_fetchBloodGroup? fetchBloodGroup;

  factory _$Gget_groupe_sanguinData(
          [void Function(Gget_groupe_sanguinDataBuilder)? updates]) =>
      (new Gget_groupe_sanguinDataBuilder()..update(updates))._build();

  _$Gget_groupe_sanguinData._({required this.G__typename, this.fetchBloodGroup})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_groupe_sanguinData', 'G__typename');
  }

  @override
  Gget_groupe_sanguinData rebuild(
          void Function(Gget_groupe_sanguinDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_groupe_sanguinDataBuilder toBuilder() =>
      new Gget_groupe_sanguinDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_groupe_sanguinData &&
        G__typename == other.G__typename &&
        fetchBloodGroup == other.fetchBloodGroup;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, fetchBloodGroup.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_groupe_sanguinData')
          ..add('G__typename', G__typename)
          ..add('fetchBloodGroup', fetchBloodGroup))
        .toString();
  }
}

class Gget_groupe_sanguinDataBuilder
    implements
        Builder<Gget_groupe_sanguinData, Gget_groupe_sanguinDataBuilder> {
  _$Gget_groupe_sanguinData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_groupe_sanguinData_fetchBloodGroupBuilder? _fetchBloodGroup;
  Gget_groupe_sanguinData_fetchBloodGroupBuilder get fetchBloodGroup =>
      _$this._fetchBloodGroup ??=
          new Gget_groupe_sanguinData_fetchBloodGroupBuilder();
  set fetchBloodGroup(
          Gget_groupe_sanguinData_fetchBloodGroupBuilder? fetchBloodGroup) =>
      _$this._fetchBloodGroup = fetchBloodGroup;

  Gget_groupe_sanguinDataBuilder() {
    Gget_groupe_sanguinData._initializeBuilder(this);
  }

  Gget_groupe_sanguinDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _fetchBloodGroup = $v.fetchBloodGroup?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_groupe_sanguinData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_groupe_sanguinData;
  }

  @override
  void update(void Function(Gget_groupe_sanguinDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_groupe_sanguinData build() => _build();

  _$Gget_groupe_sanguinData _build() {
    _$Gget_groupe_sanguinData _$result;
    try {
      _$result = _$v ??
          new _$Gget_groupe_sanguinData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_groupe_sanguinData', 'G__typename'),
              fetchBloodGroup: _fetchBloodGroup?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fetchBloodGroup';
        _fetchBloodGroup?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_groupe_sanguinData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_groupe_sanguinData_fetchBloodGroup
    extends Gget_groupe_sanguinData_fetchBloodGroup {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final _i2.GBloodGroupEnum bloodGroup;
  @override
  final Gget_groupe_sanguinData_fetchBloodGroup_author author;

  factory _$Gget_groupe_sanguinData_fetchBloodGroup(
          [void Function(Gget_groupe_sanguinData_fetchBloodGroupBuilder)?
              updates]) =>
      (new Gget_groupe_sanguinData_fetchBloodGroupBuilder()..update(updates))
          ._build();

  _$Gget_groupe_sanguinData_fetchBloodGroup._(
      {required this.G__typename,
      required this.id,
      required this.bloodGroup,
      required this.author})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_groupe_sanguinData_fetchBloodGroup', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gget_groupe_sanguinData_fetchBloodGroup', 'id');
    BuiltValueNullFieldError.checkNotNull(
        bloodGroup, r'Gget_groupe_sanguinData_fetchBloodGroup', 'bloodGroup');
    BuiltValueNullFieldError.checkNotNull(
        author, r'Gget_groupe_sanguinData_fetchBloodGroup', 'author');
  }

  @override
  Gget_groupe_sanguinData_fetchBloodGroup rebuild(
          void Function(Gget_groupe_sanguinData_fetchBloodGroupBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_groupe_sanguinData_fetchBloodGroupBuilder toBuilder() =>
      new Gget_groupe_sanguinData_fetchBloodGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_groupe_sanguinData_fetchBloodGroup &&
        G__typename == other.G__typename &&
        id == other.id &&
        bloodGroup == other.bloodGroup &&
        author == other.author;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, bloodGroup.hashCode);
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_groupe_sanguinData_fetchBloodGroup')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('bloodGroup', bloodGroup)
          ..add('author', author))
        .toString();
  }
}

class Gget_groupe_sanguinData_fetchBloodGroupBuilder
    implements
        Builder<Gget_groupe_sanguinData_fetchBloodGroup,
            Gget_groupe_sanguinData_fetchBloodGroupBuilder> {
  _$Gget_groupe_sanguinData_fetchBloodGroup? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  _i2.GBloodGroupEnum? _bloodGroup;
  _i2.GBloodGroupEnum? get bloodGroup => _$this._bloodGroup;
  set bloodGroup(_i2.GBloodGroupEnum? bloodGroup) =>
      _$this._bloodGroup = bloodGroup;

  Gget_groupe_sanguinData_fetchBloodGroup_authorBuilder? _author;
  Gget_groupe_sanguinData_fetchBloodGroup_authorBuilder get author =>
      _$this._author ??=
          new Gget_groupe_sanguinData_fetchBloodGroup_authorBuilder();
  set author(Gget_groupe_sanguinData_fetchBloodGroup_authorBuilder? author) =>
      _$this._author = author;

  Gget_groupe_sanguinData_fetchBloodGroupBuilder() {
    Gget_groupe_sanguinData_fetchBloodGroup._initializeBuilder(this);
  }

  Gget_groupe_sanguinData_fetchBloodGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _bloodGroup = $v.bloodGroup;
      _author = $v.author.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_groupe_sanguinData_fetchBloodGroup other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_groupe_sanguinData_fetchBloodGroup;
  }

  @override
  void update(
      void Function(Gget_groupe_sanguinData_fetchBloodGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_groupe_sanguinData_fetchBloodGroup build() => _build();

  _$Gget_groupe_sanguinData_fetchBloodGroup _build() {
    _$Gget_groupe_sanguinData_fetchBloodGroup _$result;
    try {
      _$result = _$v ??
          new _$Gget_groupe_sanguinData_fetchBloodGroup._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_groupe_sanguinData_fetchBloodGroup', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gget_groupe_sanguinData_fetchBloodGroup', 'id'),
              bloodGroup: BuiltValueNullFieldError.checkNotNull(bloodGroup,
                  r'Gget_groupe_sanguinData_fetchBloodGroup', 'bloodGroup'),
              author: author.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'author';
        author.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_groupe_sanguinData_fetchBloodGroup',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_groupe_sanguinData_fetchBloodGroup_author
    extends Gget_groupe_sanguinData_fetchBloodGroup_author {
  @override
  final String G__typename;
  @override
  final String firstName;
  @override
  final String lastName;

  factory _$Gget_groupe_sanguinData_fetchBloodGroup_author(
          [void Function(Gget_groupe_sanguinData_fetchBloodGroup_authorBuilder)?
              updates]) =>
      (new Gget_groupe_sanguinData_fetchBloodGroup_authorBuilder()
            ..update(updates))
          ._build();

  _$Gget_groupe_sanguinData_fetchBloodGroup_author._(
      {required this.G__typename,
      required this.firstName,
      required this.lastName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_groupe_sanguinData_fetchBloodGroup_author', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(firstName,
        r'Gget_groupe_sanguinData_fetchBloodGroup_author', 'firstName');
    BuiltValueNullFieldError.checkNotNull(lastName,
        r'Gget_groupe_sanguinData_fetchBloodGroup_author', 'lastName');
  }

  @override
  Gget_groupe_sanguinData_fetchBloodGroup_author rebuild(
          void Function(Gget_groupe_sanguinData_fetchBloodGroup_authorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_groupe_sanguinData_fetchBloodGroup_authorBuilder toBuilder() =>
      new Gget_groupe_sanguinData_fetchBloodGroup_authorBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_groupe_sanguinData_fetchBloodGroup_author &&
        G__typename == other.G__typename &&
        firstName == other.firstName &&
        lastName == other.lastName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_groupe_sanguinData_fetchBloodGroup_author')
          ..add('G__typename', G__typename)
          ..add('firstName', firstName)
          ..add('lastName', lastName))
        .toString();
  }
}

class Gget_groupe_sanguinData_fetchBloodGroup_authorBuilder
    implements
        Builder<Gget_groupe_sanguinData_fetchBloodGroup_author,
            Gget_groupe_sanguinData_fetchBloodGroup_authorBuilder> {
  _$Gget_groupe_sanguinData_fetchBloodGroup_author? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  Gget_groupe_sanguinData_fetchBloodGroup_authorBuilder() {
    Gget_groupe_sanguinData_fetchBloodGroup_author._initializeBuilder(this);
  }

  Gget_groupe_sanguinData_fetchBloodGroup_authorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_groupe_sanguinData_fetchBloodGroup_author other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_groupe_sanguinData_fetchBloodGroup_author;
  }

  @override
  void update(
      void Function(Gget_groupe_sanguinData_fetchBloodGroup_authorBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_groupe_sanguinData_fetchBloodGroup_author build() => _build();

  _$Gget_groupe_sanguinData_fetchBloodGroup_author _build() {
    final _$result = _$v ??
        new _$Gget_groupe_sanguinData_fetchBloodGroup_author._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_groupe_sanguinData_fetchBloodGroup_author',
                'G__typename'),
            firstName: BuiltValueNullFieldError.checkNotNull(firstName,
                r'Gget_groupe_sanguinData_fetchBloodGroup_author', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(lastName,
                r'Gget_groupe_sanguinData_fetchBloodGroup_author', 'lastName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
