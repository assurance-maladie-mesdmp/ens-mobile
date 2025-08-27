// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_maladies_add_maladie.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gadd_maladieVars> _$gaddMaladieVarsSerializer =
    new _$Gadd_maladieVarsSerializer();

class _$Gadd_maladieVarsSerializer
    implements StructuredSerializer<Gadd_maladieVars> {
  @override
  final Iterable<Type> types = const [Gadd_maladieVars, _$Gadd_maladieVars];
  @override
  final String wireName = 'Gadd_maladieVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gadd_maladieVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'disease',
      serializers.serialize(object.disease,
          specifiedType: const FullType(_i1.GDiseaseInput)),
    ];

    return result;
  }

  @override
  Gadd_maladieVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gadd_maladieVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'disease':
          result.disease.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GDiseaseInput))!
              as _i1.GDiseaseInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gadd_maladieVars extends Gadd_maladieVars {
  @override
  final _i1.GDiseaseInput disease;

  factory _$Gadd_maladieVars(
          [void Function(Gadd_maladieVarsBuilder)? updates]) =>
      (new Gadd_maladieVarsBuilder()..update(updates))._build();

  _$Gadd_maladieVars._({required this.disease}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        disease, r'Gadd_maladieVars', 'disease');
  }

  @override
  Gadd_maladieVars rebuild(void Function(Gadd_maladieVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gadd_maladieVarsBuilder toBuilder() =>
      new Gadd_maladieVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gadd_maladieVars && disease == other.disease;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, disease.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gadd_maladieVars')
          ..add('disease', disease))
        .toString();
  }
}

class Gadd_maladieVarsBuilder
    implements Builder<Gadd_maladieVars, Gadd_maladieVarsBuilder> {
  _$Gadd_maladieVars? _$v;

  _i1.GDiseaseInputBuilder? _disease;
  _i1.GDiseaseInputBuilder get disease =>
      _$this._disease ??= new _i1.GDiseaseInputBuilder();
  set disease(_i1.GDiseaseInputBuilder? disease) => _$this._disease = disease;

  Gadd_maladieVarsBuilder();

  Gadd_maladieVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _disease = $v.disease.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gadd_maladieVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gadd_maladieVars;
  }

  @override
  void update(void Function(Gadd_maladieVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gadd_maladieVars build() => _build();

  _$Gadd_maladieVars _build() {
    _$Gadd_maladieVars _$result;
    try {
      _$result = _$v ?? new _$Gadd_maladieVars._(disease: disease.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'disease';
        disease.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gadd_maladieVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
