// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_questionnaire_ages_cles.fragment.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GstartQuestionnaireReq> _$gstartQuestionnaireReqSerializer =
    new _$GstartQuestionnaireReqSerializer();
Serializer<GendQuestionnaireReq> _$gendQuestionnaireReqSerializer =
    new _$GendQuestionnaireReqSerializer();
Serializer<GquestionReq> _$gquestionReqSerializer =
    new _$GquestionReqSerializer();
Serializer<GchoiceQuestionReq> _$gchoiceQuestionReqSerializer =
    new _$GchoiceQuestionReqSerializer();
Serializer<GconstraintsQuestionReq> _$gconstraintsQuestionReqSerializer =
    new _$GconstraintsQuestionReqSerializer();

class _$GstartQuestionnaireReqSerializer
    implements StructuredSerializer<GstartQuestionnaireReq> {
  @override
  final Iterable<Type> types = const [
    GstartQuestionnaireReq,
    _$GstartQuestionnaireReq
  ];
  @override
  final String wireName = 'GstartQuestionnaireReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GstartQuestionnaireReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GstartQuestionnaireVars)),
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
  GstartQuestionnaireReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GstartQuestionnaireReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GstartQuestionnaireVars))!
              as _i3.GstartQuestionnaireVars);
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

class _$GendQuestionnaireReqSerializer
    implements StructuredSerializer<GendQuestionnaireReq> {
  @override
  final Iterable<Type> types = const [
    GendQuestionnaireReq,
    _$GendQuestionnaireReq
  ];
  @override
  final String wireName = 'GendQuestionnaireReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GendQuestionnaireReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GendQuestionnaireVars)),
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
  GendQuestionnaireReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GendQuestionnaireReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GendQuestionnaireVars))!
              as _i3.GendQuestionnaireVars);
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

class _$GquestionReqSerializer implements StructuredSerializer<GquestionReq> {
  @override
  final Iterable<Type> types = const [GquestionReq, _$GquestionReq];
  @override
  final String wireName = 'GquestionReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GquestionReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GquestionVars)),
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
  GquestionReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GquestionReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GquestionVars))!
              as _i3.GquestionVars);
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

class _$GchoiceQuestionReqSerializer
    implements StructuredSerializer<GchoiceQuestionReq> {
  @override
  final Iterable<Type> types = const [GchoiceQuestionReq, _$GchoiceQuestionReq];
  @override
  final String wireName = 'GchoiceQuestionReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GchoiceQuestionReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GchoiceQuestionVars)),
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
  GchoiceQuestionReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GchoiceQuestionReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GchoiceQuestionVars))!
              as _i3.GchoiceQuestionVars);
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

class _$GconstraintsQuestionReqSerializer
    implements StructuredSerializer<GconstraintsQuestionReq> {
  @override
  final Iterable<Type> types = const [
    GconstraintsQuestionReq,
    _$GconstraintsQuestionReq
  ];
  @override
  final String wireName = 'GconstraintsQuestionReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GconstraintsQuestionReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GconstraintsQuestionVars)),
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
  GconstraintsQuestionReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GconstraintsQuestionReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GconstraintsQuestionVars))!
              as _i3.GconstraintsQuestionVars);
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

class _$GstartQuestionnaireReq extends GstartQuestionnaireReq {
  @override
  final _i3.GstartQuestionnaireVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GstartQuestionnaireReq(
          [void Function(GstartQuestionnaireReqBuilder)? updates]) =>
      (new GstartQuestionnaireReqBuilder()..update(updates))._build();

