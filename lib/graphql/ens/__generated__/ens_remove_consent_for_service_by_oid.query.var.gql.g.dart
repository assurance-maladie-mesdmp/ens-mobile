// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_remove_consent_for_service_by_oid.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gremove_consent_for_service_by_oidVars>
    _$gremoveConsentForServiceByOidVarsSerializer =
    new _$Gremove_consent_for_service_by_oidVarsSerializer();

class _$Gremove_consent_for_service_by_oidVarsSerializer
    implements StructuredSerializer<Gremove_consent_for_service_by_oidVars> {
  @override
  final Iterable<Type> types = const [
    Gremove_consent_for_service_by_oidVars,
    _$Gremove_consent_for_service_by_oidVars
  ];
  @override
  final String wireName = 'Gremove_consent_for_service_by_oidVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gremove_consent_for_service_by_oidVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'removeFinalityConsentByServiceOid',
      serializers.serialize(object.removeFinalityConsentByServiceOid,
          specifiedType:
              const FullType(_i1.GChangeFinalityConsentByServiceOidInput)),
    ];

    return result;
  }

  @override
  Gremove_consent_for_service_by_oidVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gremove_consent_for_service_by_oidVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'removeFinalityConsentByServiceOid':
          result.removeFinalityConsentByServiceOid.replace(
              serializers.deserialize(value,
                      specifiedType: const FullType(
                          _i1.GChangeFinalityConsentByServiceOidInput))!
                  as _i1.GChangeFinalityConsentByServiceOidInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gremove_consent_for_service_by_oidVars
    extends Gremove_consent_for_service_by_oidVars {
  @override
  final _i1.GChangeFinalityConsentByServiceOidInput
      removeFinalityConsentByServiceOid;

  factory _$Gremove_consent_for_service_by_oidVars(
          [void Function(Gremove_consent_for_service_by_oidVarsBuilder)?
              updates]) =>
      (new Gremove_consent_for_service_by_oidVarsBuilder()..update(updates))
          ._build();

  _$Gremove_consent_for_service_by_oidVars._(
      {required this.removeFinalityConsentByServiceOid})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        removeFinalityConsentByServiceOid,
        r'Gremove_consent_for_service_by_oidVars',
        'removeFinalityConsentByServiceOid');
  }

  @override
  Gremove_consent_for_service_by_oidVars rebuild(
          void Function(Gremove_consent_for_service_by_oidVarsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gremove_consent_for_service_by_oidVarsBuilder toBuilder() =>
      new Gremove_consent_for_service_by_oidVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gremove_consent_for_service_by_oidVars &&
        removeFinalityConsentByServiceOid ==
            other.removeFinalityConsentByServiceOid;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, removeFinalityConsentByServiceOid.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gremove_consent_for_service_by_oidVars')
          ..add('removeFinalityConsentByServiceOid',
              removeFinalityConsentByServiceOid))
        .toString();
  }
}

class Gremove_consent_for_service_by_oidVarsBuilder
    implements
        Builder<Gremove_consent_for_service_by_oidVars,
            Gremove_consent_for_service_by_oidVarsBuilder> {
  _$Gremove_consent_for_service_by_oidVars? _$v;

  _i1.GChangeFinalityConsentByServiceOidInputBuilder?
      _removeFinalityConsentByServiceOid;
  _i1.GChangeFinalityConsentByServiceOidInputBuilder
      get removeFinalityConsentByServiceOid =>
          _$this._removeFinalityConsentByServiceOid ??=
              new _i1.GChangeFinalityConsentByServiceOidInputBuilder();
  set removeFinalityConsentByServiceOid(
          _i1.GChangeFinalityConsentByServiceOidInputBuilder?
              removeFinalityConsentByServiceOid) =>
      _$this._removeFinalityConsentByServiceOid =
          removeFinalityConsentByServiceOid;

  Gremove_consent_for_service_by_oidVarsBuilder();

  Gremove_consent_for_service_by_oidVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _removeFinalityConsentByServiceOid =
          $v.removeFinalityConsentByServiceOid.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gremove_consent_for_service_by_oidVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gremove_consent_for_service_by_oidVars;
  }

  @override
  void update(
      void Function(Gremove_consent_for_service_by_oidVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gremove_consent_for_service_by_oidVars build() => _build();

  _$Gremove_consent_for_service_by_oidVars _build() {
    _$Gremove_consent_for_service_by_oidVars _$result;
    try {
      _$result = _$v ??
          new _$Gremove_consent_for_service_by_oidVars._(
              removeFinalityConsentByServiceOid:
                  removeFinalityConsentByServiceOid.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'removeFinalityConsentByServiceOid';
        removeFinalityConsentByServiceOid.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gremove_consent_for_service_by_oidVars',
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
