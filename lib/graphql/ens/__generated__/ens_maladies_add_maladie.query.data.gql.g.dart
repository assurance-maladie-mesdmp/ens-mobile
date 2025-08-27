// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_maladies_add_maladie.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gadd_maladieData> _$gaddMaladieDataSerializer =
    new _$Gadd_maladieDataSerializer();
Serializer<Gadd_maladieData_postDisease>
    _$gaddMaladieDataPostDiseaseSerializer =
    new _$Gadd_maladieData_postDiseaseSerializer();

class _$Gadd_maladieDataSerializer
    implements StructuredSerializer<Gadd_maladieData> {
  @override
  final Iterable<Type> types = const [Gadd_maladieData, _$Gadd_maladieData];
  @override
  final String wireName = 'Gadd_maladieData';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gadd_maladieData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'postDisease',
      serializers.serialize(object.postDisease,
          specifiedType: const FullType(Gadd_maladieData_postDisease)),
    ];

    return result;
  }

  @override
  Gadd_maladieData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_maladieDataBuilder();

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
        case 'postDisease':
          result.postDisease.replace(serializers.deserialize(value,
                  specifiedType: const FullType(Gadd_maladieData_postDisease))!
              as Gadd_maladieData_postDisease);
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_maladieData_postDiseaseSerializer
    implements StructuredSerializer<Gadd_maladieData_postDisease> {
  @override
  final Iterable<Type> types = const [
    Gadd_maladieData_postDisease,
    _$Gadd_maladieData_postDisease
  ];
  @override
  final String wireName = 'Gadd_maladieData_postDisease';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_maladieData_postDisease object,
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
  Gadd_maladieData_postDisease deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_maladieData_postDiseaseBuilder();

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

class _$Gadd_maladieData extends Gadd_maladieData {
  @override
  final String G__typename;
  @override
  final Gadd_maladieData_postDisease postDisease;

  factory _$Gadd_maladieData(
          [void Function(Gadd_maladieDataBuilder)? updates]) =>
      (new Gadd_maladieDataBuilder()..update(updates))._build();

  _$Gadd_maladieData._({required this.G__typename, required this.postDisease})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gadd_maladieData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        postDisease, r'Gadd_maladieData', 'postDisease');
  }

  @override
  Gadd_maladieData rebuild(void Function(Gadd_maladieDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_maladieDataBuilder toBuilder() =>
      new Gadd_maladieDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_maladieData &&
        G__typename == other.G__typename &&
        postDisease == other.postDisease;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, postDisease.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_maladieData')
          ..add('G__typename', G__typename)
          ..add('postDisease', postDisease))
        .toString();
  }
}

class Gadd_maladieDataBuilder
    implements Builder<Gadd_maladieData, Gadd_maladieDataBuilder> {
  _$Gadd_maladieData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gadd_maladieData_postDiseaseBuilder? _postDisease;
  Gadd_maladieData_postDiseaseBuilder get postDisease =>
      _$this._postDisease ??= new Gadd_maladieData_postDiseaseBuilder();
  set postDisease(Gadd_maladieData_postDiseaseBuilder? postDisease) =>
      _$this._postDisease = postDisease;

  Gadd_maladieDataBuilder() {
    Gadd_maladieData._initializeBuilder(this);
  }

  Gadd_maladieDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _postDisease = $v.postDisease.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_maladieData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_maladieData;
  }

  @override
  void update(void Function(Gadd_maladieDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_maladieData build() => _build();

  _$Gadd_maladieData _build() {
    _$Gadd_maladieData _$result;
    try {
      _$result = _$v ??
          new _$Gadd_maladieData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gadd_maladieData', 'G__typename'),
              postDisease: postDisease.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'postDisease';
        postDisease.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_maladieData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gadd_maladieData_postDisease extends Gadd_maladieData_postDisease {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gadd_maladieData_postDisease(
          [void Function(Gadd_maladieData_postDiseaseBuilder)? updates]) =>
      (new Gadd_maladieData_postDiseaseBuilder()..update(updates))._build();

  _$Gadd_maladieData_postDisease._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gadd_maladieData_postDisease', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gadd_maladieData_postDisease', 'success');
  }

  @override
  Gadd_maladieData_postDisease rebuild(
          void Function(Gadd_maladieData_postDiseaseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_maladieData_postDiseaseBuilder toBuilder() =>
      new Gadd_maladieData_postDiseaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_maladieData_postDisease &&
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
    return (newBuiltValueToStringHelper(r'Gadd_maladieData_postDisease')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gadd_maladieData_postDiseaseBuilder
    implements
        Builder<Gadd_maladieData_postDisease,
            Gadd_maladieData_postDiseaseBuilder> {
  _$Gadd_maladieData_postDisease? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gadd_maladieData_postDiseaseBuilder() {
    Gadd_maladieData_postDisease._initializeBuilder(this);
  }

  Gadd_maladieData_postDiseaseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_maladieData_postDisease other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_maladieData_postDisease;
  }

  @override
  void update(void Function(Gadd_maladieData_postDiseaseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_maladieData_postDisease build() => _build();

  _$Gadd_maladieData_postDisease _build() {
    final _$result = _$v ??
        new _$Gadd_maladieData_postDisease._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'Gadd_maladieData_postDisease', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'Gadd_maladieData_postDisease', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
