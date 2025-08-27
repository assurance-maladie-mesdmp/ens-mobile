// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_accept_cgu.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gaccept_cguVars> _$gacceptCguVarsSerializer =
    new _$Gaccept_cguVarsSerializer();

class _$Gaccept_cguVarsSerializer
    implements StructuredSerializer<Gaccept_cguVars> {
  @override
  final Iterable<Type> types = const [Gaccept_cguVars, _$Gaccept_cguVars];
  @override
  final String wireName = 'Gaccept_cguVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gaccept_cguVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gaccept_cguVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gaccept_cguVarsBuilder();

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

class _$Gaccept_cguVars extends Gaccept_cguVars {
  @override
  final String patientId;

  factory _$Gaccept_cguVars([void Function(Gaccept_cguVarsBuilder)? updates]) =>
      (new Gaccept_cguVarsBuilder()..update(updates))._build();

  _$Gaccept_cguVars._({required this.patientId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gaccept_cguVars', 'patientId');
  }

  @override
  Gaccept_cguVars rebuild(void Function(Gaccept_cguVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gaccept_cguVarsBuilder toBuilder() =>
      new Gaccept_cguVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gaccept_cguVars && patientId == other.patientId;
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
    return (newBuiltValueToStringHelper(r'Gaccept_cguVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gaccept_cguVarsBuilder
    implements Builder<Gaccept_cguVars, Gaccept_cguVarsBuilder> {
  _$Gaccept_cguVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gaccept_cguVarsBuilder();

  Gaccept_cguVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gaccept_cguVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gaccept_cguVars;
  }

  @override
  void update(void Function(Gaccept_cguVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gaccept_cguVars build() => _build();

  _$Gaccept_cguVars _build() {
    final _$result = _$v ??
        new _$Gaccept_cguVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gaccept_cguVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
