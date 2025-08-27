// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ps_role_add_role_or_add_ps_and_role.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_professionel_sante_roleVars>
    _$gupdateProfessionelSanteRoleVarsSerializer =
    new _$Gupdate_professionel_sante_roleVarsSerializer();

class _$Gupdate_professionel_sante_roleVarsSerializer
    implements StructuredSerializer<Gupdate_professionel_sante_roleVars> {
  @override
  final Iterable<Type> types = const [
    Gupdate_professionel_sante_roleVars,
    _$Gupdate_professionel_sante_roleVars
  ];
  @override
  final String wireName = 'Gupdate_professionel_sante_roleVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_professionel_sante_roleVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'psNationalId',
      serializers.serialize(object.psNationalId,
          specifiedType: const FullType(String)),
      'role',
      serializers.serialize(object.role,
          specifiedType: const FullType(_i1.GHealthProfessionalRoleEnum)),
    ];

    return result;
  }

  @override
  Gupdate_professionel_sante_roleVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_professionel_sante_roleVarsBuilder();

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
        case 'psNationalId':
          result.psNationalId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GHealthProfessionalRoleEnum))!
              as _i1.GHealthProfessionalRoleEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_professionel_sante_roleVars
    extends Gupdate_professionel_sante_roleVars {
  @override
  final String patientId;
  @override
  final String psNationalId;
  @override
  final _i1.GHealthProfessionalRoleEnum role;

  factory _$Gupdate_professionel_sante_roleVars(
          [void Function(Gupdate_professionel_sante_roleVarsBuilder)?
              updates]) =>
      (new Gupdate_professionel_sante_roleVarsBuilder()..update(updates))
          ._build();

  _$Gupdate_professionel_sante_roleVars._(
      {required this.patientId, required this.psNationalId, required this.role})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gupdate_professionel_sante_roleVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(
        psNationalId, r'Gupdate_professionel_sante_roleVars', 'psNationalId');
    BuiltValueNullFieldError.checkNotNull(
        role, r'Gupdate_professionel_sante_roleVars', 'role');
  }

  @override
  Gupdate_professionel_sante_roleVars rebuild(
          void Function(Gupdate_professionel_sante_roleVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_professionel_sante_roleVarsBuilder toBuilder() =>
      new Gupdate_professionel_sante_roleVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_professionel_sante_roleVars &&
        patientId == other.patientId &&
        psNationalId == other.psNationalId &&
        role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, psNationalId.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_professionel_sante_roleVars')
          ..add('patientId', patientId)
          ..add('psNationalId', psNationalId)
          ..add('role', role))
        .toString();
  }
}

class Gupdate_professionel_sante_roleVarsBuilder
    implements
        Builder<Gupdate_professionel_sante_roleVars,
            Gupdate_professionel_sante_roleVarsBuilder> {
  _$Gupdate_professionel_sante_roleVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _psNationalId;
  String? get psNationalId => _$this._psNationalId;
  set psNationalId(String? psNationalId) => _$this._psNationalId = psNationalId;

  _i1.GHealthProfessionalRoleEnum? _role;
  _i1.GHealthProfessionalRoleEnum? get role => _$this._role;
  set role(_i1.GHealthProfessionalRoleEnum? role) => _$this._role = role;

  Gupdate_professionel_sante_roleVarsBuilder();

  Gupdate_professionel_sante_roleVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _psNationalId = $v.psNationalId;
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_professionel_sante_roleVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_professionel_sante_roleVars;
  }

  @override
  void update(
      void Function(Gupdate_professionel_sante_roleVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_professionel_sante_roleVars build() => _build();

  _$Gupdate_professionel_sante_roleVars _build() {
    final _$result = _$v ??
        new _$Gupdate_professionel_sante_roleVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gupdate_professionel_sante_roleVars', 'patientId'),
            psNationalId: BuiltValueNullFieldError.checkNotNull(psNationalId,
                r'Gupdate_professionel_sante_roleVars', 'psNationalId'),
            role: BuiltValueNullFieldError.checkNotNull(
                role, r'Gupdate_professionel_sante_roleVars', 'role'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
