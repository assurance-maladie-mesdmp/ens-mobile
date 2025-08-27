// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_aidants_aides_acteur.fragment.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GacteurReq> _$gacteurReqSerializer = new _$GacteurReqSerializer();

class _$GacteurReqSerializer implements StructuredSerializer<GacteurReq> {
  @override
  final Iterable<Type> types = const [GacteurReq, _$GacteurReq];
  @override
  final String wireName = 'GacteurReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GacteurReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GacteurVars)),
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
  GacteurReq deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GacteurReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GacteurVars))!
              as _i3.GacteurVars);
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

class _$GacteurReq extends GacteurReq {
  @override
  final _i3.GacteurVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GacteurReq([void Function(GacteurReqBuilder)? updates]) =>
      (new GacteurReqBuilder()..update(updates))._build();

  _$GacteurReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GacteurReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(document, r'GacteurReq', 'document');
    BuiltValueNullFieldError.checkNotNull(idFields, r'GacteurReq', 'idFields');
  }

  @override
  GacteurReq rebuild(void Function(GacteurReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GacteurReqBuilder toBuilder() => new GacteurReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GacteurReq &&
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
    return (newBuiltValueToStringHelper(r'GacteurReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GacteurReqBuilder implements Builder<GacteurReq, GacteurReqBuilder> {
  _$GacteurReq? _$v;

  _i3.GacteurVarsBuilder? _vars;
  _i3.GacteurVarsBuilder get vars =>
      _$this._vars ??= new _i3.GacteurVarsBuilder();
  set vars(_i3.GacteurVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GacteurReqBuilder() {
    GacteurReq._initializeBuilder(this);
  }

  GacteurReqBuilder get _$this {
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
  void replace(GacteurReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GacteurReq;
  }

  @override
  void update(void Function(GacteurReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GacteurReq build() => _build();

  _$GacteurReq _build() {
    _$GacteurReq _$result;
    try {
      _$result = _$v ??
          new _$GacteurReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GacteurReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GacteurReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GacteurReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
