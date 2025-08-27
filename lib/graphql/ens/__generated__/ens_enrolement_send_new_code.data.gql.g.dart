// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_enrolement_send_new_code.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gsend_new_enrolement_codeData>
    _$gsendNewEnrolementCodeDataSerializer =
    new _$Gsend_new_enrolement_codeDataSerializer();
Serializer<Gsend_new_enrolement_codeData_sendNewEnrolmentCode>
    _$gsendNewEnrolementCodeDataSendNewEnrolmentCodeSerializer =
    new _$Gsend_new_enrolement_codeData_sendNewEnrolmentCodeSerializer();

class _$Gsend_new_enrolement_codeDataSerializer
    implements StructuredSerializer<Gsend_new_enrolement_codeData> {
  @override
  final Iterable<Type> types = const [
    Gsend_new_enrolement_codeData,
    _$Gsend_new_enrolement_codeData
  ];
  @override
  final String wireName = 'Gsend_new_enrolement_codeData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gsend_new_enrolement_codeData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'sendNewEnrolmentCode',
      serializers.serialize(object.sendNewEnrolmentCode,
          specifiedType: const FullType(
              Gsend_new_enrolement_codeData_sendNewEnrolmentCode)),
    ];

    return result;
  }

  @override
  Gsend_new_enrolement_codeData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gsend_new_enrolement_codeDataBuilder();

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
        case 'sendNewEnrolmentCode':
          result.sendNewEnrolmentCode.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gsend_new_enrolement_codeData_sendNewEnrolmentCode))!
              as Gsend_new_enrolement_codeData_sendNewEnrolmentCode);
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_new_enrolement_codeData_sendNewEnrolmentCodeSerializer
    implements
        StructuredSerializer<
            Gsend_new_enrolement_codeData_sendNewEnrolmentCode> {
  @override
  final Iterable<Type> types = const [
    Gsend_new_enrolement_codeData_sendNewEnrolmentCode,
    _$Gsend_new_enrolement_codeData_sendNewEnrolmentCode
  ];
  @override
  final String wireName = 'Gsend_new_enrolement_codeData_sendNewEnrolmentCode';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gsend_new_enrolement_codeData_sendNewEnrolmentCode object,
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
  Gsend_new_enrolement_codeData_sendNewEnrolmentCode deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gsend_new_enrolement_codeData_sendNewEnrolmentCodeBuilder();

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

class _$Gsend_new_enrolement_codeData extends Gsend_new_enrolement_codeData {
  @override
  final String G__typename;
  @override
  final Gsend_new_enrolement_codeData_sendNewEnrolmentCode sendNewEnrolmentCode;

  factory _$Gsend_new_enrolement_codeData(
          [void Function(Gsend_new_enrolement_codeDataBuilder)? updates]) =>
      (new Gsend_new_enrolement_codeDataBuilder()..update(updates))._build();

  _$Gsend_new_enrolement_codeData._(
      {required this.G__typename, required this.sendNewEnrolmentCode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gsend_new_enrolement_codeData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(sendNewEnrolmentCode,
        r'Gsend_new_enrolement_codeData', 'sendNewEnrolmentCode');
  }

  @override
  Gsend_new_enrolement_codeData rebuild(
          void Function(Gsend_new_enrolement_codeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_new_enrolement_codeDataBuilder toBuilder() =>
      new Gsend_new_enrolement_codeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsend_new_enrolement_codeData &&
        G__typename == other.G__typename &&
        sendNewEnrolmentCode == other.sendNewEnrolmentCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, sendNewEnrolmentCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gsend_new_enrolement_codeData')
          ..add('G__typename', G__typename)
          ..add('sendNewEnrolmentCode', sendNewEnrolmentCode))
        .toString();
  }
}

class Gsend_new_enrolement_codeDataBuilder
    implements
        Builder<Gsend_new_enrolement_codeData,
            Gsend_new_enrolement_codeDataBuilder> {
  _$Gsend_new_enrolement_codeData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gsend_new_enrolement_codeData_sendNewEnrolmentCodeBuilder?
      _sendNewEnrolmentCode;
  Gsend_new_enrolement_codeData_sendNewEnrolmentCodeBuilder
      get sendNewEnrolmentCode => _$this._sendNewEnrolmentCode ??=
          new Gsend_new_enrolement_codeData_sendNewEnrolmentCodeBuilder();
  set sendNewEnrolmentCode(
          Gsend_new_enrolement_codeData_sendNewEnrolmentCodeBuilder?
              sendNewEnrolmentCode) =>
      _$this._sendNewEnrolmentCode = sendNewEnrolmentCode;

  Gsend_new_enrolement_codeDataBuilder() {
    Gsend_new_enrolement_codeData._initializeBuilder(this);
  }

  Gsend_new_enrolement_codeDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _sendNewEnrolmentCode = $v.sendNewEnrolmentCode.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsend_new_enrolement_codeData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsend_new_enrolement_codeData;
  }

  @override
  void update(void Function(Gsend_new_enrolement_codeDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_new_enrolement_codeData build() => _build();

  _$Gsend_new_enrolement_codeData _build() {
    _$Gsend_new_enrolement_codeData _$result;
    try {
      _$result = _$v ??
          new _$Gsend_new_enrolement_codeData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gsend_new_enrolement_codeData', 'G__typename'),
              sendNewEnrolmentCode: sendNewEnrolmentCode.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sendNewEnrolmentCode';
        sendNewEnrolmentCode.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gsend_new_enrolement_codeData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gsend_new_enrolement_codeData_sendNewEnrolmentCode
    extends Gsend_new_enrolement_codeData_sendNewEnrolmentCode {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gsend_new_enrolement_codeData_sendNewEnrolmentCode(
          [void Function(
                  Gsend_new_enrolement_codeData_sendNewEnrolmentCodeBuilder)?
              updates]) =>
      (new Gsend_new_enrolement_codeData_sendNewEnrolmentCodeBuilder()
            ..update(updates))
          ._build();

  _$Gsend_new_enrolement_codeData_sendNewEnrolmentCode._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gsend_new_enrolement_codeData_sendNewEnrolmentCode', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(success,
        r'Gsend_new_enrolement_codeData_sendNewEnrolmentCode', 'success');
  }

  @override
  Gsend_new_enrolement_codeData_sendNewEnrolmentCode rebuild(
          void Function(
                  Gsend_new_enrolement_codeData_sendNewEnrolmentCodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_new_enrolement_codeData_sendNewEnrolmentCodeBuilder toBuilder() =>
      new Gsend_new_enrolement_codeData_sendNewEnrolmentCodeBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsend_new_enrolement_codeData_sendNewEnrolmentCode &&
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
            r'Gsend_new_enrolement_codeData_sendNewEnrolmentCode')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gsend_new_enrolement_codeData_sendNewEnrolmentCodeBuilder
    implements
        Builder<Gsend_new_enrolement_codeData_sendNewEnrolmentCode,
            Gsend_new_enrolement_codeData_sendNewEnrolmentCodeBuilder> {
  _$Gsend_new_enrolement_codeData_sendNewEnrolmentCode? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gsend_new_enrolement_codeData_sendNewEnrolmentCodeBuilder() {
    Gsend_new_enrolement_codeData_sendNewEnrolmentCode._initializeBuilder(this);
  }

  Gsend_new_enrolement_codeData_sendNewEnrolmentCodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsend_new_enrolement_codeData_sendNewEnrolmentCode other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsend_new_enrolement_codeData_sendNewEnrolmentCode;
  }

  @override
  void update(
      void Function(Gsend_new_enrolement_codeData_sendNewEnrolmentCodeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_new_enrolement_codeData_sendNewEnrolmentCode build() => _build();

  _$Gsend_new_enrolement_codeData_sendNewEnrolmentCode _build() {
    final _$result = _$v ??
        new _$Gsend_new_enrolement_codeData_sendNewEnrolmentCode._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gsend_new_enrolement_codeData_sendNewEnrolmentCode',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gsend_new_enrolement_codeData_sendNewEnrolmentCode',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
