// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_document_get_document_default_confidentiality.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_document_default_confidentialityVars>
    _$ggetDocumentDefaultConfidentialityVarsSerializer =
    new _$Gget_document_default_confidentialityVarsSerializer();

class _$Gget_document_default_confidentialityVarsSerializer
    implements StructuredSerializer<Gget_document_default_confidentialityVars> {
  @override
  final Iterable<Type> types = const [
    Gget_document_default_confidentialityVars,
    _$Gget_document_default_confidentialityVars
  ];
  @override
  final String wireName = 'Gget_document_default_confidentialityVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_document_default_confidentialityVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_document_default_confidentialityVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_document_default_confidentialityVarsBuilder();

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

class _$Gget_document_default_confidentialityVars
    extends Gget_document_default_confidentialityVars {
  @override
  final String patientId;

  factory _$Gget_document_default_confidentialityVars(
          [void Function(Gget_document_default_confidentialityVarsBuilder)?
              updates]) =>
      (new Gget_document_default_confidentialityVarsBuilder()..update(updates))
          ._build();

  _$Gget_document_default_confidentialityVars._({required this.patientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_document_default_confidentialityVars', 'patientId');
  }

  @override
  Gget_document_default_confidentialityVars rebuild(
          void Function(Gget_document_default_confidentialityVarsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_document_default_confidentialityVarsBuilder toBuilder() =>
      new Gget_document_default_confidentialityVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_document_default_confidentialityVars &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_document_default_confidentialityVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_document_default_confidentialityVarsBuilder
    implements
        Builder<Gget_document_default_confidentialityVars,
            Gget_document_default_confidentialityVarsBuilder> {
  _$Gget_document_default_confidentialityVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_document_default_confidentialityVarsBuilder();

  Gget_document_default_confidentialityVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_document_default_confidentialityVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_document_default_confidentialityVars;
  }

  @override
  void update(
      void Function(Gget_document_default_confidentialityVarsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_document_default_confidentialityVars build() => _build();

  _$Gget_document_default_confidentialityVars _build() {
    final _$result = _$v ??
        new _$Gget_document_default_confidentialityVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(patientId,
                r'Gget_document_default_confidentialityVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
