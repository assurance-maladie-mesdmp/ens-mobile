// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ps_inactifs_check_contacts_status.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gcheck_inactifs_ps_contacts_statusData>
    _$gcheckInactifsPsContactsStatusDataSerializer =
    new _$Gcheck_inactifs_ps_contacts_statusDataSerializer();
Serializer<Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus>
    _$gcheckInactifsPsContactsStatusDataCheckContactsStatusSerializer =
    new _$Gcheck_inactifs_ps_contacts_statusData_checkContactsStatusSerializer();
Serializer<
        Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts>
    _$gcheckInactifsPsContactsStatusDataCheckContactsStatusInactiveContactsSerializer =
    new _$Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContactsSerializer();

class _$Gcheck_inactifs_ps_contacts_statusDataSerializer
    implements StructuredSerializer<Gcheck_inactifs_ps_contacts_statusData> {
  @override
  final Iterable<Type> types = const [
    Gcheck_inactifs_ps_contacts_statusData,
    _$Gcheck_inactifs_ps_contacts_statusData
  ];
  @override
  final String wireName = 'Gcheck_inactifs_ps_contacts_statusData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gcheck_inactifs_ps_contacts_statusData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'checkContactsStatus',
      serializers.serialize(object.checkContactsStatus,
          specifiedType: const FullType(
              Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus)),
    ];

    return result;
  }

  @override
  Gcheck_inactifs_ps_contacts_statusData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcheck_inactifs_ps_contacts_statusDataBuilder();

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
        case 'checkContactsStatus':
          result.checkContactsStatus.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus))!
              as Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus);
          break;
      }
    }

    return result.build();
  }
}

