// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_handicap_update.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_handicapVars> _$gupdateHandicapVarsSerializer =
    new _$Gupdate_handicapVarsSerializer();

class _$Gupdate_handicapVarsSerializer
    implements StructuredSerializer<Gupdate_handicapVars> {
  @override
  final Iterable<Type> types = const [
    Gupdate_handicapVars,
    _$Gupdate_handicapVars
  ];
  @override
  final String wireName = 'Gupdate_handicapVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_handicapVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'disabilityUpdateInput',
      serializers.serialize(object.disabilityUpdateInput,
          specifiedType: const FullType(_i1.GDisabilityUpdateInput)),
    ];

    return result;
  }

  @override
  Gupdate_handicapVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_handicapVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'disabilityUpdateInput':
          result.disabilityUpdateInput.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GDisabilityUpdateInput))!
              as _i1.GDisabilityUpdateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_handicapVars extends Gupdate_handicapVars {
  @override
  final _i1.GDisabilityUpdateInput disabilityUpdateInput;

  factory _$Gupdate_handicapVars(
          [void Function(Gupdate_handicapVarsBuilder)? updates]) =>
      (new Gupdate_handicapVarsBuilder()..update(updates))._build();

  _$Gupdate_handicapVars._({required this.disabilityUpdateInput}) : super._() {
    BuiltValueNullFieldError.checkNotNull(disabilityUpdateInput,
        r'Gupdate_handicapVars', 'disabilityUpdateInput');
  }

  @override
  Gupdate_handicapVars rebuild(
          void Function(Gupdate_handicapVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_handicapVarsBuilder toBuilder() =>
      new Gupdate_handicapVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_handicapVars &&
        disabilityUpdateInput == other.disabilityUpdateInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, disabilityUpdateInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_handicapVars')
          ..add('disabilityUpdateInput', disabilityUpdateInput))
        .toString();
  }
}

class Gupdate_handicapVarsBuilder
    implements Builder<Gupdate_handicapVars, Gupdate_handicapVarsBuilder> {
  _$Gupdate_handicapVars? _$v;

  _i1.GDisabilityUpdateInputBuilder? _disabilityUpdateInput;
  _i1.GDisabilityUpdateInputBuilder get disabilityUpdateInput =>
      _$this._disabilityUpdateInput ??= new _i1.GDisabilityUpdateInputBuilder();
  set disabilityUpdateInput(
          _i1.GDisabilityUpdateInputBuilder? disabilityUpdateInput) =>
      _$this._disabilityUpdateInput = disabilityUpdateInput;

  Gupdate_handicapVarsBuilder();

  Gupdate_handicapVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _disabilityUpdateInput = $v.disabilityUpdateInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_handicapVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_handicapVars;
  }

  @override
  void update(void Function(Gupdate_handicapVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_handicapVars build() => _build();

  _$Gupdate_handicapVars _build() {
    _$Gupdate_handicapVars _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_handicapVars._(
              disabilityUpdateInput: disabilityUpdateInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'disabilityUpdateInput';
        disabilityUpdateInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_handicapVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
