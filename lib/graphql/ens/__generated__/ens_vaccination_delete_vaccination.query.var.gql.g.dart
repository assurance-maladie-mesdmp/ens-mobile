// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_vaccination_delete_vaccination.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_vaccinationVars> _$gdeleteVaccinationVarsSerializer =
    new _$Gdelete_vaccinationVarsSerializer();

class _$Gdelete_vaccinationVarsSerializer
    implements StructuredSerializer<Gdelete_vaccinationVars> {
  @override
  final Iterable<Type> types = const [
    Gdelete_vaccinationVars,
    _$Gdelete_vaccinationVars
  ];
  @override
  final String wireName = 'Gdelete_vaccinationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_vaccinationVars object,
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
  Gdelete_vaccinationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_vaccinationVarsBuilder();

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

class _$Gdelete_vaccinationVars extends Gdelete_vaccinationVars {
  @override
  final String patientId;
  @override
  final String id;

  factory _$Gdelete_vaccinationVars(
          [void Function(Gdelete_vaccinationVarsBuilder)? updates]) =>
      (new Gdelete_vaccinationVarsBuilder()..update(updates))._build();

  _$Gdelete_vaccinationVars._({required this.patientId, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gdelete_vaccinationVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(id, r'Gdelete_vaccinationVars', 'id');
  }

  @override
  Gdelete_vaccinationVars rebuild(
          void Function(Gdelete_vaccinationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_vaccinationVarsBuilder toBuilder() =>
      new Gdelete_vaccinationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_vaccinationVars &&
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
    return (newBuiltValueToStringHelper(r'Gdelete_vaccinationVars')
          ..add('patientId', patientId)
          ..add('id', id))
        .toString();
  }
}

class Gdelete_vaccinationVarsBuilder
    implements
        Builder<Gdelete_vaccinationVars, Gdelete_vaccinationVarsBuilder> {
  _$Gdelete_vaccinationVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  Gdelete_vaccinationVarsBuilder();

  Gdelete_vaccinationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_vaccinationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_vaccinationVars;
  }

  @override
  void update(void Function(Gdelete_vaccinationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_vaccinationVars build() => _build();

  _$Gdelete_vaccinationVars _build() {
    final _$result = _$v ??
        new _$Gdelete_vaccinationVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gdelete_vaccinationVars', 'patientId'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Gdelete_vaccinationVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
