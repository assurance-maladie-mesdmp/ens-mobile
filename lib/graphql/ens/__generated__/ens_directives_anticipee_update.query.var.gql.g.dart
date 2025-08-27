// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_directives_anticipee_update.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gpost_directives_anticipeesVars>
    _$gpostDirectivesAnticipeesVarsSerializer =
    new _$Gpost_directives_anticipeesVarsSerializer();

class _$Gpost_directives_anticipeesVarsSerializer
    implements StructuredSerializer<Gpost_directives_anticipeesVars> {
  @override
  final Iterable<Type> types = const [
    Gpost_directives_anticipeesVars,
    _$Gpost_directives_anticipeesVars
  ];
  @override
  final String wireName = 'Gpost_directives_anticipeesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gpost_directives_anticipeesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'advanceDirectiveInput',
      serializers.serialize(object.advanceDirectiveInput,
          specifiedType: const FullType(_i1.GAdvanceDirectiveInput)),
    ];

    return result;
  }

  @override
  Gpost_directives_anticipeesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gpost_directives_anticipeesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'advanceDirectiveInput':
          result.advanceDirectiveInput.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GAdvanceDirectiveInput))!
              as _i1.GAdvanceDirectiveInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gpost_directives_anticipeesVars
    extends Gpost_directives_anticipeesVars {
  @override
  final _i1.GAdvanceDirectiveInput advanceDirectiveInput;

  factory _$Gpost_directives_anticipeesVars(
          [void Function(Gpost_directives_anticipeesVarsBuilder)? updates]) =>
      (new Gpost_directives_anticipeesVarsBuilder()..update(updates))._build();

  _$Gpost_directives_anticipeesVars._({required this.advanceDirectiveInput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(advanceDirectiveInput,
        r'Gpost_directives_anticipeesVars', 'advanceDirectiveInput');
  }

  @override
  Gpost_directives_anticipeesVars rebuild(
          void Function(Gpost_directives_anticipeesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gpost_directives_anticipeesVarsBuilder toBuilder() =>
      new Gpost_directives_anticipeesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gpost_directives_anticipeesVars &&
        advanceDirectiveInput == other.advanceDirectiveInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, advanceDirectiveInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gpost_directives_anticipeesVars')
          ..add('advanceDirectiveInput', advanceDirectiveInput))
        .toString();
  }
}

class Gpost_directives_anticipeesVarsBuilder
    implements
        Builder<Gpost_directives_anticipeesVars,
            Gpost_directives_anticipeesVarsBuilder> {
  _$Gpost_directives_anticipeesVars? _$v;

  _i1.GAdvanceDirectiveInputBuilder? _advanceDirectiveInput;
  _i1.GAdvanceDirectiveInputBuilder get advanceDirectiveInput =>
      _$this._advanceDirectiveInput ??= new _i1.GAdvanceDirectiveInputBuilder();
  set advanceDirectiveInput(
          _i1.GAdvanceDirectiveInputBuilder? advanceDirectiveInput) =>
      _$this._advanceDirectiveInput = advanceDirectiveInput;

  Gpost_directives_anticipeesVarsBuilder();

  Gpost_directives_anticipeesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _advanceDirectiveInput = $v.advanceDirectiveInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gpost_directives_anticipeesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gpost_directives_anticipeesVars;
  }

  @override
  void update(void Function(Gpost_directives_anticipeesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gpost_directives_anticipeesVars build() => _build();

  _$Gpost_directives_anticipeesVars _build() {
    _$Gpost_directives_anticipeesVars _$result;
    try {
      _$result = _$v ??
          new _$Gpost_directives_anticipeesVars._(
              advanceDirectiveInput: advanceDirectiveInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'advanceDirectiveInput';
        advanceDirectiveInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gpost_directives_anticipeesVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
