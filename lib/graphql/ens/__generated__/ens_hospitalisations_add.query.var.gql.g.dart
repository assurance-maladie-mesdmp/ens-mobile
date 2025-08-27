// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_hospitalisations_add.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gadd_hospitalisationVars> _$gaddHospitalisationVarsSerializer =
    new _$Gadd_hospitalisationVarsSerializer();

class _$Gadd_hospitalisationVarsSerializer
    implements StructuredSerializer<Gadd_hospitalisationVars> {
  @override
  final Iterable<Type> types = const [
    Gadd_hospitalisationVars,
    _$Gadd_hospitalisationVars
  ];
  @override
  final String wireName = 'Gadd_hospitalisationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_hospitalisationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'hospitalization',
      serializers.serialize(object.hospitalization,
          specifiedType: const FullType(_i1.GHospitalizationInput)),
    ];

    return result;
  }

  @override
  Gadd_hospitalisationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_hospitalisationVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'hospitalization':
          result.hospitalization.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GHospitalizationInput))!
              as _i1.GHospitalizationInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_hospitalisationVars extends Gadd_hospitalisationVars {
  @override
  final _i1.GHospitalizationInput hospitalization;

  factory _$Gadd_hospitalisationVars(
          [void Function(Gadd_hospitalisationVarsBuilder)? updates]) =>
      (new Gadd_hospitalisationVarsBuilder()..update(updates))._build();

  _$Gadd_hospitalisationVars._({required this.hospitalization}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        hospitalization, r'Gadd_hospitalisationVars', 'hospitalization');
  }

  @override
  Gadd_hospitalisationVars rebuild(
          void Function(Gadd_hospitalisationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_hospitalisationVarsBuilder toBuilder() =>
      new Gadd_hospitalisationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_hospitalisationVars &&
        hospitalization == other.hospitalization;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hospitalization.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_hospitalisationVars')
          ..add('hospitalization', hospitalization))
        .toString();
  }
}

class Gadd_hospitalisationVarsBuilder
    implements
        Builder<Gadd_hospitalisationVars, Gadd_hospitalisationVarsBuilder> {
  _$Gadd_hospitalisationVars? _$v;

  _i1.GHospitalizationInputBuilder? _hospitalization;
  _i1.GHospitalizationInputBuilder get hospitalization =>
      _$this._hospitalization ??= new _i1.GHospitalizationInputBuilder();
  set hospitalization(_i1.GHospitalizationInputBuilder? hospitalization) =>
      _$this._hospitalization = hospitalization;

  Gadd_hospitalisationVarsBuilder();

  Gadd_hospitalisationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hospitalization = $v.hospitalization.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_hospitalisationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_hospitalisationVars;
  }

  @override
  void update(void Function(Gadd_hospitalisationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_hospitalisationVars build() => _build();

  _$Gadd_hospitalisationVars _build() {
    _$Gadd_hospitalisationVars _$result;
    try {
      _$result = _$v ??
          new _$Gadd_hospitalisationVars._(
              hospitalization: hospitalization.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hospitalization';
        hospitalization.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_hospitalisationVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
