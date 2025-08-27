// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_enrolement_send_otp_to_update_user_contact.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gsend_otp_to_update_user_contact_in_enrolementData>
    _$gsendOtpToUpdateUserContactInEnrolementDataSerializer =
    new _$Gsend_otp_to_update_user_contact_in_enrolementDataSerializer();
Serializer<
        Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact>
    _$gsendOtpToUpdateUserContactInEnrolementDataSendOtpUpdateContactSerializer =
    new _$Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContactSerializer();

class _$Gsend_otp_to_update_user_contact_in_enrolementDataSerializer
    implements
        StructuredSerializer<
            Gsend_otp_to_update_user_contact_in_enrolementData> {
  @override
  final Iterable<Type> types = const [
    Gsend_otp_to_update_user_contact_in_enrolementData,
    _$Gsend_otp_to_update_user_contact_in_enrolementData
  ];
  @override
  final String wireName = 'Gsend_otp_to_update_user_contact_in_enrolementData';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gsend_otp_to_update_user_contact_in_enrolementData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'sendOtpUpdateContact',
      serializers.serialize(object.sendOtpUpdateContact,
          specifiedType: const FullType(
              Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact)),
    ];

    return result;
  }

  @override
  Gsend_otp_to_update_user_contact_in_enrolementData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gsend_otp_to_update_user_contact_in_enrolementDataBuilder();

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
        case 'sendOtpUpdateContact':
          result.sendOtpUpdateContact.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact))!
              as Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact);
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContactSerializer
    implements
        StructuredSerializer<
            Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact> {
  @override
  final Iterable<Type> types = const [
    Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact,
    _$Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact
  ];
  @override
  final String wireName =
      'Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'success',
      serializers.serialize(object.success,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContactBuilder();

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
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_otp_to_update_user_contact_in_enrolementData
    extends Gsend_otp_to_update_user_contact_in_enrolementData {
  @override
  final String G__typename;
  @override
  final Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact
      sendOtpUpdateContact;

  factory _$Gsend_otp_to_update_user_contact_in_enrolementData(
          [void Function(
                  Gsend_otp_to_update_user_contact_in_enrolementDataBuilder)?
              updates]) =>
      (new Gsend_otp_to_update_user_contact_in_enrolementDataBuilder()
            ..update(updates))
          ._build();

  _$Gsend_otp_to_update_user_contact_in_enrolementData._(
      {required this.G__typename, required this.sendOtpUpdateContact})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gsend_otp_to_update_user_contact_in_enrolementData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        sendOtpUpdateContact,
        r'Gsend_otp_to_update_user_contact_in_enrolementData',
        'sendOtpUpdateContact');
  }

  @override
  Gsend_otp_to_update_user_contact_in_enrolementData rebuild(
          void Function(
                  Gsend_otp_to_update_user_contact_in_enrolementDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_otp_to_update_user_contact_in_enrolementDataBuilder toBuilder() =>
      new Gsend_otp_to_update_user_contact_in_enrolementDataBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsend_otp_to_update_user_contact_in_enrolementData &&
        G__typename == other.G__typename &&
        sendOtpUpdateContact == other.sendOtpUpdateContact;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, sendOtpUpdateContact.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gsend_otp_to_update_user_contact_in_enrolementData')
          ..add('G__typename', G__typename)
          ..add('sendOtpUpdateContact', sendOtpUpdateContact))
        .toString();
  }
}

class Gsend_otp_to_update_user_contact_in_enrolementDataBuilder
    implements
        Builder<Gsend_otp_to_update_user_contact_in_enrolementData,
            Gsend_otp_to_update_user_contact_in_enrolementDataBuilder> {
  _$Gsend_otp_to_update_user_contact_in_enrolementData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContactBuilder?
      _sendOtpUpdateContact;
  Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContactBuilder
      get sendOtpUpdateContact => _$this._sendOtpUpdateContact ??=
          new Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContactBuilder();
  set sendOtpUpdateContact(
          Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContactBuilder?
              sendOtpUpdateContact) =>
      _$this._sendOtpUpdateContact = sendOtpUpdateContact;

  Gsend_otp_to_update_user_contact_in_enrolementDataBuilder() {
    Gsend_otp_to_update_user_contact_in_enrolementData._initializeBuilder(this);
  }

  Gsend_otp_to_update_user_contact_in_enrolementDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _sendOtpUpdateContact = $v.sendOtpUpdateContact.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsend_otp_to_update_user_contact_in_enrolementData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsend_otp_to_update_user_contact_in_enrolementData;
  }

  @override
  void update(
      void Function(Gsend_otp_to_update_user_contact_in_enrolementDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_otp_to_update_user_contact_in_enrolementData build() => _build();

  _$Gsend_otp_to_update_user_contact_in_enrolementData _build() {
    _$Gsend_otp_to_update_user_contact_in_enrolementData _$result;
    try {
      _$result = _$v ??
          new _$Gsend_otp_to_update_user_contact_in_enrolementData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gsend_otp_to_update_user_contact_in_enrolementData',
                  'G__typename'),
              sendOtpUpdateContact: sendOtpUpdateContact.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sendOtpUpdateContact';
        sendOtpUpdateContact.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gsend_otp_to_update_user_contact_in_enrolementData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact
    extends Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact(
          [void Function(
                  Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContactBuilder)?
              updates]) =>
      (new Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContactBuilder()
            ..update(updates))
          ._build();

  _$Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success,
        r'Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact',
        'success');
  }

  @override
  Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact rebuild(
          void Function(
                  Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContactBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContactBuilder
      toBuilder() =>
          new Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContactBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact &&
        G__typename == other.G__typename &&
        success == other.success;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContactBuilder
    implements
        Builder<
            Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact,
            Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContactBuilder> {
  _$Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContactBuilder() {
    Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact
        ._initializeBuilder(this);
  }

  Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContactBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact;
  }

  @override
  void update(
      void Function(
              Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContactBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact
      build() => _build();

  _$Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact
      _build() {
    final _$result = _$v ??
        new _$Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
