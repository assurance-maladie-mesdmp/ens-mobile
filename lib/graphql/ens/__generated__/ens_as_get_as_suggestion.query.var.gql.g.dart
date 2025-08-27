// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_as_get_as_suggestion.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_as_suggestionsVars> _$ggetAsSuggestionsVarsSerializer =
    new _$Gget_as_suggestionsVarsSerializer();

class _$Gget_as_suggestionsVarsSerializer
    implements StructuredSerializer<Gget_as_suggestionsVars> {
  @override
  final Iterable<Type> types = const [
    Gget_as_suggestionsVars,
    _$Gget_as_suggestionsVars
  ];
  @override
  final String wireName = 'Gget_as_suggestionsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_as_suggestionsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.typeSuggestion;
    if (value != null) {
      result
        ..add('typeSuggestion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GTypeSuggestion)));
    }
    return result;
  }

  @override
  Gget_as_suggestionsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_as_suggestionsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'typeSuggestion':
          result.typeSuggestion = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GTypeSuggestion))
              as _i1.GTypeSuggestion?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_as_suggestionsVars extends Gget_as_suggestionsVars {
  @override
  final String patientId;
  @override
  final _i1.GTypeSuggestion? typeSuggestion;

  factory _$Gget_as_suggestionsVars(
          [void Function(Gget_as_suggestionsVarsBuilder)? updates]) =>
      (new Gget_as_suggestionsVarsBuilder()..update(updates))._build();

  _$Gget_as_suggestionsVars._({required this.patientId, this.typeSuggestion})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_as_suggestionsVars', 'patientId');
  }

  @override
  Gget_as_suggestionsVars rebuild(
          void Function(Gget_as_suggestionsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_as_suggestionsVarsBuilder toBuilder() =>
      new Gget_as_suggestionsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_as_suggestionsVars &&
        patientId == other.patientId &&
        typeSuggestion == other.typeSuggestion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, typeSuggestion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_as_suggestionsVars')
          ..add('patientId', patientId)
          ..add('typeSuggestion', typeSuggestion))
        .toString();
  }
}

class Gget_as_suggestionsVarsBuilder
    implements
        Builder<Gget_as_suggestionsVars, Gget_as_suggestionsVarsBuilder> {
  _$Gget_as_suggestionsVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  _i1.GTypeSuggestion? _typeSuggestion;
  _i1.GTypeSuggestion? get typeSuggestion => _$this._typeSuggestion;
  set typeSuggestion(_i1.GTypeSuggestion? typeSuggestion) =>
      _$this._typeSuggestion = typeSuggestion;

  Gget_as_suggestionsVarsBuilder();

  Gget_as_suggestionsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _typeSuggestion = $v.typeSuggestion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_as_suggestionsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_as_suggestionsVars;
  }

  @override
  void update(void Function(Gget_as_suggestionsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_as_suggestionsVars build() => _build();

  _$Gget_as_suggestionsVars _build() {
    final _$result = _$v ??
        new _$Gget_as_suggestionsVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_as_suggestionsVars', 'patientId'),
            typeSuggestion: typeSuggestion);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
