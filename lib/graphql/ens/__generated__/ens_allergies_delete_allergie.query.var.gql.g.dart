// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_allergies_delete_allergie.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_allergieVars> _$gdeleteAllergieVarsSerializer =
    new _$Gdelete_allergieVarsSerializer();

class _$Gdelete_allergieVarsSerializer
    implements StructuredSerializer<Gdelete_allergieVars> {
  @override
  final Iterable<Type> types = const [
    Gdelete_allergieVars,
    _$Gdelete_allergieVars
  ];
  @override
  final String wireName = 'Gdelete_allergieVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_allergieVars object,
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
  Gdelete_allergieVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_allergieVarsBuilder();

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

class _$Gdelete_allergieVars extends Gdelete_allergieVars {
  @override
  final String patientId;
  @override
  final String id;

  factory _$Gdelete_allergieVars(
          [void Function(Gdelete_allergieVarsBuilder)? updates]) =>
      (new Gdelete_allergieVarsBuilder()..update(updates))._build();

  _$Gdelete_allergieVars._({required this.patientId, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gdelete_allergieVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(id, r'Gdelete_allergieVars', 'id');
  }

  @override
  Gdelete_allergieVars rebuild(
          void Function(Gdelete_allergieVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_allergieVarsBuilder toBuilder() =>
      new Gdelete_allergieVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_allergieVars &&
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
    return (newBuiltValueToStringHelper(r'Gdelete_allergieVars')
          ..add('patientId', patientId)
          ..add('id', id))
        .toString();
  }
}

class Gdelete_allergieVarsBuilder
    implements Builder<Gdelete_allergieVars, Gdelete_allergieVarsBuilder> {
  _$Gdelete_allergieVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  Gdelete_allergieVarsBuilder();

  Gdelete_allergieVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_allergieVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_allergieVars;
  }

  @override
  void update(void Function(Gdelete_allergieVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_allergieVars build() => _build();

  _$Gdelete_allergieVars _build() {
    final _$result = _$v ??
        new _$Gdelete_allergieVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gdelete_allergieVars', 'patientId'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Gdelete_allergieVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
