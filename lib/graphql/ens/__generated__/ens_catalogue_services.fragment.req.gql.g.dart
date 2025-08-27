// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_catalogue_services.fragment.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GserviceReq> _$gserviceReqSerializer = new _$GserviceReqSerializer();
Serializer<GregionReq> _$gregionReqSerializer = new _$GregionReqSerializer();
Serializer<GthematicsReq> _$gthematicsReqSerializer =
    new _$GthematicsReqSerializer();

class _$GserviceReqSerializer implements StructuredSerializer<GserviceReq> {
  @override
  final Iterable<Type> types = const [GserviceReq, _$GserviceReq];
  @override
  final String wireName = 'GserviceReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GserviceReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GserviceVars)),
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
  GserviceReq deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GserviceReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GserviceVars))!
              as _i3.GserviceVars);
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

class _$GregionReqSerializer implements StructuredSerializer<GregionReq> {
  @override
  final Iterable<Type> types = const [GregionReq, _$GregionReq];
  @override
  final String wireName = 'GregionReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GregionReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GregionVars)),
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
  GregionReq deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GregionReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GregionVars))!
              as _i3.GregionVars);
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

class _$GthematicsReqSerializer implements StructuredSerializer<GthematicsReq> {
  @override
  final Iterable<Type> types = const [GthematicsReq, _$GthematicsReq];
  @override
  final String wireName = 'GthematicsReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GthematicsReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GthematicsVars)),
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
  GthematicsReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GthematicsReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GthematicsVars))!
              as _i3.GthematicsVars);
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

class _$GserviceReq extends GserviceReq {
  @override
  final _i3.GserviceVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GserviceReq([void Function(GserviceReqBuilder)? updates]) =>
      (new GserviceReqBuilder()..update(updates))._build();

  _$GserviceReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GserviceReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(document, r'GserviceReq', 'document');
    BuiltValueNullFieldError.checkNotNull(idFields, r'GserviceReq', 'idFields');
  }

  @override
  GserviceReq rebuild(void Function(GserviceReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GserviceReqBuilder toBuilder() => new GserviceReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GserviceReq &&
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
    return (newBuiltValueToStringHelper(r'GserviceReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GserviceReqBuilder implements Builder<GserviceReq, GserviceReqBuilder> {
  _$GserviceReq? _$v;

  _i3.GserviceVarsBuilder? _vars;
  _i3.GserviceVarsBuilder get vars =>
      _$this._vars ??= new _i3.GserviceVarsBuilder();
  set vars(_i3.GserviceVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GserviceReqBuilder() {
    GserviceReq._initializeBuilder(this);
  }

  GserviceReqBuilder get _$this {
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
  void replace(GserviceReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GserviceReq;
  }

  @override
  void update(void Function(GserviceReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GserviceReq build() => _build();

  _$GserviceReq _build() {
    _$GserviceReq _$result;
    try {
      _$result = _$v ??
          new _$GserviceReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GserviceReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GserviceReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GserviceReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GregionReq extends GregionReq {
  @override
  final _i3.GregionVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GregionReq([void Function(GregionReqBuilder)? updates]) =>
      (new GregionReqBuilder()..update(updates))._build();

  _$GregionReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GregionReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(document, r'GregionReq', 'document');
    BuiltValueNullFieldError.checkNotNull(idFields, r'GregionReq', 'idFields');
  }

  @override
  GregionReq rebuild(void Function(GregionReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GregionReqBuilder toBuilder() => new GregionReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GregionReq &&
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
    return (newBuiltValueToStringHelper(r'GregionReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GregionReqBuilder implements Builder<GregionReq, GregionReqBuilder> {
  _$GregionReq? _$v;

  _i3.GregionVarsBuilder? _vars;
  _i3.GregionVarsBuilder get vars =>
      _$this._vars ??= new _i3.GregionVarsBuilder();
  set vars(_i3.GregionVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GregionReqBuilder() {
    GregionReq._initializeBuilder(this);
  }

  GregionReqBuilder get _$this {
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
  void replace(GregionReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GregionReq;
  }

  @override
  void update(void Function(GregionReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GregionReq build() => _build();

  _$GregionReq _build() {
    _$GregionReq _$result;
    try {
      _$result = _$v ??
          new _$GregionReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GregionReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GregionReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GregionReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GthematicsReq extends GthematicsReq {
  @override
  final _i3.GthematicsVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GthematicsReq([void Function(GthematicsReqBuilder)? updates]) =>
      (new GthematicsReqBuilder()..update(updates))._build();

  _$GthematicsReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GthematicsReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GthematicsReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GthematicsReq', 'idFields');
  }

  @override
  GthematicsReq rebuild(void Function(GthematicsReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GthematicsReqBuilder toBuilder() => new GthematicsReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GthematicsReq &&
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
    return (newBuiltValueToStringHelper(r'GthematicsReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GthematicsReqBuilder
    implements Builder<GthematicsReq, GthematicsReqBuilder> {
  _$GthematicsReq? _$v;

  _i3.GthematicsVarsBuilder? _vars;
  _i3.GthematicsVarsBuilder get vars =>
      _$this._vars ??= new _i3.GthematicsVarsBuilder();
  set vars(_i3.GthematicsVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GthematicsReqBuilder() {
    GthematicsReq._initializeBuilder(this);
  }

  GthematicsReqBuilder get _$this {
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
  void replace(GthematicsReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GthematicsReq;
  }

  @override
  void update(void Function(GthematicsReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GthematicsReq build() => _build();

  _$GthematicsReq _build() {
    _$GthematicsReq _$result;
    try {
      _$result = _$v ??
          new _$GthematicsReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GthematicsReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GthematicsReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GthematicsReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
