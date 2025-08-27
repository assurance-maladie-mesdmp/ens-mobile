// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_account_validate_otp.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gvalidate_otpData> _$gvalidateOtpDataSerializer =
    new _$Gvalidate_otpDataSerializer();
Serializer<Gvalidate_otpData_validateOtp>
    _$gvalidateOtpDataValidateOtpSerializer =
    new _$Gvalidate_otpData_validateOtpSerializer();

class _$Gvalidate_otpDataSerializer
    implements StructuredSerializer<Gvalidate_otpData> {
  @override
  final Iterable<Type> types = const [Gvalidate_otpData, _$Gvalidate_otpData];
  @override
  final String wireName = 'Gvalidate_otpData';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gvalidate_otpData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'validateOtp',
      serializers.serialize(object.validateOtp,
          specifiedType: const FullType(Gvalidate_otpData_validateOtp)),
    ];

    return result;
  }

  @override
  Gvalidate_otpData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gvalidate_otpDataBuilder();

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
        case 'validateOtp':
          result.validateOtp.replace(serializers.deserialize(value,
                  specifiedType: const FullType(Gvalidate_otpData_validateOtp))!
              as Gvalidate_otpData_validateOtp);
          break;
      }
    }

    return result.build();
  }
}

class _$Gvalidate_otpData_validateOtpSerializer
    implements StructuredSerializer<Gvalidate_otpData_validateOtp> {
  @override
  final Iterable<Type> types = const [
    Gvalidate_otpData_validateOtp,
    _$Gvalidate_otpData_validateOtp
  ];
  @override
  final String wireName = 'Gvalidate_otpData_validateOtp';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gvalidate_otpData_validateOtp object,
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
  Gvalidate_otpData_validateOtp deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gvalidate_otpData_validateOtpBuilder();

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

class _$Gvalidate_otpData extends Gvalidate_otpData {
  @override
  final String G__typename;
  @override
  final Gvalidate_otpData_validateOtp validateOtp;

  factory _$Gvalidate_otpData(
          [void Function(Gvalidate_otpDataBuilder)? updates]) =>
      (new Gvalidate_otpDataBuilder()..update(updates))._build();

  _$Gvalidate_otpData._({required this.G__typename, required this.validateOtp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gvalidate_otpData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        validateOtp, r'Gvalidate_otpData', 'validateOtp');
  }

  @override
  Gvalidate_otpData rebuild(void Function(Gvalidate_otpDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gvalidate_otpDataBuilder toBuilder() =>
      new Gvalidate_otpDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gvalidate_otpData &&
        G__typename == other.G__typename &&
        validateOtp == other.validateOtp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, validateOtp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gvalidate_otpData')
          ..add('G__typename', G__typename)
          ..add('validateOtp', validateOtp))
        .toString();
  }
}

class Gvalidate_otpDataBuilder
    implements Builder<Gvalidate_otpData, Gvalidate_otpDataBuilder> {
  _$Gvalidate_otpData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gvalidate_otpData_validateOtpBuilder? _validateOtp;
  Gvalidate_otpData_validateOtpBuilder get validateOtp =>
      _$this._validateOtp ??= new Gvalidate_otpData_validateOtpBuilder();
  set validateOtp(Gvalidate_otpData_validateOtpBuilder? validateOtp) =>
      _$this._validateOtp = validateOtp;

  Gvalidate_otpDataBuilder() {
    Gvalidate_otpData._initializeBuilder(this);
  }

  Gvalidate_otpDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _validateOtp = $v.validateOtp.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gvalidate_otpData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gvalidate_otpData;
  }

  @override
  void update(void Function(Gvalidate_otpDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gvalidate_otpData build() => _build();

  _$Gvalidate_otpData _build() {
    _$Gvalidate_otpData _$result;
    try {
      _$result = _$v ??
          new _$Gvalidate_otpData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gvalidate_otpData', 'G__typename'),
              validateOtp: validateOtp.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'validateOtp';
        validateOtp.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gvalidate_otpData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gvalidate_otpData_validateOtp extends Gvalidate_otpData_validateOtp {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gvalidate_otpData_validateOtp(
          [void Function(Gvalidate_otpData_validateOtpBuilder)? updates]) =>
      (new Gvalidate_otpData_validateOtpBuilder()..update(updates))._build();

  _$Gvalidate_otpData_validateOtp._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gvalidate_otpData_validateOtp', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gvalidate_otpData_validateOtp', 'success');
  }

  @override
  Gvalidate_otpData_validateOtp rebuild(
          void Function(Gvalidate_otpData_validateOtpBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gvalidate_otpData_validateOtpBuilder toBuilder() =>
      new Gvalidate_otpData_validateOtpBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gvalidate_otpData_validateOtp &&
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
    return (newBuiltValueToStringHelper(r'Gvalidate_otpData_validateOtp')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gvalidate_otpData_validateOtpBuilder
    implements
        Builder<Gvalidate_otpData_validateOtp,
            Gvalidate_otpData_validateOtpBuilder> {
  _$Gvalidate_otpData_validateOtp? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gvalidate_otpData_validateOtpBuilder() {
    Gvalidate_otpData_validateOtp._initializeBuilder(this);
  }

  Gvalidate_otpData_validateOtpBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gvalidate_otpData_validateOtp other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gvalidate_otpData_validateOtp;
  }

  @override
  void update(void Function(Gvalidate_otpData_validateOtpBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gvalidate_otpData_validateOtp build() => _build();

  _$Gvalidate_otpData_validateOtp _build() {
    final _$result = _$v ??
        new _$Gvalidate_otpData_validateOtp._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'Gvalidate_otpData_validateOtp', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'Gvalidate_otpData_validateOtp', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
