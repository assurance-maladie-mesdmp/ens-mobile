// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_messagerie_get_piece_jointe.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_piece_jointeVars> _$ggetPieceJointeVarsSerializer =
    new _$Gget_piece_jointeVarsSerializer();

class _$Gget_piece_jointeVarsSerializer
    implements StructuredSerializer<Gget_piece_jointeVars> {
  @override
  final Iterable<Type> types = const [
    Gget_piece_jointeVars,
    _$Gget_piece_jointeVars
  ];
  @override
  final String wireName = 'Gget_piece_jointeVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_piece_jointeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GFileGetInput)),
    ];

    return result;
  }

  @override
  Gget_piece_jointeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_piece_jointeVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GFileGetInput))!
              as _i1.GFileGetInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_piece_jointeVars extends Gget_piece_jointeVars {
  @override
  final _i1.GFileGetInput input;

  factory _$Gget_piece_jointeVars(
          [void Function(Gget_piece_jointeVarsBuilder)? updates]) =>
      (new Gget_piece_jointeVarsBuilder()..update(updates))._build();

  _$Gget_piece_jointeVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        input, r'Gget_piece_jointeVars', 'input');
  }

  @override
  Gget_piece_jointeVars rebuild(
          void Function(Gget_piece_jointeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_piece_jointeVarsBuilder toBuilder() =>
      new Gget_piece_jointeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_piece_jointeVars && input == other.input;
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
    return (newBuiltValueToStringHelper(r'Gget_piece_jointeVars')
          ..add('input', input))
        .toString();
  }
}

class Gget_piece_jointeVarsBuilder
    implements Builder<Gget_piece_jointeVars, Gget_piece_jointeVarsBuilder> {
  _$Gget_piece_jointeVars? _$v;

  _i1.GFileGetInputBuilder? _input;
  _i1.GFileGetInputBuilder get input =>
      _$this._input ??= new _i1.GFileGetInputBuilder();
  set input(_i1.GFileGetInputBuilder? input) => _$this._input = input;

  Gget_piece_jointeVarsBuilder();

  Gget_piece_jointeVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_piece_jointeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_piece_jointeVars;
  }

  @override
  void update(void Function(Gget_piece_jointeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_piece_jointeVars build() => _build();

  _$Gget_piece_jointeVars _build() {
    _$Gget_piece_jointeVars _$result;
    try {
      _$result = _$v ?? new _$Gget_piece_jointeVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_piece_jointeVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
