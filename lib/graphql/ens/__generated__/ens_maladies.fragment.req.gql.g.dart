// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_maladies.fragment.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GmaladieReq> _$gmaladieReqSerializer = new _$GmaladieReqSerializer();
Serializer<GtraitementLieReq> _$gtraitementLieReqSerializer =
    new _$GtraitementLieReqSerializer();

class _$GmaladieReqSerializer implements StructuredSerializer<GmaladieReq> {
  @override
  final Iterable<Type> types = const [GmaladieReq, _$GmaladieReq];
  @override
  final String wireName = 'GmaladieReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GmaladieReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GmaladieVars)),
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
  GmaladieReq deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmaladieReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GmaladieVars))!
              as _i3.GmaladieVars);
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

class _$GtraitementLieReqSerializer
    implements StructuredSerializer<GtraitementLieReq> {
  @override
  final Iterable<Type> types = const [GtraitementLieReq, _$GtraitementLieReq];
  @override
  final String wireName = 'GtraitementLieReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GtraitementLieReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GtraitementLieVars)),
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
  GtraitementLieReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GtraitementLieReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GtraitementLieVars))!
              as _i3.GtraitementLieVars);
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

class _$GmaladieReq extends GmaladieReq {
  @override
  final _i3.GmaladieVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GmaladieReq([void Function(GmaladieReqBuilder)? updates]) =>
      (new GmaladieReqBuilder()..update(updates))._build();

  _$GmaladieReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GmaladieReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(document, r'GmaladieReq', 'document');
    BuiltValueNullFieldError.checkNotNull(idFields, r'GmaladieReq', 'idFields');
  }

  @override
  GmaladieReq rebuild(void Function(GmaladieReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmaladieReqBuilder toBuilder() => new GmaladieReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmaladieReq &&
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
    return (newBuiltValueToStringHelper(r'GmaladieReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GmaladieReqBuilder implements Builder<GmaladieReq, GmaladieReqBuilder> {
  _$GmaladieReq? _$v;

  _i3.GmaladieVarsBuilder? _vars;
  _i3.GmaladieVarsBuilder get vars =>
      _$this._vars ??= new _i3.GmaladieVarsBuilder();
  set vars(_i3.GmaladieVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GmaladieReqBuilder() {
    GmaladieReq._initializeBuilder(this);
  }

  GmaladieReqBuilder get _$this {
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
  void replace(GmaladieReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmaladieReq;
  }

  @override
  void update(void Function(GmaladieReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmaladieReq build() => _build();

  _$GmaladieReq _build() {
    _$GmaladieReq _$result;
    try {
      _$result = _$v ??
          new _$GmaladieReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GmaladieReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GmaladieReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GmaladieReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GtraitementLieReq extends GtraitementLieReq {
  @override
  final _i3.GtraitementLieVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GtraitementLieReq(
          [void Function(GtraitementLieReqBuilder)? updates]) =>
      (new GtraitementLieReqBuilder()..update(updates))._build();

  _$GtraitementLieReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GtraitementLieReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GtraitementLieReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GtraitementLieReq', 'idFields');
  }

  @override
  GtraitementLieReq rebuild(void Function(GtraitementLieReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GtraitementLieReqBuilder toBuilder() =>
      new GtraitementLieReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GtraitementLieReq &&
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
    return (newBuiltValueToStringHelper(r'GtraitementLieReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GtraitementLieReqBuilder
    implements Builder<GtraitementLieReq, GtraitementLieReqBuilder> {
  _$GtraitementLieReq? _$v;

  _i3.GtraitementLieVarsBuilder? _vars;
  _i3.GtraitementLieVarsBuilder get vars =>
      _$this._vars ??= new _i3.GtraitementLieVarsBuilder();
  set vars(_i3.GtraitementLieVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GtraitementLieReqBuilder() {
    GtraitementLieReq._initializeBuilder(this);
  }

  GtraitementLieReqBuilder get _$this {
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
  void replace(GtraitementLieReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GtraitementLieReq;
  }

  @override
  void update(void Function(GtraitementLieReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GtraitementLieReq build() => _build();

  _$GtraitementLieReq _build() {
    _$GtraitementLieReq _$result;
    try {
      _$result = _$v ??
          new _$GtraitementLieReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GtraitementLieReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GtraitementLieReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GtraitementLieReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
