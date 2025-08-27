// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ps_role_remove_role.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_professionnel_sante_roleData>
    _$gdeleteProfessionnelSanteRoleDataSerializer =
    new _$Gdelete_professionnel_sante_roleDataSerializer();
Serializer<Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole>
    _$gdeleteProfessionnelSanteRoleDataRemoveHealthProfessionalRoleSerializer =
    new _$Gdelete_professionnel_sante_roleData_removeHealthProfessionalRoleSerializer();

class _$Gdelete_professionnel_sante_roleDataSerializer
    implements StructuredSerializer<Gdelete_professionnel_sante_roleData> {
  @override
  final Iterable<Type> types = const [
    Gdelete_professionnel_sante_roleData,
    _$Gdelete_professionnel_sante_roleData
  ];
  @override
  final String wireName = 'Gdelete_professionnel_sante_roleData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_professionnel_sante_roleData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'removeHealthProfessionalRole',
      serializers.serialize(object.removeHealthProfessionalRole,
          specifiedType: const FullType(
              Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole)),
    ];

    return result;
  }

  @override
  Gdelete_professionnel_sante_roleData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_professionnel_sante_roleDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'removeHealthProfessionalRole':
          result.removeHealthProfessionalRole.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole))!
              as Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_professionnel_sante_roleData_removeHealthProfessionalRoleSerializer
    implements
        StructuredSerializer<
            Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole> {
  @override
  final Iterable<Type> types = const [
    Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole,
    _$Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole
  ];
  @override
  final String wireName =
      'Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'success',
      serializers.serialize(object.success,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gdelete_professionnel_sante_roleData_removeHealthProfessionalRoleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_professionnel_sante_roleData
    extends Gdelete_professionnel_sante_roleData {
  @override
  final String G__typename;
  @override
  final Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole
      removeHealthProfessionalRole;

  factory _$Gdelete_professionnel_sante_roleData(
          [void Function(Gdelete_professionnel_sante_roleDataBuilder)?
              updates]) =>
      (new Gdelete_professionnel_sante_roleDataBuilder()..update(updates))
          ._build();

  _$Gdelete_professionnel_sante_roleData._(
      {required this.G__typename, required this.removeHealthProfessionalRole})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_professionnel_sante_roleData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        removeHealthProfessionalRole,
        r'Gdelete_professionnel_sante_roleData',
        'removeHealthProfessionalRole');
  }

  @override
  Gdelete_professionnel_sante_roleData rebuild(
          void Function(Gdelete_professionnel_sante_roleDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_professionnel_sante_roleDataBuilder toBuilder() =>
      new Gdelete_professionnel_sante_roleDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_professionnel_sante_roleData &&
        G__typename == other.G__typename &&
        removeHealthProfessionalRole == other.removeHealthProfessionalRole;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, removeHealthProfessionalRole.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_professionnel_sante_roleData')
          ..add('G__typename', G__typename)
          ..add('removeHealthProfessionalRole', removeHealthProfessionalRole))
        .toString();
  }
}

class Gdelete_professionnel_sante_roleDataBuilder
    implements
        Builder<Gdelete_professionnel_sante_roleData,
            Gdelete_professionnel_sante_roleDataBuilder> {
  _$Gdelete_professionnel_sante_roleData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gdelete_professionnel_sante_roleData_removeHealthProfessionalRoleBuilder?
      _removeHealthProfessionalRole;
  Gdelete_professionnel_sante_roleData_removeHealthProfessionalRoleBuilder
      get removeHealthProfessionalRole => _$this
              ._removeHealthProfessionalRole ??=
          new Gdelete_professionnel_sante_roleData_removeHealthProfessionalRoleBuilder();
  set removeHealthProfessionalRole(
          Gdelete_professionnel_sante_roleData_removeHealthProfessionalRoleBuilder?
              removeHealthProfessionalRole) =>
      _$this._removeHealthProfessionalRole = removeHealthProfessionalRole;

  Gdelete_professionnel_sante_roleDataBuilder() {
    Gdelete_professionnel_sante_roleData._initializeBuilder(this);
  }

  Gdelete_professionnel_sante_roleDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _removeHealthProfessionalRole =
          $v.removeHealthProfessionalRole.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_professionnel_sante_roleData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_professionnel_sante_roleData;
  }

  @override
  void update(
      void Function(Gdelete_professionnel_sante_roleDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_professionnel_sante_roleData build() => _build();

  _$Gdelete_professionnel_sante_roleData _build() {
    _$Gdelete_professionnel_sante_roleData _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_professionnel_sante_roleData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gdelete_professionnel_sante_roleData', 'G__typename'),
              removeHealthProfessionalRole:
                  removeHealthProfessionalRole.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'removeHealthProfessionalRole';
        removeHealthProfessionalRole.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_professionnel_sante_roleData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole
    extends Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole(
          [void Function(
                  Gdelete_professionnel_sante_roleData_removeHealthProfessionalRoleBuilder)?
              updates]) =>
      (new Gdelete_professionnel_sante_roleData_removeHealthProfessionalRoleBuilder()
            ..update(updates))
          ._build();

  _$Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success,
        r'Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole',
        'success');
  }

  @override
  Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole rebuild(
          void Function(
                  Gdelete_professionnel_sante_roleData_removeHealthProfessionalRoleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_professionnel_sante_roleData_removeHealthProfessionalRoleBuilder
      toBuilder() =>
          new Gdelete_professionnel_sante_roleData_removeHealthProfessionalRoleBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole &&
        G__typename == other.G__typename &&
        success == other.success;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gdelete_professionnel_sante_roleData_removeHealthProfessionalRoleBuilder
    implements
        Builder<
            Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole,
            Gdelete_professionnel_sante_roleData_removeHealthProfessionalRoleBuilder> {
  _$Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gdelete_professionnel_sante_roleData_removeHealthProfessionalRoleBuilder() {
    Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole
        ._initializeBuilder(this);
  }

  Gdelete_professionnel_sante_roleData_removeHealthProfessionalRoleBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole;
  }

  @override
  void update(
      void Function(
              Gdelete_professionnel_sante_roleData_removeHealthProfessionalRoleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole build() =>
      _build();

  _$Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole _build() {
    final _$result = _$v ??
        new _$Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gdelete_professionnel_sante_roleData_removeHealthProfessionalRole',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
