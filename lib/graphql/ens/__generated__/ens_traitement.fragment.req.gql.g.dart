// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_traitement.fragment.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GtraitementReq> _$gtraitementReqSerializer =
    new _$GtraitementReqSerializer();
Serializer<GmaladieLieReq> _$gmaladieLieReqSerializer =
    new _$GmaladieLieReqSerializer();
Serializer<GallergieLieReq> _$gallergieLieReqSerializer =
    new _$GallergieLieReqSerializer();
Serializer<GmaladieSansTraitementLieReq>
    _$gmaladieSansTraitementLieReqSerializer =
    new _$GmaladieSansTraitementLieReqSerializer();

class _$GtraitementReqSerializer
    implements StructuredSerializer<GtraitementReq> {
  @override
  final Iterable<Type> types = const [GtraitementReq, _$GtraitementReq];
  @override
  final String wireName = 'GtraitementReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GtraitementReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GtraitementVars)),
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
  GtraitementReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GtraitementReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GtraitementVars))!
              as _i3.GtraitementVars);
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

class _$GmaladieLieReqSerializer
    implements StructuredSerializer<GmaladieLieReq> {
  @override
  final Iterable<Type> types = const [GmaladieLieReq, _$GmaladieLieReq];
  @override
  final String wireName = 'GmaladieLieReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GmaladieLieReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GmaladieLieVars)),
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
  GmaladieLieReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmaladieLieReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GmaladieLieVars))!
              as _i3.GmaladieLieVars);
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

class _$GallergieLieReqSerializer
    implements StructuredSerializer<GallergieLieReq> {
  @override
  final Iterable<Type> types = const [GallergieLieReq, _$GallergieLieReq];
  @override
  final String wireName = 'GallergieLieReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GallergieLieReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GallergieLieVars)),
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
  GallergieLieReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallergieLieReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GallergieLieVars))!
              as _i3.GallergieLieVars);
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

class _$GmaladieSansTraitementLieReqSerializer
    implements StructuredSerializer<GmaladieSansTraitementLieReq> {
  @override
  final Iterable<Type> types = const [
    GmaladieSansTraitementLieReq,
    _$GmaladieSansTraitementLieReq
  ];
  @override
  final String wireName = 'GmaladieSansTraitementLieReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmaladieSansTraitementLieReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GmaladieSansTraitementLieVars)),
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
  GmaladieSansTraitementLieReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmaladieSansTraitementLieReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GmaladieSansTraitementLieVars))!
              as _i3.GmaladieSansTraitementLieVars);
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

class _$GtraitementReq extends GtraitementReq {
  @override
  final _i3.GtraitementVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GtraitementReq([void Function(GtraitementReqBuilder)? updates]) =>
      (new GtraitementReqBuilder()..update(updates))._build();

