// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_get_traitement_auto_doc.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_treatment_doc_auto_finalityVars>
    _$ggetTreatmentDocAutoFinalityVarsSerializer =
    new _$Gget_treatment_doc_auto_finalityVarsSerializer();

class _$Gget_treatment_doc_auto_finalityVarsSerializer
    implements StructuredSerializer<Gget_treatment_doc_auto_finalityVars> {
  @override
  final Iterable<Type> types = const [
    Gget_treatment_doc_auto_finalityVars,
    _$Gget_treatment_doc_auto_finalityVars
  ];
  @override
  final String wireName = 'Gget_treatment_doc_auto_finalityVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_treatment_doc_auto_finalityVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_treatment_doc_auto_finalityVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_treatment_doc_auto_finalityVarsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$Gget_treatment_doc_auto_finalityVars
    extends Gget_treatment_doc_auto_finalityVars {
  @override
  final String patientId;

  factory _$Gget_treatment_doc_auto_finalityVars(
          [void Function(Gget_treatment_doc_auto_finalityVarsBuilder)?
              updates]) =>
      (new Gget_treatment_doc_auto_finalityVarsBuilder()..update(updates))
          ._build();

  _$Gget_treatment_doc_auto_finalityVars._({required this.patientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_treatment_doc_auto_finalityVars', 'patientId');
  }

  @override
  Gget_treatment_doc_auto_finalityVars rebuild(
          void Function(Gget_treatment_doc_auto_finalityVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_treatment_doc_auto_finalityVarsBuilder toBuilder() =>
      new Gget_treatment_doc_auto_finalityVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_treatment_doc_auto_finalityVars &&
        patientId == other.patientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_treatment_doc_auto_finalityVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_treatment_doc_auto_finalityVarsBuilder
    implements
        Builder<Gget_treatment_doc_auto_finalityVars,
            Gget_treatment_doc_auto_finalityVarsBuilder> {
  _$Gget_treatment_doc_auto_finalityVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_treatment_doc_auto_finalityVarsBuilder();

  Gget_treatment_doc_auto_finalityVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_treatment_doc_auto_finalityVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_treatment_doc_auto_finalityVars;
  }

  @override
  void update(
      void Function(Gget_treatment_doc_auto_finalityVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_treatment_doc_auto_finalityVars build() => _build();

  _$Gget_treatment_doc_auto_finalityVars _build() {
    final _$result = _$v ??
        new _$Gget_treatment_doc_auto_finalityVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(patientId,
                r'Gget_treatment_doc_auto_finalityVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
