// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_traitement_update_traitement.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_traitementVars> _$gupdateTraitementVarsSerializer =
    new _$Gupdate_traitementVarsSerializer();

class _$Gupdate_traitementVarsSerializer
    implements StructuredSerializer<Gupdate_traitementVars> {
  @override
  final Iterable<Type> types = const [
    Gupdate_traitementVars,
    _$Gupdate_traitementVars
  ];
  @override
  final String wireName = 'Gupdate_traitementVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_traitementVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'treatment',
      serializers.serialize(object.treatment,
          specifiedType: const FullType(_i1.GTreatmentUpdateInput)),
    ];

    return result;
  }

  @override
  Gupdate_traitementVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_traitementVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'treatment':
          result.treatment.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GTreatmentUpdateInput))!
              as _i1.GTreatmentUpdateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_traitementVars extends Gupdate_traitementVars {
  @override
  final _i1.GTreatmentUpdateInput treatment;

  factory _$Gupdate_traitementVars(
          [void Function(Gupdate_traitementVarsBuilder)? updates]) =>
      (new Gupdate_traitementVarsBuilder()..update(updates))._build();

  _$Gupdate_traitementVars._({required this.treatment}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        treatment, r'Gupdate_traitementVars', 'treatment');
  }

  @override
  Gupdate_traitementVars rebuild(
          void Function(Gupdate_traitementVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_traitementVarsBuilder toBuilder() =>
      new Gupdate_traitementVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_traitementVars && treatment == other.treatment;
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
    return (newBuiltValueToStringHelper(r'Gupdate_traitementVars')
          ..add('treatment', treatment))
        .toString();
  }
}

class Gupdate_traitementVarsBuilder
    implements Builder<Gupdate_traitementVars, Gupdate_traitementVarsBuilder> {
  _$Gupdate_traitementVars? _$v;

  _i1.GTreatmentUpdateInputBuilder? _treatment;
  _i1.GTreatmentUpdateInputBuilder get treatment =>
      _$this._treatment ??= new _i1.GTreatmentUpdateInputBuilder();
  set treatment(_i1.GTreatmentUpdateInputBuilder? treatment) =>
      _$this._treatment = treatment;

  Gupdate_traitementVarsBuilder();

  Gupdate_traitementVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _treatment = $v.treatment.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_traitementVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_traitementVars;
  }

  @override
  void update(void Function(Gupdate_traitementVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_traitementVars build() => _build();

  _$Gupdate_traitementVars _build() {
    _$Gupdate_traitementVars _$result;
    try {
      _$result =
          _$v ?? new _$Gupdate_traitementVars._(treatment: treatment.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'treatment';
        treatment.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_traitementVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
