// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_groupe_sanguin_delete_groupe_sanguin.mutation.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_groupe_sanguinVars> _$gdeleteGroupeSanguinVarsSerializer =
    new _$Gdelete_groupe_sanguinVarsSerializer();

class _$Gdelete_groupe_sanguinVarsSerializer
    implements StructuredSerializer<Gdelete_groupe_sanguinVars> {
  @override
  final Iterable<Type> types = const [
    Gdelete_groupe_sanguinVars,
    _$Gdelete_groupe_sanguinVars
  ];
  @override
  final String wireName = 'Gdelete_groupe_sanguinVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_groupe_sanguinVars object,
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
  Gdelete_groupe_sanguinVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_groupe_sanguinVarsBuilder();

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

class _$Gdelete_groupe_sanguinVars extends Gdelete_groupe_sanguinVars {
  @override
  final String id;
  @override
  final String patientId;

  factory _$Gdelete_groupe_sanguinVars(
          [void Function(Gdelete_groupe_sanguinVarsBuilder)? updates]) =>
      (new Gdelete_groupe_sanguinVarsBuilder()..update(updates))._build();

  _$Gdelete_groupe_sanguinVars._({required this.id, required this.patientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, r'Gdelete_groupe_sanguinVars', 'id');
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gdelete_groupe_sanguinVars', 'patientId');
  }

  @override
  Gdelete_groupe_sanguinVars rebuild(
          void Function(Gdelete_groupe_sanguinVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_groupe_sanguinVarsBuilder toBuilder() =>
      new Gdelete_groupe_sanguinVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_groupe_sanguinVars &&
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
    return (newBuiltValueToStringHelper(r'Gdelete_groupe_sanguinVars')
          ..add('id', id)
          ..add('patientId', patientId))
        .toString();
  }
}

class Gdelete_groupe_sanguinVarsBuilder
    implements
        Builder<Gdelete_groupe_sanguinVars, Gdelete_groupe_sanguinVarsBuilder> {
  _$Gdelete_groupe_sanguinVars? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gdelete_groupe_sanguinVarsBuilder();

  Gdelete_groupe_sanguinVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_groupe_sanguinVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_groupe_sanguinVars;
  }

  @override
  void update(void Function(Gdelete_groupe_sanguinVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_groupe_sanguinVars build() => _build();

  _$Gdelete_groupe_sanguinVars _build() {
    final _$result = _$v ??
        new _$Gdelete_groupe_sanguinVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Gdelete_groupe_sanguinVars', 'id'),
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gdelete_groupe_sanguinVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
