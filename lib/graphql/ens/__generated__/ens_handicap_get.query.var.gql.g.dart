// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_handicap_get.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_handicapsVars> _$ggetHandicapsVarsSerializer =
    new _$Gget_handicapsVarsSerializer();

class _$Gget_handicapsVarsSerializer
    implements StructuredSerializer<Gget_handicapsVars> {
  @override
  final Iterable<Type> types = const [Gget_handicapsVars, _$Gget_handicapsVars];
  @override
  final String wireName = 'Gget_handicapsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_handicapsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_handicapsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_handicapsVarsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$Gget_handicapsVars extends Gget_handicapsVars {
  @override
  final String patientId;

  factory _$Gget_handicapsVars(
          [void Function(Gget_handicapsVarsBuilder)? updates]) =>
      (new Gget_handicapsVarsBuilder()..update(updates))._build();

  _$Gget_handicapsVars._({required this.patientId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_handicapsVars', 'patientId');
  }

  @override
  Gget_handicapsVars rebuild(
          void Function(Gget_handicapsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_handicapsVarsBuilder toBuilder() =>
      new Gget_handicapsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_handicapsVars && patientId == other.patientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_handicapsVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_handicapsVarsBuilder
    implements Builder<Gget_handicapsVars, Gget_handicapsVarsBuilder> {
  _$Gget_handicapsVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_handicapsVarsBuilder();

  Gget_handicapsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_handicapsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_handicapsVars;
  }

  @override
  void update(void Function(Gget_handicapsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_handicapsVars build() => _build();

  _$Gget_handicapsVars _build() {
    final _$result = _$v ??
        new _$Gget_handicapsVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_handicapsVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
