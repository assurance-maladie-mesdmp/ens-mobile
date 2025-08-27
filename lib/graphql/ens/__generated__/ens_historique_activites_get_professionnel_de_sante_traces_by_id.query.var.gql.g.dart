// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_historique_activites_get_professionnel_de_sante_traces_by_id.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_professionnel_de_sante_traces_by_idVars>
    _$ggetProfessionnelDeSanteTracesByIdVarsSerializer =
    new _$Gget_professionnel_de_sante_traces_by_idVarsSerializer();

class _$Gget_professionnel_de_sante_traces_by_idVarsSerializer
    implements
        StructuredSerializer<Gget_professionnel_de_sante_traces_by_idVars> {
  @override
  final Iterable<Type> types = const [
    Gget_professionnel_de_sante_traces_by_idVars,
    _$Gget_professionnel_de_sante_traces_by_idVars
  ];
  @override
  final String wireName = 'Gget_professionnel_de_sante_traces_by_idVars';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_professionnel_de_sante_traces_by_idVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GHealthProfessionalTraceInput)),
    ];

    return result;
  }

  @override
  Gget_professionnel_de_sante_traces_by_idVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_professionnel_de_sante_traces_by_idVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GHealthProfessionalTraceInput))!
              as _i1.GHealthProfessionalTraceInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_professionnel_de_sante_traces_by_idVars
    extends Gget_professionnel_de_sante_traces_by_idVars {
  @override
  final _i1.GHealthProfessionalTraceInput input;

  factory _$Gget_professionnel_de_sante_traces_by_idVars(
          [void Function(Gget_professionnel_de_sante_traces_by_idVarsBuilder)?
              updates]) =>
      (new Gget_professionnel_de_sante_traces_by_idVarsBuilder()
            ..update(updates))
          ._build();

  _$Gget_professionnel_de_sante_traces_by_idVars._({required this.input})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        input, r'Gget_professionnel_de_sante_traces_by_idVars', 'input');
  }

  @override
  Gget_professionnel_de_sante_traces_by_idVars rebuild(
          void Function(Gget_professionnel_de_sante_traces_by_idVarsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_professionnel_de_sante_traces_by_idVarsBuilder toBuilder() =>
      new Gget_professionnel_de_sante_traces_by_idVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_professionnel_de_sante_traces_by_idVars &&
        input == other.input;
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
    return (newBuiltValueToStringHelper(
            r'Gget_professionnel_de_sante_traces_by_idVars')
          ..add('input', input))
        .toString();
  }
}

class Gget_professionnel_de_sante_traces_by_idVarsBuilder
    implements
        Builder<Gget_professionnel_de_sante_traces_by_idVars,
            Gget_professionnel_de_sante_traces_by_idVarsBuilder> {
  _$Gget_professionnel_de_sante_traces_by_idVars? _$v;

  _i1.GHealthProfessionalTraceInputBuilder? _input;
  _i1.GHealthProfessionalTraceInputBuilder get input =>
      _$this._input ??= new _i1.GHealthProfessionalTraceInputBuilder();
  set input(_i1.GHealthProfessionalTraceInputBuilder? input) =>
      _$this._input = input;

  Gget_professionnel_de_sante_traces_by_idVarsBuilder();

  Gget_professionnel_de_sante_traces_by_idVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_professionnel_de_sante_traces_by_idVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_professionnel_de_sante_traces_by_idVars;
  }

  @override
  void update(
      void Function(Gget_professionnel_de_sante_traces_by_idVarsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_professionnel_de_sante_traces_by_idVars build() => _build();

  _$Gget_professionnel_de_sante_traces_by_idVars _build() {
    _$Gget_professionnel_de_sante_traces_by_idVars _$result;
    try {
      _$result = _$v ??
          new _$Gget_professionnel_de_sante_traces_by_idVars._(
              input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_professionnel_de_sante_traces_by_idVars',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
