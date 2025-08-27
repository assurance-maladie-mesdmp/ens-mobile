// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ps_block_ps.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gblock_psVars> _$gblockPsVarsSerializer =
    new _$Gblock_psVarsSerializer();

class _$Gblock_psVarsSerializer implements StructuredSerializer<Gblock_psVars> {
  @override
  final Iterable<Type> types = const [Gblock_psVars, _$Gblock_psVars];
  @override
  final String wireName = 'Gblock_psVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gblock_psVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'rpps',
      serializers.serialize(object.rpps, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gblock_psVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gblock_psVarsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$Gblock_psVars extends Gblock_psVars {
  @override
  final String patientId;
  @override
  final String rpps;

  factory _$Gblock_psVars([void Function(Gblock_psVarsBuilder)? updates]) =>
      (new Gblock_psVarsBuilder()..update(updates))._build();

  _$Gblock_psVars._({required this.patientId, required this.rpps}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gblock_psVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(rpps, r'Gblock_psVars', 'rpps');
  }

  @override
  Gblock_psVars rebuild(void Function(Gblock_psVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gblock_psVarsBuilder toBuilder() => new Gblock_psVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gblock_psVars &&
        patientId == other.patientId &&
        rpps == other.rpps;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, rpps.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gblock_psVars')
          ..add('patientId', patientId)
          ..add('rpps', rpps))
        .toString();
  }
}

class Gblock_psVarsBuilder
    implements Builder<Gblock_psVars, Gblock_psVarsBuilder> {
  _$Gblock_psVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _rpps;
  String? get rpps => _$this._rpps;
  set rpps(String? rpps) => _$this._rpps = rpps;

  Gblock_psVarsBuilder();

  Gblock_psVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _rpps = $v.rpps;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gblock_psVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gblock_psVars;
  }

  @override
  void update(void Function(Gblock_psVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gblock_psVars build() => _build();

  _$Gblock_psVars _build() {
    final _$result = _$v ??
        new _$Gblock_psVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gblock_psVars', 'patientId'),
            rpps: BuiltValueNullFieldError.checkNotNull(
                rpps, r'Gblock_psVars', 'rpps'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
