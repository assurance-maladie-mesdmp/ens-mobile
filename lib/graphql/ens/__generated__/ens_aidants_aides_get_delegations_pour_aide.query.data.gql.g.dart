// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_aidants_aides_get_delegations_pour_aide.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_delegations_pour_aideData>
    _$ggetDelegationsPourAideDataSerializer =
    new _$Gget_delegations_pour_aideDataSerializer();
Serializer<Gget_delegations_pour_aideData_delegations>
    _$ggetDelegationsPourAideDataDelegationsSerializer =
    new _$Gget_delegations_pour_aideData_delegationsSerializer();
Serializer<Gget_delegations_pour_aideData_delegations_delegate>
    _$ggetDelegationsPourAideDataDelegationsDelegateSerializer =
    new _$Gget_delegations_pour_aideData_delegations_delegateSerializer();
Serializer<Gget_delegations_pour_aideData_delegations_delegator>
    _$ggetDelegationsPourAideDataDelegationsDelegatorSerializer =
    new _$Gget_delegations_pour_aideData_delegations_delegatorSerializer();
Serializer<Gget_delegations_pour_aideData_delegationInvitations>
    _$ggetDelegationsPourAideDataDelegationInvitationsSerializer =
    new _$Gget_delegations_pour_aideData_delegationInvitationsSerializer();
Serializer<Gget_delegations_pour_aideData_delegationInvitations_delegate>
    _$ggetDelegationsPourAideDataDelegationInvitationsDelegateSerializer =
    new _$Gget_delegations_pour_aideData_delegationInvitations_delegateSerializer();

class _$Gget_delegations_pour_aideDataSerializer
    implements StructuredSerializer<Gget_delegations_pour_aideData> {
  @override
  final Iterable<Type> types = const [
    Gget_delegations_pour_aideData,
    _$Gget_delegations_pour_aideData
  ];
  @override
  final String wireName = 'Gget_delegations_pour_aideData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_delegations_pour_aideData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'delegations',
      serializers.serialize(object.delegations,
          specifiedType: const FullType(BuiltList, const [
            const FullType(Gget_delegations_pour_aideData_delegations)
          ])),
      'delegationInvitations',
      serializers.serialize(object.delegationInvitations,
          specifiedType: const FullType(BuiltList, const [
            const FullType(Gget_delegations_pour_aideData_delegationInvitations)
          ])),
    ];

    return result;
  }

  @override
  Gget_delegations_pour_aideData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_delegations_pour_aideDataBuilder();

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
        case 'delegations':
          result.delegations.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gget_delegations_pour_aideData_delegations)
              ]))! as BuiltList<Object?>);
          break;
        case 'delegationInvitations':
          result.delegationInvitations.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_delegations_pour_aideData_delegationInvitations)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_delegations_pour_aideData_delegationsSerializer
    implements
        StructuredSerializer<Gget_delegations_pour_aideData_delegations> {
  @override
  final Iterable<Type> types = const [
    Gget_delegations_pour_aideData_delegations,
    _$Gget_delegations_pour_aideData_delegations
  ];
  @override
  final String wireName = 'Gget_delegations_pour_aideData_delegations';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_delegations_pour_aideData_delegations object,
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
            specifiedType: const FullType(
                Gget_delegations_pour_aideData_delegations_delegate)));
    }
    value = object.delegator;
    if (value != null) {
      result
        ..add('delegator')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_delegations_pour_aideData_delegations_delegator)));
    }
    return result;
  }

  @override
  Gget_delegations_pour_aideData_delegations deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_delegations_pour_aideData_delegationsBuilder();

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
                  specifiedType: const FullType(
                      Gget_delegations_pour_aideData_delegations_delegate))!
              as Gget_delegations_pour_aideData_delegations_delegate);
          break;
        case 'delegator':
          result.delegator.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_delegations_pour_aideData_delegations_delegator))!
              as Gget_delegations_pour_aideData_delegations_delegator);
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

