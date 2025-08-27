// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_traitement_add_traitement.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gadd_traitementData> _$gaddTraitementDataSerializer =
    new _$Gadd_traitementDataSerializer();
Serializer<Gadd_traitementData_postTreatment>
    _$gaddTraitementDataPostTreatmentSerializer =
    new _$Gadd_traitementData_postTreatmentSerializer();

class _$Gadd_traitementDataSerializer
    implements StructuredSerializer<Gadd_traitementData> {
  @override
  final Iterable<Type> types = const [
    Gadd_traitementData,
    _$Gadd_traitementData
  ];
  @override
  final String wireName = 'Gadd_traitementData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_traitementData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'postTreatment',
      serializers.serialize(object.postTreatment,
          specifiedType: const FullType(Gadd_traitementData_postTreatment)),
    ];

    return result;
  }

  @override
  Gadd_traitementData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_traitementDataBuilder();

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
        case 'postTreatment':
          result.postTreatment.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gadd_traitementData_postTreatment))!
              as Gadd_traitementData_postTreatment);
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_traitementData_postTreatmentSerializer
    implements StructuredSerializer<Gadd_traitementData_postTreatment> {
  @override
  final Iterable<Type> types = const [
    Gadd_traitementData_postTreatment,
    _$Gadd_traitementData_postTreatment
  ];
  @override
  final String wireName = 'Gadd_traitementData_postTreatment';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_traitementData_postTreatment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gadd_traitementData_postTreatment deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_traitementData_postTreatmentBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_traitementData extends Gadd_traitementData {
  @override
  final String G__typename;
  @override
  final Gadd_traitementData_postTreatment postTreatment;

  factory _$Gadd_traitementData(
          [void Function(Gadd_traitementDataBuilder)? updates]) =>
      (new Gadd_traitementDataBuilder()..update(updates))._build();

  _$Gadd_traitementData._(
      {required this.G__typename, required this.postTreatment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gadd_traitementData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        postTreatment, r'Gadd_traitementData', 'postTreatment');
  }

  @override
  Gadd_traitementData rebuild(
          void Function(Gadd_traitementDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_traitementDataBuilder toBuilder() =>
      new Gadd_traitementDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_traitementData &&
        G__typename == other.G__typename &&
        postTreatment == other.postTreatment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, postTreatment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_traitementData')
          ..add('G__typename', G__typename)
          ..add('postTreatment', postTreatment))
        .toString();
  }
}

class Gadd_traitementDataBuilder
    implements Builder<Gadd_traitementData, Gadd_traitementDataBuilder> {
  _$Gadd_traitementData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gadd_traitementData_postTreatmentBuilder? _postTreatment;
  Gadd_traitementData_postTreatmentBuilder get postTreatment =>
      _$this._postTreatment ??= new Gadd_traitementData_postTreatmentBuilder();
  set postTreatment(Gadd_traitementData_postTreatmentBuilder? postTreatment) =>
      _$this._postTreatment = postTreatment;

  Gadd_traitementDataBuilder() {
    Gadd_traitementData._initializeBuilder(this);
  }

  Gadd_traitementDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _postTreatment = $v.postTreatment.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_traitementData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_traitementData;
  }

  @override
  void update(void Function(Gadd_traitementDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_traitementData build() => _build();

  _$Gadd_traitementData _build() {
    _$Gadd_traitementData _$result;
    try {
      _$result = _$v ??
          new _$Gadd_traitementData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gadd_traitementData', 'G__typename'),
              postTreatment: postTreatment.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'postTreatment';
        postTreatment.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_traitementData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gadd_traitementData_postTreatment
    extends Gadd_traitementData_postTreatment {
  @override
  final String G__typename;
  @override
  final String? id;

  factory _$Gadd_traitementData_postTreatment(
          [void Function(Gadd_traitementData_postTreatmentBuilder)? updates]) =>
      (new Gadd_traitementData_postTreatmentBuilder()..update(updates))
          ._build();

  _$Gadd_traitementData_postTreatment._({required this.G__typename, this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gadd_traitementData_postTreatment', 'G__typename');
  }

  @override
  Gadd_traitementData_postTreatment rebuild(
          void Function(Gadd_traitementData_postTreatmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_traitementData_postTreatmentBuilder toBuilder() =>
      new Gadd_traitementData_postTreatmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_traitementData_postTreatment &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_traitementData_postTreatment')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class Gadd_traitementData_postTreatmentBuilder
    implements
        Builder<Gadd_traitementData_postTreatment,
            Gadd_traitementData_postTreatmentBuilder> {
  _$Gadd_traitementData_postTreatment? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  Gadd_traitementData_postTreatmentBuilder() {
    Gadd_traitementData_postTreatment._initializeBuilder(this);
  }

  Gadd_traitementData_postTreatmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_traitementData_postTreatment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_traitementData_postTreatment;
  }

  @override
  void update(
      void Function(Gadd_traitementData_postTreatmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_traitementData_postTreatment build() => _build();

  _$Gadd_traitementData_postTreatment _build() {
    final _$result = _$v ??
        new _$Gadd_traitementData_postTreatment._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gadd_traitementData_postTreatment', 'G__typename'),
            id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
