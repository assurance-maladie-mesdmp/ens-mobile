// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_traitement_delete_traitement.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_traitementVars> _$gdeleteTraitementVarsSerializer =
    new _$Gdelete_traitementVarsSerializer();

class _$Gdelete_traitementVarsSerializer
    implements StructuredSerializer<Gdelete_traitementVars> {
  @override
  final Iterable<Type> types = const [
    Gdelete_traitementVars,
    _$Gdelete_traitementVars
  ];
  @override
  final String wireName = 'Gdelete_traitementVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_traitementVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gdelete_traitementVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_traitementVarsBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_traitementVars extends Gdelete_traitementVars {
  @override
  final String patientId;
  @override
  final String id;

  factory _$Gdelete_traitementVars(
          [void Function(Gdelete_traitementVarsBuilder)? updates]) =>
      (new Gdelete_traitementVarsBuilder()..update(updates))._build();

  _$Gdelete_traitementVars._({required this.patientId, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gdelete_traitementVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(id, r'Gdelete_traitementVars', 'id');
  }

  @override
  Gdelete_traitementVars rebuild(
          void Function(Gdelete_traitementVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_traitementVarsBuilder toBuilder() =>
      new Gdelete_traitementVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_traitementVars &&
        patientId == other.patientId &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_traitementVars')
          ..add('patientId', patientId)
          ..add('id', id))
        .toString();
  }
}

class Gdelete_traitementVarsBuilder
    implements Builder<Gdelete_traitementVars, Gdelete_traitementVarsBuilder> {
  _$Gdelete_traitementVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  Gdelete_traitementVarsBuilder();

  Gdelete_traitementVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_traitementVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_traitementVars;
  }

  @override
  void update(void Function(Gdelete_traitementVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_traitementVars build() => _build();

  _$Gdelete_traitementVars _build() {
    final _$result = _$v ??
        new _$Gdelete_traitementVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gdelete_traitementVars', 'patientId'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Gdelete_traitementVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