class _$Gget_delegations_pour_aideData_delegations_delegateSerializer
    implements
        StructuredSerializer<
            Gget_delegations_pour_aideData_delegations_delegate> {
  @override
  final Iterable<Type> types = const [
    Gget_delegations_pour_aideData_delegations_delegate,
    _$Gget_delegations_pour_aideData_delegations_delegate
  ];
  @override
  final String wireName = 'Gget_delegations_pour_aideData_delegations_delegate';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_delegations_pour_aideData_delegations_delegate object,
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
          specifiedType: const FullType(_i4.GGender)),
    ];

    return result;
  }

  @override
  Gget_delegations_pour_aideData_delegations_delegate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_delegations_pour_aideData_delegations_delegateBuilder();

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
              specifiedType: const FullType(_i4.GGender))! as _i4.GGender;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_delegations_pour_aideData_delegations_delegatorSerializer
    implements
        StructuredSerializer<
            Gget_delegations_pour_aideData_delegations_delegator> {
  @override
  final Iterable<Type> types = const [
    Gget_delegations_pour_aideData_delegations_delegator,
    _$Gget_delegations_pour_aideData_delegations_delegator
  ];
  @override
  final String wireName =
      'Gget_delegations_pour_aideData_delegations_delegator';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_delegations_pour_aideData_delegations_delegator object,
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
          specifiedType: const FullType(_i4.GGender)),
    ];

    return result;
  }

  @override
  Gget_delegations_pour_aideData_delegations_delegator deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_delegations_pour_aideData_delegations_delegatorBuilder();

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
              specifiedType: const FullType(_i4.GGender))! as _i4.GGender;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_delegations_pour_aideData_delegationInvitationsSerializer
    implements
        StructuredSerializer<
            Gget_delegations_pour_aideData_delegationInvitations> {
  @override
  final Iterable<Type> types = const [
    Gget_delegations_pour_aideData_delegationInvitations,
    _$Gget_delegations_pour_aideData_delegationInvitations
  ];
  @override
  final String wireName =
      'Gget_delegations_pour_aideData_delegationInvitations';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_delegations_pour_aideData_delegationInvitations object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'delegate',
      serializers.serialize(object.delegate,
          specifiedType: const FullType(
              Gget_delegations_pour_aideData_delegationInvitations_delegate)),
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
  Gget_delegations_pour_aideData_delegationInvitations deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_delegations_pour_aideData_delegationInvitationsBuilder();

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
                  specifiedType: const FullType(
                      Gget_delegations_pour_aideData_delegationInvitations_delegate))!
              as Gget_delegations_pour_aideData_delegationInvitations_delegate);
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

class _$Gget_delegations_pour_aideData_delegationInvitations_delegateSerializer
    implements
        StructuredSerializer<
            Gget_delegations_pour_aideData_delegationInvitations_delegate> {
  @override
  final Iterable<Type> types = const [
    Gget_delegations_pour_aideData_delegationInvitations_delegate,
    _$Gget_delegations_pour_aideData_delegationInvitations_delegate
  ];
  @override
  final String wireName =
      'Gget_delegations_pour_aideData_delegationInvitations_delegate';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_delegations_pour_aideData_delegationInvitations_delegate object,
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
          specifiedType: const FullType(_i4.GGender)),
    ];

    return result;
  }

  @override
  Gget_delegations_pour_aideData_delegationInvitations_delegate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_delegations_pour_aideData_delegationInvitations_delegateBuilder();

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
              specifiedType: const FullType(_i4.GGender))! as _i4.GGender;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_delegations_pour_aideData extends Gget_delegations_pour_aideData {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_delegations_pour_aideData_delegations> delegations;
  @override
  final BuiltList<Gget_delegations_pour_aideData_delegationInvitations>
      delegationInvitations;

  factory _$Gget_delegations_pour_aideData(
          [void Function(Gget_delegations_pour_aideDataBuilder)? updates]) =>
      (new Gget_delegations_pour_aideDataBuilder()..update(updates))._build();

  _$Gget_delegations_pour_aideData._(
      {required this.G__typename,
      required this.delegations,
      required this.delegationInvitations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_delegations_pour_aideData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        delegations, r'Gget_delegations_pour_aideData', 'delegations');
    BuiltValueNullFieldError.checkNotNull(delegationInvitations,
        r'Gget_delegations_pour_aideData', 'delegationInvitations');
  }

  @override
  Gget_delegations_pour_aideData rebuild(
          void Function(Gget_delegations_pour_aideDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_delegations_pour_aideDataBuilder toBuilder() =>
      new Gget_delegations_pour_aideDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_delegations_pour_aideData &&
        G__typename == other.G__typename &&
        delegations == other.delegations &&
        delegationInvitations == other.delegationInvitations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, delegations.hashCode);
    _$hash = $jc(_$hash, delegationInvitations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_delegations_pour_aideData')
          ..add('G__typename', G__typename)
          ..add('delegations', delegations)
          ..add('delegationInvitations', delegationInvitations))
        .toString();
  }
}

