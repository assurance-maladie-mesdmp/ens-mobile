// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_maladies_get_maladies.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_maladiesVars> _$ggetMaladiesVarsSerializer =
    new _$Gget_maladiesVarsSerializer();

class _$Gget_maladiesVarsSerializer
    implements StructuredSerializer<Gget_maladiesVars> {
  @override
  final Iterable<Type> types = const [Gget_maladiesVars, _$Gget_maladiesVars];
  @override
  final String wireName = 'Gget_maladiesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gget_maladiesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_maladiesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_maladiesVarsBuilder();

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

class _$Gget_maladiesVars extends Gget_maladiesVars {
  @override
  final String patientId;

  factory _$Gget_maladiesVars(
          [void Function(Gget_maladiesVarsBuilder)? updates]) =>
      (new Gget_maladiesVarsBuilder()..update(updates))._build();

  _$Gget_maladiesVars._({required this.patientId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_maladiesVars', 'patientId');
  }

  @override
  Gget_maladiesVars rebuild(void Function(Gget_maladiesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_maladiesVarsBuilder toBuilder() =>
      new Gget_maladiesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_maladiesVars && patientId == other.patientId;
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
    return (newBuiltValueToStringHelper(r'Gget_maladiesVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_maladiesVarsBuilder
    implements Builder<Gget_maladiesVars, Gget_maladiesVarsBuilder> {
  _$Gget_maladiesVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_maladiesVarsBuilder();

  Gget_maladiesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_maladiesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_maladiesVars;
  }

  @override
  void update(void Function(Gget_maladiesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_maladiesVars build() => _build();

  _$Gget_maladiesVars _build() {
    final _$result = _$v ??
        new _$Gget_maladiesVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_maladiesVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
