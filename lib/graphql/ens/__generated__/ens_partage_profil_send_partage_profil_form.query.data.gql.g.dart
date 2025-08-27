// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_partage_profil_send_partage_profil_form.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gsend_partage_profil_formData>
    _$gsendPartageProfilFormDataSerializer =
    new _$Gsend_partage_profil_formDataSerializer();
Serializer<Gsend_partage_profil_formData_sendInvitationSecondRL>
    _$gsendPartageProfilFormDataSendInvitationSecondRLSerializer =
    new _$Gsend_partage_profil_formData_sendInvitationSecondRLSerializer();

class _$Gsend_partage_profil_formDataSerializer
    implements StructuredSerializer<Gsend_partage_profil_formData> {
  @override
  final Iterable<Type> types = const [
    Gsend_partage_profil_formData,
    _$Gsend_partage_profil_formData
  ];
  @override
  final String wireName = 'Gsend_partage_profil_formData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gsend_partage_profil_formData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'sendInvitationSecondRL',
      serializers.serialize(object.sendInvitationSecondRL,
          specifiedType: const FullType(
              Gsend_partage_profil_formData_sendInvitationSecondRL)),
    ];

    return result;
  }

  @override
  Gsend_partage_profil_formData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gsend_partage_profil_formDataBuilder();

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
        case 'sendInvitationSecondRL':
          result.sendInvitationSecondRL.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gsend_partage_profil_formData_sendInvitationSecondRL))!
              as Gsend_partage_profil_formData_sendInvitationSecondRL);
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_partage_profil_formData_sendInvitationSecondRLSerializer
    implements
        StructuredSerializer<
            Gsend_partage_profil_formData_sendInvitationSecondRL> {
  @override
  final Iterable<Type> types = const [
    Gsend_partage_profil_formData_sendInvitationSecondRL,
    _$Gsend_partage_profil_formData_sendInvitationSecondRL
  ];
  @override
  final String wireName =
      'Gsend_partage_profil_formData_sendInvitationSecondRL';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gsend_partage_profil_formData_sendInvitationSecondRL object,
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
  Gsend_partage_profil_formData_sendInvitationSecondRL deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gsend_partage_profil_formData_sendInvitationSecondRLBuilder();

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

class _$Gsend_partage_profil_formData extends Gsend_partage_profil_formData {
  @override
  final String G__typename;
  @override
  final Gsend_partage_profil_formData_sendInvitationSecondRL
      sendInvitationSecondRL;

  factory _$Gsend_partage_profil_formData(
          [void Function(Gsend_partage_profil_formDataBuilder)? updates]) =>
      (new Gsend_partage_profil_formDataBuilder()..update(updates))._build();

  _$Gsend_partage_profil_formData._(
      {required this.G__typename, required this.sendInvitationSecondRL})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gsend_partage_profil_formData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(sendInvitationSecondRL,
        r'Gsend_partage_profil_formData', 'sendInvitationSecondRL');
  }

  @override
  Gsend_partage_profil_formData rebuild(
          void Function(Gsend_partage_profil_formDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_partage_profil_formDataBuilder toBuilder() =>
      new Gsend_partage_profil_formDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsend_partage_profil_formData &&
        G__typename == other.G__typename &&
        sendInvitationSecondRL == other.sendInvitationSecondRL;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, sendInvitationSecondRL.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gsend_partage_profil_formData')
          ..add('G__typename', G__typename)
          ..add('sendInvitationSecondRL', sendInvitationSecondRL))
        .toString();
  }
}

class Gsend_partage_profil_formDataBuilder
    implements
        Builder<Gsend_partage_profil_formData,
            Gsend_partage_profil_formDataBuilder> {
  _$Gsend_partage_profil_formData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gsend_partage_profil_formData_sendInvitationSecondRLBuilder?
      _sendInvitationSecondRL;
  Gsend_partage_profil_formData_sendInvitationSecondRLBuilder
      get sendInvitationSecondRL => _$this._sendInvitationSecondRL ??=
          new Gsend_partage_profil_formData_sendInvitationSecondRLBuilder();
  set sendInvitationSecondRL(
          Gsend_partage_profil_formData_sendInvitationSecondRLBuilder?
              sendInvitationSecondRL) =>
      _$this._sendInvitationSecondRL = sendInvitationSecondRL;

  Gsend_partage_profil_formDataBuilder() {
    Gsend_partage_profil_formData._initializeBuilder(this);
  }

  Gsend_partage_profil_formDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _sendInvitationSecondRL = $v.sendInvitationSecondRL.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsend_partage_profil_formData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsend_partage_profil_formData;
  }

  @override
  void update(void Function(Gsend_partage_profil_formDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_partage_profil_formData build() => _build();

  _$Gsend_partage_profil_formData _build() {
    _$Gsend_partage_profil_formData _$result;
    try {
      _$result = _$v ??
          new _$Gsend_partage_profil_formData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gsend_partage_profil_formData', 'G__typename'),
              sendInvitationSecondRL: sendInvitationSecondRL.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sendInvitationSecondRL';
        sendInvitationSecondRL.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gsend_partage_profil_formData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gsend_partage_profil_formData_sendInvitationSecondRL
    extends Gsend_partage_profil_formData_sendInvitationSecondRL {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gsend_partage_profil_formData_sendInvitationSecondRL(
          [void Function(
                  Gsend_partage_profil_formData_sendInvitationSecondRLBuilder)?
              updates]) =>
      (new Gsend_partage_profil_formData_sendInvitationSecondRLBuilder()
            ..update(updates))
          ._build();

  _$Gsend_partage_profil_formData_sendInvitationSecondRL._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gsend_partage_profil_formData_sendInvitationSecondRL', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(success,
        r'Gsend_partage_profil_formData_sendInvitationSecondRL', 'success');
  }

  @override
  Gsend_partage_profil_formData_sendInvitationSecondRL rebuild(
          void Function(
                  Gsend_partage_profil_formData_sendInvitationSecondRLBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_partage_profil_formData_sendInvitationSecondRLBuilder toBuilder() =>
      new Gsend_partage_profil_formData_sendInvitationSecondRLBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsend_partage_profil_formData_sendInvitationSecondRL &&
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
            r'Gsend_partage_profil_formData_sendInvitationSecondRL')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gsend_partage_profil_formData_sendInvitationSecondRLBuilder
    implements
        Builder<Gsend_partage_profil_formData_sendInvitationSecondRL,
            Gsend_partage_profil_formData_sendInvitationSecondRLBuilder> {
  _$Gsend_partage_profil_formData_sendInvitationSecondRL? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gsend_partage_profil_formData_sendInvitationSecondRLBuilder() {
    Gsend_partage_profil_formData_sendInvitationSecondRL._initializeBuilder(
        this);
  }

  Gsend_partage_profil_formData_sendInvitationSecondRLBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsend_partage_profil_formData_sendInvitationSecondRL other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsend_partage_profil_formData_sendInvitationSecondRL;
  }

  @override
  void update(
      void Function(
              Gsend_partage_profil_formData_sendInvitationSecondRLBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_partage_profil_formData_sendInvitationSecondRL build() => _build();

  _$Gsend_partage_profil_formData_sendInvitationSecondRL _build() {
    final _$result = _$v ??
        new _$Gsend_partage_profil_formData_sendInvitationSecondRL._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gsend_partage_profil_formData_sendInvitationSecondRL',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gsend_partage_profil_formData_sendInvitationSecondRL',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
