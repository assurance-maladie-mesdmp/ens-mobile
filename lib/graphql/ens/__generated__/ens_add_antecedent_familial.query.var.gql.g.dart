// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_add_antecedent_familial.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gadd_antecedent_familialVars>
    _$gaddAntecedentFamilialVarsSerializer =
    new _$Gadd_antecedent_familialVarsSerializer();

class _$Gadd_antecedent_familialVarsSerializer
    implements StructuredSerializer<Gadd_antecedent_familialVars> {
  @override
  final Iterable<Type> types = const [
    Gadd_antecedent_familialVars,
    _$Gadd_antecedent_familialVars
  ];
  @override
  final String wireName = 'Gadd_antecedent_familialVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_antecedent_familialVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'familyHistory',
      serializers.serialize(object.familyHistory,
          specifiedType: const FullType(_i1.GFamilyHistoryInput)),
    ];

    return result;
  }

  @override
  Gadd_antecedent_familialVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_antecedent_familialVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'familyHistory':
          result.familyHistory.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GFamilyHistoryInput))!
              as _i1.GFamilyHistoryInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_antecedent_familialVars extends Gadd_antecedent_familialVars {
  @override
  final _i1.GFamilyHistoryInput familyHistory;

  factory _$Gadd_antecedent_familialVars(
          [void Function(Gadd_antecedent_familialVarsBuilder)? updates]) =>
      (new Gadd_antecedent_familialVarsBuilder()..update(updates))._build();

  _$Gadd_antecedent_familialVars._({required this.familyHistory}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        familyHistory, r'Gadd_antecedent_familialVars', 'familyHistory');
  }

  @override
  Gadd_antecedent_familialVars rebuild(
          void Function(Gadd_antecedent_familialVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_antecedent_familialVarsBuilder toBuilder() =>
      new Gadd_antecedent_familialVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_antecedent_familialVars &&
        familyHistory == other.familyHistory;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, familyHistory.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_antecedent_familialVars')
          ..add('familyHistory', familyHistory))
        .toString();
  }
}

class Gadd_antecedent_familialVarsBuilder
    implements
        Builder<Gadd_antecedent_familialVars,
            Gadd_antecedent_familialVarsBuilder> {
  _$Gadd_antecedent_familialVars? _$v;

  _i1.GFamilyHistoryInputBuilder? _familyHistory;
  _i1.GFamilyHistoryInputBuilder get familyHistory =>
      _$this._familyHistory ??= new _i1.GFamilyHistoryInputBuilder();
  set familyHistory(_i1.GFamilyHistoryInputBuilder? familyHistory) =>
      _$this._familyHistory = familyHistory;

  Gadd_antecedent_familialVarsBuilder();

  Gadd_antecedent_familialVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _familyHistory = $v.familyHistory.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_antecedent_familialVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_antecedent_familialVars;
  }

  @override
  void update(void Function(Gadd_antecedent_familialVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_antecedent_familialVars build() => _build();

  _$Gadd_antecedent_familialVars _build() {
    _$Gadd_antecedent_familialVars _$result;
    try {
      _$result = _$v ??
          new _$Gadd_antecedent_familialVars._(
              familyHistory: familyHistory.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'familyHistory';
        familyHistory.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_antecedent_familialVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
