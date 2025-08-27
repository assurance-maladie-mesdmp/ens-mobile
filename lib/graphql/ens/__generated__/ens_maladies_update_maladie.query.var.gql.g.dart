// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_maladies_update_maladie.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_maladieVars> _$gupdateMaladieVarsSerializer =
    new _$Gupdate_maladieVarsSerializer();

class _$Gupdate_maladieVarsSerializer
    implements StructuredSerializer<Gupdate_maladieVars> {
  @override
  final Iterable<Type> types = const [
    Gupdate_maladieVars,
    _$Gupdate_maladieVars
  ];
  @override
  final String wireName = 'Gupdate_maladieVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_maladieVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'disease',
      serializers.serialize(object.disease,
          specifiedType: const FullType(_i1.GDiseaseUpdateInput)),
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'linksInput',
      serializers.serialize(object.linksInput,
          specifiedType: const FullType(
              BuiltList, const [const FullType(_i1.GLinkInput)])),
      'deleteLinksInput',
      serializers.serialize(object.deleteLinksInput,
          specifiedType: const FullType(
              BuiltList, const [const FullType(_i1.GDeleteLinkInput)])),
    ];

    return result;
  }

  @override
  Gupdate_maladieVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_maladieVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'disease':
          result.disease.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GDiseaseUpdateInput))!
              as _i1.GDiseaseUpdateInput);
          break;
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'linksInput':
          result.linksInput.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(_i1.GLinkInput)]))!
              as BuiltList<Object?>);
          break;
        case 'deleteLinksInput':
          result.deleteLinksInput.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(_i1.GDeleteLinkInput)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_maladieVars extends Gupdate_maladieVars {
  @override
  final _i1.GDiseaseUpdateInput disease;
  @override
  final String patientId;
  @override
  final BuiltList<_i1.GLinkInput> linksInput;
  @override
  final BuiltList<_i1.GDeleteLinkInput> deleteLinksInput;

  factory _$Gupdate_maladieVars(
          [void Function(Gupdate_maladieVarsBuilder)? updates]) =>
      (new Gupdate_maladieVarsBuilder()..update(updates))._build();

  _$Gupdate_maladieVars._(
      {required this.disease,
      required this.patientId,
      required this.linksInput,
      required this.deleteLinksInput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        disease, r'Gupdate_maladieVars', 'disease');
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gupdate_maladieVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(
        linksInput, r'Gupdate_maladieVars', 'linksInput');
    BuiltValueNullFieldError.checkNotNull(
        deleteLinksInput, r'Gupdate_maladieVars', 'deleteLinksInput');
  }

  @override
  Gupdate_maladieVars rebuild(
          void Function(Gupdate_maladieVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_maladieVarsBuilder toBuilder() =>
      new Gupdate_maladieVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_maladieVars &&
        disease == other.disease &&
        patientId == other.patientId &&
        linksInput == other.linksInput &&
        deleteLinksInput == other.deleteLinksInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, disease.hashCode);
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, linksInput.hashCode);
    _$hash = $jc(_$hash, deleteLinksInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_maladieVars')
          ..add('disease', disease)
          ..add('patientId', patientId)
          ..add('linksInput', linksInput)
          ..add('deleteLinksInput', deleteLinksInput))
        .toString();
  }
}

class Gupdate_maladieVarsBuilder
    implements Builder<Gupdate_maladieVars, Gupdate_maladieVarsBuilder> {
  _$Gupdate_maladieVars? _$v;

  _i1.GDiseaseUpdateInputBuilder? _disease;
  _i1.GDiseaseUpdateInputBuilder get disease =>
      _$this._disease ??= new _i1.GDiseaseUpdateInputBuilder();
  set disease(_i1.GDiseaseUpdateInputBuilder? disease) =>
      _$this._disease = disease;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  ListBuilder<_i1.GLinkInput>? _linksInput;
  ListBuilder<_i1.GLinkInput> get linksInput =>
      _$this._linksInput ??= new ListBuilder<_i1.GLinkInput>();
  set linksInput(ListBuilder<_i1.GLinkInput>? linksInput) =>
      _$this._linksInput = linksInput;

  ListBuilder<_i1.GDeleteLinkInput>? _deleteLinksInput;
  ListBuilder<_i1.GDeleteLinkInput> get deleteLinksInput =>
      _$this._deleteLinksInput ??= new ListBuilder<_i1.GDeleteLinkInput>();
  set deleteLinksInput(ListBuilder<_i1.GDeleteLinkInput>? deleteLinksInput) =>
      _$this._deleteLinksInput = deleteLinksInput;

  Gupdate_maladieVarsBuilder();

  Gupdate_maladieVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _disease = $v.disease.toBuilder();
      _patientId = $v.patientId;
      _linksInput = $v.linksInput.toBuilder();
      _deleteLinksInput = $v.deleteLinksInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_maladieVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_maladieVars;
  }

  @override
  void update(void Function(Gupdate_maladieVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_maladieVars build() => _build();

  _$Gupdate_maladieVars _build() {
    _$Gupdate_maladieVars _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_maladieVars._(
              disease: disease.build(),
              patientId: BuiltValueNullFieldError.checkNotNull(
                  patientId, r'Gupdate_maladieVars', 'patientId'),
              linksInput: linksInput.build(),
              deleteLinksInput: deleteLinksInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'disease';
        disease.build();

        _$failedField = 'linksInput';
        linksInput.build();
        _$failedField = 'deleteLinksInput';
        deleteLinksInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_maladieVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
