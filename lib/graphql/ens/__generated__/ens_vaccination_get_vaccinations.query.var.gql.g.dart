// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_vaccination_get_vaccinations.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_vaccinationsVars> _$ggetVaccinationsVarsSerializer =
    new _$Gget_vaccinationsVarsSerializer();

class _$Gget_vaccinationsVarsSerializer
    implements StructuredSerializer<Gget_vaccinationsVars> {
  @override
  final Iterable<Type> types = const [
    Gget_vaccinationsVars,
    _$Gget_vaccinationsVars
  ];
  @override
  final String wireName = 'Gget_vaccinationsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_vaccinationsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_vaccinationsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_vaccinationsVarsBuilder();

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

class _$Gget_vaccinationsVars extends Gget_vaccinationsVars {
  @override
  final String patientId;

  factory _$Gget_vaccinationsVars(
          [void Function(Gget_vaccinationsVarsBuilder)? updates]) =>
      (new Gget_vaccinationsVarsBuilder()..update(updates))._build();

  _$Gget_vaccinationsVars._({required this.patientId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_vaccinationsVars', 'patientId');
  }

  @override
  Gget_vaccinationsVars rebuild(
          void Function(Gget_vaccinationsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_vaccinationsVarsBuilder toBuilder() =>
      new Gget_vaccinationsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_vaccinationsVars && patientId == other.patientId;
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
    return (newBuiltValueToStringHelper(r'Gget_vaccinationsVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_vaccinationsVarsBuilder
    implements Builder<Gget_vaccinationsVars, Gget_vaccinationsVarsBuilder> {
  _$Gget_vaccinationsVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_vaccinationsVarsBuilder();

  Gget_vaccinationsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_vaccinationsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_vaccinationsVars;
  }

  @override
  void update(void Function(Gget_vaccinationsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_vaccinationsVars build() => _build();

  _$Gget_vaccinationsVars _build() {
    final _$result = _$v ??
        new _$Gget_vaccinationsVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_vaccinationsVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
