// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_traitement_add_traitement.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gadd_traitementVars> _$gaddTraitementVarsSerializer =
    new _$Gadd_traitementVarsSerializer();

class _$Gadd_traitementVarsSerializer
    implements StructuredSerializer<Gadd_traitementVars> {
  @override
  final Iterable<Type> types = const [
    Gadd_traitementVars,
    _$Gadd_traitementVars
  ];
  @override
  final String wireName = 'Gadd_traitementVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_traitementVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'treatment',
      serializers.serialize(object.treatment,
          specifiedType: const FullType(_i1.GTreatmentInput)),
    ];

    return result;
  }

  @override
  Gadd_traitementVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_traitementVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'treatment':
          result.treatment.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GTreatmentInput))!
              as _i1.GTreatmentInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_traitementVars extends Gadd_traitementVars {
  @override
  final _i1.GTreatmentInput treatment;

  factory _$Gadd_traitementVars(
          [void Function(Gadd_traitementVarsBuilder)? updates]) =>
      (new Gadd_traitementVarsBuilder()..update(updates))._build();

  _$Gadd_traitementVars._({required this.treatment}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        treatment, r'Gadd_traitementVars', 'treatment');
  }

  @override
  Gadd_traitementVars rebuild(
          void Function(Gadd_traitementVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_traitementVarsBuilder toBuilder() =>
      new Gadd_traitementVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_traitementVars && treatment == other.treatment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, treatment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_traitementVars')
          ..add('treatment', treatment))
        .toString();
  }
}

class Gadd_traitementVarsBuilder
    implements Builder<Gadd_traitementVars, Gadd_traitementVarsBuilder> {
  _$Gadd_traitementVars? _$v;

  _i1.GTreatmentInputBuilder? _treatment;
  _i1.GTreatmentInputBuilder get treatment =>
      _$this._treatment ??= new _i1.GTreatmentInputBuilder();
  set treatment(_i1.GTreatmentInputBuilder? treatment) =>
      _$this._treatment = treatment;

  Gadd_traitementVarsBuilder();

  Gadd_traitementVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _treatment = $v.treatment.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_traitementVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_traitementVars;
  }

  @override
  void update(void Function(Gadd_traitementVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_traitementVars build() => _build();

  _$Gadd_traitementVars _build() {
    _$Gadd_traitementVars _$result;
    try {
      _$result =
          _$v ?? new _$Gadd_traitementVars._(treatment: treatment.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'treatment';
        treatment.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_traitementVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
