// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ouvrant_droit_data.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_ouvrant_droits_dataVars> _$ggetOuvrantDroitsDataVarsSerializer =
    new _$Gget_ouvrant_droits_dataVarsSerializer();

class _$Gget_ouvrant_droits_dataVarsSerializer
    implements StructuredSerializer<Gget_ouvrant_droits_dataVars> {
  @override
  final Iterable<Type> types = const [
    Gget_ouvrant_droits_dataVars,
    _$Gget_ouvrant_droits_dataVars
  ];
  @override
  final String wireName = 'Gget_ouvrant_droits_dataVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_ouvrant_droits_dataVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GGetAyantsDroitsInput)),
    ];

    return result;
  }

  @override
  Gget_ouvrant_droits_dataVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_ouvrant_droits_dataVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GGetAyantsDroitsInput))!
              as _i1.GGetAyantsDroitsInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_ouvrant_droits_dataVars extends Gget_ouvrant_droits_dataVars {
  @override
  final String patientId;
  @override
  final _i1.GGetAyantsDroitsInput input;

  factory _$Gget_ouvrant_droits_dataVars(
          [void Function(Gget_ouvrant_droits_dataVarsBuilder)? updates]) =>
      (new Gget_ouvrant_droits_dataVarsBuilder()..update(updates))._build();

  _$Gget_ouvrant_droits_dataVars._(
      {required this.patientId, required this.input})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_ouvrant_droits_dataVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(
        input, r'Gget_ouvrant_droits_dataVars', 'input');
  }

  @override
  Gget_ouvrant_droits_dataVars rebuild(
          void Function(Gget_ouvrant_droits_dataVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_ouvrant_droits_dataVarsBuilder toBuilder() =>
      new Gget_ouvrant_droits_dataVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_ouvrant_droits_dataVars &&
        patientId == other.patientId &&
        input == other.input;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_ouvrant_droits_dataVars')
          ..add('patientId', patientId)
          ..add('input', input))
        .toString();
  }
}

class Gget_ouvrant_droits_dataVarsBuilder
    implements
        Builder<Gget_ouvrant_droits_dataVars,
            Gget_ouvrant_droits_dataVarsBuilder> {
  _$Gget_ouvrant_droits_dataVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  _i1.GGetAyantsDroitsInputBuilder? _input;
  _i1.GGetAyantsDroitsInputBuilder get input =>
      _$this._input ??= new _i1.GGetAyantsDroitsInputBuilder();
  set input(_i1.GGetAyantsDroitsInputBuilder? input) => _$this._input = input;

  Gget_ouvrant_droits_dataVarsBuilder();

  Gget_ouvrant_droits_dataVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_ouvrant_droits_dataVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_ouvrant_droits_dataVars;
  }

  @override
  void update(void Function(Gget_ouvrant_droits_dataVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_ouvrant_droits_dataVars build() => _build();

  _$Gget_ouvrant_droits_dataVars _build() {
    _$Gget_ouvrant_droits_dataVars _$result;
    try {
      _$result = _$v ??
          new _$Gget_ouvrant_droits_dataVars._(
              patientId: BuiltValueNullFieldError.checkNotNull(
                  patientId, r'Gget_ouvrant_droits_dataVars', 'patientId'),
              input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_ouvrant_droits_dataVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
