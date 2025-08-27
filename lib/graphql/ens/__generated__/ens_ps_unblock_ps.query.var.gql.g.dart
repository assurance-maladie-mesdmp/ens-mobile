// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ps_unblock_ps.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gunblock_psVars> _$gunblockPsVarsSerializer =
    new _$Gunblock_psVarsSerializer();

class _$Gunblock_psVarsSerializer
    implements StructuredSerializer<Gunblock_psVars> {
  @override
  final Iterable<Type> types = const [Gunblock_psVars, _$Gunblock_psVars];
  @override
  final String wireName = 'Gunblock_psVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gunblock_psVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'rpps',
      serializers.serialize(object.rpps, specifiedType: const FullType(String)),
      'consentementId',
      serializers.serialize(object.consentementId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gunblock_psVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gunblock_psVarsBuilder();

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
        case 'rpps':
          result.rpps = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'consentementId':
          result.consentementId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gunblock_psVars extends Gunblock_psVars {
  @override
  final String patientId;
  @override
  final String rpps;
  @override
  final String consentementId;

  factory _$Gunblock_psVars([void Function(Gunblock_psVarsBuilder)? updates]) =>
      (new Gunblock_psVarsBuilder()..update(updates))._build();

  _$Gunblock_psVars._(
      {required this.patientId,
      required this.rpps,
      required this.consentementId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gunblock_psVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(rpps, r'Gunblock_psVars', 'rpps');
    BuiltValueNullFieldError.checkNotNull(
        consentementId, r'Gunblock_psVars', 'consentementId');
  }

  @override
  Gunblock_psVars rebuild(void Function(Gunblock_psVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gunblock_psVarsBuilder toBuilder() =>
      new Gunblock_psVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gunblock_psVars &&
        patientId == other.patientId &&
        rpps == other.rpps &&
        consentementId == other.consentementId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, rpps.hashCode);
    _$hash = $jc(_$hash, consentementId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gunblock_psVars')
          ..add('patientId', patientId)
          ..add('rpps', rpps)
          ..add('consentementId', consentementId))
        .toString();
  }
}

class Gunblock_psVarsBuilder
    implements Builder<Gunblock_psVars, Gunblock_psVarsBuilder> {
  _$Gunblock_psVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _rpps;
  String? get rpps => _$this._rpps;
  set rpps(String? rpps) => _$this._rpps = rpps;

  String? _consentementId;
  String? get consentementId => _$this._consentementId;
  set consentementId(String? consentementId) =>
      _$this._consentementId = consentementId;

  Gunblock_psVarsBuilder();

  Gunblock_psVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _rpps = $v.rpps;
      _consentementId = $v.consentementId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gunblock_psVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gunblock_psVars;
  }

  @override
  void update(void Function(Gunblock_psVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gunblock_psVars build() => _build();

  _$Gunblock_psVars _build() {
    final _$result = _$v ??
        new _$Gunblock_psVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gunblock_psVars', 'patientId'),
            rpps: BuiltValueNullFieldError.checkNotNull(
                rpps, r'Gunblock_psVars', 'rpps'),
            consentementId: BuiltValueNullFieldError.checkNotNull(
                consentementId, r'Gunblock_psVars', 'consentementId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
