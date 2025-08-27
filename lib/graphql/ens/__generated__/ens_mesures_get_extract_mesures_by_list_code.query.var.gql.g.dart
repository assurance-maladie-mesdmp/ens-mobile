// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_get_extract_mesures_by_list_code.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_extract_mesures_by_list_codeVars>
    _$ggetExtractMesuresByListCodeVarsSerializer =
    new _$Gget_extract_mesures_by_list_codeVarsSerializer();

class _$Gget_extract_mesures_by_list_codeVarsSerializer
    implements StructuredSerializer<Gget_extract_mesures_by_list_codeVars> {
  @override
  final Iterable<Type> types = const [
    Gget_extract_mesures_by_list_codeVars,
    _$Gget_extract_mesures_by_list_codeVars
  ];
  @override
  final String wireName = 'Gget_extract_mesures_by_list_codeVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_extract_mesures_by_list_codeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'measurePageableInputs',
      serializers.serialize(object.measurePageableInputs,
          specifiedType: const FullType(
              BuiltList, const [const FullType(_i1.GMeasurePageableInput)])),
    ];

    return result;
  }

  @override
  Gget_extract_mesures_by_list_codeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_extract_mesures_by_list_codeVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'measurePageableInputs':
          result.measurePageableInputs.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(_i1.GMeasurePageableInput)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_extract_mesures_by_list_codeVars
    extends Gget_extract_mesures_by_list_codeVars {
  @override
  final BuiltList<_i1.GMeasurePageableInput> measurePageableInputs;

  factory _$Gget_extract_mesures_by_list_codeVars(
          [void Function(Gget_extract_mesures_by_list_codeVarsBuilder)?
              updates]) =>
      (new Gget_extract_mesures_by_list_codeVarsBuilder()..update(updates))
          ._build();

  _$Gget_extract_mesures_by_list_codeVars._(
      {required this.measurePageableInputs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(measurePageableInputs,
        r'Gget_extract_mesures_by_list_codeVars', 'measurePageableInputs');
  }

  @override
  Gget_extract_mesures_by_list_codeVars rebuild(
          void Function(Gget_extract_mesures_by_list_codeVarsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_extract_mesures_by_list_codeVarsBuilder toBuilder() =>
      new Gget_extract_mesures_by_list_codeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_extract_mesures_by_list_codeVars &&
        measurePageableInputs == other.measurePageableInputs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, measurePageableInputs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_extract_mesures_by_list_codeVars')
          ..add('measurePageableInputs', measurePageableInputs))
        .toString();
  }
}

class Gget_extract_mesures_by_list_codeVarsBuilder
    implements
        Builder<Gget_extract_mesures_by_list_codeVars,
            Gget_extract_mesures_by_list_codeVarsBuilder> {
  _$Gget_extract_mesures_by_list_codeVars? _$v;

  ListBuilder<_i1.GMeasurePageableInput>? _measurePageableInputs;
  ListBuilder<_i1.GMeasurePageableInput> get measurePageableInputs =>
      _$this._measurePageableInputs ??=
          new ListBuilder<_i1.GMeasurePageableInput>();
  set measurePageableInputs(
          ListBuilder<_i1.GMeasurePageableInput>? measurePageableInputs) =>
      _$this._measurePageableInputs = measurePageableInputs;

  Gget_extract_mesures_by_list_codeVarsBuilder();

  Gget_extract_mesures_by_list_codeVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _measurePageableInputs = $v.measurePageableInputs.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_extract_mesures_by_list_codeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_extract_mesures_by_list_codeVars;
  }

  @override
  void update(
      void Function(Gget_extract_mesures_by_list_codeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_extract_mesures_by_list_codeVars build() => _build();

  _$Gget_extract_mesures_by_list_codeVars _build() {
    _$Gget_extract_mesures_by_list_codeVars _$result;
    try {
      _$result = _$v ??
          new _$Gget_extract_mesures_by_list_codeVars._(
              measurePageableInputs: measurePageableInputs.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'measurePageableInputs';
        measurePageableInputs.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_extract_mesures_by_list_codeVars',
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
