// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_get_last_mesures.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_last_mesuresVars> _$ggetLastMesuresVarsSerializer =
    new _$Gget_last_mesuresVarsSerializer();

class _$Gget_last_mesuresVarsSerializer
    implements StructuredSerializer<Gget_last_mesuresVars> {
  @override
  final Iterable<Type> types = const [
    Gget_last_mesuresVars,
    _$Gget_last_mesuresVars
  ];
  @override
  final String wireName = 'Gget_last_mesuresVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_last_mesuresVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_last_mesuresVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_last_mesuresVarsBuilder();

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

class _$Gget_last_mesuresVars extends Gget_last_mesuresVars {
  @override
  final String patientId;

  factory _$Gget_last_mesuresVars(
          [void Function(Gget_last_mesuresVarsBuilder)? updates]) =>
      (new Gget_last_mesuresVarsBuilder()..update(updates))._build();

  _$Gget_last_mesuresVars._({required this.patientId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_last_mesuresVars', 'patientId');
  }

  @override
  Gget_last_mesuresVars rebuild(
          void Function(Gget_last_mesuresVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_last_mesuresVarsBuilder toBuilder() =>
      new Gget_last_mesuresVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_last_mesuresVars && patientId == other.patientId;
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
    return (newBuiltValueToStringHelper(r'Gget_last_mesuresVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_last_mesuresVarsBuilder
    implements Builder<Gget_last_mesuresVars, Gget_last_mesuresVarsBuilder> {
  _$Gget_last_mesuresVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_last_mesuresVarsBuilder();

  Gget_last_mesuresVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_last_mesuresVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_last_mesuresVars;
  }

  @override
  void update(void Function(Gget_last_mesuresVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_last_mesuresVars build() => _build();

  _$Gget_last_mesuresVars _build() {
    final _$result = _$v ??
        new _$Gget_last_mesuresVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_last_mesuresVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
