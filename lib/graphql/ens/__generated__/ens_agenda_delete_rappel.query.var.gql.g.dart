// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_agenda_delete_rappel.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_rappelVars> _$gdeleteRappelVarsSerializer =
    new _$Gdelete_rappelVarsSerializer();

class _$Gdelete_rappelVarsSerializer
    implements StructuredSerializer<Gdelete_rappelVars> {
  @override
  final Iterable<Type> types = const [Gdelete_rappelVars, _$Gdelete_rappelVars];
  @override
  final String wireName = 'Gdelete_rappelVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_rappelVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'rappelId',
      serializers.serialize(object.rappelId,
          specifiedType: const FullType(String)),
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gdelete_rappelVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_rappelVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'rappelId':
          result.rappelId = serializers.deserialize(value,
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

class _$Gdelete_rappelVars extends Gdelete_rappelVars {
  @override
  final String rappelId;
  @override
  final String patientId;

  factory _$Gdelete_rappelVars(
          [void Function(Gdelete_rappelVarsBuilder)? updates]) =>
      (new Gdelete_rappelVarsBuilder()..update(updates))._build();

  _$Gdelete_rappelVars._({required this.rappelId, required this.patientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        rappelId, r'Gdelete_rappelVars', 'rappelId');
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gdelete_rappelVars', 'patientId');
  }

  @override
  Gdelete_rappelVars rebuild(
          void Function(Gdelete_rappelVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_rappelVarsBuilder toBuilder() =>
      new Gdelete_rappelVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_rappelVars &&
        rappelId == other.rappelId &&
        patientId == other.patientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rappelId.hashCode);
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_rappelVars')
          ..add('rappelId', rappelId)
          ..add('patientId', patientId))
        .toString();
  }
}

class Gdelete_rappelVarsBuilder
    implements Builder<Gdelete_rappelVars, Gdelete_rappelVarsBuilder> {
  _$Gdelete_rappelVars? _$v;

  String? _rappelId;
  String? get rappelId => _$this._rappelId;
  set rappelId(String? rappelId) => _$this._rappelId = rappelId;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gdelete_rappelVarsBuilder();

  Gdelete_rappelVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rappelId = $v.rappelId;
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_rappelVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_rappelVars;
  }

  @override
  void update(void Function(Gdelete_rappelVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_rappelVars build() => _build();

  _$Gdelete_rappelVars _build() {
    final _$result = _$v ??
        new _$Gdelete_rappelVars._(
            rappelId: BuiltValueNullFieldError.checkNotNull(
                rappelId, r'Gdelete_rappelVars', 'rappelId'),
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gdelete_rappelVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
