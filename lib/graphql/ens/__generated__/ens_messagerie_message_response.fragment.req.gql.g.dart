// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_messagerie_message_response.fragment.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GmessageResponseReq> _$gmessageResponseReqSerializer =
    new _$GmessageResponseReqSerializer();
Serializer<GContactDetailFragmentReq> _$gContactDetailFragmentReqSerializer =
    new _$GContactDetailFragmentReqSerializer();

class _$GmessageResponseReqSerializer
    implements StructuredSerializer<GmessageResponseReq> {
  @override
  final Iterable<Type> types = const [
    GmessageResponseReq,
    _$GmessageResponseReq
  ];
  @override
  final String wireName = 'GmessageResponseReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmessageResponseReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GmessageResponseVars)),
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
  GmessageResponseReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmessageResponseReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GmessageResponseVars))!
              as _i3.GmessageResponseVars);
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

class _$GContactDetailFragmentReqSerializer
    implements StructuredSerializer<GContactDetailFragmentReq> {
  @override
  final Iterable<Type> types = const [
    GContactDetailFragmentReq,
    _$GContactDetailFragmentReq
  ];
  @override
  final String wireName = 'GContactDetailFragmentReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GContactDetailFragmentReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GContactDetailFragmentVars)),
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
  GContactDetailFragmentReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GContactDetailFragmentReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GContactDetailFragmentVars))!
              as _i3.GContactDetailFragmentVars);
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

class _$GmessageResponseReq extends GmessageResponseReq {
  @override
  final _i3.GmessageResponseVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GmessageResponseReq(
          [void Function(GmessageResponseReqBuilder)? updates]) =>
      (new GmessageResponseReqBuilder()..update(updates))._build();

  _$GmessageResponseReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GmessageResponseReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GmessageResponseReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GmessageResponseReq', 'idFields');
  }

  @override
  GmessageResponseReq rebuild(
          void Function(GmessageResponseReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmessageResponseReqBuilder toBuilder() =>
      new GmessageResponseReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmessageResponseReq &&
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
    return (newBuiltValueToStringHelper(r'GmessageResponseReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GmessageResponseReqBuilder
    implements Builder<GmessageResponseReq, GmessageResponseReqBuilder> {
  _$GmessageResponseReq? _$v;

  _i3.GmessageResponseVarsBuilder? _vars;
  _i3.GmessageResponseVarsBuilder get vars =>
      _$this._vars ??= new _i3.GmessageResponseVarsBuilder();
  set vars(_i3.GmessageResponseVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GmessageResponseReqBuilder() {
    GmessageResponseReq._initializeBuilder(this);
  }

  GmessageResponseReqBuilder get _$this {
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
  void replace(GmessageResponseReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmessageResponseReq;
  }

  @override
  void update(void Function(GmessageResponseReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmessageResponseReq build() => _build();

  _$GmessageResponseReq _build() {
    _$GmessageResponseReq _$result;
    try {
      _$result = _$v ??
          new _$GmessageResponseReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GmessageResponseReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GmessageResponseReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GmessageResponseReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GContactDetailFragmentReq extends GContactDetailFragmentReq {
  @override
  final _i3.GContactDetailFragmentVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GContactDetailFragmentReq(
          [void Function(GContactDetailFragmentReqBuilder)? updates]) =>
      (new GContactDetailFragmentReqBuilder()..update(updates))._build();

  _$GContactDetailFragmentReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GContactDetailFragmentReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GContactDetailFragmentReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GContactDetailFragmentReq', 'idFields');
  }

  @override
  GContactDetailFragmentReq rebuild(
          void Function(GContactDetailFragmentReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GContactDetailFragmentReqBuilder toBuilder() =>
      new GContactDetailFragmentReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GContactDetailFragmentReq &&
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
    return (newBuiltValueToStringHelper(r'GContactDetailFragmentReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GContactDetailFragmentReqBuilder
    implements
        Builder<GContactDetailFragmentReq, GContactDetailFragmentReqBuilder> {
  _$GContactDetailFragmentReq? _$v;

  _i3.GContactDetailFragmentVarsBuilder? _vars;
  _i3.GContactDetailFragmentVarsBuilder get vars =>
      _$this._vars ??= new _i3.GContactDetailFragmentVarsBuilder();
  set vars(_i3.GContactDetailFragmentVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GContactDetailFragmentReqBuilder() {
    GContactDetailFragmentReq._initializeBuilder(this);
  }

  GContactDetailFragmentReqBuilder get _$this {
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
  void replace(GContactDetailFragmentReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GContactDetailFragmentReq;
  }

  @override
  void update(void Function(GContactDetailFragmentReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GContactDetailFragmentReq build() => _build();

  _$GContactDetailFragmentReq _build() {
    _$GContactDetailFragmentReq _$result;
    try {
      _$result = _$v ??
          new _$GContactDetailFragmentReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GContactDetailFragmentReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GContactDetailFragmentReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GContactDetailFragmentReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
