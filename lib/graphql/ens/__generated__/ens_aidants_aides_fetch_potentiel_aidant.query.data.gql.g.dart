// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_aidants_aides_fetch_potentiel_aidant.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gfetch_potentiel_aidantData> _$gfetchPotentielAidantDataSerializer =
    new _$Gfetch_potentiel_aidantDataSerializer();
Serializer<Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate>
    _$gfetchPotentielAidantDataDelegationMatchPotentialDelegateSerializer =
    new _$Gfetch_potentiel_aidantData_delegationMatchPotentialDelegateSerializer();

class _$Gfetch_potentiel_aidantDataSerializer
    implements StructuredSerializer<Gfetch_potentiel_aidantData> {
  @override
  final Iterable<Type> types = const [
    Gfetch_potentiel_aidantData,
    _$Gfetch_potentiel_aidantData
  ];
  @override
  final String wireName = 'Gfetch_potentiel_aidantData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gfetch_potentiel_aidantData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'delegationMatchPotentialDelegate',
      serializers.serialize(object.delegationMatchPotentialDelegate,
          specifiedType: const FullType(
              Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate)),
    ];

    return result;
  }

  @override
  Gfetch_potentiel_aidantData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gfetch_potentiel_aidantDataBuilder();

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
        case 'delegationMatchPotentialDelegate':
          result.delegationMatchPotentialDelegate.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate))!
              as Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate);
          break;
      }
    }

    return result.build();
  }
}

