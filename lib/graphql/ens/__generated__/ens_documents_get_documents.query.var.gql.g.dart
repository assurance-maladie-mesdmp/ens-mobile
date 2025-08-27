// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_documents_get_documents.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_documentsVars> _$ggetDocumentsVarsSerializer =
    new _$Gget_documentsVarsSerializer();

class _$Gget_documentsVarsSerializer
    implements StructuredSerializer<Gget_documentsVars> {
  @override
  final Iterable<Type> types = const [Gget_documentsVars, _$Gget_documentsVars];
  @override
  final String wireName = 'Gget_documentsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_documentsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_documentsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_documentsVarsBuilder();

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

class _$Gget_documentsVars extends Gget_documentsVars {
  @override
  final String patientId;

  factory _$Gget_documentsVars(
          [void Function(Gget_documentsVarsBuilder)? updates]) =>
      (new Gget_documentsVarsBuilder()..update(updates))._build();

  _$Gget_documentsVars._({required this.patientId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_documentsVars', 'patientId');
  }

  @override
  Gget_documentsVars rebuild(
          void Function(Gget_documentsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_documentsVarsBuilder toBuilder() =>
      new Gget_documentsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_documentsVars && patientId == other.patientId;
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
    return (newBuiltValueToStringHelper(r'Gget_documentsVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_documentsVarsBuilder
    implements Builder<Gget_documentsVars, Gget_documentsVarsBuilder> {
  _$Gget_documentsVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_documentsVarsBuilder();

  Gget_documentsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_documentsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_documentsVars;
  }

  @override
  void update(void Function(Gget_documentsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_documentsVars build() => _build();

  _$Gget_documentsVars _build() {
    final _$result = _$v ??
        new _$Gget_documentsVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_documentsVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
