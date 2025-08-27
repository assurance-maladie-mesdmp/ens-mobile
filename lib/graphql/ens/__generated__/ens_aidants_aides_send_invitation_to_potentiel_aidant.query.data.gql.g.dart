// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_aidants_aides_send_invitation_to_potentiel_aidant.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gsend_invitation_to_potentiel_aidantData>
    _$gsendInvitationToPotentielAidantDataSerializer =
    new _$Gsend_invitation_to_potentiel_aidantDataSerializer();
Serializer<
        Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving>
    _$gsendInvitationToPotentielAidantDataDelegationInviteToCaregivingSerializer =
    new _$Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregivingSerializer();

class _$Gsend_invitation_to_potentiel_aidantDataSerializer
    implements StructuredSerializer<Gsend_invitation_to_potentiel_aidantData> {
  @override
  final Iterable<Type> types = const [
    Gsend_invitation_to_potentiel_aidantData,
    _$Gsend_invitation_to_potentiel_aidantData
  ];
  @override
  final String wireName = 'Gsend_invitation_to_potentiel_aidantData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gsend_invitation_to_potentiel_aidantData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'delegationInviteToCaregiving',
      serializers.serialize(object.delegationInviteToCaregiving,
          specifiedType: const FullType(
              Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving)),
    ];

    return result;
  }

  @override
  Gsend_invitation_to_potentiel_aidantData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gsend_invitation_to_potentiel_aidantDataBuilder();

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
        case 'delegationInviteToCaregiving':
          result.delegationInviteToCaregiving.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving))!
              as Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving);
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregivingSerializer
    implements
        StructuredSerializer<
            Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving> {
  @override
  final Iterable<Type> types = const [
    Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving,
    _$Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving
  ];
  @override
  final String wireName =
      'Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving
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
  Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregivingBuilder();

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

class _$Gsend_invitation_to_potentiel_aidantData
    extends Gsend_invitation_to_potentiel_aidantData {
  @override
  final String G__typename;
  @override
  final Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving
      delegationInviteToCaregiving;

  factory _$Gsend_invitation_to_potentiel_aidantData(
          [void Function(Gsend_invitation_to_potentiel_aidantDataBuilder)?
              updates]) =>
      (new Gsend_invitation_to_potentiel_aidantDataBuilder()..update(updates))
          ._build();

  _$Gsend_invitation_to_potentiel_aidantData._(
      {required this.G__typename, required this.delegationInviteToCaregiving})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gsend_invitation_to_potentiel_aidantData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        delegationInviteToCaregiving,
        r'Gsend_invitation_to_potentiel_aidantData',
        'delegationInviteToCaregiving');
  }

  @override
  Gsend_invitation_to_potentiel_aidantData rebuild(
          void Function(Gsend_invitation_to_potentiel_aidantDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_invitation_to_potentiel_aidantDataBuilder toBuilder() =>
      new Gsend_invitation_to_potentiel_aidantDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsend_invitation_to_potentiel_aidantData &&
        G__typename == other.G__typename &&
        delegationInviteToCaregiving == other.delegationInviteToCaregiving;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, delegationInviteToCaregiving.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gsend_invitation_to_potentiel_aidantData')
          ..add('G__typename', G__typename)
          ..add('delegationInviteToCaregiving', delegationInviteToCaregiving))
        .toString();
  }
}

class Gsend_invitation_to_potentiel_aidantDataBuilder
    implements
        Builder<Gsend_invitation_to_potentiel_aidantData,
            Gsend_invitation_to_potentiel_aidantDataBuilder> {
  _$Gsend_invitation_to_potentiel_aidantData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregivingBuilder?
      _delegationInviteToCaregiving;
  Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregivingBuilder
      get delegationInviteToCaregiving => _$this
              ._delegationInviteToCaregiving ??=
          new Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregivingBuilder();
  set delegationInviteToCaregiving(
          Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregivingBuilder?
              delegationInviteToCaregiving) =>
      _$this._delegationInviteToCaregiving = delegationInviteToCaregiving;

  Gsend_invitation_to_potentiel_aidantDataBuilder() {
    Gsend_invitation_to_potentiel_aidantData._initializeBuilder(this);
  }

  Gsend_invitation_to_potentiel_aidantDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _delegationInviteToCaregiving =
          $v.delegationInviteToCaregiving.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsend_invitation_to_potentiel_aidantData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsend_invitation_to_potentiel_aidantData;
  }

  @override
  void update(
      void Function(Gsend_invitation_to_potentiel_aidantDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_invitation_to_potentiel_aidantData build() => _build();

  _$Gsend_invitation_to_potentiel_aidantData _build() {
    _$Gsend_invitation_to_potentiel_aidantData _$result;
    try {
      _$result = _$v ??
          new _$Gsend_invitation_to_potentiel_aidantData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gsend_invitation_to_potentiel_aidantData', 'G__typename'),
              delegationInviteToCaregiving:
                  delegationInviteToCaregiving.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'delegationInviteToCaregiving';
        delegationInviteToCaregiving.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gsend_invitation_to_potentiel_aidantData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving
    extends Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving(
          [void Function(
                  Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregivingBuilder)?
              updates]) =>
      (new Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregivingBuilder()
            ..update(updates))
          ._build();

  _$Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success,
        r'Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving',
        'success');
  }

  @override
  Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving rebuild(
          void Function(
                  Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregivingBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregivingBuilder
      toBuilder() =>
          new Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregivingBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving &&
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
            r'Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregivingBuilder
    implements
        Builder<
            Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving,
            Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregivingBuilder> {
  _$Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregivingBuilder() {
    Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving
        ._initializeBuilder(this);
  }

  Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregivingBuilder
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
      Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving;
  }

  @override
  void update(
      void Function(
              Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregivingBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving
      build() => _build();

  _$Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving
      _build() {
    final _$result = _$v ??
        new _$Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gsend_invitation_to_potentiel_aidantData_delegationInviteToCaregiving',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