class _$Gcheck_inactifs_ps_contacts_statusData_checkContactsStatusSerializer
    implements
        StructuredSerializer<
            Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus> {
  @override
  final Iterable<Type> types = const [
    Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus,
    _$Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus
  ];
  @override
  final String wireName =
      'Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'inactiveContacts',
      serializers.serialize(object.inactiveContacts,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts)
          ])),
    ];

    return result;
  }

  @override
  Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gcheck_inactifs_ps_contacts_statusData_checkContactsStatusBuilder();

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
        case 'inactiveContacts':
          result.inactiveContacts.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContactsSerializer
    implements
        StructuredSerializer<
            Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts> {
  @override
  final Iterable<Type> types = const [
    Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts,
    _$Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts
  ];
  @override
  final String wireName =
      'Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'idNat',
      serializers.serialize(object.idNat,
          specifiedType: const FullType(String)),
      'fullName',
      serializers.serialize(object.fullName,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContactsBuilder();

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
        case 'idNat':
          result.idNat = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'fullName':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gcheck_inactifs_ps_contacts_statusData
    extends Gcheck_inactifs_ps_contacts_statusData {
  @override
  final String G__typename;
  @override
  final Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus
      checkContactsStatus;

  factory _$Gcheck_inactifs_ps_contacts_statusData(
          [void Function(Gcheck_inactifs_ps_contacts_statusDataBuilder)?
              updates]) =>
      (new Gcheck_inactifs_ps_contacts_statusDataBuilder()..update(updates))
          ._build();

  _$Gcheck_inactifs_ps_contacts_statusData._(
      {required this.G__typename, required this.checkContactsStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gcheck_inactifs_ps_contacts_statusData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(checkContactsStatus,
        r'Gcheck_inactifs_ps_contacts_statusData', 'checkContactsStatus');
  }

  @override
  Gcheck_inactifs_ps_contacts_statusData rebuild(
          void Function(Gcheck_inactifs_ps_contacts_statusDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcheck_inactifs_ps_contacts_statusDataBuilder toBuilder() =>
      new Gcheck_inactifs_ps_contacts_statusDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcheck_inactifs_ps_contacts_statusData &&
        G__typename == other.G__typename &&
        checkContactsStatus == other.checkContactsStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, checkContactsStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gcheck_inactifs_ps_contacts_statusData')
          ..add('G__typename', G__typename)
          ..add('checkContactsStatus', checkContactsStatus))
        .toString();
  }
}

class Gcheck_inactifs_ps_contacts_statusDataBuilder
    implements
        Builder<Gcheck_inactifs_ps_contacts_statusData,
            Gcheck_inactifs_ps_contacts_statusDataBuilder> {
  _$Gcheck_inactifs_ps_contacts_statusData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gcheck_inactifs_ps_contacts_statusData_checkContactsStatusBuilder?
      _checkContactsStatus;
  Gcheck_inactifs_ps_contacts_statusData_checkContactsStatusBuilder
      get checkContactsStatus => _$this._checkContactsStatus ??=
          new Gcheck_inactifs_ps_contacts_statusData_checkContactsStatusBuilder();
  set checkContactsStatus(
          Gcheck_inactifs_ps_contacts_statusData_checkContactsStatusBuilder?
              checkContactsStatus) =>
      _$this._checkContactsStatus = checkContactsStatus;

  Gcheck_inactifs_ps_contacts_statusDataBuilder() {
    Gcheck_inactifs_ps_contacts_statusData._initializeBuilder(this);
  }

  Gcheck_inactifs_ps_contacts_statusDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _checkContactsStatus = $v.checkContactsStatus.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gcheck_inactifs_ps_contacts_statusData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcheck_inactifs_ps_contacts_statusData;
  }

  @override
  void update(
      void Function(Gcheck_inactifs_ps_contacts_statusDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcheck_inactifs_ps_contacts_statusData build() => _build();

  _$Gcheck_inactifs_ps_contacts_statusData _build() {
    _$Gcheck_inactifs_ps_contacts_statusData _$result;
    try {
      _$result = _$v ??
          new _$Gcheck_inactifs_ps_contacts_statusData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gcheck_inactifs_ps_contacts_statusData', 'G__typename'),
              checkContactsStatus: checkContactsStatus.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'checkContactsStatus';
        checkContactsStatus.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gcheck_inactifs_ps_contacts_statusData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus
    extends Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus {
  @override
  final String G__typename;
  @override
  final BuiltList<
          Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts>
      inactiveContacts;

  factory _$Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus(
          [void Function(
                  Gcheck_inactifs_ps_contacts_statusData_checkContactsStatusBuilder)?
              updates]) =>
      (new Gcheck_inactifs_ps_contacts_statusData_checkContactsStatusBuilder()
            ..update(updates))
          ._build();

  _$Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus._(
      {required this.G__typename, required this.inactiveContacts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        inactiveContacts,
        r'Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus',
        'inactiveContacts');
  }

  @override
  Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus rebuild(
          void Function(
                  Gcheck_inactifs_ps_contacts_statusData_checkContactsStatusBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcheck_inactifs_ps_contacts_statusData_checkContactsStatusBuilder
      toBuilder() =>
          new Gcheck_inactifs_ps_contacts_statusData_checkContactsStatusBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus &&
        G__typename == other.G__typename &&
        inactiveContacts == other.inactiveContacts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, inactiveContacts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus')
          ..add('G__typename', G__typename)
          ..add('inactiveContacts', inactiveContacts))
        .toString();
  }
}

class Gcheck_inactifs_ps_contacts_statusData_checkContactsStatusBuilder
    implements
        Builder<Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus,
            Gcheck_inactifs_ps_contacts_statusData_checkContactsStatusBuilder> {
  _$Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<
          Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts>?
      _inactiveContacts;
  ListBuilder<
          Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts>
      get inactiveContacts => _$this._inactiveContacts ??= new ListBuilder<
          Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts>();
  set inactiveContacts(
          ListBuilder<
                  Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts>?
              inactiveContacts) =>
      _$this._inactiveContacts = inactiveContacts;

  Gcheck_inactifs_ps_contacts_statusData_checkContactsStatusBuilder() {
    Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus
        ._initializeBuilder(this);
  }

  Gcheck_inactifs_ps_contacts_statusData_checkContactsStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _inactiveContacts = $v.inactiveContacts.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus;
  }

  @override
  void update(
      void Function(
              Gcheck_inactifs_ps_contacts_statusData_checkContactsStatusBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus build() =>
      _build();

  _$Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus _build() {
    _$Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus _$result;
    try {
      _$result = _$v ??
          new _$Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus',
                  'G__typename'),
              inactiveContacts: inactiveContacts.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'inactiveContacts';
        inactiveContacts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts
    extends Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts {
  @override
  final String G__typename;
  @override
  final String idNat;
  @override
  final String fullName;

  factory _$Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts(
          [void Function(
                  Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContactsBuilder)?
              updates]) =>
      (new Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContactsBuilder()
            ..update(updates))
          ._build();

  _$Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts._(
      {required this.G__typename, required this.idNat, required this.fullName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        idNat,
        r'Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts',
        'idNat');
    BuiltValueNullFieldError.checkNotNull(
        fullName,
        r'Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts',
        'fullName');
  }

  @override
  Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts
      rebuild(
              void Function(
                      Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContactsBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContactsBuilder
      toBuilder() =>
          new Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContactsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts &&
        G__typename == other.G__typename &&
        idNat == other.idNat &&
        fullName == other.fullName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, idNat.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts')
          ..add('G__typename', G__typename)
          ..add('idNat', idNat)
          ..add('fullName', fullName))
        .toString();
  }
}

class Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContactsBuilder
    implements
        Builder<
            Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts,
            Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContactsBuilder> {
  _$Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _idNat;
  String? get idNat => _$this._idNat;
  set idNat(String? idNat) => _$this._idNat = idNat;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContactsBuilder() {
    Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts
        ._initializeBuilder(this);
  }

  Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContactsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _idNat = $v.idNat;
      _fullName = $v.fullName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts;
  }

  @override
  void update(
      void Function(
              Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContactsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts
      build() => _build();

  _$Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts
      _build() {
    final _$result = _$v ??
        new _$Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts',
                'G__typename'),
            idNat: BuiltValueNullFieldError.checkNotNull(
                idNat,
                r'Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts',
                'idNat'),
            fullName: BuiltValueNullFieldError.checkNotNull(
                fullName,
                r'Gcheck_inactifs_ps_contacts_statusData_checkContactsStatus_inactiveContacts',
                'fullName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
