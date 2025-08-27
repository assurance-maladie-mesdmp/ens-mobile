// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_allergies_update_allergie.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_allergieVars> _$gupdateAllergieVarsSerializer =
    new _$Gupdate_allergieVarsSerializer();

class _$Gupdate_allergieVarsSerializer
    implements StructuredSerializer<Gupdate_allergieVars> {
  @override
  final Iterable<Type> types = const [
    Gupdate_allergieVars,
    _$Gupdate_allergieVars
  ];
  @override
  final String wireName = 'Gupdate_allergieVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_allergieVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'allergy',
      serializers.serialize(object.allergy,
          specifiedType: const FullType(_i1.GAllergyUpdateInput)),
    ];

    return result;
  }

  @override
  Gupdate_allergieVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_allergieVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'allergy':
          result.allergy.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GAllergyUpdateInput))!
              as _i1.GAllergyUpdateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_allergieVars extends Gupdate_allergieVars {
  @override
  final _i1.GAllergyUpdateInput allergy;

  factory _$Gupdate_allergieVars(
          [void Function(Gupdate_allergieVarsBuilder)? updates]) =>
      (new Gupdate_allergieVarsBuilder()..update(updates))._build();

  _$Gupdate_allergieVars._({required this.allergy}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        allergy, r'Gupdate_allergieVars', 'allergy');
  }

  @override
  Gupdate_allergieVars rebuild(
          void Function(Gupdate_allergieVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_allergieVarsBuilder toBuilder() =>
      new Gupdate_allergieVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_allergieVars && allergy == other.allergy;
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
    return (newBuiltValueToStringHelper(r'Gupdate_allergieVars')
          ..add('allergy', allergy))
        .toString();
  }
}

class Gupdate_allergieVarsBuilder
    implements Builder<Gupdate_allergieVars, Gupdate_allergieVarsBuilder> {
  _$Gupdate_allergieVars? _$v;

  _i1.GAllergyUpdateInputBuilder? _allergy;
  _i1.GAllergyUpdateInputBuilder get allergy =>
      _$this._allergy ??= new _i1.GAllergyUpdateInputBuilder();
  set allergy(_i1.GAllergyUpdateInputBuilder? allergy) =>
      _$this._allergy = allergy;

  Gupdate_allergieVarsBuilder();

  Gupdate_allergieVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allergy = $v.allergy.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_allergieVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_allergieVars;
  }

  @override
  void update(void Function(Gupdate_allergieVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_allergieVars build() => _build();

  _$Gupdate_allergieVars _build() {
    _$Gupdate_allergieVars _$result;
    try {
      _$result = _$v ?? new _$Gupdate_allergieVars._(allergy: allergy.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allergy';
        allergy.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_allergieVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
