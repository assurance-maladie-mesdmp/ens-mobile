// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_catalogue_service_update_autorisation.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_autorisationVars> _$gupdateAutorisationVarsSerializer =
    new _$Gupdate_autorisationVarsSerializer();

class _$Gupdate_autorisationVarsSerializer
    implements StructuredSerializer<Gupdate_autorisationVars> {
  @override
  final Iterable<Type> types = const [
    Gupdate_autorisationVars,
    _$Gupdate_autorisationVars
  ];
  @override
  final String wireName = 'Gupdate_autorisationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_autorisationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'serviceOid',
      serializers.serialize(object.serviceOid,
          specifiedType: const FullType(String)),
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gupdate_autorisationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_autorisationVarsBuilder();

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
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_autorisationVars extends Gupdate_autorisationVars {
  @override
  final String serviceOid;
  @override
  final String patientId;

  factory _$Gupdate_autorisationVars(
          [void Function(Gupdate_autorisationVarsBuilder)? updates]) =>
      (new Gupdate_autorisationVarsBuilder()..update(updates))._build();

  _$Gupdate_autorisationVars._(
      {required this.serviceOid, required this.patientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        serviceOid, r'Gupdate_autorisationVars', 'serviceOid');
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gupdate_autorisationVars', 'patientId');
  }

  @override
  Gupdate_autorisationVars rebuild(
          void Function(Gupdate_autorisationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_autorisationVarsBuilder toBuilder() =>
      new Gupdate_autorisationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_autorisationVars &&
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
    return (newBuiltValueToStringHelper(r'Gupdate_autorisationVars')
          ..add('serviceOid', serviceOid)
          ..add('patientId', patientId))
        .toString();
  }
}

class Gupdate_autorisationVarsBuilder
    implements
        Builder<Gupdate_autorisationVars, Gupdate_autorisationVarsBuilder> {
  _$Gupdate_autorisationVars? _$v;

  String? _serviceOid;
  String? get serviceOid => _$this._serviceOid;
  set serviceOid(String? serviceOid) => _$this._serviceOid = serviceOid;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gupdate_autorisationVarsBuilder();

  Gupdate_autorisationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serviceOid = $v.serviceOid;
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_autorisationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_autorisationVars;
  }

  @override
  void update(void Function(Gupdate_autorisationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_autorisationVars build() => _build();

  _$Gupdate_autorisationVars _build() {
    final _$result = _$v ??
        new _$Gupdate_autorisationVars._(
            serviceOid: BuiltValueNullFieldError.checkNotNull(
                serviceOid, r'Gupdate_autorisationVars', 'serviceOid'),
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gupdate_autorisationVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
