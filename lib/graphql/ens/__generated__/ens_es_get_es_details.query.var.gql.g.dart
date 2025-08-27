// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_es_get_es_details.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_es_detailsVars> _$ggetEsDetailsVarsSerializer =
    new _$Gget_es_detailsVarsSerializer();

class _$Gget_es_detailsVarsSerializer
    implements StructuredSerializer<Gget_es_detailsVars> {
  @override
  final Iterable<Type> types = const [
    Gget_es_detailsVars,
    _$Gget_es_detailsVars
  ];
  @override
  final String wireName = 'Gget_es_detailsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_es_detailsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_es_detailsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_es_detailsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_es_detailsVars extends Gget_es_detailsVars {
  @override
  final String id;
  @override
  final String patientId;

  factory _$Gget_es_detailsVars(
          [void Function(Gget_es_detailsVarsBuilder)? updates]) =>
      (new Gget_es_detailsVarsBuilder()..update(updates))._build();

  _$Gget_es_detailsVars._({required this.id, required this.patientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Gget_es_detailsVars', 'id');
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_es_detailsVars', 'patientId');
  }

  @override
  Gget_es_detailsVars rebuild(
          void Function(Gget_es_detailsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_es_detailsVarsBuilder toBuilder() =>
      new Gget_es_detailsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_es_detailsVars &&
        id == other.id &&
        patientId == other.patientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_es_detailsVars')
          ..add('id', id)
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_es_detailsVarsBuilder
    implements Builder<Gget_es_detailsVars, Gget_es_detailsVarsBuilder> {
  _$Gget_es_detailsVars? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_es_detailsVarsBuilder();

  Gget_es_detailsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_es_detailsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_es_detailsVars;
  }

  @override
  void update(void Function(Gget_es_detailsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_es_detailsVars build() => _build();

  _$Gget_es_detailsVars _build() {
    final _$result = _$v ??
        new _$Gget_es_detailsVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Gget_es_detailsVars', 'id'),
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_es_detailsVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
