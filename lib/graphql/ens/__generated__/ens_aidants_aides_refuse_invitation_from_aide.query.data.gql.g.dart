// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_aidants_aides_refuse_invitation_from_aide.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Grefuse_invitation_from_aideData>
    _$grefuseInvitationFromAideDataSerializer =
    new _$Grefuse_invitation_from_aideDataSerializer();
Serializer<Grefuse_invitation_from_aideData_delegationRefuseInvitation>
    _$grefuseInvitationFromAideDataDelegationRefuseInvitationSerializer =
    new _$Grefuse_invitation_from_aideData_delegationRefuseInvitationSerializer();

class _$Grefuse_invitation_from_aideDataSerializer
    implements StructuredSerializer<Grefuse_invitation_from_aideData> {
  @override
  final Iterable<Type> types = const [
    Grefuse_invitation_from_aideData,
    _$Grefuse_invitation_from_aideData
  ];
  @override
  final String wireName = 'Grefuse_invitation_from_aideData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Grefuse_invitation_from_aideData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'delegationRefuseInvitation',
      serializers.serialize(object.delegationRefuseInvitation,
          specifiedType: const FullType(
              Grefuse_invitation_from_aideData_delegationRefuseInvitation)),
    ];

    return result;
  }

  @override
  Grefuse_invitation_from_aideData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Grefuse_invitation_from_aideDataBuilder();

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
        case 'delegationRefuseInvitation':
          result.delegationRefuseInvitation.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Grefuse_invitation_from_aideData_delegationRefuseInvitation))!
              as Grefuse_invitation_from_aideData_delegationRefuseInvitation);
          break;
      }
    }

    return result.build();
  }
}

