// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_groupe_sanguin_add_groupe_sanguin.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gadd_groupe_sanguinVars> _$gaddGroupeSanguinVarsSerializer =
    new _$Gadd_groupe_sanguinVarsSerializer();

class _$Gadd_groupe_sanguinVarsSerializer
    implements StructuredSerializer<Gadd_groupe_sanguinVars> {
  @override
  final Iterable<Type> types = const [
    Gadd_groupe_sanguinVars,
    _$Gadd_groupe_sanguinVars
  ];
  @override
  final String wireName = 'Gadd_groupe_sanguinVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gadd_groupe_sanguinVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'bloodGroupInput',
      serializers.serialize(object.bloodGroupInput,
          specifiedType: const FullType(_i1.GBloodGroupInput)),
    ];

    return result;
  }

  @override
  Gadd_groupe_sanguinVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_groupe_sanguinVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'bloodGroupInput':
          result.bloodGroupInput.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GBloodGroupInput))!
              as _i1.GBloodGroupInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_groupe_sanguinVars extends Gadd_groupe_sanguinVars {
  @override
  final _i1.GBloodGroupInput bloodGroupInput;

  factory _$Gadd_groupe_sanguinVars(
          [void Function(Gadd_groupe_sanguinVarsBuilder)? updates]) =>
      (new Gadd_groupe_sanguinVarsBuilder()..update(updates))._build();

  _$Gadd_groupe_sanguinVars._({required this.bloodGroupInput}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bloodGroupInput, r'Gadd_groupe_sanguinVars', 'bloodGroupInput');
  }

  @override
  Gadd_groupe_sanguinVars rebuild(
          void Function(Gadd_groupe_sanguinVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_groupe_sanguinVarsBuilder toBuilder() =>
      new Gadd_groupe_sanguinVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_groupe_sanguinVars &&
        bloodGroupInput == other.bloodGroupInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bloodGroupInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_groupe_sanguinVars')
          ..add('bloodGroupInput', bloodGroupInput))
        .toString();
  }
}

class Gadd_groupe_sanguinVarsBuilder
    implements
        Builder<Gadd_groupe_sanguinVars, Gadd_groupe_sanguinVarsBuilder> {
  _$Gadd_groupe_sanguinVars? _$v;

  _i1.GBloodGroupInputBuilder? _bloodGroupInput;
  _i1.GBloodGroupInputBuilder get bloodGroupInput =>
      _$this._bloodGroupInput ??= new _i1.GBloodGroupInputBuilder();
  set bloodGroupInput(_i1.GBloodGroupInputBuilder? bloodGroupInput) =>
      _$this._bloodGroupInput = bloodGroupInput;

  Gadd_groupe_sanguinVarsBuilder();

  Gadd_groupe_sanguinVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bloodGroupInput = $v.bloodGroupInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_groupe_sanguinVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_groupe_sanguinVars;
  }

  @override
  void update(void Function(Gadd_groupe_sanguinVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_groupe_sanguinVars build() => _build();

  _$Gadd_groupe_sanguinVars _build() {
    _$Gadd_groupe_sanguinVars _$result;
    try {
      _$result = _$v ??
          new _$Gadd_groupe_sanguinVars._(
              bloodGroupInput: bloodGroupInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bloodGroupInput';
        bloodGroupInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_groupe_sanguinVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
