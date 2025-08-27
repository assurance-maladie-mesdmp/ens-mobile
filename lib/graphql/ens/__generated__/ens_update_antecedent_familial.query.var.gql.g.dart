// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_update_antecedent_familial.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_antecedent_familialVars>
    _$gupdateAntecedentFamilialVarsSerializer =
    new _$Gupdate_antecedent_familialVarsSerializer();

class _$Gupdate_antecedent_familialVarsSerializer
    implements StructuredSerializer<Gupdate_antecedent_familialVars> {
  @override
  final Iterable<Type> types = const [
    Gupdate_antecedent_familialVars,
    _$Gupdate_antecedent_familialVars
  ];
  @override
  final String wireName = 'Gupdate_antecedent_familialVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_antecedent_familialVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'familyHistory',
      serializers.serialize(object.familyHistory,
          specifiedType: const FullType(_i1.GFamilyHistoryUpdateInput)),
    ];

    return result;
  }

  @override
  Gupdate_antecedent_familialVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_antecedent_familialVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'familyHistory':
          result.familyHistory.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GFamilyHistoryUpdateInput))!
              as _i1.GFamilyHistoryUpdateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_antecedent_familialVars
    extends Gupdate_antecedent_familialVars {
  @override
  final _i1.GFamilyHistoryUpdateInput familyHistory;

  factory _$Gupdate_antecedent_familialVars(
          [void Function(Gupdate_antecedent_familialVarsBuilder)? updates]) =>
      (new Gupdate_antecedent_familialVarsBuilder()..update(updates))._build();

  _$Gupdate_antecedent_familialVars._({required this.familyHistory})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        familyHistory, r'Gupdate_antecedent_familialVars', 'familyHistory');
  }

  @override
  Gupdate_antecedent_familialVars rebuild(
          void Function(Gupdate_antecedent_familialVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_antecedent_familialVarsBuilder toBuilder() =>
      new Gupdate_antecedent_familialVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_antecedent_familialVars &&
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
    return (newBuiltValueToStringHelper(r'Gupdate_antecedent_familialVars')
          ..add('familyHistory', familyHistory))
        .toString();
  }
}

class Gupdate_antecedent_familialVarsBuilder
    implements
        Builder<Gupdate_antecedent_familialVars,
            Gupdate_antecedent_familialVarsBuilder> {
  _$Gupdate_antecedent_familialVars? _$v;

  _i1.GFamilyHistoryUpdateInputBuilder? _familyHistory;
  _i1.GFamilyHistoryUpdateInputBuilder get familyHistory =>
      _$this._familyHistory ??= new _i1.GFamilyHistoryUpdateInputBuilder();
  set familyHistory(_i1.GFamilyHistoryUpdateInputBuilder? familyHistory) =>
      _$this._familyHistory = familyHistory;

  Gupdate_antecedent_familialVarsBuilder();

  Gupdate_antecedent_familialVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _familyHistory = $v.familyHistory.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_antecedent_familialVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_antecedent_familialVars;
  }

  @override
  void update(void Function(Gupdate_antecedent_familialVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_antecedent_familialVars build() => _build();

  _$Gupdate_antecedent_familialVars _build() {
    _$Gupdate_antecedent_familialVars _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_antecedent_familialVars._(
              familyHistory: familyHistory.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'familyHistory';
        familyHistory.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_antecedent_familialVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
