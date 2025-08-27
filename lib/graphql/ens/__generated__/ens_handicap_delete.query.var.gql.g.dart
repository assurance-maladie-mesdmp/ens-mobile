// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_handicap_delete.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_handicapVars> _$gdeleteHandicapVarsSerializer =
    new _$Gdelete_handicapVarsSerializer();

class _$Gdelete_handicapVarsSerializer
    implements StructuredSerializer<Gdelete_handicapVars> {
  @override
  final Iterable<Type> types = const [
    Gdelete_handicapVars,
    _$Gdelete_handicapVars
  ];
  @override
  final String wireName = 'Gdelete_handicapVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_handicapVars object,
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
  Gdelete_handicapVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_handicapVarsBuilder();

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

class _$Gdelete_handicapVars extends Gdelete_handicapVars {
  @override
  final String patientId;
  @override
  final String id;

  factory _$Gdelete_handicapVars(
          [void Function(Gdelete_handicapVarsBuilder)? updates]) =>
      (new Gdelete_handicapVarsBuilder()..update(updates))._build();

  _$Gdelete_handicapVars._({required this.patientId, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gdelete_handicapVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(id, r'Gdelete_handicapVars', 'id');
  }

  @override
  Gdelete_handicapVars rebuild(
          void Function(Gdelete_handicapVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_handicapVarsBuilder toBuilder() =>
      new Gdelete_handicapVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_handicapVars &&
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
    return (newBuiltValueToStringHelper(r'Gdelete_handicapVars')
          ..add('patientId', patientId)
          ..add('id', id))
        .toString();
  }
}

class Gdelete_handicapVarsBuilder
    implements Builder<Gdelete_handicapVars, Gdelete_handicapVarsBuilder> {
  _$Gdelete_handicapVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  Gdelete_handicapVarsBuilder();

  Gdelete_handicapVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_handicapVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_handicapVars;
  }

  @override
  void update(void Function(Gdelete_handicapVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_handicapVars build() => _build();

  _$Gdelete_handicapVars _build() {
    final _$result = _$v ??
        new _$Gdelete_handicapVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gdelete_handicapVars', 'patientId'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Gdelete_handicapVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
