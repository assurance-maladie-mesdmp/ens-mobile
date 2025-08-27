// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ps_delete_ps.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_professionnel_santeVars>
    _$gdeleteProfessionnelSanteVarsSerializer =
    new _$Gdelete_professionnel_santeVarsSerializer();

class _$Gdelete_professionnel_santeVarsSerializer
    implements StructuredSerializer<Gdelete_professionnel_santeVars> {
  @override
  final Iterable<Type> types = const [
    Gdelete_professionnel_santeVars,
    _$Gdelete_professionnel_santeVars
  ];
  @override
  final String wireName = 'Gdelete_professionnel_santeVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_professionnel_santeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'psId',
      serializers.serialize(object.psId, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gdelete_professionnel_santeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_professionnel_santeVarsBuilder();

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
        case 'psId':
          result.psId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_professionnel_santeVars
    extends Gdelete_professionnel_santeVars {
  @override
  final String patientId;
  @override
  final String psId;

  factory _$Gdelete_professionnel_santeVars(
          [void Function(Gdelete_professionnel_santeVarsBuilder)? updates]) =>
      (new Gdelete_professionnel_santeVarsBuilder()..update(updates))._build();

  _$Gdelete_professionnel_santeVars._(
      {required this.patientId, required this.psId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gdelete_professionnel_santeVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(
        psId, r'Gdelete_professionnel_santeVars', 'psId');
  }

  @override
  Gdelete_professionnel_santeVars rebuild(
          void Function(Gdelete_professionnel_santeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_professionnel_santeVarsBuilder toBuilder() =>
      new Gdelete_professionnel_santeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_professionnel_santeVars &&
        patientId == other.patientId &&
        psId == other.psId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, psId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_professionnel_santeVars')
          ..add('patientId', patientId)
          ..add('psId', psId))
        .toString();
  }
}

class Gdelete_professionnel_santeVarsBuilder
    implements
        Builder<Gdelete_professionnel_santeVars,
            Gdelete_professionnel_santeVarsBuilder> {
  _$Gdelete_professionnel_santeVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _psId;
  String? get psId => _$this._psId;
  set psId(String? psId) => _$this._psId = psId;

  Gdelete_professionnel_santeVarsBuilder();

  Gdelete_professionnel_santeVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _psId = $v.psId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_professionnel_santeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_professionnel_santeVars;
  }

  @override
  void update(void Function(Gdelete_professionnel_santeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_professionnel_santeVars build() => _build();

  _$Gdelete_professionnel_santeVars _build() {
    final _$result = _$v ??
        new _$Gdelete_professionnel_santeVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gdelete_professionnel_santeVars', 'patientId'),
            psId: BuiltValueNullFieldError.checkNotNull(
                psId, r'Gdelete_professionnel_santeVars', 'psId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
