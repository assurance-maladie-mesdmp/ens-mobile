// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_vaccination_update_vaccination.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_vaccinationVars> _$gupdateVaccinationVarsSerializer =
    new _$Gupdate_vaccinationVarsSerializer();

class _$Gupdate_vaccinationVarsSerializer
    implements StructuredSerializer<Gupdate_vaccinationVars> {
  @override
  final Iterable<Type> types = const [
    Gupdate_vaccinationVars,
    _$Gupdate_vaccinationVars
  ];
  @override
  final String wireName = 'Gupdate_vaccinationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_vaccinationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vaccine',
      serializers.serialize(object.vaccine,
          specifiedType: const FullType(_i1.GVaccineUpdateInput)),
    ];

    return result;
  }

  @override
  Gupdate_vaccinationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_vaccinationVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vaccine':
          result.vaccine.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GVaccineUpdateInput))!
              as _i1.GVaccineUpdateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_vaccinationVars extends Gupdate_vaccinationVars {
  @override
  final _i1.GVaccineUpdateInput vaccine;

  factory _$Gupdate_vaccinationVars(
          [void Function(Gupdate_vaccinationVarsBuilder)? updates]) =>
      (new Gupdate_vaccinationVarsBuilder()..update(updates))._build();

  _$Gupdate_vaccinationVars._({required this.vaccine}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vaccine, r'Gupdate_vaccinationVars', 'vaccine');
  }

  @override
  Gupdate_vaccinationVars rebuild(
          void Function(Gupdate_vaccinationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_vaccinationVarsBuilder toBuilder() =>
      new Gupdate_vaccinationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_vaccinationVars && vaccine == other.vaccine;
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
    return (newBuiltValueToStringHelper(r'Gupdate_vaccinationVars')
          ..add('vaccine', vaccine))
        .toString();
  }
}

class Gupdate_vaccinationVarsBuilder
    implements
        Builder<Gupdate_vaccinationVars, Gupdate_vaccinationVarsBuilder> {
  _$Gupdate_vaccinationVars? _$v;

  _i1.GVaccineUpdateInputBuilder? _vaccine;
  _i1.GVaccineUpdateInputBuilder get vaccine =>
      _$this._vaccine ??= new _i1.GVaccineUpdateInputBuilder();
  set vaccine(_i1.GVaccineUpdateInputBuilder? vaccine) =>
      _$this._vaccine = vaccine;

  Gupdate_vaccinationVarsBuilder();

  Gupdate_vaccinationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vaccine = $v.vaccine.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_vaccinationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_vaccinationVars;
  }

  @override
  void update(void Function(Gupdate_vaccinationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_vaccinationVars build() => _build();

  _$Gupdate_vaccinationVars _build() {
    _$Gupdate_vaccinationVars _$result;
    try {
      _$result =
          _$v ?? new _$Gupdate_vaccinationVars._(vaccine: vaccine.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vaccine';
        vaccine.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_vaccinationVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
