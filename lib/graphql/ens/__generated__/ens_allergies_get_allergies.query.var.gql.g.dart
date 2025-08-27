// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_allergies_get_allergies.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_allergiesVars> _$ggetAllergiesVarsSerializer =
    new _$Gget_allergiesVarsSerializer();

class _$Gget_allergiesVarsSerializer
    implements StructuredSerializer<Gget_allergiesVars> {
  @override
  final Iterable<Type> types = const [Gget_allergiesVars, _$Gget_allergiesVars];
  @override
  final String wireName = 'Gget_allergiesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_allergiesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_allergiesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_allergiesVarsBuilder();

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

class _$Gget_allergiesVars extends Gget_allergiesVars {
  @override
  final String patientId;

  factory _$Gget_allergiesVars(
          [void Function(Gget_allergiesVarsBuilder)? updates]) =>
      (new Gget_allergiesVarsBuilder()..update(updates))._build();

  _$Gget_allergiesVars._({required this.patientId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_allergiesVars', 'patientId');
  }

  @override
  Gget_allergiesVars rebuild(
          void Function(Gget_allergiesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_allergiesVarsBuilder toBuilder() =>
      new Gget_allergiesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_allergiesVars && patientId == other.patientId;
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
    return (newBuiltValueToStringHelper(r'Gget_allergiesVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_allergiesVarsBuilder
    implements Builder<Gget_allergiesVars, Gget_allergiesVarsBuilder> {
  _$Gget_allergiesVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_allergiesVarsBuilder();

  Gget_allergiesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_allergiesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_allergiesVars;
  }

  @override
  void update(void Function(Gget_allergiesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_allergiesVars build() => _build();

  _$Gget_allergiesVars _build() {
    final _$result = _$v ??
        new _$Gget_allergiesVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_allergiesVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
