// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_aidants_aides_get_invitations_from_aides.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_invitations_from_aidesData>
    _$ggetInvitationsFromAidesDataSerializer =
    new _$Gget_invitations_from_aidesDataSerializer();
Serializer<Gget_invitations_from_aidesData_delegationInvitations>
    _$ggetInvitationsFromAidesDataDelegationInvitationsSerializer =
    new _$Gget_invitations_from_aidesData_delegationInvitationsSerializer();
Serializer<Gget_invitations_from_aidesData_delegationInvitations_delegator>
    _$ggetInvitationsFromAidesDataDelegationInvitationsDelegatorSerializer =
    new _$Gget_invitations_from_aidesData_delegationInvitations_delegatorSerializer();

class _$Gget_invitations_from_aidesDataSerializer
    implements StructuredSerializer<Gget_invitations_from_aidesData> {
  @override
  final Iterable<Type> types = const [
    Gget_invitations_from_aidesData,
    _$Gget_invitations_from_aidesData
  ];
  @override
  final String wireName = 'Gget_invitations_from_aidesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_invitations_from_aidesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'delegationInvitations',
      serializers.serialize(object.delegationInvitations,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_invitations_from_aidesData_delegationInvitations)
          ])),
    ];

    return result;
  }

  @override
  Gget_invitations_from_aidesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_invitations_from_aidesDataBuilder();

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
        case 'delegationInvitations':
          result.delegationInvitations.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_invitations_from_aidesData_delegationInvitations)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_invitations_from_aidesData_delegationInvitationsSerializer
    implements
        StructuredSerializer<
            Gget_invitations_from_aidesData_delegationInvitations> {
  @override
  final Iterable<Type> types = const [
    Gget_invitations_from_aidesData_delegationInvitations,
    _$Gget_invitations_from_aidesData_delegationInvitations
  ];
  @override
  final String wireName =
      'Gget_invitations_from_aidesData_delegationInvitations';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_invitations_from_aidesData_delegationInvitations object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'delegator',
      serializers.serialize(object.delegator,
          specifiedType: const FullType(
              Gget_invitations_from_aidesData_delegationInvitations_delegator)),
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
  Gget_invitations_from_aidesData_delegationInvitations deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_invitations_from_aidesData_delegationInvitationsBuilder();

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
        case 'delegator':
          result.delegator.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_invitations_from_aidesData_delegationInvitations_delegator))!
              as Gget_invitations_from_aidesData_delegationInvitations_delegator);
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

