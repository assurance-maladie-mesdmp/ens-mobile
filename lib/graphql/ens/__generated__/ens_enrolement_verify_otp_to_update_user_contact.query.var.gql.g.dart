// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_enrolement_verify_otp_to_update_user_contact.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gverify_otp_to_update_user_contact_in_enrolementVars>
    _$gverifyOtpToUpdateUserContactInEnrolementVarsSerializer =
    new _$Gverify_otp_to_update_user_contact_in_enrolementVarsSerializer();

class _$Gverify_otp_to_update_user_contact_in_enrolementVarsSerializer
    implements
        StructuredSerializer<
            Gverify_otp_to_update_user_contact_in_enrolementVars> {
  @override
  final Iterable<Type> types = const [
    Gverify_otp_to_update_user_contact_in_enrolementVars,
    _$Gverify_otp_to_update_user_contact_in_enrolementVars
  ];
  @override
  final String wireName =
      'Gverify_otp_to_update_user_contact_in_enrolementVars';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gverify_otp_to_update_user_contact_in_enrolementVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'verifyOtpUpdateContact',
      serializers.serialize(object.verifyOtpUpdateContact,
          specifiedType: const FullType(_i1.GVerifyOtpUpdateContactInput)),
    ];

    return result;
  }

  @override
  Gverify_otp_to_update_user_contact_in_enrolementVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gverify_otp_to_update_user_contact_in_enrolementVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'verifyOtpUpdateContact':
          result.verifyOtpUpdateContact.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GVerifyOtpUpdateContactInput))!
              as _i1.GVerifyOtpUpdateContactInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gverify_otp_to_update_user_contact_in_enrolementVars
    extends Gverify_otp_to_update_user_contact_in_enrolementVars {
  @override
  final _i1.GVerifyOtpUpdateContactInput verifyOtpUpdateContact;

  factory _$Gverify_otp_to_update_user_contact_in_enrolementVars(
          [void Function(
                  Gverify_otp_to_update_user_contact_in_enrolementVarsBuilder)?
              updates]) =>
      (new Gverify_otp_to_update_user_contact_in_enrolementVarsBuilder()
            ..update(updates))
          ._build();

  _$Gverify_otp_to_update_user_contact_in_enrolementVars._(
      {required this.verifyOtpUpdateContact})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        verifyOtpUpdateContact,
        r'Gverify_otp_to_update_user_contact_in_enrolementVars',
        'verifyOtpUpdateContact');
  }

  @override
  Gverify_otp_to_update_user_contact_in_enrolementVars rebuild(
          void Function(
                  Gverify_otp_to_update_user_contact_in_enrolementVarsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gverify_otp_to_update_user_contact_in_enrolementVarsBuilder toBuilder() =>
      new Gverify_otp_to_update_user_contact_in_enrolementVarsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gverify_otp_to_update_user_contact_in_enrolementVars &&
        verifyOtpUpdateContact == other.verifyOtpUpdateContact;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifyOtpUpdateContact.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gverify_otp_to_update_user_contact_in_enrolementVars')
          ..add('verifyOtpUpdateContact', verifyOtpUpdateContact))
        .toString();
  }
}

class Gverify_otp_to_update_user_contact_in_enrolementVarsBuilder
    implements
        Builder<Gverify_otp_to_update_user_contact_in_enrolementVars,
            Gverify_otp_to_update_user_contact_in_enrolementVarsBuilder> {
  _$Gverify_otp_to_update_user_contact_in_enrolementVars? _$v;

  _i1.GVerifyOtpUpdateContactInputBuilder? _verifyOtpUpdateContact;
  _i1.GVerifyOtpUpdateContactInputBuilder get verifyOtpUpdateContact =>
      _$this._verifyOtpUpdateContact ??=
          new _i1.GVerifyOtpUpdateContactInputBuilder();
  set verifyOtpUpdateContact(
          _i1.GVerifyOtpUpdateContactInputBuilder? verifyOtpUpdateContact) =>
      _$this._verifyOtpUpdateContact = verifyOtpUpdateContact;

  Gverify_otp_to_update_user_contact_in_enrolementVarsBuilder();

  Gverify_otp_to_update_user_contact_in_enrolementVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifyOtpUpdateContact = $v.verifyOtpUpdateContact.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gverify_otp_to_update_user_contact_in_enrolementVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gverify_otp_to_update_user_contact_in_enrolementVars;
  }

  @override
  void update(
      void Function(
              Gverify_otp_to_update_user_contact_in_enrolementVarsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gverify_otp_to_update_user_contact_in_enrolementVars build() => _build();

  _$Gverify_otp_to_update_user_contact_in_enrolementVars _build() {
    _$Gverify_otp_to_update_user_contact_in_enrolementVars _$result;
    try {
      _$result = _$v ??
          new _$Gverify_otp_to_update_user_contact_in_enrolementVars._(
              verifyOtpUpdateContact: verifyOtpUpdateContact.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verifyOtpUpdateContact';
        verifyOtpUpdateContact.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gverify_otp_to_update_user_contact_in_enrolementVars',
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
