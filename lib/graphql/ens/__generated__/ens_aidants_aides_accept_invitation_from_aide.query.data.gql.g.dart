// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_aidants_aides_accept_invitation_from_aide.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gaccept_invitation_from_aideData>
    _$gacceptInvitationFromAideDataSerializer =
    new _$Gaccept_invitation_from_aideDataSerializer();
Serializer<Gaccept_invitation_from_aideData_delegationAcceptInvitation>
    _$gacceptInvitationFromAideDataDelegationAcceptInvitationSerializer =
    new _$Gaccept_invitation_from_aideData_delegationAcceptInvitationSerializer();

class _$Gaccept_invitation_from_aideDataSerializer
    implements StructuredSerializer<Gaccept_invitation_from_aideData> {
  @override
  final Iterable<Type> types = const [
    Gaccept_invitation_from_aideData,
    _$Gaccept_invitation_from_aideData
  ];
  @override
  final String wireName = 'Gaccept_invitation_from_aideData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gaccept_invitation_from_aideData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'delegationAcceptInvitation',
      serializers.serialize(object.delegationAcceptInvitation,
          specifiedType: const FullType(
              Gaccept_invitation_from_aideData_delegationAcceptInvitation)),
    ];

    return result;
  }

  @override
  Gaccept_invitation_from_aideData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gaccept_invitation_from_aideDataBuilder();

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
        case 'delegationAcceptInvitation':
          result.delegationAcceptInvitation.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Gaccept_invitation_from_aideData_delegationAcceptInvitation))!
              as Gaccept_invitation_from_aideData_delegationAcceptInvitation);
          break;
      }
    }

    return result.build();
  }
}

