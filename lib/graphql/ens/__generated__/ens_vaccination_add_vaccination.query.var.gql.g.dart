// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_vaccination_add_vaccination.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gadd_vaccinationVars> _$gaddVaccinationVarsSerializer =
    new _$Gadd_vaccinationVarsSerializer();

class _$Gadd_vaccinationVarsSerializer
    implements StructuredSerializer<Gadd_vaccinationVars> {
  @override
  final Iterable<Type> types = const [
    Gadd_vaccinationVars,
    _$Gadd_vaccinationVars
  ];
  @override
  final String wireName = 'Gadd_vaccinationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_vaccinationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vaccine',
      serializers.serialize(object.vaccine,
          specifiedType: const FullType(_i1.GVaccineInput)),
    ];

    return result;
  }

  @override
  Gadd_vaccinationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_vaccinationVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vaccine':
          result.vaccine.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GVaccineInput))!
              as _i1.GVaccineInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_vaccinationVars extends Gadd_vaccinationVars {
  @override
  final _i1.GVaccineInput vaccine;

  factory _$Gadd_vaccinationVars(
          [void Function(Gadd_vaccinationVarsBuilder)? updates]) =>
      (new Gadd_vaccinationVarsBuilder()..update(updates))._build();

  _$Gadd_vaccinationVars._({required this.vaccine}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vaccine, r'Gadd_vaccinationVars', 'vaccine');
  }

  @override
  Gadd_vaccinationVars rebuild(
          void Function(Gadd_vaccinationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_vaccinationVarsBuilder toBuilder() =>
      new Gadd_vaccinationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_vaccinationVars && vaccine == other.vaccine;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vaccine.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_vaccinationVars')
          ..add('vaccine', vaccine))
        .toString();
  }
}

class Gadd_vaccinationVarsBuilder
    implements Builder<Gadd_vaccinationVars, Gadd_vaccinationVarsBuilder> {
  _$Gadd_vaccinationVars? _$v;

  _i1.GVaccineInputBuilder? _vaccine;
  _i1.GVaccineInputBuilder get vaccine =>
      _$this._vaccine ??= new _i1.GVaccineInputBuilder();
  set vaccine(_i1.GVaccineInputBuilder? vaccine) => _$this._vaccine = vaccine;

  Gadd_vaccinationVarsBuilder();

  Gadd_vaccinationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vaccine = $v.vaccine.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_vaccinationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_vaccinationVars;
  }

  @override
  void update(void Function(Gadd_vaccinationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_vaccinationVars build() => _build();

  _$Gadd_vaccinationVars _build() {
    _$Gadd_vaccinationVars _$result;
    try {
      _$result = _$v ?? new _$Gadd_vaccinationVars._(vaccine: vaccine.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vaccine';
        vaccine.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_vaccinationVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
