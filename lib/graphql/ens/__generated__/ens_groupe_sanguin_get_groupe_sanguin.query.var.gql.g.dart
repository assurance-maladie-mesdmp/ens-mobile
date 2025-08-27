// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_groupe_sanguin_get_groupe_sanguin.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_groupe_sanguinVars> _$ggetGroupeSanguinVarsSerializer =
    new _$Gget_groupe_sanguinVarsSerializer();

class _$Gget_groupe_sanguinVarsSerializer
    implements StructuredSerializer<Gget_groupe_sanguinVars> {
  @override
  final Iterable<Type> types = const [
    Gget_groupe_sanguinVars,
    _$Gget_groupe_sanguinVars
  ];
  @override
  final String wireName = 'Gget_groupe_sanguinVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_groupe_sanguinVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_groupe_sanguinVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_groupe_sanguinVarsBuilder();

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

class _$Gget_groupe_sanguinVars extends Gget_groupe_sanguinVars {
  @override
  final String patientId;

  factory _$Gget_groupe_sanguinVars(
          [void Function(Gget_groupe_sanguinVarsBuilder)? updates]) =>
      (new Gget_groupe_sanguinVarsBuilder()..update(updates))._build();

  _$Gget_groupe_sanguinVars._({required this.patientId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_groupe_sanguinVars', 'patientId');
  }

  @override
  Gget_groupe_sanguinVars rebuild(
          void Function(Gget_groupe_sanguinVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_groupe_sanguinVarsBuilder toBuilder() =>
      new Gget_groupe_sanguinVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_groupe_sanguinVars && patientId == other.patientId;
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
    return (newBuiltValueToStringHelper(r'Gget_groupe_sanguinVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_groupe_sanguinVarsBuilder
    implements
        Builder<Gget_groupe_sanguinVars, Gget_groupe_sanguinVarsBuilder> {
  _$Gget_groupe_sanguinVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_groupe_sanguinVarsBuilder();

  Gget_groupe_sanguinVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_groupe_sanguinVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_groupe_sanguinVars;
  }

  @override
  void update(void Function(Gget_groupe_sanguinVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_groupe_sanguinVars build() => _build();

  _$Gget_groupe_sanguinVars _build() {
    final _$result = _$v ??
        new _$Gget_groupe_sanguinVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_groupe_sanguinVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
