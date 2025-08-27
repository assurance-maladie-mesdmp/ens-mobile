// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_agenda_delete_rdv.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_rdvVars> _$gdeleteRdvVarsSerializer =
    new _$Gdelete_rdvVarsSerializer();

class _$Gdelete_rdvVarsSerializer
    implements StructuredSerializer<Gdelete_rdvVars> {
  @override
  final Iterable<Type> types = const [Gdelete_rdvVars, _$Gdelete_rdvVars];
  @override
  final String wireName = 'Gdelete_rdvVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gdelete_rdvVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'rdvId',
      serializers.serialize(object.rdvId,
          specifiedType: const FullType(String)),
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gdelete_rdvVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_rdvVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'rdvId':
          result.rdvId = serializers.deserialize(value,
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

class _$Gdelete_rdvVars extends Gdelete_rdvVars {
  @override
  final String rdvId;
  @override
  final String patientId;

  factory _$Gdelete_rdvVars([void Function(Gdelete_rdvVarsBuilder)? updates]) =>
      (new Gdelete_rdvVarsBuilder()..update(updates))._build();

  _$Gdelete_rdvVars._({required this.rdvId, required this.patientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(rdvId, r'Gdelete_rdvVars', 'rdvId');
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gdelete_rdvVars', 'patientId');
  }

  @override
  Gdelete_rdvVars rebuild(void Function(Gdelete_rdvVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_rdvVarsBuilder toBuilder() =>
      new Gdelete_rdvVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_rdvVars &&
        rdvId == other.rdvId &&
        patientId == other.patientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rdvId.hashCode);
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_rdvVars')
          ..add('rdvId', rdvId)
          ..add('patientId', patientId))
        .toString();
  }
}

class Gdelete_rdvVarsBuilder
    implements Builder<Gdelete_rdvVars, Gdelete_rdvVarsBuilder> {
  _$Gdelete_rdvVars? _$v;

  String? _rdvId;
  String? get rdvId => _$this._rdvId;
  set rdvId(String? rdvId) => _$this._rdvId = rdvId;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gdelete_rdvVarsBuilder();

  Gdelete_rdvVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rdvId = $v.rdvId;
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_rdvVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_rdvVars;
  }

  @override
  void update(void Function(Gdelete_rdvVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_rdvVars build() => _build();

  _$Gdelete_rdvVars _build() {
    final _$result = _$v ??
        new _$Gdelete_rdvVars._(
            rdvId: BuiltValueNullFieldError.checkNotNull(
                rdvId, r'Gdelete_rdvVars', 'rdvId'),
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gdelete_rdvVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