class Gget_delegations_pour_aideDataBuilder
    implements
        Builder<Gget_delegations_pour_aideData,
            Gget_delegations_pour_aideDataBuilder> {
  _$Gget_delegations_pour_aideData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_delegations_pour_aideData_delegations>? _delegations;
  ListBuilder<Gget_delegations_pour_aideData_delegations> get delegations =>
      _$this._delegations ??=
          new ListBuilder<Gget_delegations_pour_aideData_delegations>();
  set delegations(
          ListBuilder<Gget_delegations_pour_aideData_delegations>?
              delegations) =>
      _$this._delegations = delegations;

  ListBuilder<Gget_delegations_pour_aideData_delegationInvitations>?
      _delegationInvitations;
  ListBuilder<Gget_delegations_pour_aideData_delegationInvitations>
      get delegationInvitations =>
          _$this._delegationInvitations ??= new ListBuilder<
              Gget_delegations_pour_aideData_delegationInvitations>();
  set delegationInvitations(
          ListBuilder<Gget_delegations_pour_aideData_delegationInvitations>?
              delegationInvitations) =>
      _$this._delegationInvitations = delegationInvitations;

  Gget_delegations_pour_aideDataBuilder() {
    Gget_delegations_pour_aideData._initializeBuilder(this);
  }

  Gget_delegations_pour_aideDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _delegations = $v.delegations.toBuilder();
      _delegationInvitations = $v.delegationInvitations.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_delegations_pour_aideData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_delegations_pour_aideData;
  }

  @override
  void update(void Function(Gget_delegations_pour_aideDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_delegations_pour_aideData build() => _build();

  _$Gget_delegations_pour_aideData _build() {
    _$Gget_delegations_pour_aideData _$result;
    try {
      _$result = _$v ??
          new _$Gget_delegations_pour_aideData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_delegations_pour_aideData', 'G__typename'),
              delegations: delegations.build(),
              delegationInvitations: delegationInvitations.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'delegations';
        delegations.build();
        _$failedField = 'delegationInvitations';
        delegationInvitations.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_delegations_pour_aideData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_delegations_pour_aideData_delegations
    extends Gget_delegations_pour_aideData_delegations {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final Gget_delegations_pour_aideData_delegations_delegate? delegate;
  @override
  final Gget_delegations_pour_aideData_delegations_delegator? delegator;
  @override
  final String startDate;
  @override
  final String endDate;

  factory _$Gget_delegations_pour_aideData_delegations(
          [void Function(Gget_delegations_pour_aideData_delegationsBuilder)?
              updates]) =>
      (new Gget_delegations_pour_aideData_delegationsBuilder()..update(updates))
          ._build();

  _$Gget_delegations_pour_aideData_delegations._(
      {required this.G__typename,
      required this.id,
      this.delegate,
      this.delegator,
      required this.startDate,
      required this.endDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_delegations_pour_aideData_delegations', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gget_delegations_pour_aideData_delegations', 'id');
    BuiltValueNullFieldError.checkNotNull(
        startDate, r'Gget_delegations_pour_aideData_delegations', 'startDate');
    BuiltValueNullFieldError.checkNotNull(
        endDate, r'Gget_delegations_pour_aideData_delegations', 'endDate');
  }

  @override
  Gget_delegations_pour_aideData_delegations rebuild(
          void Function(Gget_delegations_pour_aideData_delegationsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_delegations_pour_aideData_delegationsBuilder toBuilder() =>
      new Gget_delegations_pour_aideData_delegationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_delegations_pour_aideData_delegations &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_delegations_pour_aideData_delegations')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('delegate', delegate)
          ..add('delegator', delegator)
          ..add('startDate', startDate)
          ..add('endDate', endDate))
        .toString();
  }
}

class Gget_delegations_pour_aideData_delegationsBuilder
    implements
        Builder<Gget_delegations_pour_aideData_delegations,
            Gget_delegations_pour_aideData_delegationsBuilder> {
  _$Gget_delegations_pour_aideData_delegations? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  Gget_delegations_pour_aideData_delegations_delegateBuilder? _delegate;
  Gget_delegations_pour_aideData_delegations_delegateBuilder get delegate =>
      _$this._delegate ??=
          new Gget_delegations_pour_aideData_delegations_delegateBuilder();
  set delegate(
          Gget_delegations_pour_aideData_delegations_delegateBuilder?
              delegate) =>
      _$this._delegate = delegate;

  Gget_delegations_pour_aideData_delegations_delegatorBuilder? _delegator;
  Gget_delegations_pour_aideData_delegations_delegatorBuilder get delegator =>
      _$this._delegator ??=
          new Gget_delegations_pour_aideData_delegations_delegatorBuilder();
  set delegator(
          Gget_delegations_pour_aideData_delegations_delegatorBuilder?
              delegator) =>
      _$this._delegator = delegator;

  String? _startDate;
  String? get startDate => _$this._startDate;
  set startDate(String? startDate) => _$this._startDate = startDate;

  String? _endDate;
  String? get endDate => _$this._endDate;
  set endDate(String? endDate) => _$this._endDate = endDate;

  Gget_delegations_pour_aideData_delegationsBuilder() {
    Gget_delegations_pour_aideData_delegations._initializeBuilder(this);
  }

  Gget_delegations_pour_aideData_delegationsBuilder get _$this {
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
  void replace(Gget_delegations_pour_aideData_delegations other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_delegations_pour_aideData_delegations;
  }

  @override
  void update(
      void Function(Gget_delegations_pour_aideData_delegationsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_delegations_pour_aideData_delegations build() => _build();

  _$Gget_delegations_pour_aideData_delegations _build() {
    _$Gget_delegations_pour_aideData_delegations _$result;
    try {
      _$result = _$v ??
          new _$Gget_delegations_pour_aideData_delegations._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_delegations_pour_aideData_delegations', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'Gget_delegations_pour_aideData_delegations', 'id'),
              delegate: _delegate?.build(),
              delegator: _delegator?.build(),
              startDate: BuiltValueNullFieldError.checkNotNull(startDate,
                  r'Gget_delegations_pour_aideData_delegations', 'startDate'),
              endDate: BuiltValueNullFieldError.checkNotNull(endDate,
                  r'Gget_delegations_pour_aideData_delegations', 'endDate'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'delegate';
        _delegate?.build();
        _$failedField = 'delegator';
        _delegator?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_delegations_pour_aideData_delegations',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_delegations_pour_aideData_delegations_delegate
    extends Gget_delegations_pour_aideData_delegations_delegate {
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
  final _i4.GGender gender;

  factory _$Gget_delegations_pour_aideData_delegations_delegate(
          [void Function(
                  Gget_delegations_pour_aideData_delegations_delegateBuilder)?
              updates]) =>
      (new Gget_delegations_pour_aideData_delegations_delegateBuilder()
            ..update(updates))
          ._build();

  _$Gget_delegations_pour_aideData_delegations_delegate._(
      {required this.G__typename,
      required this.idp,
      required this.givenNames,
      required this.familyName,
      required this.birthDate,
      required this.gender})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_delegations_pour_aideData_delegations_delegate', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        idp, r'Gget_delegations_pour_aideData_delegations_delegate', 'idp');
    BuiltValueNullFieldError.checkNotNull(givenNames,
        r'Gget_delegations_pour_aideData_delegations_delegate', 'givenNames');
    BuiltValueNullFieldError.checkNotNull(familyName,
        r'Gget_delegations_pour_aideData_delegations_delegate', 'familyName');
    BuiltValueNullFieldError.checkNotNull(birthDate,
        r'Gget_delegations_pour_aideData_delegations_delegate', 'birthDate');
    BuiltValueNullFieldError.checkNotNull(gender,
        r'Gget_delegations_pour_aideData_delegations_delegate', 'gender');
  }

  @override
  Gget_delegations_pour_aideData_delegations_delegate rebuild(
          void Function(
                  Gget_delegations_pour_aideData_delegations_delegateBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_delegations_pour_aideData_delegations_delegateBuilder toBuilder() =>
      new Gget_delegations_pour_aideData_delegations_delegateBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_delegations_pour_aideData_delegations_delegate &&
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
            r'Gget_delegations_pour_aideData_delegations_delegate')
          ..add('G__typename', G__typename)
          ..add('idp', idp)
          ..add('givenNames', givenNames)
          ..add('familyName', familyName)
          ..add('birthDate', birthDate)
          ..add('gender', gender))
        .toString();
  }
}

class Gget_delegations_pour_aideData_delegations_delegateBuilder
    implements
        Builder<Gget_delegations_pour_aideData_delegations_delegate,
            Gget_delegations_pour_aideData_delegations_delegateBuilder> {
  _$Gget_delegations_pour_aideData_delegations_delegate? _$v;

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

  _i4.GGender? _gender;
  _i4.GGender? get gender => _$this._gender;
  set gender(_i4.GGender? gender) => _$this._gender = gender;

  Gget_delegations_pour_aideData_delegations_delegateBuilder() {
    Gget_delegations_pour_aideData_delegations_delegate._initializeBuilder(
        this);
  }

  Gget_delegations_pour_aideData_delegations_delegateBuilder get _$this {
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
  void replace(Gget_delegations_pour_aideData_delegations_delegate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_delegations_pour_aideData_delegations_delegate;
  }

  @override
  void update(
      void Function(Gget_delegations_pour_aideData_delegations_delegateBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_delegations_pour_aideData_delegations_delegate build() => _build();

  _$Gget_delegations_pour_aideData_delegations_delegate _build() {
    final _$result = _$v ??
        new _$Gget_delegations_pour_aideData_delegations_delegate._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_delegations_pour_aideData_delegations_delegate',
                'G__typename'),
            idp: BuiltValueNullFieldError.checkNotNull(
                idp, r'Gget_delegations_pour_aideData_delegations_delegate', 'idp'),
            givenNames: BuiltValueNullFieldError.checkNotNull(
                givenNames, r'Gget_delegations_pour_aideData_delegations_delegate', 'givenNames'),
            familyName: BuiltValueNullFieldError.checkNotNull(
                familyName,
                r'Gget_delegations_pour_aideData_delegations_delegate',
                'familyName'),
            birthDate: BuiltValueNullFieldError.checkNotNull(
                birthDate, r'Gget_delegations_pour_aideData_delegations_delegate', 'birthDate'),
            gender: BuiltValueNullFieldError.checkNotNull(
                gender, r'Gget_delegations_pour_aideData_delegations_delegate', 'gender'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_delegations_pour_aideData_delegations_delegator
    extends Gget_delegations_pour_aideData_delegations_delegator {
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
  final _i4.GGender gender;

  factory _$Gget_delegations_pour_aideData_delegations_delegator(
          [void Function(
                  Gget_delegations_pour_aideData_delegations_delegatorBuilder)?
              updates]) =>
      (new Gget_delegations_pour_aideData_delegations_delegatorBuilder()
            ..update(updates))
          ._build();

  _$Gget_delegations_pour_aideData_delegations_delegator._(
      {required this.G__typename,
      required this.idp,
      required this.givenNames,
      required this.familyName,
      required this.birthDate,
      required this.gender})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_delegations_pour_aideData_delegations_delegator', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        idp, r'Gget_delegations_pour_aideData_delegations_delegator', 'idp');
    BuiltValueNullFieldError.checkNotNull(givenNames,
        r'Gget_delegations_pour_aideData_delegations_delegator', 'givenNames');
    BuiltValueNullFieldError.checkNotNull(familyName,
        r'Gget_delegations_pour_aideData_delegations_delegator', 'familyName');
    BuiltValueNullFieldError.checkNotNull(birthDate,
        r'Gget_delegations_pour_aideData_delegations_delegator', 'birthDate');
    BuiltValueNullFieldError.checkNotNull(gender,
        r'Gget_delegations_pour_aideData_delegations_delegator', 'gender');
  }

  @override
  Gget_delegations_pour_aideData_delegations_delegator rebuild(
          void Function(
                  Gget_delegations_pour_aideData_delegations_delegatorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_delegations_pour_aideData_delegations_delegatorBuilder toBuilder() =>
      new Gget_delegations_pour_aideData_delegations_delegatorBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_delegations_pour_aideData_delegations_delegator &&
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
            r'Gget_delegations_pour_aideData_delegations_delegator')
          ..add('G__typename', G__typename)
          ..add('idp', idp)
          ..add('givenNames', givenNames)
          ..add('familyName', familyName)
          ..add('birthDate', birthDate)
          ..add('gender', gender))
        .toString();
  }
}

class Gget_delegations_pour_aideData_delegations_delegatorBuilder
    implements
        Builder<Gget_delegations_pour_aideData_delegations_delegator,
            Gget_delegations_pour_aideData_delegations_delegatorBuilder> {
  _$Gget_delegations_pour_aideData_delegations_delegator? _$v;

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

  _i4.GGender? _gender;
  _i4.GGender? get gender => _$this._gender;
  set gender(_i4.GGender? gender) => _$this._gender = gender;

  Gget_delegations_pour_aideData_delegations_delegatorBuilder() {
    Gget_delegations_pour_aideData_delegations_delegator._initializeBuilder(
        this);
  }

  Gget_delegations_pour_aideData_delegations_delegatorBuilder get _$this {
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
  void replace(Gget_delegations_pour_aideData_delegations_delegator other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_delegations_pour_aideData_delegations_delegator;
  }

  @override
  void update(
      void Function(
              Gget_delegations_pour_aideData_delegations_delegatorBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_delegations_pour_aideData_delegations_delegator build() => _build();

  _$Gget_delegations_pour_aideData_delegations_delegator _build() {
    final _$result = _$v ??
        new _$Gget_delegations_pour_aideData_delegations_delegator._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_delegations_pour_aideData_delegations_delegator',
                'G__typename'),
            idp: BuiltValueNullFieldError.checkNotNull(
                idp, r'Gget_delegations_pour_aideData_delegations_delegator', 'idp'),
            givenNames: BuiltValueNullFieldError.checkNotNull(
                givenNames, r'Gget_delegations_pour_aideData_delegations_delegator', 'givenNames'),
            familyName: BuiltValueNullFieldError.checkNotNull(
                familyName,
                r'Gget_delegations_pour_aideData_delegations_delegator',
                'familyName'),
            birthDate: BuiltValueNullFieldError.checkNotNull(
                birthDate, r'Gget_delegations_pour_aideData_delegations_delegator', 'birthDate'),
            gender: BuiltValueNullFieldError.checkNotNull(
                gender, r'Gget_delegations_pour_aideData_delegations_delegator', 'gender'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_delegations_pour_aideData_delegationInvitations
    extends Gget_delegations_pour_aideData_delegationInvitations {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final Gget_delegations_pour_aideData_delegationInvitations_delegate delegate;
  @override
  final String creationDate;
  @override
  final String expirationDate;

  factory _$Gget_delegations_pour_aideData_delegationInvitations(
          [void Function(
                  Gget_delegations_pour_aideData_delegationInvitationsBuilder)?
              updates]) =>
      (new Gget_delegations_pour_aideData_delegationInvitationsBuilder()
            ..update(updates))
          ._build();

  _$Gget_delegations_pour_aideData_delegationInvitations._(
      {required this.G__typename,
      required this.id,
      required this.delegate,
      required this.creationDate,
      required this.expirationDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_delegations_pour_aideData_delegationInvitations', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gget_delegations_pour_aideData_delegationInvitations', 'id');
    BuiltValueNullFieldError.checkNotNull(delegate,
        r'Gget_delegations_pour_aideData_delegationInvitations', 'delegate');
    BuiltValueNullFieldError.checkNotNull(
        creationDate,
        r'Gget_delegations_pour_aideData_delegationInvitations',
        'creationDate');
    BuiltValueNullFieldError.checkNotNull(
        expirationDate,
        r'Gget_delegations_pour_aideData_delegationInvitations',
        'expirationDate');
  }

  @override
  Gget_delegations_pour_aideData_delegationInvitations rebuild(
          void Function(
                  Gget_delegations_pour_aideData_delegationInvitationsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_delegations_pour_aideData_delegationInvitationsBuilder toBuilder() =>
      new Gget_delegations_pour_aideData_delegationInvitationsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_delegations_pour_aideData_delegationInvitations &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_delegations_pour_aideData_delegationInvitations')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('delegate', delegate)
          ..add('creationDate', creationDate)
          ..add('expirationDate', expirationDate))
        .toString();
  }
}

class Gget_delegations_pour_aideData_delegationInvitationsBuilder
    implements
        Builder<Gget_delegations_pour_aideData_delegationInvitations,
            Gget_delegations_pour_aideData_delegationInvitationsBuilder> {
  _$Gget_delegations_pour_aideData_delegationInvitations? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  Gget_delegations_pour_aideData_delegationInvitations_delegateBuilder?
      _delegate;
  Gget_delegations_pour_aideData_delegationInvitations_delegateBuilder
      get delegate => _$this._delegate ??=
          new Gget_delegations_pour_aideData_delegationInvitations_delegateBuilder();
  set delegate(
          Gget_delegations_pour_aideData_delegationInvitations_delegateBuilder?
              delegate) =>
      _$this._delegate = delegate;

  String? _creationDate;
  String? get creationDate => _$this._creationDate;
  set creationDate(String? creationDate) => _$this._creationDate = creationDate;

  String? _expirationDate;
  String? get expirationDate => _$this._expirationDate;
  set expirationDate(String? expirationDate) =>
      _$this._expirationDate = expirationDate;

  Gget_delegations_pour_aideData_delegationInvitationsBuilder() {
    Gget_delegations_pour_aideData_delegationInvitations._initializeBuilder(
        this);
  }

  Gget_delegations_pour_aideData_delegationInvitationsBuilder get _$this {
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
  void replace(Gget_delegations_pour_aideData_delegationInvitations other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_delegations_pour_aideData_delegationInvitations;
  }

  @override
  void update(
      void Function(
              Gget_delegations_pour_aideData_delegationInvitationsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_delegations_pour_aideData_delegationInvitations build() => _build();

  _$Gget_delegations_pour_aideData_delegationInvitations _build() {
    _$Gget_delegations_pour_aideData_delegationInvitations _$result;
    try {
      _$result = _$v ??
          new _$Gget_delegations_pour_aideData_delegationInvitations._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_delegations_pour_aideData_delegationInvitations',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'Gget_delegations_pour_aideData_delegationInvitations',
                  'id'),
              delegate: delegate.build(),
              creationDate: BuiltValueNullFieldError.checkNotNull(
                  creationDate,
                  r'Gget_delegations_pour_aideData_delegationInvitations',
                  'creationDate'),
              expirationDate: BuiltValueNullFieldError.checkNotNull(
                  expirationDate,
                  r'Gget_delegations_pour_aideData_delegationInvitations',
                  'expirationDate'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'delegate';
        delegate.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_delegations_pour_aideData_delegationInvitations',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_delegations_pour_aideData_delegationInvitations_delegate
    extends Gget_delegations_pour_aideData_delegationInvitations_delegate {
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
  final _i4.GGender gender;

  factory _$Gget_delegations_pour_aideData_delegationInvitations_delegate(
          [void Function(
                  Gget_delegations_pour_aideData_delegationInvitations_delegateBuilder)?
              updates]) =>
      (new Gget_delegations_pour_aideData_delegationInvitations_delegateBuilder()
            ..update(updates))
          ._build();

  _$Gget_delegations_pour_aideData_delegationInvitations_delegate._(
      {required this.G__typename,
      required this.idp,
      required this.givenNames,
      required this.familyName,
      required this.birthDate,
      required this.gender})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_delegations_pour_aideData_delegationInvitations_delegate',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        idp,
        r'Gget_delegations_pour_aideData_delegationInvitations_delegate',
        'idp');
    BuiltValueNullFieldError.checkNotNull(
        givenNames,
        r'Gget_delegations_pour_aideData_delegationInvitations_delegate',
        'givenNames');
    BuiltValueNullFieldError.checkNotNull(
        familyName,
        r'Gget_delegations_pour_aideData_delegationInvitations_delegate',
        'familyName');
    BuiltValueNullFieldError.checkNotNull(
        birthDate,
        r'Gget_delegations_pour_aideData_delegationInvitations_delegate',
        'birthDate');
    BuiltValueNullFieldError.checkNotNull(
        gender,
        r'Gget_delegations_pour_aideData_delegationInvitations_delegate',
        'gender');
  }

  @override
  Gget_delegations_pour_aideData_delegationInvitations_delegate rebuild(
          void Function(
                  Gget_delegations_pour_aideData_delegationInvitations_delegateBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_delegations_pour_aideData_delegationInvitations_delegateBuilder
      toBuilder() =>
          new Gget_delegations_pour_aideData_delegationInvitations_delegateBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_delegations_pour_aideData_delegationInvitations_delegate &&
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
            r'Gget_delegations_pour_aideData_delegationInvitations_delegate')
          ..add('G__typename', G__typename)
          ..add('idp', idp)
          ..add('givenNames', givenNames)
          ..add('familyName', familyName)
          ..add('birthDate', birthDate)
          ..add('gender', gender))
        .toString();
  }
}

class Gget_delegations_pour_aideData_delegationInvitations_delegateBuilder
    implements
        Builder<Gget_delegations_pour_aideData_delegationInvitations_delegate,
            Gget_delegations_pour_aideData_delegationInvitations_delegateBuilder> {
  _$Gget_delegations_pour_aideData_delegationInvitations_delegate? _$v;

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

  _i4.GGender? _gender;
  _i4.GGender? get gender => _$this._gender;
  set gender(_i4.GGender? gender) => _$this._gender = gender;

  Gget_delegations_pour_aideData_delegationInvitations_delegateBuilder() {
    Gget_delegations_pour_aideData_delegationInvitations_delegate
        ._initializeBuilder(this);
  }

  Gget_delegations_pour_aideData_delegationInvitations_delegateBuilder
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
      Gget_delegations_pour_aideData_delegationInvitations_delegate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_delegations_pour_aideData_delegationInvitations_delegate;
  }

  @override
  void update(
      void Function(
              Gget_delegations_pour_aideData_delegationInvitations_delegateBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_delegations_pour_aideData_delegationInvitations_delegate build() =>
      _build();

  _$Gget_delegations_pour_aideData_delegationInvitations_delegate _build() {
    final _$result = _$v ??
        new _$Gget_delegations_pour_aideData_delegationInvitations_delegate._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_delegations_pour_aideData_delegationInvitations_delegate',
                'G__typename'),
            idp: BuiltValueNullFieldError.checkNotNull(
                idp, r'Gget_delegations_pour_aideData_delegationInvitations_delegate', 'idp'),
            givenNames: BuiltValueNullFieldError.checkNotNull(
                givenNames,
                r'Gget_delegations_pour_aideData_delegationInvitations_delegate',
                'givenNames'),
            familyName: BuiltValueNullFieldError.checkNotNull(
                familyName,
                r'Gget_delegations_pour_aideData_delegationInvitations_delegate',
                'familyName'),
            birthDate: BuiltValueNullFieldError.checkNotNull(
                birthDate,
                r'Gget_delegations_pour_aideData_delegationInvitations_delegate',
                'birthDate'),
            gender: BuiltValueNullFieldError.checkNotNull(gender, r'Gget_delegations_pour_aideData_delegationInvitations_delegate', 'gender'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
