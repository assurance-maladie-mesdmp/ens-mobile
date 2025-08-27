// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_get_ayants_droits.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_ayants_droitsData> _$ggetAyantsDroitsDataSerializer =
    new _$Gget_ayants_droitsDataSerializer();
Serializer<Gget_ayants_droitsData_getAyantsDroits>
    _$ggetAyantsDroitsDataGetAyantsDroitsSerializer =
    new _$Gget_ayants_droitsData_getAyantsDroitsSerializer();
Serializer<Gget_ayants_droitsData_getPendingInvitations>
    _$ggetAyantsDroitsDataGetPendingInvitationsSerializer =
    new _$Gget_ayants_droitsData_getPendingInvitationsSerializer();
Serializer<Gget_ayants_droitsData_getPendingInvitations_pendingInvitations>
    _$ggetAyantsDroitsDataGetPendingInvitationsPendingInvitationsSerializer =
    new _$Gget_ayants_droitsData_getPendingInvitations_pendingInvitationsSerializer();

class _$Gget_ayants_droitsDataSerializer
    implements StructuredSerializer<Gget_ayants_droitsData> {
  @override
  final Iterable<Type> types = const [
    Gget_ayants_droitsData,
    _$Gget_ayants_droitsData
  ];
  @override
  final String wireName = 'Gget_ayants_droitsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_ayants_droitsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getPendingInvitations',
      serializers.serialize(object.getPendingInvitations,
          specifiedType:
              const FullType(Gget_ayants_droitsData_getPendingInvitations)),
    ];
    Object? value;
    value = object.getAyantsDroits;
    if (value != null) {
      result
        ..add('getAyantsDroits')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(Gget_ayants_droitsData_getAyantsDroits)
            ])));
    }
    return result;
  }

  @override
  Gget_ayants_droitsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_ayants_droitsDataBuilder();

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
        case 'getAyantsDroits':
          result.getAyantsDroits.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gget_ayants_droitsData_getAyantsDroits)
              ]))! as BuiltList<Object?>);
          break;
        case 'getPendingInvitations':
          result.getPendingInvitations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_ayants_droitsData_getPendingInvitations))!
              as Gget_ayants_droitsData_getPendingInvitations);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_ayants_droitsData_getAyantsDroitsSerializer
    implements StructuredSerializer<Gget_ayants_droitsData_getAyantsDroits> {
  @override
  final Iterable<Type> types = const [
    Gget_ayants_droitsData_getAyantsDroits,
    _$Gget_ayants_droitsData_getAyantsDroits
  ];
  @override
  final String wireName = 'Gget_ayants_droitsData_getAyantsDroits';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_ayants_droitsData_getAyantsDroits object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'isAide',
      serializers.serialize(object.isAide, specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gget_ayants_droitsData_getAyantsDroits deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_ayants_droitsData_getAyantsDroitsBuilder();

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
        case 'patientId':
          result.patientId = serializers.deserialize(value,
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
        case 'isAide':
          result.isAide = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_ayants_droitsData_getPendingInvitationsSerializer
    implements
        StructuredSerializer<Gget_ayants_droitsData_getPendingInvitations> {
  @override
  final Iterable<Type> types = const [
    Gget_ayants_droitsData_getPendingInvitations,
    _$Gget_ayants_droitsData_getPendingInvitations
  ];
  @override
  final String wireName = 'Gget_ayants_droitsData_getPendingInvitations';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_ayants_droitsData_getPendingInvitations object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.pendingInvitations;
    if (value != null) {
      result
        ..add('pendingInvitations')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_ayants_droitsData_getPendingInvitations_pendingInvitations)
            ])));
    }
    return result;
  }

  @override
  Gget_ayants_droitsData_getPendingInvitations deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_ayants_droitsData_getPendingInvitationsBuilder();

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
        case 'pendingInvitations':
          result.pendingInvitations.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_ayants_droitsData_getPendingInvitations_pendingInvitations)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_ayants_droitsData_getPendingInvitations_pendingInvitationsSerializer
    implements
        StructuredSerializer<
            Gget_ayants_droitsData_getPendingInvitations_pendingInvitations> {
  @override
  final Iterable<Type> types = const [
    Gget_ayants_droitsData_getPendingInvitations_pendingInvitations,
    _$Gget_ayants_droitsData_getPendingInvitations_pendingInvitations
  ];
  @override
  final String wireName =
      'Gget_ayants_droitsData_getPendingInvitations_pendingInvitations';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_ayants_droitsData_getPendingInvitations_pendingInvitations object,
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
          specifiedType: const FullType(_i3.GDemandeAccesStatutEnum)),
      'idEns',
      serializers.serialize(object.idEns,
          specifiedType: const FullType(String)),
      'endDate',
      serializers.serialize(object.endDate,
          specifiedType: const FullType(String)),
      'birthDate',
      serializers.serialize(object.birthDate,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_ayants_droitsData_getPendingInvitations_pendingInvitations deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_ayants_droitsData_getPendingInvitations_pendingInvitationsBuilder();

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
                  specifiedType: const FullType(_i3.GDemandeAccesStatutEnum))!
              as _i3.GDemandeAccesStatutEnum;
          break;
        case 'idEns':
          result.idEns = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'endDate':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'birthDate':
          result.birthDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_ayants_droitsData extends Gget_ayants_droitsData {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_ayants_droitsData_getAyantsDroits>? getAyantsDroits;
  @override
  final Gget_ayants_droitsData_getPendingInvitations getPendingInvitations;

  factory _$Gget_ayants_droitsData(
          [void Function(Gget_ayants_droitsDataBuilder)? updates]) =>
      (new Gget_ayants_droitsDataBuilder()..update(updates))._build();

  _$Gget_ayants_droitsData._(
      {required this.G__typename,
      this.getAyantsDroits,
      required this.getPendingInvitations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_ayants_droitsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(getPendingInvitations,
        r'Gget_ayants_droitsData', 'getPendingInvitations');
  }

  @override
  Gget_ayants_droitsData rebuild(
          void Function(Gget_ayants_droitsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_ayants_droitsDataBuilder toBuilder() =>
      new Gget_ayants_droitsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_ayants_droitsData &&
        G__typename == other.G__typename &&
        getAyantsDroits == other.getAyantsDroits &&
        getPendingInvitations == other.getPendingInvitations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getAyantsDroits.hashCode);
    _$hash = $jc(_$hash, getPendingInvitations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_ayants_droitsData')
          ..add('G__typename', G__typename)
          ..add('getAyantsDroits', getAyantsDroits)
          ..add('getPendingInvitations', getPendingInvitations))
        .toString();
  }
}

class Gget_ayants_droitsDataBuilder
    implements Builder<Gget_ayants_droitsData, Gget_ayants_droitsDataBuilder> {
  _$Gget_ayants_droitsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_ayants_droitsData_getAyantsDroits>? _getAyantsDroits;
  ListBuilder<Gget_ayants_droitsData_getAyantsDroits> get getAyantsDroits =>
      _$this._getAyantsDroits ??=
          new ListBuilder<Gget_ayants_droitsData_getAyantsDroits>();
  set getAyantsDroits(
          ListBuilder<Gget_ayants_droitsData_getAyantsDroits>?
              getAyantsDroits) =>
      _$this._getAyantsDroits = getAyantsDroits;

  Gget_ayants_droitsData_getPendingInvitationsBuilder? _getPendingInvitations;
  Gget_ayants_droitsData_getPendingInvitationsBuilder
      get getPendingInvitations => _$this._getPendingInvitations ??=
          new Gget_ayants_droitsData_getPendingInvitationsBuilder();
  set getPendingInvitations(
          Gget_ayants_droitsData_getPendingInvitationsBuilder?
              getPendingInvitations) =>
      _$this._getPendingInvitations = getPendingInvitations;

  Gget_ayants_droitsDataBuilder() {
    Gget_ayants_droitsData._initializeBuilder(this);
  }

  Gget_ayants_droitsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getAyantsDroits = $v.getAyantsDroits?.toBuilder();
      _getPendingInvitations = $v.getPendingInvitations.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_ayants_droitsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_ayants_droitsData;
  }

  @override
  void update(void Function(Gget_ayants_droitsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_ayants_droitsData build() => _build();

  _$Gget_ayants_droitsData _build() {
    _$Gget_ayants_droitsData _$result;
    try {
      _$result = _$v ??
          new _$Gget_ayants_droitsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_ayants_droitsData', 'G__typename'),
              getAyantsDroits: _getAyantsDroits?.build(),
              getPendingInvitations: getPendingInvitations.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getAyantsDroits';
        _getAyantsDroits?.build();
        _$failedField = 'getPendingInvitations';
        getPendingInvitations.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_ayants_droitsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_ayants_droitsData_getAyantsDroits
    extends Gget_ayants_droitsData_getAyantsDroits {
  @override
  final String G__typename;
  @override
  final String patientId;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final bool isAide;

  factory _$Gget_ayants_droitsData_getAyantsDroits(
          [void Function(Gget_ayants_droitsData_getAyantsDroitsBuilder)?
              updates]) =>
      (new Gget_ayants_droitsData_getAyantsDroitsBuilder()..update(updates))
          ._build();

  _$Gget_ayants_droitsData_getAyantsDroits._(
      {required this.G__typename,
      required this.patientId,
      required this.firstName,
      required this.lastName,
      required this.isAide})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_ayants_droitsData_getAyantsDroits', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_ayants_droitsData_getAyantsDroits', 'patientId');
    BuiltValueNullFieldError.checkNotNull(
        firstName, r'Gget_ayants_droitsData_getAyantsDroits', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, r'Gget_ayants_droitsData_getAyantsDroits', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        isAide, r'Gget_ayants_droitsData_getAyantsDroits', 'isAide');
  }

  @override
  Gget_ayants_droitsData_getAyantsDroits rebuild(
          void Function(Gget_ayants_droitsData_getAyantsDroitsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_ayants_droitsData_getAyantsDroitsBuilder toBuilder() =>
      new Gget_ayants_droitsData_getAyantsDroitsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_ayants_droitsData_getAyantsDroits &&
        G__typename == other.G__typename &&
        patientId == other.patientId &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        isAide == other.isAide;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, isAide.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_ayants_droitsData_getAyantsDroits')
          ..add('G__typename', G__typename)
          ..add('patientId', patientId)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('isAide', isAide))
        .toString();
  }
}

class Gget_ayants_droitsData_getAyantsDroitsBuilder
    implements
        Builder<Gget_ayants_droitsData_getAyantsDroits,
            Gget_ayants_droitsData_getAyantsDroitsBuilder> {
  _$Gget_ayants_droitsData_getAyantsDroits? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  bool? _isAide;
  bool? get isAide => _$this._isAide;
  set isAide(bool? isAide) => _$this._isAide = isAide;

  Gget_ayants_droitsData_getAyantsDroitsBuilder() {
    Gget_ayants_droitsData_getAyantsDroits._initializeBuilder(this);
  }

  Gget_ayants_droitsData_getAyantsDroitsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _patientId = $v.patientId;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _isAide = $v.isAide;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_ayants_droitsData_getAyantsDroits other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_ayants_droitsData_getAyantsDroits;
  }

  @override
  void update(
      void Function(Gget_ayants_droitsData_getAyantsDroitsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_ayants_droitsData_getAyantsDroits build() => _build();

  _$Gget_ayants_droitsData_getAyantsDroits _build() {
    final _$result = _$v ??
        new _$Gget_ayants_droitsData_getAyantsDroits._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gget_ayants_droitsData_getAyantsDroits', 'G__typename'),
            patientId: BuiltValueNullFieldError.checkNotNull(patientId,
                r'Gget_ayants_droitsData_getAyantsDroits', 'patientId'),
            firstName:
                BuiltValueNullFieldError.checkNotNull(firstName,
                    r'Gget_ayants_droitsData_getAyantsDroits', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(lastName,
                r'Gget_ayants_droitsData_getAyantsDroits', 'lastName'),
            isAide: BuiltValueNullFieldError.checkNotNull(
                isAide, r'Gget_ayants_droitsData_getAyantsDroits', 'isAide'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_ayants_droitsData_getPendingInvitations
    extends Gget_ayants_droitsData_getPendingInvitations {
  @override
  final String G__typename;
  @override
  final BuiltList<
          Gget_ayants_droitsData_getPendingInvitations_pendingInvitations>?
      pendingInvitations;

  factory _$Gget_ayants_droitsData_getPendingInvitations(
          [void Function(Gget_ayants_droitsData_getPendingInvitationsBuilder)?
              updates]) =>
      (new Gget_ayants_droitsData_getPendingInvitationsBuilder()
            ..update(updates))
          ._build();

  _$Gget_ayants_droitsData_getPendingInvitations._(
      {required this.G__typename, this.pendingInvitations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_ayants_droitsData_getPendingInvitations', 'G__typename');
  }

  @override
  Gget_ayants_droitsData_getPendingInvitations rebuild(
          void Function(Gget_ayants_droitsData_getPendingInvitationsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_ayants_droitsData_getPendingInvitationsBuilder toBuilder() =>
      new Gget_ayants_droitsData_getPendingInvitationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_ayants_droitsData_getPendingInvitations &&
        G__typename == other.G__typename &&
        pendingInvitations == other.pendingInvitations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pendingInvitations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_ayants_droitsData_getPendingInvitations')
          ..add('G__typename', G__typename)
          ..add('pendingInvitations', pendingInvitations))
        .toString();
  }
}

class Gget_ayants_droitsData_getPendingInvitationsBuilder
    implements
        Builder<Gget_ayants_droitsData_getPendingInvitations,
            Gget_ayants_droitsData_getPendingInvitationsBuilder> {
  _$Gget_ayants_droitsData_getPendingInvitations? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_ayants_droitsData_getPendingInvitations_pendingInvitations>?
      _pendingInvitations;
  ListBuilder<Gget_ayants_droitsData_getPendingInvitations_pendingInvitations>
      get pendingInvitations => _$this._pendingInvitations ??= new ListBuilder<
          Gget_ayants_droitsData_getPendingInvitations_pendingInvitations>();
  set pendingInvitations(
          ListBuilder<
                  Gget_ayants_droitsData_getPendingInvitations_pendingInvitations>?
              pendingInvitations) =>
      _$this._pendingInvitations = pendingInvitations;

  Gget_ayants_droitsData_getPendingInvitationsBuilder() {
    Gget_ayants_droitsData_getPendingInvitations._initializeBuilder(this);
  }

  Gget_ayants_droitsData_getPendingInvitationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pendingInvitations = $v.pendingInvitations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_ayants_droitsData_getPendingInvitations other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_ayants_droitsData_getPendingInvitations;
  }

  @override
  void update(
      void Function(Gget_ayants_droitsData_getPendingInvitationsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_ayants_droitsData_getPendingInvitations build() => _build();

  _$Gget_ayants_droitsData_getPendingInvitations _build() {
    _$Gget_ayants_droitsData_getPendingInvitations _$result;
    try {
      _$result = _$v ??
          new _$Gget_ayants_droitsData_getPendingInvitations._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_ayants_droitsData_getPendingInvitations',
                  'G__typename'),
              pendingInvitations: _pendingInvitations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pendingInvitations';
        _pendingInvitations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_ayants_droitsData_getPendingInvitations',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_ayants_droitsData_getPendingInvitations_pendingInvitations
    extends Gget_ayants_droitsData_getPendingInvitations_pendingInvitations {
  @override
  final String G__typename;
  @override
  final String lastName;
  @override
  final String firstName;
  @override
  final _i3.GDemandeAccesStatutEnum statut;
  @override
  final String idEns;
  @override
  final String endDate;
  @override
  final String birthDate;

  factory _$Gget_ayants_droitsData_getPendingInvitations_pendingInvitations(
          [void Function(
                  Gget_ayants_droitsData_getPendingInvitations_pendingInvitationsBuilder)?
              updates]) =>
      (new Gget_ayants_droitsData_getPendingInvitations_pendingInvitationsBuilder()
            ..update(updates))
          ._build();

  _$Gget_ayants_droitsData_getPendingInvitations_pendingInvitations._(
      {required this.G__typename,
      required this.lastName,
      required this.firstName,
      required this.statut,
      required this.idEns,
      required this.endDate,
      required this.birthDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_ayants_droitsData_getPendingInvitations_pendingInvitations',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        lastName,
        r'Gget_ayants_droitsData_getPendingInvitations_pendingInvitations',
        'lastName');
    BuiltValueNullFieldError.checkNotNull(
        firstName,
        r'Gget_ayants_droitsData_getPendingInvitations_pendingInvitations',
        'firstName');
    BuiltValueNullFieldError.checkNotNull(
        statut,
        r'Gget_ayants_droitsData_getPendingInvitations_pendingInvitations',
        'statut');
    BuiltValueNullFieldError.checkNotNull(
        idEns,
        r'Gget_ayants_droitsData_getPendingInvitations_pendingInvitations',
        'idEns');
    BuiltValueNullFieldError.checkNotNull(
        endDate,
        r'Gget_ayants_droitsData_getPendingInvitations_pendingInvitations',
        'endDate');
    BuiltValueNullFieldError.checkNotNull(
        birthDate,
        r'Gget_ayants_droitsData_getPendingInvitations_pendingInvitations',
        'birthDate');
  }

  @override
  Gget_ayants_droitsData_getPendingInvitations_pendingInvitations rebuild(
          void Function(
                  Gget_ayants_droitsData_getPendingInvitations_pendingInvitationsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_ayants_droitsData_getPendingInvitations_pendingInvitationsBuilder
      toBuilder() =>
          new Gget_ayants_droitsData_getPendingInvitations_pendingInvitationsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_ayants_droitsData_getPendingInvitations_pendingInvitations &&
        G__typename == other.G__typename &&
        lastName == other.lastName &&
        firstName == other.firstName &&
        statut == other.statut &&
        idEns == other.idEns &&
        endDate == other.endDate &&
        birthDate == other.birthDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, statut.hashCode);
    _$hash = $jc(_$hash, idEns.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, birthDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_ayants_droitsData_getPendingInvitations_pendingInvitations')
          ..add('G__typename', G__typename)
          ..add('lastName', lastName)
          ..add('firstName', firstName)
          ..add('statut', statut)
          ..add('idEns', idEns)
          ..add('endDate', endDate)
          ..add('birthDate', birthDate))
        .toString();
  }
}

class Gget_ayants_droitsData_getPendingInvitations_pendingInvitationsBuilder
    implements
        Builder<Gget_ayants_droitsData_getPendingInvitations_pendingInvitations,
            Gget_ayants_droitsData_getPendingInvitations_pendingInvitationsBuilder> {
  _$Gget_ayants_droitsData_getPendingInvitations_pendingInvitations? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  _i3.GDemandeAccesStatutEnum? _statut;
  _i3.GDemandeAccesStatutEnum? get statut => _$this._statut;
  set statut(_i3.GDemandeAccesStatutEnum? statut) => _$this._statut = statut;

  String? _idEns;
  String? get idEns => _$this._idEns;
  set idEns(String? idEns) => _$this._idEns = idEns;

  String? _endDate;
  String? get endDate => _$this._endDate;
  set endDate(String? endDate) => _$this._endDate = endDate;

  String? _birthDate;
  String? get birthDate => _$this._birthDate;
  set birthDate(String? birthDate) => _$this._birthDate = birthDate;

  Gget_ayants_droitsData_getPendingInvitations_pendingInvitationsBuilder() {
    Gget_ayants_droitsData_getPendingInvitations_pendingInvitations
        ._initializeBuilder(this);
  }

  Gget_ayants_droitsData_getPendingInvitations_pendingInvitationsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _lastName = $v.lastName;
      _firstName = $v.firstName;
      _statut = $v.statut;
      _idEns = $v.idEns;
      _endDate = $v.endDate;
      _birthDate = $v.birthDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_ayants_droitsData_getPendingInvitations_pendingInvitations other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_ayants_droitsData_getPendingInvitations_pendingInvitations;
  }

  @override
  void update(
      void Function(
              Gget_ayants_droitsData_getPendingInvitations_pendingInvitationsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_ayants_droitsData_getPendingInvitations_pendingInvitations build() =>
      _build();

  _$Gget_ayants_droitsData_getPendingInvitations_pendingInvitations _build() {
    final _$result = _$v ??
        new _$Gget_ayants_droitsData_getPendingInvitations_pendingInvitations._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_ayants_droitsData_getPendingInvitations_pendingInvitations',
                'G__typename'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'Gget_ayants_droitsData_getPendingInvitations_pendingInvitations', 'lastName'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName,
                r'Gget_ayants_droitsData_getPendingInvitations_pendingInvitations',
                'firstName'),
            statut: BuiltValueNullFieldError.checkNotNull(
                statut, r'Gget_ayants_droitsData_getPendingInvitations_pendingInvitations', 'statut'),
            idEns: BuiltValueNullFieldError.checkNotNull(
                idEns, r'Gget_ayants_droitsData_getPendingInvitations_pendingInvitations', 'idEns'),
            endDate: BuiltValueNullFieldError.checkNotNull(
                endDate, r'Gget_ayants_droitsData_getPendingInvitations_pendingInvitations', 'endDate'),
            birthDate: BuiltValueNullFieldError.checkNotNull(birthDate, r'Gget_ayants_droitsData_getPendingInvitations_pendingInvitations', 'birthDate'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
