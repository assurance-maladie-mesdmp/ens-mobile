// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_get_metadata_by_code.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_metadata_by_codeVars> _$ggetMetadataByCodeVarsSerializer =
    new _$Gget_metadata_by_codeVarsSerializer();

class _$Gget_metadata_by_codeVarsSerializer
    implements StructuredSerializer<Gget_metadata_by_codeVars> {
  @override
  final Iterable<Type> types = const [
    Gget_metadata_by_codeVars,
    _$Gget_metadata_by_codeVars
  ];
  @override
  final String wireName = 'Gget_metadata_by_codeVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_metadata_by_codeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_metadata_by_codeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_metadata_by_codeVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_metadata_by_codeVars extends Gget_metadata_by_codeVars {
  @override
  final String code;

  factory _$Gget_metadata_by_codeVars(
          [void Function(Gget_metadata_by_codeVarsBuilder)? updates]) =>
      (new Gget_metadata_by_codeVarsBuilder()..update(updates))._build();

  _$Gget_metadata_by_codeVars._({required this.code}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        code, r'Gget_metadata_by_codeVars', 'code');
  }

  @override
  Gget_metadata_by_codeVars rebuild(
          void Function(Gget_metadata_by_codeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_metadata_by_codeVarsBuilder toBuilder() =>
      new Gget_metadata_by_codeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_metadata_by_codeVars && code == other.code;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_metadata_by_codeVars')
          ..add('code', code))
        .toString();
  }
}

class Gget_metadata_by_codeVarsBuilder
    implements
        Builder<Gget_metadata_by_codeVars, Gget_metadata_by_codeVarsBuilder> {
  _$Gget_metadata_by_codeVars? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  Gget_metadata_by_codeVarsBuilder();

  Gget_metadata_by_codeVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_metadata_by_codeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_metadata_by_codeVars;
  }

  @override
  void update(void Function(Gget_metadata_by_codeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_metadata_by_codeVars build() => _build();

  _$Gget_metadata_by_codeVars _build() {
    final _$result = _$v ??
        new _$Gget_metadata_by_codeVars._(
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'Gget_metadata_by_codeVars', 'code'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
