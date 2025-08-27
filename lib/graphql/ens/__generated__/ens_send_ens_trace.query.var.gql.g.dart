// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_send_ens_trace.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gsend_ens_traceVars> _$gsendEnsTraceVarsSerializer =
    new _$Gsend_ens_traceVarsSerializer();

class _$Gsend_ens_traceVarsSerializer
    implements StructuredSerializer<Gsend_ens_traceVars> {
  @override
  final Iterable<Type> types = const [
    Gsend_ens_traceVars,
    _$Gsend_ens_traceVars
  ];
  @override
  final String wireName = 'Gsend_ens_traceVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gsend_ens_traceVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'userActionInput',
      serializers.serialize(object.userActionInput,
          specifiedType: const FullType(_i1.GUserActionInput)),
    ];

    return result;
  }

  @override
  Gsend_ens_traceVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gsend_ens_traceVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userActionInput':
          result.userActionInput.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GUserActionInput))!
              as _i1.GUserActionInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_ens_traceVars extends Gsend_ens_traceVars {
  @override
  final _i1.GUserActionInput userActionInput;

  factory _$Gsend_ens_traceVars(
          [void Function(Gsend_ens_traceVarsBuilder)? updates]) =>
      (new Gsend_ens_traceVarsBuilder()..update(updates))._build();

  _$Gsend_ens_traceVars._({required this.userActionInput}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userActionInput, r'Gsend_ens_traceVars', 'userActionInput');
  }

  @override
  Gsend_ens_traceVars rebuild(
          void Function(Gsend_ens_traceVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_ens_traceVarsBuilder toBuilder() =>
      new Gsend_ens_traceVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsend_ens_traceVars &&
        userActionInput == other.userActionInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userActionInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gsend_ens_traceVars')
          ..add('userActionInput', userActionInput))
        .toString();
  }
}

class Gsend_ens_traceVarsBuilder
    implements Builder<Gsend_ens_traceVars, Gsend_ens_traceVarsBuilder> {
  _$Gsend_ens_traceVars? _$v;

  _i1.GUserActionInputBuilder? _userActionInput;
  _i1.GUserActionInputBuilder get userActionInput =>
      _$this._userActionInput ??= new _i1.GUserActionInputBuilder();
  set userActionInput(_i1.GUserActionInputBuilder? userActionInput) =>
      _$this._userActionInput = userActionInput;

  Gsend_ens_traceVarsBuilder();

  Gsend_ens_traceVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userActionInput = $v.userActionInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsend_ens_traceVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsend_ens_traceVars;
  }

  @override
  void update(void Function(Gsend_ens_traceVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_ens_traceVars build() => _build();

  _$Gsend_ens_traceVars _build() {
    _$Gsend_ens_traceVars _$result;
    try {
      _$result = _$v ??
          new _$Gsend_ens_traceVars._(userActionInput: userActionInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userActionInput';
        userActionInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gsend_ens_traceVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
