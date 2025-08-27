// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_allergies_add_allergie.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gadd_allergieVars> _$gaddAllergieVarsSerializer =
    new _$Gadd_allergieVarsSerializer();

class _$Gadd_allergieVarsSerializer
    implements StructuredSerializer<Gadd_allergieVars> {
  @override
  final Iterable<Type> types = const [Gadd_allergieVars, _$Gadd_allergieVars];
  @override
  final String wireName = 'Gadd_allergieVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gadd_allergieVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'allergy',
      serializers.serialize(object.allergy,
          specifiedType: const FullType(_i1.GAllergyInput)),
    ];

    return result;
  }

  @override
  Gadd_allergieVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_allergieVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'allergy':
          result.allergy.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GAllergyInput))!
              as _i1.GAllergyInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_allergieVars extends Gadd_allergieVars {
  @override
  final _i1.GAllergyInput allergy;

  factory _$Gadd_allergieVars(
          [void Function(Gadd_allergieVarsBuilder)? updates]) =>
      (new Gadd_allergieVarsBuilder()..update(updates))._build();

  _$Gadd_allergieVars._({required this.allergy}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        allergy, r'Gadd_allergieVars', 'allergy');
  }

  @override
  Gadd_allergieVars rebuild(void Function(Gadd_allergieVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_allergieVarsBuilder toBuilder() =>
      new Gadd_allergieVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_allergieVars && allergy == other.allergy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allergy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_allergieVars')
          ..add('allergy', allergy))
        .toString();
  }
}

class Gadd_allergieVarsBuilder
    implements Builder<Gadd_allergieVars, Gadd_allergieVarsBuilder> {
  _$Gadd_allergieVars? _$v;

  _i1.GAllergyInputBuilder? _allergy;
  _i1.GAllergyInputBuilder get allergy =>
      _$this._allergy ??= new _i1.GAllergyInputBuilder();
  set allergy(_i1.GAllergyInputBuilder? allergy) => _$this._allergy = allergy;

  Gadd_allergieVarsBuilder();

  Gadd_allergieVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allergy = $v.allergy.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_allergieVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_allergieVars;
  }

  @override
  void update(void Function(Gadd_allergieVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_allergieVars build() => _build();

  _$Gadd_allergieVars _build() {
    _$Gadd_allergieVars _$result;
    try {
      _$result = _$v ?? new _$Gadd_allergieVars._(allergy: allergy.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allergy';
        allergy.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_allergieVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