class _$Gfetch_potentiel_aidantData_delegationMatchPotentialDelegateSerializer
    implements
        StructuredSerializer<
            Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate> {
  @override
  final Iterable<Type> types = const [
    Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate,
    _$Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate
  ];
  @override
  final String wireName =
      'Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate object,
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
      'transactionId',
      serializers.serialize(object.transactionId,
          specifiedType: const FullType(String)),
      'ins',
      serializers.serialize(object.ins, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gfetch_potentiel_aidantData_delegationMatchPotentialDelegateBuilder();

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
        case 'transactionId':
          result.transactionId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'ins':
          result.ins = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gfetch_potentiel_aidantData extends Gfetch_potentiel_aidantData {
  @override
  final String G__typename;
  @override
  final Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate
      delegationMatchPotentialDelegate;

  factory _$Gfetch_potentiel_aidantData(
          [void Function(Gfetch_potentiel_aidantDataBuilder)? updates]) =>
      (new Gfetch_potentiel_aidantDataBuilder()..update(updates))._build();

  _$Gfetch_potentiel_aidantData._(
      {required this.G__typename,
      required this.delegationMatchPotentialDelegate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gfetch_potentiel_aidantData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(delegationMatchPotentialDelegate,
        r'Gfetch_potentiel_aidantData', 'delegationMatchPotentialDelegate');
  }

  @override
  Gfetch_potentiel_aidantData rebuild(
          void Function(Gfetch_potentiel_aidantDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gfetch_potentiel_aidantDataBuilder toBuilder() =>
      new Gfetch_potentiel_aidantDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gfetch_potentiel_aidantData &&
        G__typename == other.G__typename &&
        delegationMatchPotentialDelegate ==
            other.delegationMatchPotentialDelegate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, delegationMatchPotentialDelegate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gfetch_potentiel_aidantData')
          ..add('G__typename', G__typename)
          ..add('delegationMatchPotentialDelegate',
              delegationMatchPotentialDelegate))
        .toString();
  }
}

class Gfetch_potentiel_aidantDataBuilder
    implements
        Builder<Gfetch_potentiel_aidantData,
            Gfetch_potentiel_aidantDataBuilder> {
  _$Gfetch_potentiel_aidantData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gfetch_potentiel_aidantData_delegationMatchPotentialDelegateBuilder?
      _delegationMatchPotentialDelegate;
  Gfetch_potentiel_aidantData_delegationMatchPotentialDelegateBuilder
      get delegationMatchPotentialDelegate => _$this
              ._delegationMatchPotentialDelegate ??=
          new Gfetch_potentiel_aidantData_delegationMatchPotentialDelegateBuilder();
  set delegationMatchPotentialDelegate(
          Gfetch_potentiel_aidantData_delegationMatchPotentialDelegateBuilder?
              delegationMatchPotentialDelegate) =>
      _$this._delegationMatchPotentialDelegate =
          delegationMatchPotentialDelegate;

  Gfetch_potentiel_aidantDataBuilder() {
    Gfetch_potentiel_aidantData._initializeBuilder(this);
  }

  Gfetch_potentiel_aidantDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _delegationMatchPotentialDelegate =
          $v.delegationMatchPotentialDelegate.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gfetch_potentiel_aidantData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gfetch_potentiel_aidantData;
  }

  @override
  void update(void Function(Gfetch_potentiel_aidantDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gfetch_potentiel_aidantData build() => _build();

  _$Gfetch_potentiel_aidantData _build() {
    _$Gfetch_potentiel_aidantData _$result;
    try {
      _$result = _$v ??
          new _$Gfetch_potentiel_aidantData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gfetch_potentiel_aidantData', 'G__typename'),
              delegationMatchPotentialDelegate:
                  delegationMatchPotentialDelegate.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'delegationMatchPotentialDelegate';
        delegationMatchPotentialDelegate.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gfetch_potentiel_aidantData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate
    extends Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate {
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
  final String transactionId;
  @override
  final String ins;

  factory _$Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate(
          [void Function(
                  Gfetch_potentiel_aidantData_delegationMatchPotentialDelegateBuilder)?
              updates]) =>
      (new Gfetch_potentiel_aidantData_delegationMatchPotentialDelegateBuilder()
            ..update(updates))
          ._build();

  _$Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate._(
      {required this.G__typename,
      required this.idp,
      required this.givenNames,
      required this.familyName,
      required this.birthDate,
      required this.transactionId,
      required this.ins})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(idp,
        r'Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate', 'idp');
    BuiltValueNullFieldError.checkNotNull(
        givenNames,
        r'Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate',
        'givenNames');
    BuiltValueNullFieldError.checkNotNull(
        familyName,
        r'Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate',
        'familyName');
    BuiltValueNullFieldError.checkNotNull(
        birthDate,
        r'Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate',
        'birthDate');
    BuiltValueNullFieldError.checkNotNull(
        transactionId,
        r'Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate',
        'transactionId');
    BuiltValueNullFieldError.checkNotNull(ins,
        r'Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate', 'ins');
  }

  @override
  Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate rebuild(
          void Function(
                  Gfetch_potentiel_aidantData_delegationMatchPotentialDelegateBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gfetch_potentiel_aidantData_delegationMatchPotentialDelegateBuilder
      toBuilder() =>
          new Gfetch_potentiel_aidantData_delegationMatchPotentialDelegateBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate &&
        G__typename == other.G__typename &&
        idp == other.idp &&
        givenNames == other.givenNames &&
        familyName == other.familyName &&
        birthDate == other.birthDate &&
        transactionId == other.transactionId &&
        ins == other.ins;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, idp.hashCode);
    _$hash = $jc(_$hash, givenNames.hashCode);
    _$hash = $jc(_$hash, familyName.hashCode);
    _$hash = $jc(_$hash, birthDate.hashCode);
    _$hash = $jc(_$hash, transactionId.hashCode);
    _$hash = $jc(_$hash, ins.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate')
          ..add('G__typename', G__typename)
          ..add('idp', idp)
          ..add('givenNames', givenNames)
          ..add('familyName', familyName)
          ..add('birthDate', birthDate)
          ..add('transactionId', transactionId)
          ..add('ins', ins))
        .toString();
  }
}

class Gfetch_potentiel_aidantData_delegationMatchPotentialDelegateBuilder
    implements
        Builder<Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate,
            Gfetch_potentiel_aidantData_delegationMatchPotentialDelegateBuilder> {
  _$Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate? _$v;

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

  String? _transactionId;
  String? get transactionId => _$this._transactionId;
  set transactionId(String? transactionId) =>
      _$this._transactionId = transactionId;

  String? _ins;
  String? get ins => _$this._ins;
  set ins(String? ins) => _$this._ins = ins;

  Gfetch_potentiel_aidantData_delegationMatchPotentialDelegateBuilder() {
    Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate
        ._initializeBuilder(this);
  }

  Gfetch_potentiel_aidantData_delegationMatchPotentialDelegateBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _idp = $v.idp;
      _givenNames = $v.givenNames;
      _familyName = $v.familyName;
      _birthDate = $v.birthDate;
      _transactionId = $v.transactionId;
      _ins = $v.ins;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate;
  }

  @override
  void update(
      void Function(
              Gfetch_potentiel_aidantData_delegationMatchPotentialDelegateBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate build() =>
      _build();

  _$Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate _build() {
    final _$result = _$v ??
        new _$Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate',
                'G__typename'),
            idp: BuiltValueNullFieldError.checkNotNull(
                idp, r'Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate', 'idp'),
            givenNames: BuiltValueNullFieldError.checkNotNull(
                givenNames, r'Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate', 'givenNames'),
            familyName: BuiltValueNullFieldError.checkNotNull(
                familyName, r'Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate', 'familyName'),
            birthDate: BuiltValueNullFieldError.checkNotNull(
                birthDate, r'Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate', 'birthDate'),
            transactionId: BuiltValueNullFieldError.checkNotNull(
                transactionId,
                r'Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate',
                'transactionId'),
            ins: BuiltValueNullFieldError.checkNotNull(ins, r'Gfetch_potentiel_aidantData_delegationMatchPotentialDelegate', 'ins'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
