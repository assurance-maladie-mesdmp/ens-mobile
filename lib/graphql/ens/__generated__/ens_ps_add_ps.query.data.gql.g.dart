// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ps_add_ps.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gadd_professionnel_de_santeData>
    _$gaddProfessionnelDeSanteDataSerializer =
    new _$Gadd_professionnel_de_santeDataSerializer();
Serializer<Gadd_professionnel_de_santeData_postHealthProfessional>
    _$gaddProfessionnelDeSanteDataPostHealthProfessionalSerializer =
    new _$Gadd_professionnel_de_santeData_postHealthProfessionalSerializer();

class _$Gadd_professionnel_de_santeDataSerializer
    implements StructuredSerializer<Gadd_professionnel_de_santeData> {
  @override
  final Iterable<Type> types = const [
    Gadd_professionnel_de_santeData,
    _$Gadd_professionnel_de_santeData
  ];
  @override
  final String wireName = 'Gadd_professionnel_de_santeData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_professionnel_de_santeData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'postHealthProfessional',
      serializers.serialize(object.postHealthProfessional,
          specifiedType: const FullType(
              Gadd_professionnel_de_santeData_postHealthProfessional)),
    ];

    return result;
  }

  @override
  Gadd_professionnel_de_santeData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_professionnel_de_santeDataBuilder();

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
        case 'postHealthProfessional':
          result.postHealthProfessional.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gadd_professionnel_de_santeData_postHealthProfessional))!
              as Gadd_professionnel_de_santeData_postHealthProfessional);
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_professionnel_de_santeData_postHealthProfessionalSerializer
    implements
        StructuredSerializer<
            Gadd_professionnel_de_santeData_postHealthProfessional> {
  @override
  final Iterable<Type> types = const [
    Gadd_professionnel_de_santeData_postHealthProfessional,
    _$Gadd_professionnel_de_santeData_postHealthProfessional
  ];
  @override
  final String wireName =
      'Gadd_professionnel_de_santeData_postHealthProfessional';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gadd_professionnel_de_santeData_postHealthProfessional object,
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
  Gadd_professionnel_de_santeData_postHealthProfessional deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gadd_professionnel_de_santeData_postHealthProfessionalBuilder();

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

class _$Gadd_professionnel_de_santeData
    extends Gadd_professionnel_de_santeData {
  @override
  final String G__typename;
  @override
  final Gadd_professionnel_de_santeData_postHealthProfessional
      postHealthProfessional;

  factory _$Gadd_professionnel_de_santeData(
          [void Function(Gadd_professionnel_de_santeDataBuilder)? updates]) =>
      (new Gadd_professionnel_de_santeDataBuilder()..update(updates))._build();

  _$Gadd_professionnel_de_santeData._(
      {required this.G__typename, required this.postHealthProfessional})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gadd_professionnel_de_santeData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(postHealthProfessional,
        r'Gadd_professionnel_de_santeData', 'postHealthProfessional');
  }

  @override
  Gadd_professionnel_de_santeData rebuild(
          void Function(Gadd_professionnel_de_santeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_professionnel_de_santeDataBuilder toBuilder() =>
      new Gadd_professionnel_de_santeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_professionnel_de_santeData &&
        G__typename == other.G__typename &&
        postHealthProfessional == other.postHealthProfessional;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, postHealthProfessional.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_professionnel_de_santeData')
          ..add('G__typename', G__typename)
          ..add('postHealthProfessional', postHealthProfessional))
        .toString();
  }
}

class Gadd_professionnel_de_santeDataBuilder
    implements
        Builder<Gadd_professionnel_de_santeData,
            Gadd_professionnel_de_santeDataBuilder> {
  _$Gadd_professionnel_de_santeData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gadd_professionnel_de_santeData_postHealthProfessionalBuilder?
      _postHealthProfessional;
  Gadd_professionnel_de_santeData_postHealthProfessionalBuilder
      get postHealthProfessional => _$this._postHealthProfessional ??=
          new Gadd_professionnel_de_santeData_postHealthProfessionalBuilder();
  set postHealthProfessional(
          Gadd_professionnel_de_santeData_postHealthProfessionalBuilder?
              postHealthProfessional) =>
      _$this._postHealthProfessional = postHealthProfessional;

  Gadd_professionnel_de_santeDataBuilder() {
    Gadd_professionnel_de_santeData._initializeBuilder(this);
  }

  Gadd_professionnel_de_santeDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _postHealthProfessional = $v.postHealthProfessional.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_professionnel_de_santeData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_professionnel_de_santeData;
  }

  @override
  void update(void Function(Gadd_professionnel_de_santeDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_professionnel_de_santeData build() => _build();

  _$Gadd_professionnel_de_santeData _build() {
    _$Gadd_professionnel_de_santeData _$result;
    try {
      _$result = _$v ??
          new _$Gadd_professionnel_de_santeData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gadd_professionnel_de_santeData', 'G__typename'),
              postHealthProfessional: postHealthProfessional.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'postHealthProfessional';
        postHealthProfessional.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_professionnel_de_santeData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gadd_professionnel_de_santeData_postHealthProfessional
    extends Gadd_professionnel_de_santeData_postHealthProfessional {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gadd_professionnel_de_santeData_postHealthProfessional(
          [void Function(
                  Gadd_professionnel_de_santeData_postHealthProfessionalBuilder)?
              updates]) =>
      (new Gadd_professionnel_de_santeData_postHealthProfessionalBuilder()
            ..update(updates))
          ._build();

  _$Gadd_professionnel_de_santeData_postHealthProfessional._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gadd_professionnel_de_santeData_postHealthProfessional',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(success,
        r'Gadd_professionnel_de_santeData_postHealthProfessional', 'success');
  }

  @override
  Gadd_professionnel_de_santeData_postHealthProfessional rebuild(
          void Function(
                  Gadd_professionnel_de_santeData_postHealthProfessionalBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_professionnel_de_santeData_postHealthProfessionalBuilder toBuilder() =>
      new Gadd_professionnel_de_santeData_postHealthProfessionalBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_professionnel_de_santeData_postHealthProfessional &&
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
            r'Gadd_professionnel_de_santeData_postHealthProfessional')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gadd_professionnel_de_santeData_postHealthProfessionalBuilder
    implements
        Builder<Gadd_professionnel_de_santeData_postHealthProfessional,
            Gadd_professionnel_de_santeData_postHealthProfessionalBuilder> {
  _$Gadd_professionnel_de_santeData_postHealthProfessional? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gadd_professionnel_de_santeData_postHealthProfessionalBuilder() {
    Gadd_professionnel_de_santeData_postHealthProfessional._initializeBuilder(
        this);
  }

  Gadd_professionnel_de_santeData_postHealthProfessionalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_professionnel_de_santeData_postHealthProfessional other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_professionnel_de_santeData_postHealthProfessional;
  }

  @override
  void update(
      void Function(
              Gadd_professionnel_de_santeData_postHealthProfessionalBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_professionnel_de_santeData_postHealthProfessional build() => _build();

  _$Gadd_professionnel_de_santeData_postHealthProfessional _build() {
    final _$result = _$v ??
        new _$Gadd_professionnel_de_santeData_postHealthProfessional._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gadd_professionnel_de_santeData_postHealthProfessional',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gadd_professionnel_de_santeData_postHealthProfessional',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
