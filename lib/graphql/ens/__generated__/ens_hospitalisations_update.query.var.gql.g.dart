// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_hospitalisations_update.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_hospitalisationVars> _$gupdateHospitalisationVarsSerializer =
    new _$Gupdate_hospitalisationVarsSerializer();

class _$Gupdate_hospitalisationVarsSerializer
    implements StructuredSerializer<Gupdate_hospitalisationVars> {
  @override
  final Iterable<Type> types = const [
    Gupdate_hospitalisationVars,
    _$Gupdate_hospitalisationVars
  ];
  @override
  final String wireName = 'Gupdate_hospitalisationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_hospitalisationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'hospitalization',
      serializers.serialize(object.hospitalization,
          specifiedType: const FullType(_i1.GHospitalizationUpdateInput)),
      'linksInput',
      serializers.serialize(object.linksInput,
          specifiedType: const FullType(
              BuiltList, const [const FullType(_i1.GLinkInput)])),
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'deleteLinksInput',
      serializers.serialize(object.deleteLinksInput,
          specifiedType: const FullType(
              BuiltList, const [const FullType(_i1.GDeleteLinkInput)])),
    ];

    return result;
  }

  @override
  Gupdate_hospitalisationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_hospitalisationVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'hospitalization':
          result.hospitalization.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GHospitalizationUpdateInput))!
              as _i1.GHospitalizationUpdateInput);
          break;
        case 'linksInput':
          result.linksInput.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(_i1.GLinkInput)]))!
              as BuiltList<Object?>);
          break;
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
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

class _$Gupdate_hospitalisationVars extends Gupdate_hospitalisationVars {
  @override
  final _i1.GHospitalizationUpdateInput hospitalization;
  @override
  final BuiltList<_i1.GLinkInput> linksInput;
  @override
  final String patientId;
  @override
  final BuiltList<_i1.GDeleteLinkInput> deleteLinksInput;

  factory _$Gupdate_hospitalisationVars(
          [void Function(Gupdate_hospitalisationVarsBuilder)? updates]) =>
      (new Gupdate_hospitalisationVarsBuilder()..update(updates))._build();

  _$Gupdate_hospitalisationVars._(
      {required this.hospitalization,
      required this.linksInput,
      required this.patientId,
      required this.deleteLinksInput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        hospitalization, r'Gupdate_hospitalisationVars', 'hospitalization');
    BuiltValueNullFieldError.checkNotNull(
        linksInput, r'Gupdate_hospitalisationVars', 'linksInput');
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gupdate_hospitalisationVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(
        deleteLinksInput, r'Gupdate_hospitalisationVars', 'deleteLinksInput');
  }

  @override
  Gupdate_hospitalisationVars rebuild(
          void Function(Gupdate_hospitalisationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_hospitalisationVarsBuilder toBuilder() =>
      new Gupdate_hospitalisationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_hospitalisationVars &&
        hospitalization == other.hospitalization &&
        linksInput == other.linksInput &&
        patientId == other.patientId &&
        deleteLinksInput == other.deleteLinksInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hospitalization.hashCode);
    _$hash = $jc(_$hash, linksInput.hashCode);
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, deleteLinksInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_hospitalisationVars')
          ..add('hospitalization', hospitalization)
          ..add('linksInput', linksInput)
          ..add('patientId', patientId)
          ..add('deleteLinksInput', deleteLinksInput))
        .toString();
  }
}

class Gupdate_hospitalisationVarsBuilder
    implements
        Builder<Gupdate_hospitalisationVars,
            Gupdate_hospitalisationVarsBuilder> {
  _$Gupdate_hospitalisationVars? _$v;

  _i1.GHospitalizationUpdateInputBuilder? _hospitalization;
  _i1.GHospitalizationUpdateInputBuilder get hospitalization =>
      _$this._hospitalization ??= new _i1.GHospitalizationUpdateInputBuilder();
  set hospitalization(
          _i1.GHospitalizationUpdateInputBuilder? hospitalization) =>
      _$this._hospitalization = hospitalization;

  ListBuilder<_i1.GLinkInput>? _linksInput;
  ListBuilder<_i1.GLinkInput> get linksInput =>
      _$this._linksInput ??= new ListBuilder<_i1.GLinkInput>();
  set linksInput(ListBuilder<_i1.GLinkInput>? linksInput) =>
      _$this._linksInput = linksInput;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  ListBuilder<_i1.GDeleteLinkInput>? _deleteLinksInput;
  ListBuilder<_i1.GDeleteLinkInput> get deleteLinksInput =>
      _$this._deleteLinksInput ??= new ListBuilder<_i1.GDeleteLinkInput>();
  set deleteLinksInput(ListBuilder<_i1.GDeleteLinkInput>? deleteLinksInput) =>
      _$this._deleteLinksInput = deleteLinksInput;

  Gupdate_hospitalisationVarsBuilder();

  Gupdate_hospitalisationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hospitalization = $v.hospitalization.toBuilder();
      _linksInput = $v.linksInput.toBuilder();
      _patientId = $v.patientId;
      _deleteLinksInput = $v.deleteLinksInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_hospitalisationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_hospitalisationVars;
  }

  @override
  void update(void Function(Gupdate_hospitalisationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_hospitalisationVars build() => _build();

  _$Gupdate_hospitalisationVars _build() {
    _$Gupdate_hospitalisationVars _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_hospitalisationVars._(
              hospitalization: hospitalization.build(),
              linksInput: linksInput.build(),
              patientId: BuiltValueNullFieldError.checkNotNull(
                  patientId, r'Gupdate_hospitalisationVars', 'patientId'),
              deleteLinksInput: deleteLinksInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hospitalization';
        hospitalization.build();
        _$failedField = 'linksInput';
        linksInput.build();

        _$failedField = 'deleteLinksInput';
        deleteLinksInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_hospitalisationVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
