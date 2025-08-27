// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_es.fragment.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gadresse_ps_esReq> _$gadressePsEsReqSerializer =
    new _$Gadresse_ps_esReqSerializer();

class _$Gadresse_ps_esReqSerializer
    implements StructuredSerializer<Gadresse_ps_esReq> {
  @override
  final Iterable<Type> types = const [Gadresse_ps_esReq, _$Gadresse_ps_esReq];
  @override
  final String wireName = 'Gadresse_ps_esReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gadresse_ps_esReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.Gadresse_ps_esVars)),
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
  Gadresse_ps_esReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadresse_ps_esReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.Gadresse_ps_esVars))!
              as _i3.Gadresse_ps_esVars);
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

class _$Gadresse_ps_esReq extends Gadresse_ps_esReq {
  @override
  final _i3.Gadresse_ps_esVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$Gadresse_ps_esReq(
          [void Function(Gadresse_ps_esReqBuilder)? updates]) =>
      (new Gadresse_ps_esReqBuilder()..update(updates))._build();

  _$Gadresse_ps_esReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'Gadresse_ps_esReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'Gadresse_ps_esReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'Gadresse_ps_esReq', 'idFields');
  }

  @override
  Gadresse_ps_esReq rebuild(void Function(Gadresse_ps_esReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadresse_ps_esReqBuilder toBuilder() =>
      new Gadresse_ps_esReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadresse_ps_esReq &&
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
    return (newBuiltValueToStringHelper(r'Gadresse_ps_esReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class Gadresse_ps_esReqBuilder
    implements Builder<Gadresse_ps_esReq, Gadresse_ps_esReqBuilder> {
  _$Gadresse_ps_esReq? _$v;

  _i3.Gadresse_ps_esVarsBuilder? _vars;
  _i3.Gadresse_ps_esVarsBuilder get vars =>
      _$this._vars ??= new _i3.Gadresse_ps_esVarsBuilder();
  set vars(_i3.Gadresse_ps_esVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  Gadresse_ps_esReqBuilder() {
    Gadresse_ps_esReq._initializeBuilder(this);
  }

  Gadresse_ps_esReqBuilder get _$this {
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
  void replace(Gadresse_ps_esReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadresse_ps_esReq;
  }

  @override
  void update(void Function(Gadresse_ps_esReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadresse_ps_esReq build() => _build();

  _$Gadresse_ps_esReq _build() {
    _$Gadresse_ps_esReq _$result;
    try {
      _$result = _$v ??
          new _$Gadresse_ps_esReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'Gadresse_ps_esReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'Gadresse_ps_esReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadresse_ps_esReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