class _$Grefuse_invitation_from_aideData_delegationRefuseInvitationSerializer
    implements
        StructuredSerializer<
            Grefuse_invitation_from_aideData_delegationRefuseInvitation> {
  @override
  final Iterable<Type> types = const [
    Grefuse_invitation_from_aideData_delegationRefuseInvitation,
    _$Grefuse_invitation_from_aideData_delegationRefuseInvitation
  ];
  @override
  final String wireName =
      'Grefuse_invitation_from_aideData_delegationRefuseInvitation';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Grefuse_invitation_from_aideData_delegationRefuseInvitation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.attestation;
    if (value != null) {
      result
        ..add('attestation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Grefuse_invitation_from_aideData_delegationRefuseInvitation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Grefuse_invitation_from_aideData_delegationRefuseInvitationBuilder();

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
        case 'attestation':
          result.attestation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Grefuse_invitation_from_aideData
    extends Grefuse_invitation_from_aideData {
  @override
  final String G__typename;
  @override
  final Grefuse_invitation_from_aideData_delegationRefuseInvitation
      delegationRefuseInvitation;

  factory _$Grefuse_invitation_from_aideData(
          [void Function(Grefuse_invitation_from_aideDataBuilder)? updates]) =>
      (new Grefuse_invitation_from_aideDataBuilder()..update(updates))._build();

  _$Grefuse_invitation_from_aideData._(
      {required this.G__typename, required this.delegationRefuseInvitation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Grefuse_invitation_from_aideData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(delegationRefuseInvitation,
        r'Grefuse_invitation_from_aideData', 'delegationRefuseInvitation');
  }

  @override
  Grefuse_invitation_from_aideData rebuild(
          void Function(Grefuse_invitation_from_aideDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Grefuse_invitation_from_aideDataBuilder toBuilder() =>
      new Grefuse_invitation_from_aideDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Grefuse_invitation_from_aideData &&
        G__typename == other.G__typename &&
        delegationRefuseInvitation == other.delegationRefuseInvitation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, delegationRefuseInvitation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Grefuse_invitation_from_aideData')
          ..add('G__typename', G__typename)
          ..add('delegationRefuseInvitation', delegationRefuseInvitation))
        .toString();
  }
}

class Grefuse_invitation_from_aideDataBuilder
    implements
        Builder<Grefuse_invitation_from_aideData,
            Grefuse_invitation_from_aideDataBuilder> {
  _$Grefuse_invitation_from_aideData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Grefuse_invitation_from_aideData_delegationRefuseInvitationBuilder?
      _delegationRefuseInvitation;
  Grefuse_invitation_from_aideData_delegationRefuseInvitationBuilder
      get delegationRefuseInvitation => _$this._delegationRefuseInvitation ??=
          new Grefuse_invitation_from_aideData_delegationRefuseInvitationBuilder();
  set delegationRefuseInvitation(
          Grefuse_invitation_from_aideData_delegationRefuseInvitationBuilder?
              delegationRefuseInvitation) =>
      _$this._delegationRefuseInvitation = delegationRefuseInvitation;

  Grefuse_invitation_from_aideDataBuilder() {
    Grefuse_invitation_from_aideData._initializeBuilder(this);
  }

  Grefuse_invitation_from_aideDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _delegationRefuseInvitation = $v.delegationRefuseInvitation.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Grefuse_invitation_from_aideData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Grefuse_invitation_from_aideData;
  }

  @override
  void update(void Function(Grefuse_invitation_from_aideDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Grefuse_invitation_from_aideData build() => _build();

  _$Grefuse_invitation_from_aideData _build() {
    _$Grefuse_invitation_from_aideData _$result;
    try {
      _$result = _$v ??
          new _$Grefuse_invitation_from_aideData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Grefuse_invitation_from_aideData', 'G__typename'),
              delegationRefuseInvitation: delegationRefuseInvitation.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'delegationRefuseInvitation';
        delegationRefuseInvitation.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Grefuse_invitation_from_aideData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Grefuse_invitation_from_aideData_delegationRefuseInvitation
    extends Grefuse_invitation_from_aideData_delegationRefuseInvitation {
  @override
  final String G__typename;
  @override
  final String? attestation;

  factory _$Grefuse_invitation_from_aideData_delegationRefuseInvitation(
          [void Function(
                  Grefuse_invitation_from_aideData_delegationRefuseInvitationBuilder)?
              updates]) =>
      (new Grefuse_invitation_from_aideData_delegationRefuseInvitationBuilder()
            ..update(updates))
          ._build();

  _$Grefuse_invitation_from_aideData_delegationRefuseInvitation._(
      {required this.G__typename, this.attestation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Grefuse_invitation_from_aideData_delegationRefuseInvitation',
        'G__typename');
  }

  @override
  Grefuse_invitation_from_aideData_delegationRefuseInvitation rebuild(
          void Function(
                  Grefuse_invitation_from_aideData_delegationRefuseInvitationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Grefuse_invitation_from_aideData_delegationRefuseInvitationBuilder
      toBuilder() =>
          new Grefuse_invitation_from_aideData_delegationRefuseInvitationBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Grefuse_invitation_from_aideData_delegationRefuseInvitation &&
        G__typename == other.G__typename &&
        attestation == other.attestation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, attestation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Grefuse_invitation_from_aideData_delegationRefuseInvitation')
          ..add('G__typename', G__typename)
          ..add('attestation', attestation))
        .toString();
  }
}

class Grefuse_invitation_from_aideData_delegationRefuseInvitationBuilder
    implements
        Builder<Grefuse_invitation_from_aideData_delegationRefuseInvitation,
            Grefuse_invitation_from_aideData_delegationRefuseInvitationBuilder> {
  _$Grefuse_invitation_from_aideData_delegationRefuseInvitation? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _attestation;
  String? get attestation => _$this._attestation;
  set attestation(String? attestation) => _$this._attestation = attestation;

  Grefuse_invitation_from_aideData_delegationRefuseInvitationBuilder() {
    Grefuse_invitation_from_aideData_delegationRefuseInvitation
        ._initializeBuilder(this);
  }

  Grefuse_invitation_from_aideData_delegationRefuseInvitationBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _attestation = $v.attestation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Grefuse_invitation_from_aideData_delegationRefuseInvitation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$Grefuse_invitation_from_aideData_delegationRefuseInvitation;
  }

  @override
  void update(
      void Function(
              Grefuse_invitation_from_aideData_delegationRefuseInvitationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Grefuse_invitation_from_aideData_delegationRefuseInvitation build() =>
      _build();

  _$Grefuse_invitation_from_aideData_delegationRefuseInvitation _build() {
    final _$result = _$v ??
        new _$Grefuse_invitation_from_aideData_delegationRefuseInvitation._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Grefuse_invitation_from_aideData_delegationRefuseInvitation',
                'G__typename'),
            attestation: attestation);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
