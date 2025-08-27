// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_documents.fragment.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GensDocumentReq> _$gensDocumentReqSerializer =
    new _$GensDocumentReqSerializer();

class _$GensDocumentReqSerializer
    implements StructuredSerializer<GensDocumentReq> {
  @override
  final Iterable<Type> types = const [GensDocumentReq, _$GensDocumentReq];
  @override
  final String wireName = 'GensDocumentReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GensDocumentReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GensDocumentVars)),
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
  GensDocumentReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GensDocumentReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GensDocumentVars))!
              as _i3.GensDocumentVars);
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

class _$GensDocumentReq extends GensDocumentReq {
  @override
  final _i3.GensDocumentVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GensDocumentReq([void Function(GensDocumentReqBuilder)? updates]) =>
      (new GensDocumentReqBuilder()..update(updates))._build();

  _$GensDocumentReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GensDocumentReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GensDocumentReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GensDocumentReq', 'idFields');
  }

  @override
  GensDocumentReq rebuild(void Function(GensDocumentReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GensDocumentReqBuilder toBuilder() =>
      new GensDocumentReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GensDocumentReq &&
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
    return (newBuiltValueToStringHelper(r'GensDocumentReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GensDocumentReqBuilder
    implements Builder<GensDocumentReq, GensDocumentReqBuilder> {
  _$GensDocumentReq? _$v;

  _i3.GensDocumentVarsBuilder? _vars;
  _i3.GensDocumentVarsBuilder get vars =>
      _$this._vars ??= new _i3.GensDocumentVarsBuilder();
  set vars(_i3.GensDocumentVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GensDocumentReqBuilder() {
    GensDocumentReq._initializeBuilder(this);
  }

  GensDocumentReqBuilder get _$this {
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
  void replace(GensDocumentReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GensDocumentReq;
  }

  @override
  void update(void Function(GensDocumentReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GensDocumentReq build() => _build();

  _$GensDocumentReq _build() {
    _$GensDocumentReq _$result;
    try {
      _$result = _$v ??
          new _$GensDocumentReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GensDocumentReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GensDocumentReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GensDocumentReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
