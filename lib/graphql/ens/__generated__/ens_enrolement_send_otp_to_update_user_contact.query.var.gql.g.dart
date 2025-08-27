// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_enrolement_send_otp_to_update_user_contact.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gsend_otp_to_update_user_contact_in_enrolementVars>
    _$gsendOtpToUpdateUserContactInEnrolementVarsSerializer =
    new _$Gsend_otp_to_update_user_contact_in_enrolementVarsSerializer();

class _$Gsend_otp_to_update_user_contact_in_enrolementVarsSerializer
    implements
        StructuredSerializer<
            Gsend_otp_to_update_user_contact_in_enrolementVars> {
  @override
  final Iterable<Type> types = const [
    Gsend_otp_to_update_user_contact_in_enrolementVars,
    _$Gsend_otp_to_update_user_contact_in_enrolementVars
  ];
  @override
  final String wireName = 'Gsend_otp_to_update_user_contact_in_enrolementVars';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gsend_otp_to_update_user_contact_in_enrolementVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'sendOtpUpdateContact',
      serializers.serialize(object.sendOtpUpdateContact,
          specifiedType: const FullType(_i1.GSendOtpUpdateContactInput)),
    ];

    return result;
  }

  @override
  Gsend_otp_to_update_user_contact_in_enrolementVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gsend_otp_to_update_user_contact_in_enrolementVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'sendOtpUpdateContact':
          result.sendOtpUpdateContact.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GSendOtpUpdateContactInput))!
              as _i1.GSendOtpUpdateContactInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_otp_to_update_user_contact_in_enrolementVars
    extends Gsend_otp_to_update_user_contact_in_enrolementVars {
  @override
  final _i1.GSendOtpUpdateContactInput sendOtpUpdateContact;

  factory _$Gsend_otp_to_update_user_contact_in_enrolementVars(
          [void Function(
                  Gsend_otp_to_update_user_contact_in_enrolementVarsBuilder)?
              updates]) =>
      (new Gsend_otp_to_update_user_contact_in_enrolementVarsBuilder()
            ..update(updates))
          ._build();

  _$Gsend_otp_to_update_user_contact_in_enrolementVars._(
      {required this.sendOtpUpdateContact})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        sendOtpUpdateContact,
        r'Gsend_otp_to_update_user_contact_in_enrolementVars',
        'sendOtpUpdateContact');
  }

  @override
  Gsend_otp_to_update_user_contact_in_enrolementVars rebuild(
          void Function(
                  Gsend_otp_to_update_user_contact_in_enrolementVarsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_otp_to_update_user_contact_in_enrolementVarsBuilder toBuilder() =>
      new Gsend_otp_to_update_user_contact_in_enrolementVarsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsend_otp_to_update_user_contact_in_enrolementVars &&
        sendOtpUpdateContact == other.sendOtpUpdateContact;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sendOtpUpdateContact.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gsend_otp_to_update_user_contact_in_enrolementVars')
          ..add('sendOtpUpdateContact', sendOtpUpdateContact))
        .toString();
  }
}

class Gsend_otp_to_update_user_contact_in_enrolementVarsBuilder
    implements
        Builder<Gsend_otp_to_update_user_contact_in_enrolementVars,
            Gsend_otp_to_update_user_contact_in_enrolementVarsBuilder> {
  _$Gsend_otp_to_update_user_contact_in_enrolementVars? _$v;

  _i1.GSendOtpUpdateContactInputBuilder? _sendOtpUpdateContact;
  _i1.GSendOtpUpdateContactInputBuilder get sendOtpUpdateContact =>
      _$this._sendOtpUpdateContact ??=
          new _i1.GSendOtpUpdateContactInputBuilder();
  set sendOtpUpdateContact(
          _i1.GSendOtpUpdateContactInputBuilder? sendOtpUpdateContact) =>
      _$this._sendOtpUpdateContact = sendOtpUpdateContact;

  Gsend_otp_to_update_user_contact_in_enrolementVarsBuilder();

  Gsend_otp_to_update_user_contact_in_enrolementVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sendOtpUpdateContact = $v.sendOtpUpdateContact.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsend_otp_to_update_user_contact_in_enrolementVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsend_otp_to_update_user_contact_in_enrolementVars;
  }

  @override
  void update(
      void Function(Gsend_otp_to_update_user_contact_in_enrolementVarsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_otp_to_update_user_contact_in_enrolementVars build() => _build();

  _$Gsend_otp_to_update_user_contact_in_enrolementVars _build() {
    _$Gsend_otp_to_update_user_contact_in_enrolementVars _$result;
    try {
      _$result = _$v ??
          new _$Gsend_otp_to_update_user_contact_in_enrolementVars._(
              sendOtpUpdateContact: sendOtpUpdateContact.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sendOtpUpdateContact';
        sendOtpUpdateContact.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gsend_otp_to_update_user_contact_in_enrolementVars',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
