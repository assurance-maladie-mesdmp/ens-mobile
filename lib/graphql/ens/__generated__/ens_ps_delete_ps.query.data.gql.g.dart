// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ps_delete_ps.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_professionnel_santeData>
    _$gdeleteProfessionnelSanteDataSerializer =
    new _$Gdelete_professionnel_santeDataSerializer();
Serializer<Gdelete_professionnel_santeData_deleteHealthProfessional>
    _$gdeleteProfessionnelSanteDataDeleteHealthProfessionalSerializer =
    new _$Gdelete_professionnel_santeData_deleteHealthProfessionalSerializer();

class _$Gdelete_professionnel_santeDataSerializer
    implements StructuredSerializer<Gdelete_professionnel_santeData> {
  @override
  final Iterable<Type> types = const [
    Gdelete_professionnel_santeData,
    _$Gdelete_professionnel_santeData
  ];
  @override
  final String wireName = 'Gdelete_professionnel_santeData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_professionnel_santeData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'deleteHealthProfessional',
      serializers.serialize(object.deleteHealthProfessional,
          specifiedType: const FullType(
              Gdelete_professionnel_santeData_deleteHealthProfessional)),
    ];

    return result;
  }

  @override
  Gdelete_professionnel_santeData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_professionnel_santeDataBuilder();

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
        case 'deleteHealthProfessional':
          result.deleteHealthProfessional.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gdelete_professionnel_santeData_deleteHealthProfessional))!
              as Gdelete_professionnel_santeData_deleteHealthProfessional);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_professionnel_santeData_deleteHealthProfessionalSerializer
    implements
        StructuredSerializer<
            Gdelete_professionnel_santeData_deleteHealthProfessional> {
  @override
  final Iterable<Type> types = const [
    Gdelete_professionnel_santeData_deleteHealthProfessional,
    _$Gdelete_professionnel_santeData_deleteHealthProfessional
  ];
  @override
  final String wireName =
      'Gdelete_professionnel_santeData_deleteHealthProfessional';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gdelete_professionnel_santeData_deleteHealthProfessional object,
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
  Gdelete_professionnel_santeData_deleteHealthProfessional deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gdelete_professionnel_santeData_deleteHealthProfessionalBuilder();

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

class _$Gdelete_professionnel_santeData
    extends Gdelete_professionnel_santeData {
  @override
  final String G__typename;
  @override
  final Gdelete_professionnel_santeData_deleteHealthProfessional
      deleteHealthProfessional;

  factory _$Gdelete_professionnel_santeData(
          [void Function(Gdelete_professionnel_santeDataBuilder)? updates]) =>
      (new Gdelete_professionnel_santeDataBuilder()..update(updates))._build();

  _$Gdelete_professionnel_santeData._(
      {required this.G__typename, required this.deleteHealthProfessional})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gdelete_professionnel_santeData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(deleteHealthProfessional,
        r'Gdelete_professionnel_santeData', 'deleteHealthProfessional');
  }

  @override
  Gdelete_professionnel_santeData rebuild(
          void Function(Gdelete_professionnel_santeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_professionnel_santeDataBuilder toBuilder() =>
      new Gdelete_professionnel_santeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_professionnel_santeData &&
        G__typename == other.G__typename &&
        deleteHealthProfessional == other.deleteHealthProfessional;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deleteHealthProfessional.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_professionnel_santeData')
          ..add('G__typename', G__typename)
          ..add('deleteHealthProfessional', deleteHealthProfessional))
        .toString();
  }
}

class Gdelete_professionnel_santeDataBuilder
    implements
        Builder<Gdelete_professionnel_santeData,
            Gdelete_professionnel_santeDataBuilder> {
  _$Gdelete_professionnel_santeData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gdelete_professionnel_santeData_deleteHealthProfessionalBuilder?
      _deleteHealthProfessional;
  Gdelete_professionnel_santeData_deleteHealthProfessionalBuilder
      get deleteHealthProfessional => _$this._deleteHealthProfessional ??=
          new Gdelete_professionnel_santeData_deleteHealthProfessionalBuilder();
  set deleteHealthProfessional(
          Gdelete_professionnel_santeData_deleteHealthProfessionalBuilder?
              deleteHealthProfessional) =>
      _$this._deleteHealthProfessional = deleteHealthProfessional;

  Gdelete_professionnel_santeDataBuilder() {
    Gdelete_professionnel_santeData._initializeBuilder(this);
  }

  Gdelete_professionnel_santeDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteHealthProfessional = $v.deleteHealthProfessional.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_professionnel_santeData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_professionnel_santeData;
  }

  @override
  void update(void Function(Gdelete_professionnel_santeDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_professionnel_santeData build() => _build();

  _$Gdelete_professionnel_santeData _build() {
    _$Gdelete_professionnel_santeData _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_professionnel_santeData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gdelete_professionnel_santeData', 'G__typename'),
              deleteHealthProfessional: deleteHealthProfessional.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteHealthProfessional';
        deleteHealthProfessional.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_professionnel_santeData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gdelete_professionnel_santeData_deleteHealthProfessional
    extends Gdelete_professionnel_santeData_deleteHealthProfessional {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gdelete_professionnel_santeData_deleteHealthProfessional(
          [void Function(
                  Gdelete_professionnel_santeData_deleteHealthProfessionalBuilder)?
              updates]) =>
      (new Gdelete_professionnel_santeData_deleteHealthProfessionalBuilder()
            ..update(updates))
          ._build();

  _$Gdelete_professionnel_santeData_deleteHealthProfessional._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gdelete_professionnel_santeData_deleteHealthProfessional',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(success,
        r'Gdelete_professionnel_santeData_deleteHealthProfessional', 'success');
  }

  @override
  Gdelete_professionnel_santeData_deleteHealthProfessional rebuild(
          void Function(
                  Gdelete_professionnel_santeData_deleteHealthProfessionalBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_professionnel_santeData_deleteHealthProfessionalBuilder toBuilder() =>
      new Gdelete_professionnel_santeData_deleteHealthProfessionalBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_professionnel_santeData_deleteHealthProfessional &&
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
            r'Gdelete_professionnel_santeData_deleteHealthProfessional')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gdelete_professionnel_santeData_deleteHealthProfessionalBuilder
    implements
        Builder<Gdelete_professionnel_santeData_deleteHealthProfessional,
            Gdelete_professionnel_santeData_deleteHealthProfessionalBuilder> {
  _$Gdelete_professionnel_santeData_deleteHealthProfessional? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gdelete_professionnel_santeData_deleteHealthProfessionalBuilder() {
    Gdelete_professionnel_santeData_deleteHealthProfessional._initializeBuilder(
        this);
  }

  Gdelete_professionnel_santeData_deleteHealthProfessionalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_professionnel_santeData_deleteHealthProfessional other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_professionnel_santeData_deleteHealthProfessional;
  }

  @override
  void update(
      void Function(
              Gdelete_professionnel_santeData_deleteHealthProfessionalBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_professionnel_santeData_deleteHealthProfessional build() => _build();

  _$Gdelete_professionnel_santeData_deleteHealthProfessional _build() {
    final _$result = _$v ??
        new _$Gdelete_professionnel_santeData_deleteHealthProfessional._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gdelete_professionnel_santeData_deleteHealthProfessional',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gdelete_professionnel_santeData_deleteHealthProfessional',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