  _$GstartQuestionnaireReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GstartQuestionnaireReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GstartQuestionnaireReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GstartQuestionnaireReq', 'idFields');
  }

  @override
  GstartQuestionnaireReq rebuild(
          void Function(GstartQuestionnaireReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GstartQuestionnaireReqBuilder toBuilder() =>
      new GstartQuestionnaireReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GstartQuestionnaireReq &&
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
    return (newBuiltValueToStringHelper(r'GstartQuestionnaireReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GstartQuestionnaireReqBuilder
    implements Builder<GstartQuestionnaireReq, GstartQuestionnaireReqBuilder> {
  _$GstartQuestionnaireReq? _$v;

  _i3.GstartQuestionnaireVarsBuilder? _vars;
  _i3.GstartQuestionnaireVarsBuilder get vars =>
      _$this._vars ??= new _i3.GstartQuestionnaireVarsBuilder();
  set vars(_i3.GstartQuestionnaireVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GstartQuestionnaireReqBuilder() {
    GstartQuestionnaireReq._initializeBuilder(this);
  }

  GstartQuestionnaireReqBuilder get _$this {
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
  void replace(GstartQuestionnaireReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GstartQuestionnaireReq;
  }

  @override
  void update(void Function(GstartQuestionnaireReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GstartQuestionnaireReq build() => _build();

  _$GstartQuestionnaireReq _build() {
    _$GstartQuestionnaireReq _$result;
    try {
      _$result = _$v ??
          new _$GstartQuestionnaireReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GstartQuestionnaireReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GstartQuestionnaireReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GstartQuestionnaireReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GendQuestionnaireReq extends GendQuestionnaireReq {
  @override
  final _i3.GendQuestionnaireVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GendQuestionnaireReq(
          [void Function(GendQuestionnaireReqBuilder)? updates]) =>
      (new GendQuestionnaireReqBuilder()..update(updates))._build();

  _$GendQuestionnaireReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GendQuestionnaireReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GendQuestionnaireReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GendQuestionnaireReq', 'idFields');
  }

  @override
  GendQuestionnaireReq rebuild(
          void Function(GendQuestionnaireReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GendQuestionnaireReqBuilder toBuilder() =>
      new GendQuestionnaireReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GendQuestionnaireReq &&
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
    return (newBuiltValueToStringHelper(r'GendQuestionnaireReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GendQuestionnaireReqBuilder
    implements Builder<GendQuestionnaireReq, GendQuestionnaireReqBuilder> {
  _$GendQuestionnaireReq? _$v;

  _i3.GendQuestionnaireVarsBuilder? _vars;
  _i3.GendQuestionnaireVarsBuilder get vars =>
      _$this._vars ??= new _i3.GendQuestionnaireVarsBuilder();
  set vars(_i3.GendQuestionnaireVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GendQuestionnaireReqBuilder() {
    GendQuestionnaireReq._initializeBuilder(this);
  }

  GendQuestionnaireReqBuilder get _$this {
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
  void replace(GendQuestionnaireReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GendQuestionnaireReq;
  }

  @override
  void update(void Function(GendQuestionnaireReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GendQuestionnaireReq build() => _build();

  _$GendQuestionnaireReq _build() {
    _$GendQuestionnaireReq _$result;
    try {
      _$result = _$v ??
          new _$GendQuestionnaireReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GendQuestionnaireReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GendQuestionnaireReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GendQuestionnaireReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GquestionReq extends GquestionReq {
  @override
  final _i3.GquestionVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GquestionReq([void Function(GquestionReqBuilder)? updates]) =>
      (new GquestionReqBuilder()..update(updates))._build();

  _$GquestionReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GquestionReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GquestionReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GquestionReq', 'idFields');
  }

  @override
  GquestionReq rebuild(void Function(GquestionReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GquestionReqBuilder toBuilder() => new GquestionReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GquestionReq &&
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
    return (newBuiltValueToStringHelper(r'GquestionReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GquestionReqBuilder
    implements Builder<GquestionReq, GquestionReqBuilder> {
  _$GquestionReq? _$v;

  _i3.GquestionVarsBuilder? _vars;
  _i3.GquestionVarsBuilder get vars =>
      _$this._vars ??= new _i3.GquestionVarsBuilder();
  set vars(_i3.GquestionVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GquestionReqBuilder() {
    GquestionReq._initializeBuilder(this);
  }

  GquestionReqBuilder get _$this {
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
  void replace(GquestionReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GquestionReq;
  }

  @override
  void update(void Function(GquestionReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GquestionReq build() => _build();

  _$GquestionReq _build() {
    _$GquestionReq _$result;
    try {
      _$result = _$v ??
          new _$GquestionReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GquestionReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GquestionReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GquestionReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GchoiceQuestionReq extends GchoiceQuestionReq {
  @override
  final _i3.GchoiceQuestionVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GchoiceQuestionReq(
          [void Function(GchoiceQuestionReqBuilder)? updates]) =>
      (new GchoiceQuestionReqBuilder()..update(updates))._build();

  _$GchoiceQuestionReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GchoiceQuestionReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GchoiceQuestionReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GchoiceQuestionReq', 'idFields');
  }

  @override
  GchoiceQuestionReq rebuild(
          void Function(GchoiceQuestionReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GchoiceQuestionReqBuilder toBuilder() =>
      new GchoiceQuestionReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GchoiceQuestionReq &&
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
    return (newBuiltValueToStringHelper(r'GchoiceQuestionReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GchoiceQuestionReqBuilder
    implements Builder<GchoiceQuestionReq, GchoiceQuestionReqBuilder> {
  _$GchoiceQuestionReq? _$v;

  _i3.GchoiceQuestionVarsBuilder? _vars;
  _i3.GchoiceQuestionVarsBuilder get vars =>
      _$this._vars ??= new _i3.GchoiceQuestionVarsBuilder();
  set vars(_i3.GchoiceQuestionVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GchoiceQuestionReqBuilder() {
    GchoiceQuestionReq._initializeBuilder(this);
  }

  GchoiceQuestionReqBuilder get _$this {
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
  void replace(GchoiceQuestionReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GchoiceQuestionReq;
  }

  @override
  void update(void Function(GchoiceQuestionReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GchoiceQuestionReq build() => _build();

  _$GchoiceQuestionReq _build() {
    _$GchoiceQuestionReq _$result;
    try {
      _$result = _$v ??
          new _$GchoiceQuestionReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GchoiceQuestionReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GchoiceQuestionReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GchoiceQuestionReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GconstraintsQuestionReq extends GconstraintsQuestionReq {
  @override
  final _i3.GconstraintsQuestionVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GconstraintsQuestionReq(
          [void Function(GconstraintsQuestionReqBuilder)? updates]) =>
      (new GconstraintsQuestionReqBuilder()..update(updates))._build();

  _$GconstraintsQuestionReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GconstraintsQuestionReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GconstraintsQuestionReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GconstraintsQuestionReq', 'idFields');
  }

  @override
  GconstraintsQuestionReq rebuild(
          void Function(GconstraintsQuestionReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GconstraintsQuestionReqBuilder toBuilder() =>
      new GconstraintsQuestionReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GconstraintsQuestionReq &&
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
    return (newBuiltValueToStringHelper(r'GconstraintsQuestionReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GconstraintsQuestionReqBuilder
    implements
        Builder<GconstraintsQuestionReq, GconstraintsQuestionReqBuilder> {
  _$GconstraintsQuestionReq? _$v;

  _i3.GconstraintsQuestionVarsBuilder? _vars;
  _i3.GconstraintsQuestionVarsBuilder get vars =>
      _$this._vars ??= new _i3.GconstraintsQuestionVarsBuilder();
  set vars(_i3.GconstraintsQuestionVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GconstraintsQuestionReqBuilder() {
    GconstraintsQuestionReq._initializeBuilder(this);
  }

  GconstraintsQuestionReqBuilder get _$this {
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
  void replace(GconstraintsQuestionReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GconstraintsQuestionReq;
  }

  @override
  void update(void Function(GconstraintsQuestionReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GconstraintsQuestionReq build() => _build();

  _$GconstraintsQuestionReq _build() {
    _$GconstraintsQuestionReq _$result;
    try {
      _$result = _$v ??
          new _$GconstraintsQuestionReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GconstraintsQuestionReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GconstraintsQuestionReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GconstraintsQuestionReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
