// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_agenda_update_examen_status.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_examen_statusVars> _$gupdateExamenStatusVarsSerializer =
    new _$Gupdate_examen_statusVarsSerializer();

class _$Gupdate_examen_statusVarsSerializer
    implements StructuredSerializer<Gupdate_examen_statusVars> {
  @override
  final Iterable<Type> types = const [
    Gupdate_examen_statusVars,
    _$Gupdate_examen_statusVars
  ];
  @override
  final String wireName = 'Gupdate_examen_statusVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_examen_statusVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GUpdatePreventionStatusViewModel)),
    ];

    return result;
  }

  @override
  Gupdate_examen_statusVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_examen_statusVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GUpdatePreventionStatusViewModel))!
              as _i1.GUpdatePreventionStatusViewModel);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_examen_statusVars extends Gupdate_examen_statusVars {
  @override
  final _i1.GUpdatePreventionStatusViewModel input;

  factory _$Gupdate_examen_statusVars(
          [void Function(Gupdate_examen_statusVarsBuilder)? updates]) =>
      (new Gupdate_examen_statusVarsBuilder()..update(updates))._build();

  _$Gupdate_examen_statusVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        input, r'Gupdate_examen_statusVars', 'input');
  }

  @override
  Gupdate_examen_statusVars rebuild(
          void Function(Gupdate_examen_statusVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_examen_statusVarsBuilder toBuilder() =>
      new Gupdate_examen_statusVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_examen_statusVars && input == other.input;
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
    return (newBuiltValueToStringHelper(r'Gupdate_examen_statusVars')
          ..add('input', input))
        .toString();
  }
}

class Gupdate_examen_statusVarsBuilder
    implements
        Builder<Gupdate_examen_statusVars, Gupdate_examen_statusVarsBuilder> {
  _$Gupdate_examen_statusVars? _$v;

  _i1.GUpdatePreventionStatusViewModelBuilder? _input;
  _i1.GUpdatePreventionStatusViewModelBuilder get input =>
      _$this._input ??= new _i1.GUpdatePreventionStatusViewModelBuilder();
  set input(_i1.GUpdatePreventionStatusViewModelBuilder? input) =>
      _$this._input = input;

  Gupdate_examen_statusVarsBuilder();

  Gupdate_examen_statusVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_examen_statusVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_examen_statusVars;
  }

  @override
  void update(void Function(Gupdate_examen_statusVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_examen_statusVars build() => _build();

  _$Gupdate_examen_statusVars _build() {
    _$Gupdate_examen_statusVars _$result;
    try {
      _$result = _$v ?? new _$Gupdate_examen_statusVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_examen_statusVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
