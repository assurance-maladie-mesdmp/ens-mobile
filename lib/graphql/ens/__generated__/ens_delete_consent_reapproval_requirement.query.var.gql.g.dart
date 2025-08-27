// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_delete_consent_reapproval_requirement.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_consentement_after_majoriteVars>
    _$gupdateConsentementAfterMajoriteVarsSerializer =
    new _$Gupdate_consentement_after_majoriteVarsSerializer();

class _$Gupdate_consentement_after_majoriteVarsSerializer
    implements StructuredSerializer<Gupdate_consentement_after_majoriteVars> {
  @override
  final Iterable<Type> types = const [
    Gupdate_consentement_after_majoriteVars,
    _$Gupdate_consentement_after_majoriteVars
  ];
  @override
  final String wireName = 'Gupdate_consentement_after_majoriteVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_consentement_after_majoriteVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'serviceOid',
      serializers.serialize(object.serviceOid,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.patientId;
    if (value != null) {
      result
        ..add('patientId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gupdate_consentement_after_majoriteVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_consentement_after_majoriteVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'serviceOid':
          result.serviceOid = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_consentement_after_majoriteVars
    extends Gupdate_consentement_after_majoriteVars {
  @override
  final String serviceOid;
  @override
  final String? patientId;

  factory _$Gupdate_consentement_after_majoriteVars(
          [void Function(Gupdate_consentement_after_majoriteVarsBuilder)?
              updates]) =>
      (new Gupdate_consentement_after_majoriteVarsBuilder()..update(updates))
          ._build();

  _$Gupdate_consentement_after_majoriteVars._(
      {required this.serviceOid, this.patientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        serviceOid, r'Gupdate_consentement_after_majoriteVars', 'serviceOid');
  }

  @override
  Gupdate_consentement_after_majoriteVars rebuild(
          void Function(Gupdate_consentement_after_majoriteVarsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_consentement_after_majoriteVarsBuilder toBuilder() =>
      new Gupdate_consentement_after_majoriteVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_consentement_after_majoriteVars &&
        serviceOid == other.serviceOid &&
        patientId == other.patientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serviceOid.hashCode);
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gupdate_consentement_after_majoriteVars')
          ..add('serviceOid', serviceOid)
          ..add('patientId', patientId))
        .toString();
  }
}

class Gupdate_consentement_after_majoriteVarsBuilder
    implements
        Builder<Gupdate_consentement_after_majoriteVars,
            Gupdate_consentement_after_majoriteVarsBuilder> {
  _$Gupdate_consentement_after_majoriteVars? _$v;

  String? _serviceOid;
  String? get serviceOid => _$this._serviceOid;
  set serviceOid(String? serviceOid) => _$this._serviceOid = serviceOid;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gupdate_consentement_after_majoriteVarsBuilder();

  Gupdate_consentement_after_majoriteVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serviceOid = $v.serviceOid;
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_consentement_after_majoriteVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_consentement_after_majoriteVars;
  }

  @override
  void update(
      void Function(Gupdate_consentement_after_majoriteVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_consentement_after_majoriteVars build() => _build();

  _$Gupdate_consentement_after_majoriteVars _build() {
    final _$result = _$v ??
        new _$Gupdate_consentement_after_majoriteVars._(
            serviceOid: BuiltValueNullFieldError.checkNotNull(serviceOid,
                r'Gupdate_consentement_after_majoriteVars', 'serviceOid'),
            patientId: patientId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
