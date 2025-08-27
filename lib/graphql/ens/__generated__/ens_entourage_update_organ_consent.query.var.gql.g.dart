// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_entourage_update_organ_consent.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_organ_consentVars> _$gupdateOrganConsentVarsSerializer =
    new _$Gupdate_organ_consentVarsSerializer();

class _$Gupdate_organ_consentVarsSerializer
    implements StructuredSerializer<Gupdate_organ_consentVars> {
  @override
  final Iterable<Type> types = const [
    Gupdate_organ_consentVars,
    _$Gupdate_organ_consentVars
  ];
  @override
  final String wireName = 'Gupdate_organ_consentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_organ_consentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'informedAboutOrganDonation',
      serializers.serialize(object.informedAboutOrganDonation,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gupdate_organ_consentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_organ_consentVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'informedAboutOrganDonation':
          result.informedAboutOrganDonation = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_organ_consentVars extends Gupdate_organ_consentVars {
  @override
  final String patientId;
  @override
  final bool informedAboutOrganDonation;

  factory _$Gupdate_organ_consentVars(
          [void Function(Gupdate_organ_consentVarsBuilder)? updates]) =>
      (new Gupdate_organ_consentVarsBuilder()..update(updates))._build();

  _$Gupdate_organ_consentVars._(
      {required this.patientId, required this.informedAboutOrganDonation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gupdate_organ_consentVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(informedAboutOrganDonation,
        r'Gupdate_organ_consentVars', 'informedAboutOrganDonation');
  }

  @override
  Gupdate_organ_consentVars rebuild(
          void Function(Gupdate_organ_consentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_organ_consentVarsBuilder toBuilder() =>
      new Gupdate_organ_consentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_organ_consentVars &&
        patientId == other.patientId &&
        informedAboutOrganDonation == other.informedAboutOrganDonation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, informedAboutOrganDonation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_organ_consentVars')
          ..add('patientId', patientId)
          ..add('informedAboutOrganDonation', informedAboutOrganDonation))
        .toString();
  }
}

class Gupdate_organ_consentVarsBuilder
    implements
        Builder<Gupdate_organ_consentVars, Gupdate_organ_consentVarsBuilder> {
  _$Gupdate_organ_consentVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  bool? _informedAboutOrganDonation;
  bool? get informedAboutOrganDonation => _$this._informedAboutOrganDonation;
  set informedAboutOrganDonation(bool? informedAboutOrganDonation) =>
      _$this._informedAboutOrganDonation = informedAboutOrganDonation;

  Gupdate_organ_consentVarsBuilder();

  Gupdate_organ_consentVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _informedAboutOrganDonation = $v.informedAboutOrganDonation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_organ_consentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_organ_consentVars;
  }

  @override
  void update(void Function(Gupdate_organ_consentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_organ_consentVars build() => _build();

  _$Gupdate_organ_consentVars _build() {
    final _$result = _$v ??
        new _$Gupdate_organ_consentVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gupdate_organ_consentVars', 'patientId'),
            informedAboutOrganDonation: BuiltValueNullFieldError.checkNotNull(
                informedAboutOrganDonation,
                r'Gupdate_organ_consentVars',
                'informedAboutOrganDonation'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