class _$Gget_invitations_from_aidesData_delegationInvitations_delegatorSerializer
    implements
        StructuredSerializer<
            Gget_invitations_from_aidesData_delegationInvitations_delegator> {
  @override
  final Iterable<Type> types = const [
    Gget_invitations_from_aidesData_delegationInvitations_delegator,
    _$Gget_invitations_from_aidesData_delegationInvitations_delegator
  ];
  @override
  final String wireName =
      'Gget_invitations_from_aidesData_delegationInvitations_delegator';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_invitations_from_aidesData_delegationInvitations_delegator object,
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
          specifiedType: const FullType(_i3.GGender)),
    ];

    return result;
  }

  @override
  Gget_invitations_from_aidesData_delegationInvitations_delegator deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_invitations_from_aidesData_delegationInvitations_delegatorBuilder();

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
              specifiedType: const FullType(_i3.GGender))! as _i3.GGender;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_invitations_from_aidesData
    extends Gget_invitations_from_aidesData {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_invitations_from_aidesData_delegationInvitations>
      delegationInvitations;

  factory _$Gget_invitations_from_aidesData(
          [void Function(Gget_invitations_from_aidesDataBuilder)? updates]) =>
      (new Gget_invitations_from_aidesDataBuilder()..update(updates))._build();

  _$Gget_invitations_from_aidesData._(
      {required this.G__typename, required this.delegationInvitations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_invitations_from_aidesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(delegationInvitations,
        r'Gget_invitations_from_aidesData', 'delegationInvitations');
  }

  @override
  Gget_invitations_from_aidesData rebuild(
          void Function(Gget_invitations_from_aidesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_invitations_from_aidesDataBuilder toBuilder() =>
      new Gget_invitations_from_aidesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_invitations_from_aidesData &&
        G__typename == other.G__typename &&
        delegationInvitations == other.delegationInvitations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, delegationInvitations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_invitations_from_aidesData')
          ..add('G__typename', G__typename)
          ..add('delegationInvitations', delegationInvitations))
        .toString();
  }
}

class Gget_invitations_from_aidesDataBuilder
    implements
        Builder<Gget_invitations_from_aidesData,
            Gget_invitations_from_aidesDataBuilder> {
  _$Gget_invitations_from_aidesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_invitations_from_aidesData_delegationInvitations>?
      _delegationInvitations;
  ListBuilder<Gget_invitations_from_aidesData_delegationInvitations>
      get delegationInvitations =>
          _$this._delegationInvitations ??= new ListBuilder<
              Gget_invitations_from_aidesData_delegationInvitations>();
  set delegationInvitations(
          ListBuilder<Gget_invitations_from_aidesData_delegationInvitations>?
              delegationInvitations) =>
      _$this._delegationInvitations = delegationInvitations;

  Gget_invitations_from_aidesDataBuilder() {
    Gget_invitations_from_aidesData._initializeBuilder(this);
  }

  Gget_invitations_from_aidesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _delegationInvitations = $v.delegationInvitations.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_invitations_from_aidesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_invitations_from_aidesData;
  }

  @override
  void update(void Function(Gget_invitations_from_aidesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_invitations_from_aidesData build() => _build();

  _$Gget_invitations_from_aidesData _build() {
    _$Gget_invitations_from_aidesData _$result;
    try {
      _$result = _$v ??
          new _$Gget_invitations_from_aidesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_invitations_from_aidesData', 'G__typename'),
              delegationInvitations: delegationInvitations.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'delegationInvitations';
        delegationInvitations.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_invitations_from_aidesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_invitations_from_aidesData_delegationInvitations
    extends Gget_invitations_from_aidesData_delegationInvitations {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final Gget_invitations_from_aidesData_delegationInvitations_delegator
      delegator;
  @override
  final String creationDate;
  @override
  final String expirationDate;

  factory _$Gget_invitations_from_aidesData_delegationInvitations(
          [void Function(
                  Gget_invitations_from_aidesData_delegationInvitationsBuilder)?
              updates]) =>
      (new Gget_invitations_from_aidesData_delegationInvitationsBuilder()
            ..update(updates))
          ._build();

  _$Gget_invitations_from_aidesData_delegationInvitations._(
      {required this.G__typename,
      required this.id,
      required this.delegator,
      required this.creationDate,
      required this.expirationDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_invitations_from_aidesData_delegationInvitations',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gget_invitations_from_aidesData_delegationInvitations', 'id');
    BuiltValueNullFieldError.checkNotNull(delegator,
        r'Gget_invitations_from_aidesData_delegationInvitations', 'delegator');
    BuiltValueNullFieldError.checkNotNull(
        creationDate,
        r'Gget_invitations_from_aidesData_delegationInvitations',
        'creationDate');
    BuiltValueNullFieldError.checkNotNull(
        expirationDate,
        r'Gget_invitations_from_aidesData_delegationInvitations',
        'expirationDate');
  }

  @override
  Gget_invitations_from_aidesData_delegationInvitations rebuild(
          void Function(
                  Gget_invitations_from_aidesData_delegationInvitationsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_invitations_from_aidesData_delegationInvitationsBuilder toBuilder() =>
      new Gget_invitations_from_aidesData_delegationInvitationsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_invitations_from_aidesData_delegationInvitations &&
        G__typename == other.G__typename &&
        id == other.id &&
        delegator == other.delegator &&
        creationDate == other.creationDate &&
        expirationDate == other.expirationDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, delegator.hashCode);
    _$hash = $jc(_$hash, creationDate.hashCode);
    _$hash = $jc(_$hash, expirationDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_invitations_from_aidesData_delegationInvitations')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('delegator', delegator)
          ..add('creationDate', creationDate)
          ..add('expirationDate', expirationDate))
        .toString();
  }
}

class Gget_invitations_from_aidesData_delegationInvitationsBuilder
    implements
        Builder<Gget_invitations_from_aidesData_delegationInvitations,
            Gget_invitations_from_aidesData_delegationInvitationsBuilder> {
  _$Gget_invitations_from_aidesData_delegationInvitations? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  Gget_invitations_from_aidesData_delegationInvitations_delegatorBuilder?
      _delegator;
  Gget_invitations_from_aidesData_delegationInvitations_delegatorBuilder
      get delegator => _$this._delegator ??=
          new Gget_invitations_from_aidesData_delegationInvitations_delegatorBuilder();
  set delegator(
          Gget_invitations_from_aidesData_delegationInvitations_delegatorBuilder?
              delegator) =>
      _$this._delegator = delegator;

  String? _creationDate;
  String? get creationDate => _$this._creationDate;
  set creationDate(String? creationDate) => _$this._creationDate = creationDate;

  String? _expirationDate;
  String? get expirationDate => _$this._expirationDate;
  set expirationDate(String? expirationDate) =>
      _$this._expirationDate = expirationDate;

  Gget_invitations_from_aidesData_delegationInvitationsBuilder() {
    Gget_invitations_from_aidesData_delegationInvitations._initializeBuilder(
        this);
  }

  Gget_invitations_from_aidesData_delegationInvitationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _delegator = $v.delegator.toBuilder();
      _creationDate = $v.creationDate;
      _expirationDate = $v.expirationDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_invitations_from_aidesData_delegationInvitations other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_invitations_from_aidesData_delegationInvitations;
  }

  @override
  void update(
      void Function(
              Gget_invitations_from_aidesData_delegationInvitationsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_invitations_from_aidesData_delegationInvitations build() => _build();

  _$Gget_invitations_from_aidesData_delegationInvitations _build() {
    _$Gget_invitations_from_aidesData_delegationInvitations _$result;
    try {
      _$result = _$v ??
          new _$Gget_invitations_from_aidesData_delegationInvitations._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_invitations_from_aidesData_delegationInvitations',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'Gget_invitations_from_aidesData_delegationInvitations',
                  'id'),
              delegator: delegator.build(),
              creationDate: BuiltValueNullFieldError.checkNotNull(
                  creationDate,
                  r'Gget_invitations_from_aidesData_delegationInvitations',
                  'creationDate'),
              expirationDate: BuiltValueNullFieldError.checkNotNull(
                  expirationDate,
                  r'Gget_invitations_from_aidesData_delegationInvitations',
                  'expirationDate'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'delegator';
        delegator.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_invitations_from_aidesData_delegationInvitations',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_invitations_from_aidesData_delegationInvitations_delegator
    extends Gget_invitations_from_aidesData_delegationInvitations_delegator {
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
  final _i3.GGender gender;

  factory _$Gget_invitations_from_aidesData_delegationInvitations_delegator(
          [void Function(
                  Gget_invitations_from_aidesData_delegationInvitations_delegatorBuilder)?
              updates]) =>
      (new Gget_invitations_from_aidesData_delegationInvitations_delegatorBuilder()
            ..update(updates))
          ._build();

  _$Gget_invitations_from_aidesData_delegationInvitations_delegator._(
      {required this.G__typename,
      required this.idp,
      required this.givenNames,
      required this.familyName,
      required this.birthDate,
      required this.gender})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_invitations_from_aidesData_delegationInvitations_delegator',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        idp,
        r'Gget_invitations_from_aidesData_delegationInvitations_delegator',
        'idp');
    BuiltValueNullFieldError.checkNotNull(
        givenNames,
        r'Gget_invitations_from_aidesData_delegationInvitations_delegator',
        'givenNames');
    BuiltValueNullFieldError.checkNotNull(
        familyName,
        r'Gget_invitations_from_aidesData_delegationInvitations_delegator',
        'familyName');
    BuiltValueNullFieldError.checkNotNull(
        birthDate,
        r'Gget_invitations_from_aidesData_delegationInvitations_delegator',
        'birthDate');
    BuiltValueNullFieldError.checkNotNull(
        gender,
        r'Gget_invitations_from_aidesData_delegationInvitations_delegator',
        'gender');
  }

  @override
  Gget_invitations_from_aidesData_delegationInvitations_delegator rebuild(
          void Function(
                  Gget_invitations_from_aidesData_delegationInvitations_delegatorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_invitations_from_aidesData_delegationInvitations_delegatorBuilder
      toBuilder() =>
          new Gget_invitations_from_aidesData_delegationInvitations_delegatorBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_invitations_from_aidesData_delegationInvitations_delegator &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_invitations_from_aidesData_delegationInvitations_delegator')
          ..add('G__typename', G__typename)
          ..add('idp', idp)
          ..add('givenNames', givenNames)
          ..add('familyName', familyName)
          ..add('birthDate', birthDate)
          ..add('gender', gender))
        .toString();
  }
}

class Gget_invitations_from_aidesData_delegationInvitations_delegatorBuilder
    implements
        Builder<Gget_invitations_from_aidesData_delegationInvitations_delegator,
            Gget_invitations_from_aidesData_delegationInvitations_delegatorBuilder> {
  _$Gget_invitations_from_aidesData_delegationInvitations_delegator? _$v;

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

  _i3.GGender? _gender;
  _i3.GGender? get gender => _$this._gender;
  set gender(_i3.GGender? gender) => _$this._gender = gender;

  Gget_invitations_from_aidesData_delegationInvitations_delegatorBuilder() {
    Gget_invitations_from_aidesData_delegationInvitations_delegator
        ._initializeBuilder(this);
  }

  Gget_invitations_from_aidesData_delegationInvitations_delegatorBuilder
      get _$this {
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
  void replace(
      Gget_invitations_from_aidesData_delegationInvitations_delegator other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_invitations_from_aidesData_delegationInvitations_delegator;
  }

  @override
  void update(
      void Function(
              Gget_invitations_from_aidesData_delegationInvitations_delegatorBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_invitations_from_aidesData_delegationInvitations_delegator build() =>
      _build();

  _$Gget_invitations_from_aidesData_delegationInvitations_delegator _build() {
    final _$result = _$v ??
        new _$Gget_invitations_from_aidesData_delegationInvitations_delegator._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_invitations_from_aidesData_delegationInvitations_delegator',
                'G__typename'),
            idp: BuiltValueNullFieldError.checkNotNull(
                idp, r'Gget_invitations_from_aidesData_delegationInvitations_delegator', 'idp'),
            givenNames: BuiltValueNullFieldError.checkNotNull(
                givenNames,
                r'Gget_invitations_from_aidesData_delegationInvitations_delegator',
                'givenNames'),
            familyName: BuiltValueNullFieldError.checkNotNull(
                familyName,
                r'Gget_invitations_from_aidesData_delegationInvitations_delegator',
                'familyName'),
            birthDate: BuiltValueNullFieldError.checkNotNull(
                birthDate,
                r'Gget_invitations_from_aidesData_delegationInvitations_delegator',
                'birthDate'),
            gender: BuiltValueNullFieldError.checkNotNull(gender, r'Gget_invitations_from_aidesData_delegationInvitations_delegator', 'gender'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
