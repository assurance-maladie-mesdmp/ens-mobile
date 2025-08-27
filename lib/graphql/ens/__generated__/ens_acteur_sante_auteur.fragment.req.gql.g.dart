// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_acteur_sante_auteur.fragment.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GepisodePsAuteurReq> _$gepisodePsAuteurReqSerializer =
    new _$GepisodePsAuteurReqSerializer();
Serializer<GepisodeEsAuteurReq> _$gepisodeEsAuteurReqSerializer =
    new _$GepisodeEsAuteurReqSerializer();

class _$GepisodePsAuteurReqSerializer
    implements StructuredSerializer<GepisodePsAuteurReq> {
  @override
  final Iterable<Type> types = const [
    GepisodePsAuteurReq,
    _$GepisodePsAuteurReq
  ];
  @override
  final String wireName = 'GepisodePsAuteurReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GepisodePsAuteurReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GepisodePsAuteurVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i5.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GepisodePsAuteurReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GepisodePsAuteurReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GepisodePsAuteurVars))!
              as _i3.GepisodePsAuteurVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i5.DocumentNode))!
              as _i5.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GepisodeEsAuteurReqSerializer
    implements StructuredSerializer<GepisodeEsAuteurReq> {
  @override
  final Iterable<Type> types = const [
    GepisodeEsAuteurReq,
    _$GepisodeEsAuteurReq
  ];
  @override
  final String wireName = 'GepisodeEsAuteurReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GepisodeEsAuteurReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GepisodeEsAuteurVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i5.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GepisodeEsAuteurReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GepisodeEsAuteurReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GepisodeEsAuteurVars))!
              as _i3.GepisodeEsAuteurVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i5.DocumentNode))!
              as _i5.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GepisodePsAuteurReq extends GepisodePsAuteurReq {
  @override
  final _i3.GepisodePsAuteurVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GepisodePsAuteurReq(
          [void Function(GepisodePsAuteurReqBuilder)? updates]) =>
      (new GepisodePsAuteurReqBuilder()..update(updates))._build();

  _$GepisodePsAuteurReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GepisodePsAuteurReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GepisodePsAuteurReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GepisodePsAuteurReq', 'idFields');
  }

  @override
  GepisodePsAuteurReq rebuild(
          void Function(GepisodePsAuteurReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GepisodePsAuteurReqBuilder toBuilder() =>
      new GepisodePsAuteurReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GepisodePsAuteurReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, fragmentName.hashCode);
    _$hash = $jc(_$hash, idFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GepisodePsAuteurReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GepisodePsAuteurReqBuilder
    implements Builder<GepisodePsAuteurReq, GepisodePsAuteurReqBuilder> {
  _$GepisodePsAuteurReq? _$v;

  _i3.GepisodePsAuteurVarsBuilder? _vars;
  _i3.GepisodePsAuteurVarsBuilder get vars =>
      _$this._vars ??= new _i3.GepisodePsAuteurVarsBuilder();
  set vars(_i3.GepisodePsAuteurVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GepisodePsAuteurReqBuilder() {
    GepisodePsAuteurReq._initializeBuilder(this);
  }

  GepisodePsAuteurReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GepisodePsAuteurReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GepisodePsAuteurReq;
  }

  @override
  void update(void Function(GepisodePsAuteurReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GepisodePsAuteurReq build() => _build();

  _$GepisodePsAuteurReq _build() {
    _$GepisodePsAuteurReq _$result;
    try {
      _$result = _$v ??
          new _$GepisodePsAuteurReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GepisodePsAuteurReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GepisodePsAuteurReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GepisodePsAuteurReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GepisodeEsAuteurReq extends GepisodeEsAuteurReq {
  @override
  final _i3.GepisodeEsAuteurVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GepisodeEsAuteurReq(
          [void Function(GepisodeEsAuteurReqBuilder)? updates]) =>
      (new GepisodeEsAuteurReqBuilder()..update(updates))._build();

  _$GepisodeEsAuteurReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GepisodeEsAuteurReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GepisodeEsAuteurReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GepisodeEsAuteurReq', 'idFields');
  }

  @override
  GepisodeEsAuteurReq rebuild(
          void Function(GepisodeEsAuteurReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GepisodeEsAuteurReqBuilder toBuilder() =>
      new GepisodeEsAuteurReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GepisodeEsAuteurReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, fragmentName.hashCode);
    _$hash = $jc(_$hash, idFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GepisodeEsAuteurReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GepisodeEsAuteurReqBuilder
    implements Builder<GepisodeEsAuteurReq, GepisodeEsAuteurReqBuilder> {
  _$GepisodeEsAuteurReq? _$v;

  _i3.GepisodeEsAuteurVarsBuilder? _vars;
  _i3.GepisodeEsAuteurVarsBuilder get vars =>
      _$this._vars ??= new _i3.GepisodeEsAuteurVarsBuilder();
  set vars(_i3.GepisodeEsAuteurVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GepisodeEsAuteurReqBuilder() {
    GepisodeEsAuteurReq._initializeBuilder(this);
  }

  GepisodeEsAuteurReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GepisodeEsAuteurReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GepisodeEsAuteurReq;
  }

  @override
  void update(void Function(GepisodeEsAuteurReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GepisodeEsAuteurReq build() => _build();

  _$GepisodeEsAuteurReq _build() {
    _$GepisodeEsAuteurReq _$result;
    try {
      _$result = _$v ??
          new _$GepisodeEsAuteurReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GepisodeEsAuteurReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GepisodeEsAuteurReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GepisodeEsAuteurReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
