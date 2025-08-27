// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ps_role_add_role_or_add_ps_and_role.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_professionel_sante_roleData>
    _$gupdateProfessionelSanteRoleDataSerializer =
    new _$Gupdate_professionel_sante_roleDataSerializer();
Serializer<
        Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat>
    _$gupdateProfessionelSanteRoleDataUpdateHealthProfessionalRoleByIdNatSerializer =
    new _$Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNatSerializer();

class _$Gupdate_professionel_sante_roleDataSerializer
    implements StructuredSerializer<Gupdate_professionel_sante_roleData> {
  @override
  final Iterable<Type> types = const [
    Gupdate_professionel_sante_roleData,
    _$Gupdate_professionel_sante_roleData
  ];
  @override
  final String wireName = 'Gupdate_professionel_sante_roleData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_professionel_sante_roleData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'updateHealthProfessionalRoleByIdNat',
      serializers.serialize(object.updateHealthProfessionalRoleByIdNat,
          specifiedType: const FullType(
              Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat)),
    ];

    return result;
  }

  @override
  Gupdate_professionel_sante_roleData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_professionel_sante_roleDataBuilder();

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
        case 'updateHealthProfessionalRoleByIdNat':
          result.updateHealthProfessionalRoleByIdNat.replace(serializers
                  .deserialize(value,
                      specifiedType: const FullType(
                          Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat))!
              as Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNatSerializer
    implements
        StructuredSerializer<
            Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat> {
  @override
  final Iterable<Type> types = const [
    Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat,
    _$Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat
  ];
  @override
  final String wireName =
      'Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat
          object,
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
  Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNatBuilder();

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

class _$Gupdate_professionel_sante_roleData
    extends Gupdate_professionel_sante_roleData {
  @override
  final String G__typename;
  @override
  final Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat
      updateHealthProfessionalRoleByIdNat;

  factory _$Gupdate_professionel_sante_roleData(
          [void Function(Gupdate_professionel_sante_roleDataBuilder)?
              updates]) =>
      (new Gupdate_professionel_sante_roleDataBuilder()..update(updates))
          ._build();

  _$Gupdate_professionel_sante_roleData._(
      {required this.G__typename,
      required this.updateHealthProfessionalRoleByIdNat})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gupdate_professionel_sante_roleData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        updateHealthProfessionalRoleByIdNat,
        r'Gupdate_professionel_sante_roleData',
        'updateHealthProfessionalRoleByIdNat');
  }

  @override
  Gupdate_professionel_sante_roleData rebuild(
          void Function(Gupdate_professionel_sante_roleDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_professionel_sante_roleDataBuilder toBuilder() =>
      new Gupdate_professionel_sante_roleDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_professionel_sante_roleData &&
        G__typename == other.G__typename &&
        updateHealthProfessionalRoleByIdNat ==
            other.updateHealthProfessionalRoleByIdNat;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, updateHealthProfessionalRoleByIdNat.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_professionel_sante_roleData')
          ..add('G__typename', G__typename)
          ..add('updateHealthProfessionalRoleByIdNat',
              updateHealthProfessionalRoleByIdNat))
        .toString();
  }
}

class Gupdate_professionel_sante_roleDataBuilder
    implements
        Builder<Gupdate_professionel_sante_roleData,
            Gupdate_professionel_sante_roleDataBuilder> {
  _$Gupdate_professionel_sante_roleData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNatBuilder?
      _updateHealthProfessionalRoleByIdNat;
  Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNatBuilder
      get updateHealthProfessionalRoleByIdNat => _$this
              ._updateHealthProfessionalRoleByIdNat ??=
          new Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNatBuilder();
  set updateHealthProfessionalRoleByIdNat(
          Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNatBuilder?
              updateHealthProfessionalRoleByIdNat) =>
      _$this._updateHealthProfessionalRoleByIdNat =
          updateHealthProfessionalRoleByIdNat;

  Gupdate_professionel_sante_roleDataBuilder() {
    Gupdate_professionel_sante_roleData._initializeBuilder(this);
  }

  Gupdate_professionel_sante_roleDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateHealthProfessionalRoleByIdNat =
          $v.updateHealthProfessionalRoleByIdNat.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_professionel_sante_roleData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_professionel_sante_roleData;
  }

  @override
  void update(
      void Function(Gupdate_professionel_sante_roleDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_professionel_sante_roleData build() => _build();

  _$Gupdate_professionel_sante_roleData _build() {
    _$Gupdate_professionel_sante_roleData _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_professionel_sante_roleData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gupdate_professionel_sante_roleData', 'G__typename'),
              updateHealthProfessionalRoleByIdNat:
                  updateHealthProfessionalRoleByIdNat.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateHealthProfessionalRoleByIdNat';
        updateHealthProfessionalRoleByIdNat.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_professionel_sante_roleData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat
    extends Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat(
          [void Function(
                  Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNatBuilder)?
              updates]) =>
      (new Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNatBuilder()
            ..update(updates))
          ._build();

  _$Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success,
        r'Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat',
        'success');
  }

  @override
  Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat rebuild(
          void Function(
                  Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNatBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNatBuilder
      toBuilder() =>
          new Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNatBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat &&
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
            r'Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNatBuilder
    implements
        Builder<
            Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat,
            Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNatBuilder> {
  _$Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNatBuilder() {
    Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat
        ._initializeBuilder(this);
  }

  Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNatBuilder
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
      Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat;
  }

  @override
  void update(
      void Function(
              Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNatBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat
      build() => _build();

  _$Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat
      _build() {
    final _$result = _$v ??
        new _$Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gupdate_professionel_sante_roleData_updateHealthProfessionalRoleByIdNat',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
