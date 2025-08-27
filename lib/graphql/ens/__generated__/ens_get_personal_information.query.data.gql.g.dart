// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_get_personal_information.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_personal_informationData>
    _$ggetPersonalInformationDataSerializer =
    new _$Gget_personal_informationDataSerializer();
Serializer<Gget_personal_informationData_getPersonalInformation>
    _$ggetPersonalInformationDataGetPersonalInformationSerializer =
    new _$Gget_personal_informationData_getPersonalInformationSerializer();

class _$Gget_personal_informationDataSerializer
    implements StructuredSerializer<Gget_personal_informationData> {
  @override
  final Iterable<Type> types = const [
    Gget_personal_informationData,
    _$Gget_personal_informationData
  ];
  @override
  final String wireName = 'Gget_personal_informationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_personal_informationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getPersonalInformation;
    if (value != null) {
      result
        ..add('getPersonalInformation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_personal_informationData_getPersonalInformation)));
    }
    return result;
  }

  @override
  Gget_personal_informationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_personal_informationDataBuilder();

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
        case 'getPersonalInformation':
          result.getPersonalInformation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_personal_informationData_getPersonalInformation))!
              as Gget_personal_informationData_getPersonalInformation);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_personal_informationData_getPersonalInformationSerializer
    implements
        StructuredSerializer<
            Gget_personal_informationData_getPersonalInformation> {
  @override
  final Iterable<Type> types = const [
    Gget_personal_informationData_getPersonalInformation,
    _$Gget_personal_informationData_getPersonalInformation
  ];
  @override
  final String wireName =
      'Gget_personal_informationData_getPersonalInformation';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_personal_informationData_getPersonalInformation object,
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
      'birthDate',
      serializers.serialize(object.birthDate,
          specifiedType: const FullType(String)),
      'sex',
      serializers.serialize(object.sex, specifiedType: const FullType(String)),
      'ins',
      serializers.serialize(object.ins, specifiedType: const FullType(String)),
      'hasConfidentialitySettingsSet',
      serializers.serialize(object.hasConfidentialitySettingsSet,
          specifiedType: const FullType(bool)),
      'ensStatus',
      serializers.serialize(object.ensStatus,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.mail;
    if (value != null) {
      result
        ..add('mail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.onboarding;
    if (value != null) {
      result
        ..add('onboarding')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.inseeCode;
    if (value != null) {
      result
        ..add('inseeCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cguAcceptedAt;
    if (value != null) {
      result
        ..add('cguAcceptedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_personal_informationData_getPersonalInformation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_personal_informationData_getPersonalInformationBuilder();

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
        case 'birthDate':
          result.birthDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'sex':
          result.sex = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'mail':
          result.mail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ins':
          result.ins = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'onboarding':
          result.onboarding = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'inseeCode':
          result.inseeCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cguAcceptedAt':
          result.cguAcceptedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'hasConfidentialitySettingsSet':
          result.hasConfidentialitySettingsSet = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'ensStatus':
          result.ensStatus = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_personal_informationData extends Gget_personal_informationData {
  @override
  final String G__typename;
  @override
  final Gget_personal_informationData_getPersonalInformation?
      getPersonalInformation;

  factory _$Gget_personal_informationData(
          [void Function(Gget_personal_informationDataBuilder)? updates]) =>
      (new Gget_personal_informationDataBuilder()..update(updates))._build();

  _$Gget_personal_informationData._(
      {required this.G__typename, this.getPersonalInformation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_personal_informationData', 'G__typename');
  }

  @override
  Gget_personal_informationData rebuild(
          void Function(Gget_personal_informationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_personal_informationDataBuilder toBuilder() =>
      new Gget_personal_informationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_personal_informationData &&
        G__typename == other.G__typename &&
        getPersonalInformation == other.getPersonalInformation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getPersonalInformation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_personal_informationData')
          ..add('G__typename', G__typename)
          ..add('getPersonalInformation', getPersonalInformation))
        .toString();
  }
}

class Gget_personal_informationDataBuilder
    implements
        Builder<Gget_personal_informationData,
            Gget_personal_informationDataBuilder> {
  _$Gget_personal_informationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_personal_informationData_getPersonalInformationBuilder?
      _getPersonalInformation;
  Gget_personal_informationData_getPersonalInformationBuilder
      get getPersonalInformation => _$this._getPersonalInformation ??=
          new Gget_personal_informationData_getPersonalInformationBuilder();
  set getPersonalInformation(
          Gget_personal_informationData_getPersonalInformationBuilder?
              getPersonalInformation) =>
      _$this._getPersonalInformation = getPersonalInformation;

  Gget_personal_informationDataBuilder() {
    Gget_personal_informationData._initializeBuilder(this);
  }

  Gget_personal_informationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getPersonalInformation = $v.getPersonalInformation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_personal_informationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_personal_informationData;
  }

  @override
  void update(void Function(Gget_personal_informationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_personal_informationData build() => _build();

  _$Gget_personal_informationData _build() {
    _$Gget_personal_informationData _$result;
    try {
      _$result = _$v ??
          new _$Gget_personal_informationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_personal_informationData', 'G__typename'),
              getPersonalInformation: _getPersonalInformation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getPersonalInformation';
        _getPersonalInformation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_personal_informationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_personal_informationData_getPersonalInformation
    extends Gget_personal_informationData_getPersonalInformation {
  @override
  final String G__typename;
  @override
  final String lastName;
  @override
  final String firstName;
  @override
  final String birthDate;
  @override
  final String sex;
  @override
  final String? mail;
  @override
  final String? phoneNumber;
  @override
  final String ins;
  @override
  final String? onboarding;
  @override
  final String? inseeCode;
  @override
  final String? cguAcceptedAt;
  @override
  final bool hasConfidentialitySettingsSet;
  @override
  final String ensStatus;

  factory _$Gget_personal_informationData_getPersonalInformation(
          [void Function(
                  Gget_personal_informationData_getPersonalInformationBuilder)?
              updates]) =>
      (new Gget_personal_informationData_getPersonalInformationBuilder()
            ..update(updates))
          ._build();

  _$Gget_personal_informationData_getPersonalInformation._(
      {required this.G__typename,
      required this.lastName,
      required this.firstName,
      required this.birthDate,
      required this.sex,
      this.mail,
      this.phoneNumber,
      required this.ins,
      this.onboarding,
      this.inseeCode,
      this.cguAcceptedAt,
      required this.hasConfidentialitySettingsSet,
      required this.ensStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_personal_informationData_getPersonalInformation', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(lastName,
        r'Gget_personal_informationData_getPersonalInformation', 'lastName');
    BuiltValueNullFieldError.checkNotNull(firstName,
        r'Gget_personal_informationData_getPersonalInformation', 'firstName');
    BuiltValueNullFieldError.checkNotNull(birthDate,
        r'Gget_personal_informationData_getPersonalInformation', 'birthDate');
    BuiltValueNullFieldError.checkNotNull(
        sex, r'Gget_personal_informationData_getPersonalInformation', 'sex');
    BuiltValueNullFieldError.checkNotNull(
        ins, r'Gget_personal_informationData_getPersonalInformation', 'ins');
    BuiltValueNullFieldError.checkNotNull(
        hasConfidentialitySettingsSet,
        r'Gget_personal_informationData_getPersonalInformation',
        'hasConfidentialitySettingsSet');
    BuiltValueNullFieldError.checkNotNull(ensStatus,
        r'Gget_personal_informationData_getPersonalInformation', 'ensStatus');
  }

  @override
  Gget_personal_informationData_getPersonalInformation rebuild(
          void Function(
                  Gget_personal_informationData_getPersonalInformationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_personal_informationData_getPersonalInformationBuilder toBuilder() =>
      new Gget_personal_informationData_getPersonalInformationBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_personal_informationData_getPersonalInformation &&
        G__typename == other.G__typename &&
        lastName == other.lastName &&
        firstName == other.firstName &&
        birthDate == other.birthDate &&
        sex == other.sex &&
        mail == other.mail &&
        phoneNumber == other.phoneNumber &&
        ins == other.ins &&
        onboarding == other.onboarding &&
        inseeCode == other.inseeCode &&
        cguAcceptedAt == other.cguAcceptedAt &&
        hasConfidentialitySettingsSet == other.hasConfidentialitySettingsSet &&
        ensStatus == other.ensStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, birthDate.hashCode);
    _$hash = $jc(_$hash, sex.hashCode);
    _$hash = $jc(_$hash, mail.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, ins.hashCode);
    _$hash = $jc(_$hash, onboarding.hashCode);
    _$hash = $jc(_$hash, inseeCode.hashCode);
    _$hash = $jc(_$hash, cguAcceptedAt.hashCode);
    _$hash = $jc(_$hash, hasConfidentialitySettingsSet.hashCode);
    _$hash = $jc(_$hash, ensStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_personal_informationData_getPersonalInformation')
          ..add('G__typename', G__typename)
          ..add('lastName', lastName)
          ..add('firstName', firstName)
          ..add('birthDate', birthDate)
          ..add('sex', sex)
          ..add('mail', mail)
          ..add('phoneNumber', phoneNumber)
          ..add('ins', ins)
          ..add('onboarding', onboarding)
          ..add('inseeCode', inseeCode)
          ..add('cguAcceptedAt', cguAcceptedAt)
          ..add('hasConfidentialitySettingsSet', hasConfidentialitySettingsSet)
          ..add('ensStatus', ensStatus))
        .toString();
  }
}

class Gget_personal_informationData_getPersonalInformationBuilder
    implements
        Builder<Gget_personal_informationData_getPersonalInformation,
            Gget_personal_informationData_getPersonalInformationBuilder> {
  _$Gget_personal_informationData_getPersonalInformation? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _birthDate;
  String? get birthDate => _$this._birthDate;
  set birthDate(String? birthDate) => _$this._birthDate = birthDate;

  String? _sex;
  String? get sex => _$this._sex;
  set sex(String? sex) => _$this._sex = sex;

  String? _mail;
  String? get mail => _$this._mail;
  set mail(String? mail) => _$this._mail = mail;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _ins;
  String? get ins => _$this._ins;
  set ins(String? ins) => _$this._ins = ins;

  String? _onboarding;
  String? get onboarding => _$this._onboarding;
  set onboarding(String? onboarding) => _$this._onboarding = onboarding;

  String? _inseeCode;
  String? get inseeCode => _$this._inseeCode;
  set inseeCode(String? inseeCode) => _$this._inseeCode = inseeCode;

  String? _cguAcceptedAt;
  String? get cguAcceptedAt => _$this._cguAcceptedAt;
  set cguAcceptedAt(String? cguAcceptedAt) =>
      _$this._cguAcceptedAt = cguAcceptedAt;

  bool? _hasConfidentialitySettingsSet;
  bool? get hasConfidentialitySettingsSet =>
      _$this._hasConfidentialitySettingsSet;
  set hasConfidentialitySettingsSet(bool? hasConfidentialitySettingsSet) =>
      _$this._hasConfidentialitySettingsSet = hasConfidentialitySettingsSet;

  String? _ensStatus;
  String? get ensStatus => _$this._ensStatus;
  set ensStatus(String? ensStatus) => _$this._ensStatus = ensStatus;

  Gget_personal_informationData_getPersonalInformationBuilder() {
    Gget_personal_informationData_getPersonalInformation._initializeBuilder(
        this);
  }

  Gget_personal_informationData_getPersonalInformationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _lastName = $v.lastName;
      _firstName = $v.firstName;
      _birthDate = $v.birthDate;
      _sex = $v.sex;
      _mail = $v.mail;
      _phoneNumber = $v.phoneNumber;
      _ins = $v.ins;
      _onboarding = $v.onboarding;
      _inseeCode = $v.inseeCode;
      _cguAcceptedAt = $v.cguAcceptedAt;
      _hasConfidentialitySettingsSet = $v.hasConfidentialitySettingsSet;
      _ensStatus = $v.ensStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_personal_informationData_getPersonalInformation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_personal_informationData_getPersonalInformation;
  }

  @override
  void update(
      void Function(
              Gget_personal_informationData_getPersonalInformationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_personal_informationData_getPersonalInformation build() => _build();

  _$Gget_personal_informationData_getPersonalInformation _build() {
    final _$result = _$v ??
        new _$Gget_personal_informationData_getPersonalInformation._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'Gget_personal_informationData_getPersonalInformation', 'G__typename'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'Gget_personal_informationData_getPersonalInformation', 'lastName'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'Gget_personal_informationData_getPersonalInformation', 'firstName'),
            birthDate: BuiltValueNullFieldError.checkNotNull(
                birthDate, r'Gget_personal_informationData_getPersonalInformation', 'birthDate'),
            sex: BuiltValueNullFieldError.checkNotNull(
                sex, r'Gget_personal_informationData_getPersonalInformation', 'sex'),
            mail: mail,
            phoneNumber: phoneNumber,
            ins: BuiltValueNullFieldError.checkNotNull(
                ins, r'Gget_personal_informationData_getPersonalInformation', 'ins'),
            onboarding: onboarding,
            inseeCode: inseeCode,
            cguAcceptedAt: cguAcceptedAt,
            hasConfidentialitySettingsSet: BuiltValueNullFieldError.checkNotNull(
                hasConfidentialitySettingsSet, r'Gget_personal_informationData_getPersonalInformation', 'hasConfidentialitySettingsSet'),
            ensStatus: BuiltValueNullFieldError.checkNotNull(ensStatus, r'Gget_personal_informationData_getPersonalInformation', 'ensStatus'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
