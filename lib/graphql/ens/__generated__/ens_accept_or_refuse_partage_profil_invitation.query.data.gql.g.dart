// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_accept_or_refuse_partage_profil_invitation.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gaccept_or_refuse_partage_profil_invitationData>
    _$gacceptOrRefusePartageProfilInvitationDataSerializer =
    new _$Gaccept_or_refuse_partage_profil_invitationDataSerializer();
Serializer<
        Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected>
    _$gacceptOrRefusePartageProfilInvitationDataSetAccessValidatedOrRejectedSerializer =
    new _$Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejectedSerializer();

class _$Gaccept_or_refuse_partage_profil_invitationDataSerializer
    implements
        StructuredSerializer<Gaccept_or_refuse_partage_profil_invitationData> {
  @override
  final Iterable<Type> types = const [
    Gaccept_or_refuse_partage_profil_invitationData,
    _$Gaccept_or_refuse_partage_profil_invitationData
  ];
  @override
  final String wireName = 'Gaccept_or_refuse_partage_profil_invitationData';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gaccept_or_refuse_partage_profil_invitationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'setAccessValidatedOrRejected',
      serializers.serialize(object.setAccessValidatedOrRejected,
          specifiedType: const FullType(
              Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected)),
    ];

    return result;
  }

  @override
  Gaccept_or_refuse_partage_profil_invitationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gaccept_or_refuse_partage_profil_invitationDataBuilder();

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
        case 'setAccessValidatedOrRejected':
          result.setAccessValidatedOrRejected.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected))!
              as Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected);
          break;
      }
    }

    return result.build();
  }
}

class _$Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejectedSerializer
    implements
        StructuredSerializer<
            Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected> {
  @override
  final Iterable<Type> types = const [
    Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected,
    _$Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected
  ];
  @override
  final String wireName =
      'Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected
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
  Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejectedBuilder();

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

class _$Gaccept_or_refuse_partage_profil_invitationData
    extends Gaccept_or_refuse_partage_profil_invitationData {
  @override
  final String G__typename;
  @override
  final Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected
      setAccessValidatedOrRejected;

  factory _$Gaccept_or_refuse_partage_profil_invitationData(
          [void Function(
                  Gaccept_or_refuse_partage_profil_invitationDataBuilder)?
              updates]) =>
      (new Gaccept_or_refuse_partage_profil_invitationDataBuilder()
            ..update(updates))
          ._build();

  _$Gaccept_or_refuse_partage_profil_invitationData._(
      {required this.G__typename, required this.setAccessValidatedOrRejected})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gaccept_or_refuse_partage_profil_invitationData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        setAccessValidatedOrRejected,
        r'Gaccept_or_refuse_partage_profil_invitationData',
        'setAccessValidatedOrRejected');
  }

  @override
  Gaccept_or_refuse_partage_profil_invitationData rebuild(
          void Function(Gaccept_or_refuse_partage_profil_invitationDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gaccept_or_refuse_partage_profil_invitationDataBuilder toBuilder() =>
      new Gaccept_or_refuse_partage_profil_invitationDataBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gaccept_or_refuse_partage_profil_invitationData &&
        G__typename == other.G__typename &&
        setAccessValidatedOrRejected == other.setAccessValidatedOrRejected;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, setAccessValidatedOrRejected.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gaccept_or_refuse_partage_profil_invitationData')
          ..add('G__typename', G__typename)
          ..add('setAccessValidatedOrRejected', setAccessValidatedOrRejected))
        .toString();
  }
}

class Gaccept_or_refuse_partage_profil_invitationDataBuilder
    implements
        Builder<Gaccept_or_refuse_partage_profil_invitationData,
            Gaccept_or_refuse_partage_profil_invitationDataBuilder> {
  _$Gaccept_or_refuse_partage_profil_invitationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejectedBuilder?
      _setAccessValidatedOrRejected;
  Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejectedBuilder
      get setAccessValidatedOrRejected => _$this
              ._setAccessValidatedOrRejected ??=
          new Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejectedBuilder();
  set setAccessValidatedOrRejected(
          Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejectedBuilder?
              setAccessValidatedOrRejected) =>
      _$this._setAccessValidatedOrRejected = setAccessValidatedOrRejected;

  Gaccept_or_refuse_partage_profil_invitationDataBuilder() {
    Gaccept_or_refuse_partage_profil_invitationData._initializeBuilder(this);
  }

  Gaccept_or_refuse_partage_profil_invitationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _setAccessValidatedOrRejected =
          $v.setAccessValidatedOrRejected.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gaccept_or_refuse_partage_profil_invitationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gaccept_or_refuse_partage_profil_invitationData;
  }

  @override
  void update(
      void Function(Gaccept_or_refuse_partage_profil_invitationDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gaccept_or_refuse_partage_profil_invitationData build() => _build();

  _$Gaccept_or_refuse_partage_profil_invitationData _build() {
    _$Gaccept_or_refuse_partage_profil_invitationData _$result;
    try {
      _$result = _$v ??
          new _$Gaccept_or_refuse_partage_profil_invitationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gaccept_or_refuse_partage_profil_invitationData',
                  'G__typename'),
              setAccessValidatedOrRejected:
                  setAccessValidatedOrRejected.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'setAccessValidatedOrRejected';
        setAccessValidatedOrRejected.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gaccept_or_refuse_partage_profil_invitationData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected
    extends Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected(
          [void Function(
                  Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejectedBuilder)?
              updates]) =>
      (new Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejectedBuilder()
            ..update(updates))
          ._build();

  _$Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success,
        r'Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected',
        'success');
  }

  @override
  Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected
      rebuild(
              void Function(
                      Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejectedBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejectedBuilder
      toBuilder() =>
          new Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejectedBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected &&
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
            r'Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejectedBuilder
    implements
        Builder<
            Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected,
            Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejectedBuilder> {
  _$Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejectedBuilder() {
    Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected
        ._initializeBuilder(this);
  }

  Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejectedBuilder
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
      Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected;
  }

  @override
  void update(
      void Function(
              Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejectedBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected
      build() => _build();

  _$Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected
      _build() {
    final _$result = _$v ??
        new _$Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gaccept_or_refuse_partage_profil_invitationData_setAccessValidatedOrRejected',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
