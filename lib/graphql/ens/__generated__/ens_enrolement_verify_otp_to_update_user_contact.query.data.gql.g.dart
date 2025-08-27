// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_enrolement_verify_otp_to_update_user_contact.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gverify_otp_to_update_user_contact_in_enrolementData>
    _$gverifyOtpToUpdateUserContactInEnrolementDataSerializer =
    new _$Gverify_otp_to_update_user_contact_in_enrolementDataSerializer();
Serializer<
        Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact>
    _$gverifyOtpToUpdateUserContactInEnrolementDataVerifyOtpUpdateContactSerializer =
    new _$Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContactSerializer();

class _$Gverify_otp_to_update_user_contact_in_enrolementDataSerializer
    implements
        StructuredSerializer<
            Gverify_otp_to_update_user_contact_in_enrolementData> {
  @override
  final Iterable<Type> types = const [
    Gverify_otp_to_update_user_contact_in_enrolementData,
    _$Gverify_otp_to_update_user_contact_in_enrolementData
  ];
  @override
  final String wireName =
      'Gverify_otp_to_update_user_contact_in_enrolementData';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gverify_otp_to_update_user_contact_in_enrolementData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'verifyOtpUpdateContact',
      serializers.serialize(object.verifyOtpUpdateContact,
          specifiedType: const FullType(
              Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact)),
    ];

    return result;
  }

  @override
  Gverify_otp_to_update_user_contact_in_enrolementData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gverify_otp_to_update_user_contact_in_enrolementDataBuilder();

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
        case 'verifyOtpUpdateContact':
          result.verifyOtpUpdateContact.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact))!
              as Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact);
          break;
      }
    }

    return result.build();
  }
}

class _$Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContactSerializer
    implements
        StructuredSerializer<
            Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact> {
  @override
  final Iterable<Type> types = const [
    Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact,
    _$Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact
  ];
  @override
  final String wireName =
      'Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'isOtpCodeValid',
      serializers.serialize(object.isOtpCodeValid,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContactBuilder();

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
        case 'isOtpCodeValid':
          result.isOtpCodeValid = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gverify_otp_to_update_user_contact_in_enrolementData
    extends Gverify_otp_to_update_user_contact_in_enrolementData {
  @override
  final String G__typename;
  @override
  final Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact
      verifyOtpUpdateContact;

  factory _$Gverify_otp_to_update_user_contact_in_enrolementData(
          [void Function(
                  Gverify_otp_to_update_user_contact_in_enrolementDataBuilder)?
              updates]) =>
      (new Gverify_otp_to_update_user_contact_in_enrolementDataBuilder()
            ..update(updates))
          ._build();

  _$Gverify_otp_to_update_user_contact_in_enrolementData._(
      {required this.G__typename, required this.verifyOtpUpdateContact})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gverify_otp_to_update_user_contact_in_enrolementData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        verifyOtpUpdateContact,
        r'Gverify_otp_to_update_user_contact_in_enrolementData',
        'verifyOtpUpdateContact');
  }

  @override
  Gverify_otp_to_update_user_contact_in_enrolementData rebuild(
          void Function(
                  Gverify_otp_to_update_user_contact_in_enrolementDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gverify_otp_to_update_user_contact_in_enrolementDataBuilder toBuilder() =>
      new Gverify_otp_to_update_user_contact_in_enrolementDataBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gverify_otp_to_update_user_contact_in_enrolementData &&
        G__typename == other.G__typename &&
        verifyOtpUpdateContact == other.verifyOtpUpdateContact;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, verifyOtpUpdateContact.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gverify_otp_to_update_user_contact_in_enrolementData')
          ..add('G__typename', G__typename)
          ..add('verifyOtpUpdateContact', verifyOtpUpdateContact))
        .toString();
  }
}

class Gverify_otp_to_update_user_contact_in_enrolementDataBuilder
    implements
        Builder<Gverify_otp_to_update_user_contact_in_enrolementData,
            Gverify_otp_to_update_user_contact_in_enrolementDataBuilder> {
  _$Gverify_otp_to_update_user_contact_in_enrolementData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContactBuilder?
      _verifyOtpUpdateContact;
  Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContactBuilder
      get verifyOtpUpdateContact => _$this._verifyOtpUpdateContact ??=
          new Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContactBuilder();
  set verifyOtpUpdateContact(
          Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContactBuilder?
              verifyOtpUpdateContact) =>
      _$this._verifyOtpUpdateContact = verifyOtpUpdateContact;

  Gverify_otp_to_update_user_contact_in_enrolementDataBuilder() {
    Gverify_otp_to_update_user_contact_in_enrolementData._initializeBuilder(
        this);
  }

  Gverify_otp_to_update_user_contact_in_enrolementDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _verifyOtpUpdateContact = $v.verifyOtpUpdateContact.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gverify_otp_to_update_user_contact_in_enrolementData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gverify_otp_to_update_user_contact_in_enrolementData;
  }

  @override
  void update(
      void Function(
              Gverify_otp_to_update_user_contact_in_enrolementDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gverify_otp_to_update_user_contact_in_enrolementData build() => _build();

  _$Gverify_otp_to_update_user_contact_in_enrolementData _build() {
    _$Gverify_otp_to_update_user_contact_in_enrolementData _$result;
    try {
      _$result = _$v ??
          new _$Gverify_otp_to_update_user_contact_in_enrolementData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gverify_otp_to_update_user_contact_in_enrolementData',
                  'G__typename'),
              verifyOtpUpdateContact: verifyOtpUpdateContact.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verifyOtpUpdateContact';
        verifyOtpUpdateContact.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gverify_otp_to_update_user_contact_in_enrolementData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact
    extends Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact {
  @override
  final String G__typename;
  @override
  final bool isOtpCodeValid;

  factory _$Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact(
          [void Function(
                  Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContactBuilder)?
              updates]) =>
      (new Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContactBuilder()
            ..update(updates))
          ._build();

  _$Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact._(
      {required this.G__typename, required this.isOtpCodeValid})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        isOtpCodeValid,
        r'Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact',
        'isOtpCodeValid');
  }

  @override
  Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact
      rebuild(
              void Function(
                      Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContactBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContactBuilder
      toBuilder() =>
          new Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContactBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact &&
        G__typename == other.G__typename &&
        isOtpCodeValid == other.isOtpCodeValid;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, isOtpCodeValid.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact')
          ..add('G__typename', G__typename)
          ..add('isOtpCodeValid', isOtpCodeValid))
        .toString();
  }
}

class Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContactBuilder
    implements
        Builder<
            Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact,
            Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContactBuilder> {
  _$Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _isOtpCodeValid;
  bool? get isOtpCodeValid => _$this._isOtpCodeValid;
  set isOtpCodeValid(bool? isOtpCodeValid) =>
      _$this._isOtpCodeValid = isOtpCodeValid;

  Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContactBuilder() {
    Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact
        ._initializeBuilder(this);
  }

  Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContactBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _isOtpCodeValid = $v.isOtpCodeValid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact;
  }

  @override
  void update(
      void Function(
              Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContactBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact
      build() => _build();

  _$Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact
      _build() {
    final _$result = _$v ??
        new _$Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact',
                'G__typename'),
            isOtpCodeValid: BuiltValueNullFieldError.checkNotNull(
                isOtpCodeValid,
                r'Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact',
                'isOtpCodeValid'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
