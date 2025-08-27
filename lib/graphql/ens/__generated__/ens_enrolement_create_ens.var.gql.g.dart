// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_enrolement_create_ens.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gcreate_ensVars> _$gcreateEnsVarsSerializer =
    new _$Gcreate_ensVarsSerializer();

class _$Gcreate_ensVarsSerializer
    implements StructuredSerializer<Gcreate_ensVars> {
  @override
  final Iterable<Type> types = const [Gcreate_ensVars, _$Gcreate_ensVars];
  @override
  final String wireName = 'Gcreate_ensVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gcreate_ensVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gcreate_ensVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcreate_ensVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gcreate_ensVars extends Gcreate_ensVars {
  @override
  final String input;

  factory _$Gcreate_ensVars([void Function(Gcreate_ensVarsBuilder)? updates]) =>
      (new Gcreate_ensVarsBuilder()..update(updates))._build();

  _$Gcreate_ensVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(input, r'Gcreate_ensVars', 'input');
  }

  @override
  Gcreate_ensVars rebuild(void Function(Gcreate_ensVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_ensVarsBuilder toBuilder() =>
      new Gcreate_ensVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcreate_ensVars && input == other.input;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gcreate_ensVars')
          ..add('input', input))
        .toString();
  }
}

class Gcreate_ensVarsBuilder
    implements Builder<Gcreate_ensVars, Gcreate_ensVarsBuilder> {
  _$Gcreate_ensVars? _$v;

  String? _input;
  String? get input => _$this._input;
  set input(String? input) => _$this._input = input;

  Gcreate_ensVarsBuilder();

  Gcreate_ensVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gcreate_ensVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_ensVars;
  }

  @override
  void update(void Function(Gcreate_ensVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_ensVars build() => _build();

  _$Gcreate_ensVars _build() {
    final _$result = _$v ??
        new _$Gcreate_ensVars._(
            input: BuiltValueNullFieldError.checkNotNull(
                input, r'Gcreate_ensVars', 'input'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
