// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_enrolement_generate_new_code.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Ggenerate_new_enrolement_codeData>
    _$ggenerateNewEnrolementCodeDataSerializer =
    new _$Ggenerate_new_enrolement_codeDataSerializer();
Serializer<Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode>
    _$ggenerateNewEnrolementCodeDataGenerateNewEnrolmentCodeSerializer =
    new _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCodeSerializer();
Serializer<
        Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact>
    _$ggenerateNewEnrolementCodeDataGenerateNewEnrolmentCodeUserContactSerializer =
    new _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContactSerializer();
Serializer<
        Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement>
    _$ggenerateNewEnrolementCodeDataGenerateNewEnrolmentCodeListeRattachementSerializer =
    new _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachementSerializer();

class _$Ggenerate_new_enrolement_codeDataSerializer
    implements StructuredSerializer<Ggenerate_new_enrolement_codeData> {
  @override
  final Iterable<Type> types = const [
    Ggenerate_new_enrolement_codeData,
    _$Ggenerate_new_enrolement_codeData
  ];
  @override
  final String wireName = 'Ggenerate_new_enrolement_codeData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Ggenerate_new_enrolement_codeData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'generateNewEnrolmentCode',
      serializers.serialize(object.generateNewEnrolmentCode,
          specifiedType: const FullType(
              Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode)),
    ];

    return result;
  }

  @override
  Ggenerate_new_enrolement_codeData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Ggenerate_new_enrolement_codeDataBuilder();

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
        case 'generateNewEnrolmentCode':
          result.generateNewEnrolmentCode.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode))!
              as Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode);
          break;
      }
    }

    return result.build();
  }
}

