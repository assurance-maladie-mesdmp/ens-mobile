// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_traitement_get_nom_par_code_cip.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_nom_par_code_cipVars> _$ggetNomParCodeCipVarsSerializer =
    new _$Gget_nom_par_code_cipVarsSerializer();

class _$Gget_nom_par_code_cipVarsSerializer
    implements StructuredSerializer<Gget_nom_par_code_cipVars> {
  @override
  final Iterable<Type> types = const [
    Gget_nom_par_code_cipVars,
    _$Gget_nom_par_code_cipVars
  ];
  @override
  final String wireName = 'Gget_nom_par_code_cipVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_nom_par_code_cipVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'code_cip',
      serializers.serialize(object.code_cip,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_nom_par_code_cipVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_nom_par_code_cipVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'code_cip':
          result.code_cip = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_nom_par_code_cipVars extends Gget_nom_par_code_cipVars {
  @override
  final String code_cip;

  factory _$Gget_nom_par_code_cipVars(
          [void Function(Gget_nom_par_code_cipVarsBuilder)? updates]) =>
      (new Gget_nom_par_code_cipVarsBuilder()..update(updates))._build();

  _$Gget_nom_par_code_cipVars._({required this.code_cip}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        code_cip, r'Gget_nom_par_code_cipVars', 'code_cip');
  }

  @override
  Gget_nom_par_code_cipVars rebuild(
          void Function(Gget_nom_par_code_cipVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_nom_par_code_cipVarsBuilder toBuilder() =>
      new Gget_nom_par_code_cipVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_nom_par_code_cipVars && code_cip == other.code_cip;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code_cip.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_nom_par_code_cipVars')
          ..add('code_cip', code_cip))
        .toString();
  }
}

class Gget_nom_par_code_cipVarsBuilder
    implements
        Builder<Gget_nom_par_code_cipVars, Gget_nom_par_code_cipVarsBuilder> {
  _$Gget_nom_par_code_cipVars? _$v;

  String? _code_cip;
  String? get code_cip => _$this._code_cip;
  set code_cip(String? code_cip) => _$this._code_cip = code_cip;

  Gget_nom_par_code_cipVarsBuilder();

  Gget_nom_par_code_cipVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code_cip = $v.code_cip;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_nom_par_code_cipVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_nom_par_code_cipVars;
  }

  @override
  void update(void Function(Gget_nom_par_code_cipVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_nom_par_code_cipVars build() => _build();

  _$Gget_nom_par_code_cipVars _build() {
    final _$result = _$v ??
        new _$Gget_nom_par_code_cipVars._(
            code_cip: BuiltValueNullFieldError.checkNotNull(
                code_cip, r'Gget_nom_par_code_cipVars', 'code_cip'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
