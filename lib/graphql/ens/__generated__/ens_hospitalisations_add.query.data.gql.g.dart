// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_hospitalisations_add.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gadd_hospitalisationData> _$gaddHospitalisationDataSerializer =
    new _$Gadd_hospitalisationDataSerializer();
Serializer<Gadd_hospitalisationData_postHospitalization>
    _$gaddHospitalisationDataPostHospitalizationSerializer =
    new _$Gadd_hospitalisationData_postHospitalizationSerializer();

class _$Gadd_hospitalisationDataSerializer
    implements StructuredSerializer<Gadd_hospitalisationData> {
  @override
  final Iterable<Type> types = const [
    Gadd_hospitalisationData,
    _$Gadd_hospitalisationData
  ];
  @override
  final String wireName = 'Gadd_hospitalisationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_hospitalisationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'postHospitalization',
      serializers.serialize(object.postHospitalization,
          specifiedType:
              const FullType(Gadd_hospitalisationData_postHospitalization)),
    ];

    return result;
  }

  @override
  Gadd_hospitalisationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_hospitalisationDataBuilder();

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
        case 'postHospitalization':
          result.postHospitalization.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gadd_hospitalisationData_postHospitalization))!
              as Gadd_hospitalisationData_postHospitalization);
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_hospitalisationData_postHospitalizationSerializer
    implements
        StructuredSerializer<Gadd_hospitalisationData_postHospitalization> {
  @override
  final Iterable<Type> types = const [
    Gadd_hospitalisationData_postHospitalization,
    _$Gadd_hospitalisationData_postHospitalization
  ];
  @override
  final String wireName = 'Gadd_hospitalisationData_postHospitalization';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gadd_hospitalisationData_postHospitalization object,
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
  Gadd_hospitalisationData_postHospitalization deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_hospitalisationData_postHospitalizationBuilder();

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

class _$Gadd_hospitalisationData extends Gadd_hospitalisationData {
  @override
  final String G__typename;
  @override
  final Gadd_hospitalisationData_postHospitalization postHospitalization;

  factory _$Gadd_hospitalisationData(
          [void Function(Gadd_hospitalisationDataBuilder)? updates]) =>
      (new Gadd_hospitalisationDataBuilder()..update(updates))._build();

  _$Gadd_hospitalisationData._(
      {required this.G__typename, required this.postHospitalization})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gadd_hospitalisationData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(postHospitalization,
        r'Gadd_hospitalisationData', 'postHospitalization');
  }

  @override
  Gadd_hospitalisationData rebuild(
          void Function(Gadd_hospitalisationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_hospitalisationDataBuilder toBuilder() =>
      new Gadd_hospitalisationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_hospitalisationData &&
        G__typename == other.G__typename &&
        postHospitalization == other.postHospitalization;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, postHospitalization.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_hospitalisationData')
          ..add('G__typename', G__typename)
          ..add('postHospitalization', postHospitalization))
        .toString();
  }
}

class Gadd_hospitalisationDataBuilder
    implements
        Builder<Gadd_hospitalisationData, Gadd_hospitalisationDataBuilder> {
  _$Gadd_hospitalisationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gadd_hospitalisationData_postHospitalizationBuilder? _postHospitalization;
  Gadd_hospitalisationData_postHospitalizationBuilder get postHospitalization =>
      _$this._postHospitalization ??=
          new Gadd_hospitalisationData_postHospitalizationBuilder();
  set postHospitalization(
          Gadd_hospitalisationData_postHospitalizationBuilder?
              postHospitalization) =>
      _$this._postHospitalization = postHospitalization;

  Gadd_hospitalisationDataBuilder() {
    Gadd_hospitalisationData._initializeBuilder(this);
  }

  Gadd_hospitalisationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _postHospitalization = $v.postHospitalization.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_hospitalisationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_hospitalisationData;
  }

  @override
  void update(void Function(Gadd_hospitalisationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_hospitalisationData build() => _build();

  _$Gadd_hospitalisationData _build() {
    _$Gadd_hospitalisationData _$result;
    try {
      _$result = _$v ??
          new _$Gadd_hospitalisationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gadd_hospitalisationData', 'G__typename'),
              postHospitalization: postHospitalization.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'postHospitalization';
        postHospitalization.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_hospitalisationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gadd_hospitalisationData_postHospitalization
    extends Gadd_hospitalisationData_postHospitalization {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gadd_hospitalisationData_postHospitalization(
          [void Function(Gadd_hospitalisationData_postHospitalizationBuilder)?
              updates]) =>
      (new Gadd_hospitalisationData_postHospitalizationBuilder()
            ..update(updates))
          ._build();

  _$Gadd_hospitalisationData_postHospitalization._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gadd_hospitalisationData_postHospitalization', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gadd_hospitalisationData_postHospitalization', 'success');
  }

  @override
  Gadd_hospitalisationData_postHospitalization rebuild(
          void Function(Gadd_hospitalisationData_postHospitalizationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_hospitalisationData_postHospitalizationBuilder toBuilder() =>
      new Gadd_hospitalisationData_postHospitalizationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_hospitalisationData_postHospitalization &&
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
            r'Gadd_hospitalisationData_postHospitalization')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gadd_hospitalisationData_postHospitalizationBuilder
    implements
        Builder<Gadd_hospitalisationData_postHospitalization,
            Gadd_hospitalisationData_postHospitalizationBuilder> {
  _$Gadd_hospitalisationData_postHospitalization? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gadd_hospitalisationData_postHospitalizationBuilder() {
    Gadd_hospitalisationData_postHospitalization._initializeBuilder(this);
  }

  Gadd_hospitalisationData_postHospitalizationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_hospitalisationData_postHospitalization other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_hospitalisationData_postHospitalization;
  }

  @override
  void update(
      void Function(Gadd_hospitalisationData_postHospitalizationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_hospitalisationData_postHospitalization build() => _build();

  _$Gadd_hospitalisationData_postHospitalization _build() {
    final _$result = _$v ??
        new _$Gadd_hospitalisationData_postHospitalization._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gadd_hospitalisationData_postHospitalization', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(success,
                r'Gadd_hospitalisationData_postHospitalization', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
