// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_get_consents_for_service_by_oid.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_consents_for_service_by_oidVars>
    _$ggetConsentsForServiceByOidVarsSerializer =
    new _$Gget_consents_for_service_by_oidVarsSerializer();

class _$Gget_consents_for_service_by_oidVarsSerializer
    implements StructuredSerializer<Gget_consents_for_service_by_oidVars> {
  @override
  final Iterable<Type> types = const [
    Gget_consents_for_service_by_oidVars,
    _$Gget_consents_for_service_by_oidVars
  ];
  @override
  final String wireName = 'Gget_consents_for_service_by_oidVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_consents_for_service_by_oidVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'oid',
      serializers.serialize(object.oid, specifiedType: const FullType(String)),
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_consents_for_service_by_oidVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_consents_for_service_by_oidVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'oid':
          result.oid = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_consents_for_service_by_oidVars
    extends Gget_consents_for_service_by_oidVars {
  @override
  final String oid;
  @override
  final String patientId;

  factory _$Gget_consents_for_service_by_oidVars(
          [void Function(Gget_consents_for_service_by_oidVarsBuilder)?
              updates]) =>
      (new Gget_consents_for_service_by_oidVarsBuilder()..update(updates))
          ._build();

  _$Gget_consents_for_service_by_oidVars._(
      {required this.oid, required this.patientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oid, r'Gget_consents_for_service_by_oidVars', 'oid');
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_consents_for_service_by_oidVars', 'patientId');
  }

  @override
  Gget_consents_for_service_by_oidVars rebuild(
          void Function(Gget_consents_for_service_by_oidVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_consents_for_service_by_oidVarsBuilder toBuilder() =>
      new Gget_consents_for_service_by_oidVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_consents_for_service_by_oidVars &&
        oid == other.oid &&
        patientId == other.patientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oid.hashCode);
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_consents_for_service_by_oidVars')
          ..add('oid', oid)
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_consents_for_service_by_oidVarsBuilder
    implements
        Builder<Gget_consents_for_service_by_oidVars,
            Gget_consents_for_service_by_oidVarsBuilder> {
  _$Gget_consents_for_service_by_oidVars? _$v;

  String? _oid;
  String? get oid => _$this._oid;
  set oid(String? oid) => _$this._oid = oid;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_consents_for_service_by_oidVarsBuilder();

  Gget_consents_for_service_by_oidVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oid = $v.oid;
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_consents_for_service_by_oidVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_consents_for_service_by_oidVars;
  }

  @override
  void update(
      void Function(Gget_consents_for_service_by_oidVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_consents_for_service_by_oidVars build() => _build();

  _$Gget_consents_for_service_by_oidVars _build() {
    final _$result = _$v ??
        new _$Gget_consents_for_service_by_oidVars._(
            oid: BuiltValueNullFieldError.checkNotNull(
                oid, r'Gget_consents_for_service_by_oidVars', 'oid'),
            patientId: BuiltValueNullFieldError.checkNotNull(patientId,
                r'Gget_consents_for_service_by_oidVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
