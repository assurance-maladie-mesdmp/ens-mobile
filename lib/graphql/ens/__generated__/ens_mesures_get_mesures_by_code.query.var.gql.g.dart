// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_get_mesures_by_code.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_mesures_by_codeVars> _$ggetMesuresByCodeVarsSerializer =
    new _$Gget_mesures_by_codeVarsSerializer();

class _$Gget_mesures_by_codeVarsSerializer
    implements StructuredSerializer<Gget_mesures_by_codeVars> {
  @override
  final Iterable<Type> types = const [
    Gget_mesures_by_codeVars,
    _$Gget_mesures_by_codeVars
  ];
  @override
  final String wireName = 'Gget_mesures_by_codeVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_mesures_by_codeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'mesurePageable',
      serializers.serialize(object.mesurePageable,
          specifiedType: const FullType(_i1.GMeasurePageableInput)),
    ];

    return result;
  }

  @override
  Gget_mesures_by_codeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_mesures_by_codeVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'mesurePageable':
          result.mesurePageable.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GMeasurePageableInput))!
              as _i1.GMeasurePageableInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_mesures_by_codeVars extends Gget_mesures_by_codeVars {
  @override
  final _i1.GMeasurePageableInput mesurePageable;

  factory _$Gget_mesures_by_codeVars(
          [void Function(Gget_mesures_by_codeVarsBuilder)? updates]) =>
      (new Gget_mesures_by_codeVarsBuilder()..update(updates))._build();

  _$Gget_mesures_by_codeVars._({required this.mesurePageable}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        mesurePageable, r'Gget_mesures_by_codeVars', 'mesurePageable');
  }

  @override
  Gget_mesures_by_codeVars rebuild(
          void Function(Gget_mesures_by_codeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_mesures_by_codeVarsBuilder toBuilder() =>
      new Gget_mesures_by_codeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_mesures_by_codeVars &&
        mesurePageable == other.mesurePageable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mesurePageable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_mesures_by_codeVars')
          ..add('mesurePageable', mesurePageable))
        .toString();
  }
}

class Gget_mesures_by_codeVarsBuilder
    implements
        Builder<Gget_mesures_by_codeVars, Gget_mesures_by_codeVarsBuilder> {
  _$Gget_mesures_by_codeVars? _$v;

  _i1.GMeasurePageableInputBuilder? _mesurePageable;
  _i1.GMeasurePageableInputBuilder get mesurePageable =>
      _$this._mesurePageable ??= new _i1.GMeasurePageableInputBuilder();
  set mesurePageable(_i1.GMeasurePageableInputBuilder? mesurePageable) =>
      _$this._mesurePageable = mesurePageable;

  Gget_mesures_by_codeVarsBuilder();

  Gget_mesures_by_codeVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mesurePageable = $v.mesurePageable.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_mesures_by_codeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_mesures_by_codeVars;
  }

  @override
  void update(void Function(Gget_mesures_by_codeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_mesures_by_codeVars build() => _build();

  _$Gget_mesures_by_codeVars _build() {
    _$Gget_mesures_by_codeVars _$result;
    try {
      _$result = _$v ??
          new _$Gget_mesures_by_codeVars._(
              mesurePageable: mesurePageable.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mesurePageable';
        mesurePageable.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_mesures_by_codeVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
