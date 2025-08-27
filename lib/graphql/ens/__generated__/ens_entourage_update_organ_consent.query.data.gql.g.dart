// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_entourage_update_organ_consent.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_organ_consentData> _$gupdateOrganConsentDataSerializer =
    new _$Gupdate_organ_consentDataSerializer();
Serializer<Gupdate_organ_consentData_putOrganDonation>
    _$gupdateOrganConsentDataPutOrganDonationSerializer =
    new _$Gupdate_organ_consentData_putOrganDonationSerializer();

class _$Gupdate_organ_consentDataSerializer
    implements StructuredSerializer<Gupdate_organ_consentData> {
  @override
  final Iterable<Type> types = const [
    Gupdate_organ_consentData,
    _$Gupdate_organ_consentData
  ];
  @override
  final String wireName = 'Gupdate_organ_consentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_organ_consentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'putOrganDonation',
      serializers.serialize(object.putOrganDonation,
          specifiedType:
              const FullType(Gupdate_organ_consentData_putOrganDonation)),
    ];

    return result;
  }

  @override
  Gupdate_organ_consentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_organ_consentDataBuilder();

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
        case 'putOrganDonation':
          result.putOrganDonation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gupdate_organ_consentData_putOrganDonation))!
              as Gupdate_organ_consentData_putOrganDonation);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_organ_consentData_putOrganDonationSerializer
    implements
        StructuredSerializer<Gupdate_organ_consentData_putOrganDonation> {
  @override
  final Iterable<Type> types = const [
    Gupdate_organ_consentData_putOrganDonation,
    _$Gupdate_organ_consentData_putOrganDonation
  ];
  @override
  final String wireName = 'Gupdate_organ_consentData_putOrganDonation';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gupdate_organ_consentData_putOrganDonation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'effectiveDate',
      serializers.serialize(object.effectiveDate,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gupdate_organ_consentData_putOrganDonation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_organ_consentData_putOrganDonationBuilder();

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
        case 'effectiveDate':
          result.effectiveDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_organ_consentData extends Gupdate_organ_consentData {
  @override
  final String G__typename;
  @override
  final Gupdate_organ_consentData_putOrganDonation putOrganDonation;

  factory _$Gupdate_organ_consentData(
          [void Function(Gupdate_organ_consentDataBuilder)? updates]) =>
      (new Gupdate_organ_consentDataBuilder()..update(updates))._build();

  _$Gupdate_organ_consentData._(
      {required this.G__typename, required this.putOrganDonation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_organ_consentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        putOrganDonation, r'Gupdate_organ_consentData', 'putOrganDonation');
  }

  @override
  Gupdate_organ_consentData rebuild(
          void Function(Gupdate_organ_consentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_organ_consentDataBuilder toBuilder() =>
      new Gupdate_organ_consentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_organ_consentData &&
        G__typename == other.G__typename &&
        putOrganDonation == other.putOrganDonation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, putOrganDonation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_organ_consentData')
          ..add('G__typename', G__typename)
          ..add('putOrganDonation', putOrganDonation))
        .toString();
  }
}

class Gupdate_organ_consentDataBuilder
    implements
        Builder<Gupdate_organ_consentData, Gupdate_organ_consentDataBuilder> {
  _$Gupdate_organ_consentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gupdate_organ_consentData_putOrganDonationBuilder? _putOrganDonation;
  Gupdate_organ_consentData_putOrganDonationBuilder get putOrganDonation =>
      _$this._putOrganDonation ??=
          new Gupdate_organ_consentData_putOrganDonationBuilder();
  set putOrganDonation(
          Gupdate_organ_consentData_putOrganDonationBuilder?
              putOrganDonation) =>
      _$this._putOrganDonation = putOrganDonation;

  Gupdate_organ_consentDataBuilder() {
    Gupdate_organ_consentData._initializeBuilder(this);
  }

  Gupdate_organ_consentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _putOrganDonation = $v.putOrganDonation.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_organ_consentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_organ_consentData;
  }

  @override
  void update(void Function(Gupdate_organ_consentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_organ_consentData build() => _build();

  _$Gupdate_organ_consentData _build() {
    _$Gupdate_organ_consentData _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_organ_consentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gupdate_organ_consentData', 'G__typename'),
              putOrganDonation: putOrganDonation.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'putOrganDonation';
        putOrganDonation.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_organ_consentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_organ_consentData_putOrganDonation
    extends Gupdate_organ_consentData_putOrganDonation {
  @override
  final String G__typename;
  @override
  final String effectiveDate;

  factory _$Gupdate_organ_consentData_putOrganDonation(
          [void Function(Gupdate_organ_consentData_putOrganDonationBuilder)?
              updates]) =>
      (new Gupdate_organ_consentData_putOrganDonationBuilder()..update(updates))
          ._build();

  _$Gupdate_organ_consentData_putOrganDonation._(
      {required this.G__typename, required this.effectiveDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gupdate_organ_consentData_putOrganDonation', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(effectiveDate,
        r'Gupdate_organ_consentData_putOrganDonation', 'effectiveDate');
  }

  @override
  Gupdate_organ_consentData_putOrganDonation rebuild(
          void Function(Gupdate_organ_consentData_putOrganDonationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_organ_consentData_putOrganDonationBuilder toBuilder() =>
      new Gupdate_organ_consentData_putOrganDonationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_organ_consentData_putOrganDonation &&
        G__typename == other.G__typename &&
        effectiveDate == other.effectiveDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, effectiveDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gupdate_organ_consentData_putOrganDonation')
          ..add('G__typename', G__typename)
          ..add('effectiveDate', effectiveDate))
        .toString();
  }
}

class Gupdate_organ_consentData_putOrganDonationBuilder
    implements
        Builder<Gupdate_organ_consentData_putOrganDonation,
            Gupdate_organ_consentData_putOrganDonationBuilder> {
  _$Gupdate_organ_consentData_putOrganDonation? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _effectiveDate;
  String? get effectiveDate => _$this._effectiveDate;
  set effectiveDate(String? effectiveDate) =>
      _$this._effectiveDate = effectiveDate;

  Gupdate_organ_consentData_putOrganDonationBuilder() {
    Gupdate_organ_consentData_putOrganDonation._initializeBuilder(this);
  }

  Gupdate_organ_consentData_putOrganDonationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _effectiveDate = $v.effectiveDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_organ_consentData_putOrganDonation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_organ_consentData_putOrganDonation;
  }

  @override
  void update(
      void Function(Gupdate_organ_consentData_putOrganDonationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_organ_consentData_putOrganDonation build() => _build();

  _$Gupdate_organ_consentData_putOrganDonation _build() {
    final _$result = _$v ??
        new _$Gupdate_organ_consentData_putOrganDonation._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gupdate_organ_consentData_putOrganDonation', 'G__typename'),
            effectiveDate: BuiltValueNullFieldError.checkNotNull(
                effectiveDate,
                r'Gupdate_organ_consentData_putOrganDonation',
                'effectiveDate'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
