// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ps_role_remove_role.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_professionnel_sante_roleVars>
    _$gdeleteProfessionnelSanteRoleVarsSerializer =
    new _$Gdelete_professionnel_sante_roleVarsSerializer();

class _$Gdelete_professionnel_sante_roleVarsSerializer
    implements StructuredSerializer<Gdelete_professionnel_sante_roleVars> {
  @override
  final Iterable<Type> types = const [
    Gdelete_professionnel_sante_roleVars,
    _$Gdelete_professionnel_sante_roleVars
  ];
  @override
  final String wireName = 'Gdelete_professionnel_sante_roleVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_professionnel_sante_roleVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'psIdNat',
      serializers.serialize(object.psIdNat,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gdelete_professionnel_sante_roleVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_professionnel_sante_roleVarsBuilder();

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
        case 'psIdNat':
          result.psIdNat = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_professionnel_sante_roleVars
    extends Gdelete_professionnel_sante_roleVars {
  @override
  final String patientId;
  @override
  final String psIdNat;

  factory _$Gdelete_professionnel_sante_roleVars(
          [void Function(Gdelete_professionnel_sante_roleVarsBuilder)?
              updates]) =>
      (new Gdelete_professionnel_sante_roleVarsBuilder()..update(updates))
          ._build();

  _$Gdelete_professionnel_sante_roleVars._(
      {required this.patientId, required this.psIdNat})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gdelete_professionnel_sante_roleVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(
        psIdNat, r'Gdelete_professionnel_sante_roleVars', 'psIdNat');
  }

  @override
  Gdelete_professionnel_sante_roleVars rebuild(
          void Function(Gdelete_professionnel_sante_roleVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_professionnel_sante_roleVarsBuilder toBuilder() =>
      new Gdelete_professionnel_sante_roleVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_professionnel_sante_roleVars &&
        patientId == other.patientId &&
        psIdNat == other.psIdNat;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, psIdNat.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_professionnel_sante_roleVars')
          ..add('patientId', patientId)
          ..add('psIdNat', psIdNat))
        .toString();
  }
}

class Gdelete_professionnel_sante_roleVarsBuilder
    implements
        Builder<Gdelete_professionnel_sante_roleVars,
            Gdelete_professionnel_sante_roleVarsBuilder> {
  _$Gdelete_professionnel_sante_roleVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _psIdNat;
  String? get psIdNat => _$this._psIdNat;
  set psIdNat(String? psIdNat) => _$this._psIdNat = psIdNat;

  Gdelete_professionnel_sante_roleVarsBuilder();

  Gdelete_professionnel_sante_roleVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _psIdNat = $v.psIdNat;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_professionnel_sante_roleVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_professionnel_sante_roleVars;
  }

  @override
  void update(
      void Function(Gdelete_professionnel_sante_roleVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_professionnel_sante_roleVars build() => _build();

  _$Gdelete_professionnel_sante_roleVars _build() {
    final _$result = _$v ??
        new _$Gdelete_professionnel_sante_roleVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(patientId,
                r'Gdelete_professionnel_sante_roleVars', 'patientId'),
            psIdNat: BuiltValueNullFieldError.checkNotNull(
                psIdNat, r'Gdelete_professionnel_sante_roleVars', 'psIdNat'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