class _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCodeSerializer
    implements
        StructuredSerializer<
            Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode> {
  @override
  final Iterable<Type> types = const [
    Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode,
    _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode
  ];
  @override
  final String wireName =
      'Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.firstName;
    if (value != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userContact;
    if (value != null) {
      result
        ..add('userContact')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact)));
    }
    value = object.listeRattachement;
    if (value != null) {
      result
        ..add('listeRattachement')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement)
            ])));
    }
    return result;
  }

  @override
  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Ggenerate_new_enrolement_codeData_generateNewEnrolmentCodeBuilder();

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
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userContact':
          result.userContact.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact))!
              as Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact);
          break;
        case 'listeRattachement':
          result.listeRattachement.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContactSerializer
    implements
        StructuredSerializer<
            Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact> {
  @override
  final Iterable<Type> types = const [
    Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact,
    _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact
  ];
  @override
  final String wireName =
      'Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mobileNumber;
    if (value != null) {
      result
        ..add('mobileNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContactBuilder();

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
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mobileNumber':
          result.mobileNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachementSerializer
    implements
        StructuredSerializer<
            Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement> {
  @override
  final Iterable<Type> types = const [
    Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement,
    _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement
  ];
  @override
  final String wireName =
      'Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement
          object,
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
      'dateOfBirth',
      serializers.serialize(object.dateOfBirth,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.nir;
    if (value != null) {
      result
        ..add('nir')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachementBuilder();

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
        case 'dateOfBirth':
          result.dateOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'nir':
          result.nir = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Ggenerate_new_enrolement_codeData
    extends Ggenerate_new_enrolement_codeData {
  @override
  final String G__typename;
  @override
  final Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode
      generateNewEnrolmentCode;

  factory _$Ggenerate_new_enrolement_codeData(
          [void Function(Ggenerate_new_enrolement_codeDataBuilder)? updates]) =>
      (new Ggenerate_new_enrolement_codeDataBuilder()..update(updates))
          ._build();

  _$Ggenerate_new_enrolement_codeData._(
      {required this.G__typename, required this.generateNewEnrolmentCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Ggenerate_new_enrolement_codeData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(generateNewEnrolmentCode,
        r'Ggenerate_new_enrolement_codeData', 'generateNewEnrolmentCode');
  }

  @override
  Ggenerate_new_enrolement_codeData rebuild(
          void Function(Ggenerate_new_enrolement_codeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Ggenerate_new_enrolement_codeDataBuilder toBuilder() =>
      new Ggenerate_new_enrolement_codeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ggenerate_new_enrolement_codeData &&
        G__typename == other.G__typename &&
        generateNewEnrolmentCode == other.generateNewEnrolmentCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, generateNewEnrolmentCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Ggenerate_new_enrolement_codeData')
          ..add('G__typename', G__typename)
          ..add('generateNewEnrolmentCode', generateNewEnrolmentCode))
        .toString();
  }
}

class Ggenerate_new_enrolement_codeDataBuilder
    implements
        Builder<Ggenerate_new_enrolement_codeData,
            Ggenerate_new_enrolement_codeDataBuilder> {
  _$Ggenerate_new_enrolement_codeData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCodeBuilder?
      _generateNewEnrolmentCode;
  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCodeBuilder
      get generateNewEnrolmentCode => _$this._generateNewEnrolmentCode ??=
          new Ggenerate_new_enrolement_codeData_generateNewEnrolmentCodeBuilder();
  set generateNewEnrolmentCode(
          Ggenerate_new_enrolement_codeData_generateNewEnrolmentCodeBuilder?
              generateNewEnrolmentCode) =>
      _$this._generateNewEnrolmentCode = generateNewEnrolmentCode;

  Ggenerate_new_enrolement_codeDataBuilder() {
    Ggenerate_new_enrolement_codeData._initializeBuilder(this);
  }

  Ggenerate_new_enrolement_codeDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _generateNewEnrolmentCode = $v.generateNewEnrolmentCode.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Ggenerate_new_enrolement_codeData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Ggenerate_new_enrolement_codeData;
  }

  @override
  void update(
      void Function(Ggenerate_new_enrolement_codeDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Ggenerate_new_enrolement_codeData build() => _build();

  _$Ggenerate_new_enrolement_codeData _build() {
    _$Ggenerate_new_enrolement_codeData _$result;
    try {
      _$result = _$v ??
          new _$Ggenerate_new_enrolement_codeData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Ggenerate_new_enrolement_codeData', 'G__typename'),
              generateNewEnrolmentCode: generateNewEnrolmentCode.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'generateNewEnrolmentCode';
        generateNewEnrolmentCode.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Ggenerate_new_enrolement_codeData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode
    extends Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode {
  @override
  final String G__typename;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact?
      userContact;
  @override
  final BuiltList<
          Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement>?
      listeRattachement;

  factory _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode(
          [void Function(
                  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCodeBuilder)?
              updates]) =>
      (new Ggenerate_new_enrolement_codeData_generateNewEnrolmentCodeBuilder()
            ..update(updates))
          ._build();

  _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode._(
      {required this.G__typename,
      this.firstName,
      this.lastName,
      this.userContact,
      this.listeRattachement})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode',
        'G__typename');
  }

  @override
  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode rebuild(
          void Function(
                  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCodeBuilder
      toBuilder() =>
          new Ggenerate_new_enrolement_codeData_generateNewEnrolmentCodeBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode &&
        G__typename == other.G__typename &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        userContact == other.userContact &&
        listeRattachement == other.listeRattachement;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, userContact.hashCode);
    _$hash = $jc(_$hash, listeRattachement.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode')
          ..add('G__typename', G__typename)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('userContact', userContact)
          ..add('listeRattachement', listeRattachement))
        .toString();
  }
}

class Ggenerate_new_enrolement_codeData_generateNewEnrolmentCodeBuilder
    implements
        Builder<Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode,
            Ggenerate_new_enrolement_codeData_generateNewEnrolmentCodeBuilder> {
  _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContactBuilder?
      _userContact;
  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContactBuilder
      get userContact => _$this._userContact ??=
          new Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContactBuilder();
  set userContact(
          Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContactBuilder?
              userContact) =>
      _$this._userContact = userContact;

  ListBuilder<
          Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement>?
      _listeRattachement;
  ListBuilder<
          Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement>
      get listeRattachement => _$this._listeRattachement ??= new ListBuilder<
          Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement>();
  set listeRattachement(
          ListBuilder<
                  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement>?
              listeRattachement) =>
      _$this._listeRattachement = listeRattachement;

  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCodeBuilder() {
    Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode
        ._initializeBuilder(this);
  }

  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _userContact = $v.userContact?.toBuilder();
      _listeRattachement = $v.listeRattachement?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode;
  }

  @override
  void update(
      void Function(
              Ggenerate_new_enrolement_codeData_generateNewEnrolmentCodeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode build() =>
      _build();

  _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode _build() {
    _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode _$result;
    try {
      _$result = _$v ??
          new _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode',
                  'G__typename'),
              firstName: firstName,
              lastName: lastName,
              userContact: _userContact?.build(),
              listeRattachement: _listeRattachement?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userContact';
        _userContact?.build();
        _$failedField = 'listeRattachement';
        _listeRattachement?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact
    extends Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact {
  @override
  final String G__typename;
  @override
  final String? email;
  @override
  final String? mobileNumber;

  factory _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact(
          [void Function(
                  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContactBuilder)?
              updates]) =>
      (new Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContactBuilder()
            ..update(updates))
          ._build();

  _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact._(
      {required this.G__typename, this.email, this.mobileNumber})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact',
        'G__typename');
  }

  @override
  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact rebuild(
          void Function(
                  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContactBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContactBuilder
      toBuilder() =>
          new Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContactBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact &&
        G__typename == other.G__typename &&
        email == other.email &&
        mobileNumber == other.mobileNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, mobileNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact')
          ..add('G__typename', G__typename)
          ..add('email', email)
          ..add('mobileNumber', mobileNumber))
        .toString();
  }
}

class Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContactBuilder
    implements
        Builder<
            Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact,
            Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContactBuilder> {
  _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _mobileNumber;
  String? get mobileNumber => _$this._mobileNumber;
  set mobileNumber(String? mobileNumber) => _$this._mobileNumber = mobileNumber;

  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContactBuilder() {
    Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact
        ._initializeBuilder(this);
  }

  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContactBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _email = $v.email;
      _mobileNumber = $v.mobileNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact;
  }

  @override
  void update(
      void Function(
              Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContactBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact
      build() => _build();

  _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact
      _build() {
    final _$result = _$v ??
        new _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_userContact',
                'G__typename'),
            email: email,
            mobileNumber: mobileNumber);
    replace(_$result);
    return _$result;
  }
}

class _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement
    extends Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement {
  @override
  final String G__typename;
  @override
  final String lastName;
  @override
  final String firstName;
  @override
  final String dateOfBirth;
  @override
  final String? nir;

  factory _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement(
          [void Function(
                  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachementBuilder)?
              updates]) =>
      (new Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachementBuilder()
            ..update(updates))
          ._build();

  _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement._(
      {required this.G__typename,
      required this.lastName,
      required this.firstName,
      required this.dateOfBirth,
      this.nir})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        lastName,
        r'Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement',
        'lastName');
    BuiltValueNullFieldError.checkNotNull(
        firstName,
        r'Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement',
        'firstName');
    BuiltValueNullFieldError.checkNotNull(
        dateOfBirth,
        r'Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement',
        'dateOfBirth');
  }

  @override
  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement
      rebuild(
              void Function(
                      Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachementBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachementBuilder
      toBuilder() =>
          new Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachementBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement &&
        G__typename == other.G__typename &&
        lastName == other.lastName &&
        firstName == other.firstName &&
        dateOfBirth == other.dateOfBirth &&
        nir == other.nir;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, nir.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement')
          ..add('G__typename', G__typename)
          ..add('lastName', lastName)
          ..add('firstName', firstName)
          ..add('dateOfBirth', dateOfBirth)
          ..add('nir', nir))
        .toString();
  }
}

class Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachementBuilder
    implements
        Builder<
            Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement,
            Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachementBuilder> {
  _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _dateOfBirth;
  String? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(String? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _nir;
  String? get nir => _$this._nir;
  set nir(String? nir) => _$this._nir = nir;

  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachementBuilder() {
    Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement
        ._initializeBuilder(this);
  }

  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachementBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _lastName = $v.lastName;
      _firstName = $v.firstName;
      _dateOfBirth = $v.dateOfBirth;
      _nir = $v.nir;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement;
  }

  @override
  void update(
      void Function(
              Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachementBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement
      build() => _build();

  _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement
      _build() {
    final _$result = _$v ??
        new _$Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement',
                'G__typename'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName,
                r'Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement',
                'lastName'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName,
                r'Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement',
                'firstName'),
            dateOfBirth: BuiltValueNullFieldError.checkNotNull(
                dateOfBirth,
                r'Ggenerate_new_enrolement_codeData_generateNewEnrolmentCode_listeRattachement',
                'dateOfBirth'),
            nir: nir);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
