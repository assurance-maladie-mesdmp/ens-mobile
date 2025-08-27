// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_groupe_sanguin_update_groupe_sanguin.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_groupe_sanguinVars> _$gupdateGroupeSanguinVarsSerializer =
    new _$Gupdate_groupe_sanguinVarsSerializer();

class _$Gupdate_groupe_sanguinVarsSerializer
    implements StructuredSerializer<Gupdate_groupe_sanguinVars> {
  @override
  final Iterable<Type> types = const [
    Gupdate_groupe_sanguinVars,
    _$Gupdate_groupe_sanguinVars
  ];
  @override
  final String wireName = 'Gupdate_groupe_sanguinVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_groupe_sanguinVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'bloodGroupUpdateInput',
      serializers.serialize(object.bloodGroupUpdateInput,
          specifiedType: const FullType(_i1.GBloodGroupUpdateInput)),
    ];

    return result;
  }

  @override
  Gupdate_groupe_sanguinVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_groupe_sanguinVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'bloodGroupUpdateInput':
          result.bloodGroupUpdateInput.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GBloodGroupUpdateInput))!
              as _i1.GBloodGroupUpdateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_groupe_sanguinVars extends Gupdate_groupe_sanguinVars {
  @override
  final _i1.GBloodGroupUpdateInput bloodGroupUpdateInput;

  factory _$Gupdate_groupe_sanguinVars(
          [void Function(Gupdate_groupe_sanguinVarsBuilder)? updates]) =>
      (new Gupdate_groupe_sanguinVarsBuilder()..update(updates))._build();

  _$Gupdate_groupe_sanguinVars._({required this.bloodGroupUpdateInput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(bloodGroupUpdateInput,
        r'Gupdate_groupe_sanguinVars', 'bloodGroupUpdateInput');
  }

  @override
  Gupdate_groupe_sanguinVars rebuild(
          void Function(Gupdate_groupe_sanguinVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_groupe_sanguinVarsBuilder toBuilder() =>
      new Gupdate_groupe_sanguinVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_groupe_sanguinVars &&
        bloodGroupUpdateInput == other.bloodGroupUpdateInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bloodGroupUpdateInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_groupe_sanguinVars')
          ..add('bloodGroupUpdateInput', bloodGroupUpdateInput))
        .toString();
  }
}

class Gupdate_groupe_sanguinVarsBuilder
    implements
        Builder<Gupdate_groupe_sanguinVars, Gupdate_groupe_sanguinVarsBuilder> {
  _$Gupdate_groupe_sanguinVars? _$v;

  _i1.GBloodGroupUpdateInputBuilder? _bloodGroupUpdateInput;
  _i1.GBloodGroupUpdateInputBuilder get bloodGroupUpdateInput =>
      _$this._bloodGroupUpdateInput ??= new _i1.GBloodGroupUpdateInputBuilder();
  set bloodGroupUpdateInput(
          _i1.GBloodGroupUpdateInputBuilder? bloodGroupUpdateInput) =>
      _$this._bloodGroupUpdateInput = bloodGroupUpdateInput;

  Gupdate_groupe_sanguinVarsBuilder();

  Gupdate_groupe_sanguinVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bloodGroupUpdateInput = $v.bloodGroupUpdateInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_groupe_sanguinVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_groupe_sanguinVars;
  }

  @override
  void update(void Function(Gupdate_groupe_sanguinVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_groupe_sanguinVars build() => _build();

  _$Gupdate_groupe_sanguinVars _build() {
    _$Gupdate_groupe_sanguinVars _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_groupe_sanguinVars._(
              bloodGroupUpdateInput: bloodGroupUpdateInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bloodGroupUpdateInput';
        bloodGroupUpdateInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_groupe_sanguinVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
