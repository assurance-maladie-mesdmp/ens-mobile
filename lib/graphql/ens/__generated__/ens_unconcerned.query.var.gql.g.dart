// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_unconcerned.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GunconcernedVars> _$gunconcernedVarsSerializer =
    new _$GunconcernedVarsSerializer();

class _$GunconcernedVarsSerializer
    implements StructuredSerializer<GunconcernedVars> {
  @override
  final Iterable<Type> types = const [GunconcernedVars, _$GunconcernedVars];
  @override
  final String wireName = 'GunconcernedVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GunconcernedVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'section',
      serializers.serialize(object.section,
          specifiedType: const FullType(_i1.GSectionUriEnum)),
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GunconcernedVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GunconcernedVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'section':
          result.section = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GSectionUriEnum))!
              as _i1.GSectionUriEnum;
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

class _$GunconcernedVars extends GunconcernedVars {
  @override
  final _i1.GSectionUriEnum section;
  @override
  final String patientId;

  factory _$GunconcernedVars(
          [void Function(GunconcernedVarsBuilder)? updates]) =>
      (new GunconcernedVarsBuilder()..update(updates))._build();

  _$GunconcernedVars._({required this.section, required this.patientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        section, r'GunconcernedVars', 'section');
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'GunconcernedVars', 'patientId');
  }

  @override
  GunconcernedVars rebuild(void Function(GunconcernedVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GunconcernedVarsBuilder toBuilder() =>
      new GunconcernedVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GunconcernedVars &&
        section == other.section &&
        patientId == other.patientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, section.hashCode);
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GunconcernedVars')
          ..add('section', section)
          ..add('patientId', patientId))
        .toString();
  }
}

class GunconcernedVarsBuilder
    implements Builder<GunconcernedVars, GunconcernedVarsBuilder> {
  _$GunconcernedVars? _$v;

  _i1.GSectionUriEnum? _section;
  _i1.GSectionUriEnum? get section => _$this._section;
  set section(_i1.GSectionUriEnum? section) => _$this._section = section;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  GunconcernedVarsBuilder();

  GunconcernedVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _section = $v.section;
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GunconcernedVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GunconcernedVars;
  }

  @override
  void update(void Function(GunconcernedVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GunconcernedVars build() => _build();

  _$GunconcernedVars _build() {
    final _$result = _$v ??
        new _$GunconcernedVars._(
            section: BuiltValueNullFieldError.checkNotNull(
                section, r'GunconcernedVars', 'section'),
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'GunconcernedVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
