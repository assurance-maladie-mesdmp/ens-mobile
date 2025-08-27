// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_get_synthese_pml.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_synthese_pmlVars> _$ggetSynthesePmlVarsSerializer =
    new _$Gget_synthese_pmlVarsSerializer();

class _$Gget_synthese_pmlVarsSerializer
    implements StructuredSerializer<Gget_synthese_pmlVars> {
  @override
  final Iterable<Type> types = const [
    Gget_synthese_pmlVars,
    _$Gget_synthese_pmlVars
  ];
  @override
  final String wireName = 'Gget_synthese_pmlVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_synthese_pmlVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.rubrique;
    if (value != null) {
      result
        ..add('rubrique')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(_i1.GSectionToDownload)])));
    }
    return result;
  }

  @override
  Gget_synthese_pmlVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_synthese_pmlVarsBuilder();

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
        case 'rubrique':
          result.rubrique.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(_i1.GSectionToDownload)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_synthese_pmlVars extends Gget_synthese_pmlVars {
  @override
  final String patientId;
  @override
  final BuiltList<_i1.GSectionToDownload>? rubrique;

  factory _$Gget_synthese_pmlVars(
          [void Function(Gget_synthese_pmlVarsBuilder)? updates]) =>
      (new Gget_synthese_pmlVarsBuilder()..update(updates))._build();

  _$Gget_synthese_pmlVars._({required this.patientId, this.rubrique})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_synthese_pmlVars', 'patientId');
  }

  @override
  Gget_synthese_pmlVars rebuild(
          void Function(Gget_synthese_pmlVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_synthese_pmlVarsBuilder toBuilder() =>
      new Gget_synthese_pmlVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_synthese_pmlVars &&
        patientId == other.patientId &&
        rubrique == other.rubrique;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, rubrique.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_synthese_pmlVars')
          ..add('patientId', patientId)
          ..add('rubrique', rubrique))
        .toString();
  }
}

class Gget_synthese_pmlVarsBuilder
    implements Builder<Gget_synthese_pmlVars, Gget_synthese_pmlVarsBuilder> {
  _$Gget_synthese_pmlVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  ListBuilder<_i1.GSectionToDownload>? _rubrique;
  ListBuilder<_i1.GSectionToDownload> get rubrique =>
      _$this._rubrique ??= new ListBuilder<_i1.GSectionToDownload>();
  set rubrique(ListBuilder<_i1.GSectionToDownload>? rubrique) =>
      _$this._rubrique = rubrique;

  Gget_synthese_pmlVarsBuilder();

  Gget_synthese_pmlVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _rubrique = $v.rubrique?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_synthese_pmlVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_synthese_pmlVars;
  }

  @override
  void update(void Function(Gget_synthese_pmlVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_synthese_pmlVars build() => _build();

  _$Gget_synthese_pmlVars _build() {
    _$Gget_synthese_pmlVars _$result;
    try {
      _$result = _$v ??
          new _$Gget_synthese_pmlVars._(
              patientId: BuiltValueNullFieldError.checkNotNull(
                  patientId, r'Gget_synthese_pmlVars', 'patientId'),
              rubrique: _rubrique?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rubrique';
        _rubrique?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_synthese_pmlVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