class _$Gaccept_invitation_from_aideData_delegationAcceptInvitationSerializer
    implements
        StructuredSerializer<
            Gaccept_invitation_from_aideData_delegationAcceptInvitation> {
  @override
  final Iterable<Type> types = const [
    Gaccept_invitation_from_aideData_delegationAcceptInvitation,
    _$Gaccept_invitation_from_aideData_delegationAcceptInvitation
  ];
  @override
  final String wireName =
      'Gaccept_invitation_from_aideData_delegationAcceptInvitation';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gaccept_invitation_from_aideData_delegationAcceptInvitation object,
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
  Gaccept_invitation_from_aideData_delegationAcceptInvitation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gaccept_invitation_from_aideData_delegationAcceptInvitationBuilder();

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

class _$Gaccept_invitation_from_aideData
    extends Gaccept_invitation_from_aideData {
  @override
  final String G__typename;
  @override
  final Gaccept_invitation_from_aideData_delegationAcceptInvitation
      delegationAcceptInvitation;

  factory _$Gaccept_invitation_from_aideData(
          [void Function(Gaccept_invitation_from_aideDataBuilder)? updates]) =>
      (new Gaccept_invitation_from_aideDataBuilder()..update(updates))._build();

  _$Gaccept_invitation_from_aideData._(
      {required this.G__typename, required this.delegationAcceptInvitation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gaccept_invitation_from_aideData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(delegationAcceptInvitation,
        r'Gaccept_invitation_from_aideData', 'delegationAcceptInvitation');
  }

  @override
  Gaccept_invitation_from_aideData rebuild(
          void Function(Gaccept_invitation_from_aideDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gaccept_invitation_from_aideDataBuilder toBuilder() =>
      new Gaccept_invitation_from_aideDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gaccept_invitation_from_aideData &&
        G__typename == other.G__typename &&
        delegationAcceptInvitation == other.delegationAcceptInvitation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, delegationAcceptInvitation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gaccept_invitation_from_aideData')
          ..add('G__typename', G__typename)
          ..add('delegationAcceptInvitation', delegationAcceptInvitation))
        .toString();
  }
}

class Gaccept_invitation_from_aideDataBuilder
    implements
        Builder<Gaccept_invitation_from_aideData,
            Gaccept_invitation_from_aideDataBuilder> {
  _$Gaccept_invitation_from_aideData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gaccept_invitation_from_aideData_delegationAcceptInvitationBuilder?
      _delegationAcceptInvitation;
  Gaccept_invitation_from_aideData_delegationAcceptInvitationBuilder
      get delegationAcceptInvitation => _$this._delegationAcceptInvitation ??=
          new Gaccept_invitation_from_aideData_delegationAcceptInvitationBuilder();
  set delegationAcceptInvitation(
          Gaccept_invitation_from_aideData_delegationAcceptInvitationBuilder?
              delegationAcceptInvitation) =>
      _$this._delegationAcceptInvitation = delegationAcceptInvitation;

  Gaccept_invitation_from_aideDataBuilder() {
    Gaccept_invitation_from_aideData._initializeBuilder(this);
  }

  Gaccept_invitation_from_aideDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _delegationAcceptInvitation = $v.delegationAcceptInvitation.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gaccept_invitation_from_aideData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gaccept_invitation_from_aideData;
  }

  @override
  void update(void Function(Gaccept_invitation_from_aideDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gaccept_invitation_from_aideData build() => _build();

  _$Gaccept_invitation_from_aideData _build() {
    _$Gaccept_invitation_from_aideData _$result;
    try {
      _$result = _$v ??
          new _$Gaccept_invitation_from_aideData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gaccept_invitation_from_aideData', 'G__typename'),
              delegationAcceptInvitation: delegationAcceptInvitation.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'delegationAcceptInvitation';
        delegationAcceptInvitation.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gaccept_invitation_from_aideData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gaccept_invitation_from_aideData_delegationAcceptInvitation
    extends Gaccept_invitation_from_aideData_delegationAcceptInvitation {
  @override
  final String G__typename;
  @override
  final String? attestation;

  factory _$Gaccept_invitation_from_aideData_delegationAcceptInvitation(
          [void Function(
                  Gaccept_invitation_from_aideData_delegationAcceptInvitationBuilder)?
              updates]) =>
      (new Gaccept_invitation_from_aideData_delegationAcceptInvitationBuilder()
            ..update(updates))
          ._build();

  _$Gaccept_invitation_from_aideData_delegationAcceptInvitation._(
      {required this.G__typename, this.attestation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gaccept_invitation_from_aideData_delegationAcceptInvitation',
        'G__typename');
  }

  @override
  Gaccept_invitation_from_aideData_delegationAcceptInvitation rebuild(
          void Function(
                  Gaccept_invitation_from_aideData_delegationAcceptInvitationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gaccept_invitation_from_aideData_delegationAcceptInvitationBuilder
      toBuilder() =>
          new Gaccept_invitation_from_aideData_delegationAcceptInvitationBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gaccept_invitation_from_aideData_delegationAcceptInvitation &&
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
            r'Gaccept_invitation_from_aideData_delegationAcceptInvitation')
          ..add('G__typename', G__typename)
          ..add('attestation', attestation))
        .toString();
  }
}

class Gaccept_invitation_from_aideData_delegationAcceptInvitationBuilder
    implements
        Builder<Gaccept_invitation_from_aideData_delegationAcceptInvitation,
            Gaccept_invitation_from_aideData_delegationAcceptInvitationBuilder> {
  _$Gaccept_invitation_from_aideData_delegationAcceptInvitation? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _attestation;
  String? get attestation => _$this._attestation;
  set attestation(String? attestation) => _$this._attestation = attestation;

  Gaccept_invitation_from_aideData_delegationAcceptInvitationBuilder() {
    Gaccept_invitation_from_aideData_delegationAcceptInvitation
        ._initializeBuilder(this);
  }

  Gaccept_invitation_from_aideData_delegationAcceptInvitationBuilder
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
      Gaccept_invitation_from_aideData_delegationAcceptInvitation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$Gaccept_invitation_from_aideData_delegationAcceptInvitation;
  }

  @override
  void update(
      void Function(
              Gaccept_invitation_from_aideData_delegationAcceptInvitationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gaccept_invitation_from_aideData_delegationAcceptInvitation build() =>
      _build();

  _$Gaccept_invitation_from_aideData_delegationAcceptInvitation _build() {
    final _$result = _$v ??
        new _$Gaccept_invitation_from_aideData_delegationAcceptInvitation._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gaccept_invitation_from_aideData_delegationAcceptInvitation',
                'G__typename'),
            attestation: attestation);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
