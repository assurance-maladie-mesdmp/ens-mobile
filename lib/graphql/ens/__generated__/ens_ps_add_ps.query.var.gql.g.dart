// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ps_add_ps.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gadd_professionnel_de_santeVars>
    _$gaddProfessionnelDeSanteVarsSerializer =
    new _$Gadd_professionnel_de_santeVarsSerializer();

class _$Gadd_professionnel_de_santeVarsSerializer
    implements StructuredSerializer<Gadd_professionnel_de_santeVars> {
  @override
  final Iterable<Type> types = const [
    Gadd_professionnel_de_santeVars,
    _$Gadd_professionnel_de_santeVars
  ];
  @override
  final String wireName = 'Gadd_professionnel_de_santeVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_professionnel_de_santeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'psId',
      serializers.serialize(object.psId, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.role;
    if (value != null) {
      result
        ..add('role')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GHealthProfessionalRoleEnum)));
    }
    return result;
  }

  @override
  Gadd_professionnel_de_santeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_professionnel_de_santeVarsBuilder();

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
        case 'role':
          result.role = serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GHealthProfessionalRoleEnum))
              as _i1.GHealthProfessionalRoleEnum?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_professionnel_de_santeVars
    extends Gadd_professionnel_de_santeVars {
  @override
  final String patientId;
  @override
  final String psId;
  @override
  final _i1.GHealthProfessionalRoleEnum? role;

  factory _$Gadd_professionnel_de_santeVars(
          [void Function(Gadd_professionnel_de_santeVarsBuilder)? updates]) =>
      (new Gadd_professionnel_de_santeVarsBuilder()..update(updates))._build();

  _$Gadd_professionnel_de_santeVars._(
      {required this.patientId, required this.psId, this.role})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gadd_professionnel_de_santeVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(
        psId, r'Gadd_professionnel_de_santeVars', 'psId');
  }

  @override
  Gadd_professionnel_de_santeVars rebuild(
          void Function(Gadd_professionnel_de_santeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_professionnel_de_santeVarsBuilder toBuilder() =>
      new Gadd_professionnel_de_santeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_professionnel_de_santeVars &&
        patientId == other.patientId &&
        psId == other.psId &&
        role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, psId.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_professionnel_de_santeVars')
          ..add('patientId', patientId)
          ..add('psId', psId)
          ..add('role', role))
        .toString();
  }
}

class Gadd_professionnel_de_santeVarsBuilder
    implements
        Builder<Gadd_professionnel_de_santeVars,
            Gadd_professionnel_de_santeVarsBuilder> {
  _$Gadd_professionnel_de_santeVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _psId;
  String? get psId => _$this._psId;
  set psId(String? psId) => _$this._psId = psId;

  _i1.GHealthProfessionalRoleEnum? _role;
  _i1.GHealthProfessionalRoleEnum? get role => _$this._role;
  set role(_i1.GHealthProfessionalRoleEnum? role) => _$this._role = role;

  Gadd_professionnel_de_santeVarsBuilder();

  Gadd_professionnel_de_santeVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _psId = $v.psId;
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_professionnel_de_santeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_professionnel_de_santeVars;
  }

  @override
  void update(void Function(Gadd_professionnel_de_santeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_professionnel_de_santeVars build() => _build();

  _$Gadd_professionnel_de_santeVars _build() {
    final _$result = _$v ??
        new _$Gadd_professionnel_de_santeVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gadd_professionnel_de_santeVars', 'patientId'),
            psId: BuiltValueNullFieldError.checkNotNull(
                psId, r'Gadd_professionnel_de_santeVars', 'psId'),
            role: role);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
