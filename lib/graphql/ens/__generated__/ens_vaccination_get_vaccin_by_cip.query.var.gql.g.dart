// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_vaccination_get_vaccin_by_cip.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_vaccin_by_cipVars> _$ggetVaccinByCipVarsSerializer =
    new _$Gget_vaccin_by_cipVarsSerializer();

class _$Gget_vaccin_by_cipVarsSerializer
    implements StructuredSerializer<Gget_vaccin_by_cipVars> {
  @override
  final Iterable<Type> types = const [
    Gget_vaccin_by_cipVars,
    _$Gget_vaccin_by_cipVars
  ];
  @override
  final String wireName = 'Gget_vaccin_by_cipVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_vaccin_by_cipVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'cipCode',
      serializers.serialize(object.cipCode,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_vaccin_by_cipVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_vaccin_by_cipVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'cipCode':
          result.cipCode = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_vaccin_by_cipVars extends Gget_vaccin_by_cipVars {
  @override
  final String cipCode;

  factory _$Gget_vaccin_by_cipVars(
          [void Function(Gget_vaccin_by_cipVarsBuilder)? updates]) =>
      (new Gget_vaccin_by_cipVarsBuilder()..update(updates))._build();

  _$Gget_vaccin_by_cipVars._({required this.cipCode}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        cipCode, r'Gget_vaccin_by_cipVars', 'cipCode');
  }

  @override
  Gget_vaccin_by_cipVars rebuild(
          void Function(Gget_vaccin_by_cipVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_vaccin_by_cipVarsBuilder toBuilder() =>
      new Gget_vaccin_by_cipVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_vaccin_by_cipVars && cipCode == other.cipCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cipCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_vaccin_by_cipVars')
          ..add('cipCode', cipCode))
        .toString();
  }
}

class Gget_vaccin_by_cipVarsBuilder
    implements Builder<Gget_vaccin_by_cipVars, Gget_vaccin_by_cipVarsBuilder> {
  _$Gget_vaccin_by_cipVars? _$v;

  String? _cipCode;
  String? get cipCode => _$this._cipCode;
  set cipCode(String? cipCode) => _$this._cipCode = cipCode;

  Gget_vaccin_by_cipVarsBuilder();

  Gget_vaccin_by_cipVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cipCode = $v.cipCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_vaccin_by_cipVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_vaccin_by_cipVars;
  }

  @override
  void update(void Function(Gget_vaccin_by_cipVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_vaccin_by_cipVars build() => _build();

  _$Gget_vaccin_by_cipVars _build() {
    final _$result = _$v ??
        new _$Gget_vaccin_by_cipVars._(
            cipCode: BuiltValueNullFieldError.checkNotNull(
                cipCode, r'Gget_vaccin_by_cipVars', 'cipCode'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
