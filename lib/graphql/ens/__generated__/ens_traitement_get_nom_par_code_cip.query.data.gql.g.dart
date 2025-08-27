// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_traitement_get_nom_par_code_cip.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_nom_par_code_cipData> _$ggetNomParCodeCipDataSerializer =
    new _$Gget_nom_par_code_cipDataSerializer();
Serializer<Gget_nom_par_code_cipData_getByCip>
    _$ggetNomParCodeCipDataGetByCipSerializer =
    new _$Gget_nom_par_code_cipData_getByCipSerializer();

class _$Gget_nom_par_code_cipDataSerializer
    implements StructuredSerializer<Gget_nom_par_code_cipData> {
  @override
  final Iterable<Type> types = const [
    Gget_nom_par_code_cipData,
    _$Gget_nom_par_code_cipData
  ];
  @override
  final String wireName = 'Gget_nom_par_code_cipData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_nom_par_code_cipData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getByCip',
      serializers.serialize(object.getByCip,
          specifiedType: const FullType(Gget_nom_par_code_cipData_getByCip)),
    ];

    return result;
  }

  @override
  Gget_nom_par_code_cipData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_nom_par_code_cipDataBuilder();

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
        case 'getByCip':
          result.getByCip.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gget_nom_par_code_cipData_getByCip))!
              as Gget_nom_par_code_cipData_getByCip);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_nom_par_code_cipData_getByCipSerializer
    implements StructuredSerializer<Gget_nom_par_code_cipData_getByCip> {
  @override
  final Iterable<Type> types = const [
    Gget_nom_par_code_cipData_getByCip,
    _$Gget_nom_par_code_cipData_getByCip
  ];
  @override
  final String wireName = 'Gget_nom_par_code_cipData_getByCip';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_nom_par_code_cipData_getByCip object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_nom_par_code_cipData_getByCip deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_nom_par_code_cipData_getByCipBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_nom_par_code_cipData extends Gget_nom_par_code_cipData {
  @override
  final String G__typename;
  @override
  final Gget_nom_par_code_cipData_getByCip getByCip;

  factory _$Gget_nom_par_code_cipData(
          [void Function(Gget_nom_par_code_cipDataBuilder)? updates]) =>
      (new Gget_nom_par_code_cipDataBuilder()..update(updates))._build();

  _$Gget_nom_par_code_cipData._(
      {required this.G__typename, required this.getByCip})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_nom_par_code_cipData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getByCip, r'Gget_nom_par_code_cipData', 'getByCip');
  }

  @override
  Gget_nom_par_code_cipData rebuild(
          void Function(Gget_nom_par_code_cipDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_nom_par_code_cipDataBuilder toBuilder() =>
      new Gget_nom_par_code_cipDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_nom_par_code_cipData &&
        G__typename == other.G__typename &&
        getByCip == other.getByCip;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, getByCip.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_nom_par_code_cipData')
          ..add('G__typename', G__typename)
          ..add('getByCip', getByCip))
        .toString();
  }
}

class Gget_nom_par_code_cipDataBuilder
    implements
        Builder<Gget_nom_par_code_cipData, Gget_nom_par_code_cipDataBuilder> {
  _$Gget_nom_par_code_cipData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_nom_par_code_cipData_getByCipBuilder? _getByCip;
  Gget_nom_par_code_cipData_getByCipBuilder get getByCip =>
      _$this._getByCip ??= new Gget_nom_par_code_cipData_getByCipBuilder();
  set getByCip(Gget_nom_par_code_cipData_getByCipBuilder? getByCip) =>
      _$this._getByCip = getByCip;

  Gget_nom_par_code_cipDataBuilder() {
    Gget_nom_par_code_cipData._initializeBuilder(this);
  }

  Gget_nom_par_code_cipDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getByCip = $v.getByCip.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_nom_par_code_cipData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_nom_par_code_cipData;
  }

  @override
  void update(void Function(Gget_nom_par_code_cipDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_nom_par_code_cipData build() => _build();

  _$Gget_nom_par_code_cipData _build() {
    _$Gget_nom_par_code_cipData _$result;
    try {
      _$result = _$v ??
          new _$Gget_nom_par_code_cipData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_nom_par_code_cipData', 'G__typename'),
              getByCip: getByCip.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getByCip';
        getByCip.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_nom_par_code_cipData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_nom_par_code_cipData_getByCip
    extends Gget_nom_par_code_cipData_getByCip {
  @override
  final String G__typename;
  @override
  final String name;

  factory _$Gget_nom_par_code_cipData_getByCip(
          [void Function(Gget_nom_par_code_cipData_getByCipBuilder)?
              updates]) =>
      (new Gget_nom_par_code_cipData_getByCipBuilder()..update(updates))
          ._build();

  _$Gget_nom_par_code_cipData_getByCip._(
      {required this.G__typename, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_nom_par_code_cipData_getByCip', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'Gget_nom_par_code_cipData_getByCip', 'name');
  }

  @override
  Gget_nom_par_code_cipData_getByCip rebuild(
          void Function(Gget_nom_par_code_cipData_getByCipBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_nom_par_code_cipData_getByCipBuilder toBuilder() =>
      new Gget_nom_par_code_cipData_getByCipBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_nom_par_code_cipData_getByCip &&
        G__typename == other.G__typename &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_nom_par_code_cipData_getByCip')
          ..add('G__typename', G__typename)
          ..add('name', name))
        .toString();
  }
}

class Gget_nom_par_code_cipData_getByCipBuilder
    implements
        Builder<Gget_nom_par_code_cipData_getByCip,
            Gget_nom_par_code_cipData_getByCipBuilder> {
  _$Gget_nom_par_code_cipData_getByCip? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  Gget_nom_par_code_cipData_getByCipBuilder() {
    Gget_nom_par_code_cipData_getByCip._initializeBuilder(this);
  }

  Gget_nom_par_code_cipData_getByCipBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_nom_par_code_cipData_getByCip other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_nom_par_code_cipData_getByCip;
  }

  @override
  void update(
      void Function(Gget_nom_par_code_cipData_getByCipBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_nom_par_code_cipData_getByCip build() => _build();

  _$Gget_nom_par_code_cipData_getByCip _build() {
    final _$result = _$v ??
        new _$Gget_nom_par_code_cipData_getByCip._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gget_nom_par_code_cipData_getByCip', 'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'Gget_nom_par_code_cipData_getByCip', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