  _$GtraitementReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GtraitementReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GtraitementReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GtraitementReq', 'idFields');
  }

  @override
  GtraitementReq rebuild(void Function(GtraitementReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GtraitementReqBuilder toBuilder() =>
      new GtraitementReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GtraitementReq &&
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
    return (newBuiltValueToStringHelper(r'GtraitementReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GtraitementReqBuilder
    implements Builder<GtraitementReq, GtraitementReqBuilder> {
  _$GtraitementReq? _$v;

  _i3.GtraitementVarsBuilder? _vars;
  _i3.GtraitementVarsBuilder get vars =>
      _$this._vars ??= new _i3.GtraitementVarsBuilder();
  set vars(_i3.GtraitementVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GtraitementReqBuilder() {
    GtraitementReq._initializeBuilder(this);
  }

  GtraitementReqBuilder get _$this {
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
  void replace(GtraitementReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GtraitementReq;
  }

  @override
  void update(void Function(GtraitementReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GtraitementReq build() => _build();

  _$GtraitementReq _build() {
    _$GtraitementReq _$result;
    try {
      _$result = _$v ??
          new _$GtraitementReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GtraitementReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GtraitementReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GtraitementReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmaladieLieReq extends GmaladieLieReq {
  @override
  final _i3.GmaladieLieVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GmaladieLieReq([void Function(GmaladieLieReqBuilder)? updates]) =>
      (new GmaladieLieReqBuilder()..update(updates))._build();

  _$GmaladieLieReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GmaladieLieReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GmaladieLieReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GmaladieLieReq', 'idFields');
  }

  @override
  GmaladieLieReq rebuild(void Function(GmaladieLieReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmaladieLieReqBuilder toBuilder() =>
      new GmaladieLieReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmaladieLieReq &&
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
    return (newBuiltValueToStringHelper(r'GmaladieLieReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GmaladieLieReqBuilder
    implements Builder<GmaladieLieReq, GmaladieLieReqBuilder> {
  _$GmaladieLieReq? _$v;

  _i3.GmaladieLieVarsBuilder? _vars;
  _i3.GmaladieLieVarsBuilder get vars =>
      _$this._vars ??= new _i3.GmaladieLieVarsBuilder();
  set vars(_i3.GmaladieLieVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GmaladieLieReqBuilder() {
    GmaladieLieReq._initializeBuilder(this);
  }

  GmaladieLieReqBuilder get _$this {
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
  void replace(GmaladieLieReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmaladieLieReq;
  }

  @override
  void update(void Function(GmaladieLieReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmaladieLieReq build() => _build();

  _$GmaladieLieReq _build() {
    _$GmaladieLieReq _$result;
    try {
      _$result = _$v ??
          new _$GmaladieLieReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GmaladieLieReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GmaladieLieReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GmaladieLieReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GallergieLieReq extends GallergieLieReq {
  @override
  final _i3.GallergieLieVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GallergieLieReq([void Function(GallergieLieReqBuilder)? updates]) =>
      (new GallergieLieReqBuilder()..update(updates))._build();

  _$GallergieLieReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GallergieLieReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GallergieLieReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GallergieLieReq', 'idFields');
  }

  @override
  GallergieLieReq rebuild(void Function(GallergieLieReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallergieLieReqBuilder toBuilder() =>
      new GallergieLieReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallergieLieReq &&
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
    return (newBuiltValueToStringHelper(r'GallergieLieReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GallergieLieReqBuilder
    implements Builder<GallergieLieReq, GallergieLieReqBuilder> {
  _$GallergieLieReq? _$v;

  _i3.GallergieLieVarsBuilder? _vars;
  _i3.GallergieLieVarsBuilder get vars =>
      _$this._vars ??= new _i3.GallergieLieVarsBuilder();
  set vars(_i3.GallergieLieVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GallergieLieReqBuilder() {
    GallergieLieReq._initializeBuilder(this);
  }

  GallergieLieReqBuilder get _$this {
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
  void replace(GallergieLieReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallergieLieReq;
  }

  @override
  void update(void Function(GallergieLieReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GallergieLieReq build() => _build();

  _$GallergieLieReq _build() {
    _$GallergieLieReq _$result;
    try {
      _$result = _$v ??
          new _$GallergieLieReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GallergieLieReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GallergieLieReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GallergieLieReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmaladieSansTraitementLieReq extends GmaladieSansTraitementLieReq {
  @override
  final _i3.GmaladieSansTraitementLieVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GmaladieSansTraitementLieReq(
          [void Function(GmaladieSansTraitementLieReqBuilder)? updates]) =>
      (new GmaladieSansTraitementLieReqBuilder()..update(updates))._build();

  _$GmaladieSansTraitementLieReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GmaladieSansTraitementLieReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GmaladieSansTraitementLieReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GmaladieSansTraitementLieReq', 'idFields');
  }

  @override
  GmaladieSansTraitementLieReq rebuild(
          void Function(GmaladieSansTraitementLieReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmaladieSansTraitementLieReqBuilder toBuilder() =>
      new GmaladieSansTraitementLieReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmaladieSansTraitementLieReq &&
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
    return (newBuiltValueToStringHelper(r'GmaladieSansTraitementLieReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GmaladieSansTraitementLieReqBuilder
    implements
        Builder<GmaladieSansTraitementLieReq,
            GmaladieSansTraitementLieReqBuilder> {
  _$GmaladieSansTraitementLieReq? _$v;

  _i3.GmaladieSansTraitementLieVarsBuilder? _vars;
  _i3.GmaladieSansTraitementLieVarsBuilder get vars =>
      _$this._vars ??= new _i3.GmaladieSansTraitementLieVarsBuilder();
  set vars(_i3.GmaladieSansTraitementLieVarsBuilder? vars) =>
      _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GmaladieSansTraitementLieReqBuilder() {
    GmaladieSansTraitementLieReq._initializeBuilder(this);
  }

  GmaladieSansTraitementLieReqBuilder get _$this {
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
  void replace(GmaladieSansTraitementLieReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmaladieSansTraitementLieReq;
  }

  @override
  void update(void Function(GmaladieSansTraitementLieReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmaladieSansTraitementLieReq build() => _build();

  _$GmaladieSansTraitementLieReq _build() {
    _$GmaladieSansTraitementLieReq _$result;
    try {
      _$result = _$v ??
          new _$GmaladieSansTraitementLieReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GmaladieSansTraitementLieReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GmaladieSansTraitementLieReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GmaladieSansTraitementLieReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
