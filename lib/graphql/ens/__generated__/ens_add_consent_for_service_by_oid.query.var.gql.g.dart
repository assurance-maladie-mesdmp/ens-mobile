// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_add_consent_for_service_by_oid.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gadd_consent_for_service_by_oidVars>
    _$gaddConsentForServiceByOidVarsSerializer =
    new _$Gadd_consent_for_service_by_oidVarsSerializer();

class _$Gadd_consent_for_service_by_oidVarsSerializer
    implements StructuredSerializer<Gadd_consent_for_service_by_oidVars> {
  @override
  final Iterable<Type> types = const [
    Gadd_consent_for_service_by_oidVars,
    _$Gadd_consent_for_service_by_oidVars
  ];
  @override
  final String wireName = 'Gadd_consent_for_service_by_oidVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_consent_for_service_by_oidVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'addFinalityConsentByServiceOid',
      serializers.serialize(object.addFinalityConsentByServiceOid,
          specifiedType:
              const FullType(_i1.GChangeFinalityConsentByServiceOidInput)),
    ];

    return result;
  }

  @override
  Gadd_consent_for_service_by_oidVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_consent_for_service_by_oidVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'addFinalityConsentByServiceOid':
          result.addFinalityConsentByServiceOid.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      _i1.GChangeFinalityConsentByServiceOidInput))!
              as _i1.GChangeFinalityConsentByServiceOidInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_consent_for_service_by_oidVars
    extends Gadd_consent_for_service_by_oidVars {
  @override
  final _i1.GChangeFinalityConsentByServiceOidInput
      addFinalityConsentByServiceOid;

  factory _$Gadd_consent_for_service_by_oidVars(
          [void Function(Gadd_consent_for_service_by_oidVarsBuilder)?
              updates]) =>
      (new Gadd_consent_for_service_by_oidVarsBuilder()..update(updates))
          ._build();

  _$Gadd_consent_for_service_by_oidVars._(
      {required this.addFinalityConsentByServiceOid})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        addFinalityConsentByServiceOid,
        r'Gadd_consent_for_service_by_oidVars',
        'addFinalityConsentByServiceOid');
  }

  @override
  Gadd_consent_for_service_by_oidVars rebuild(
          void Function(Gadd_consent_for_service_by_oidVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_consent_for_service_by_oidVarsBuilder toBuilder() =>
      new Gadd_consent_for_service_by_oidVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_consent_for_service_by_oidVars &&
        addFinalityConsentByServiceOid == other.addFinalityConsentByServiceOid;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, addFinalityConsentByServiceOid.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_consent_for_service_by_oidVars')
          ..add(
              'addFinalityConsentByServiceOid', addFinalityConsentByServiceOid))
        .toString();
  }
}

class Gadd_consent_for_service_by_oidVarsBuilder
    implements
        Builder<Gadd_consent_for_service_by_oidVars,
            Gadd_consent_for_service_by_oidVarsBuilder> {
  _$Gadd_consent_for_service_by_oidVars? _$v;

  _i1.GChangeFinalityConsentByServiceOidInputBuilder?
      _addFinalityConsentByServiceOid;
  _i1.GChangeFinalityConsentByServiceOidInputBuilder
      get addFinalityConsentByServiceOid =>
          _$this._addFinalityConsentByServiceOid ??=
              new _i1.GChangeFinalityConsentByServiceOidInputBuilder();
  set addFinalityConsentByServiceOid(
          _i1.GChangeFinalityConsentByServiceOidInputBuilder?
              addFinalityConsentByServiceOid) =>
      _$this._addFinalityConsentByServiceOid = addFinalityConsentByServiceOid;

  Gadd_consent_for_service_by_oidVarsBuilder();

  Gadd_consent_for_service_by_oidVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _addFinalityConsentByServiceOid =
          $v.addFinalityConsentByServiceOid.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_consent_for_service_by_oidVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_consent_for_service_by_oidVars;
  }

  @override
  void update(
      void Function(Gadd_consent_for_service_by_oidVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_consent_for_service_by_oidVars build() => _build();

  _$Gadd_consent_for_service_by_oidVars _build() {
    _$Gadd_consent_for_service_by_oidVars _$result;
    try {
      _$result = _$v ??
          new _$Gadd_consent_for_service_by_oidVars._(
              addFinalityConsentByServiceOid:
                  addFinalityConsentByServiceOid.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addFinalityConsentByServiceOid';
        addFinalityConsentByServiceOid.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_consent_for_service_by_oidVars',
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
