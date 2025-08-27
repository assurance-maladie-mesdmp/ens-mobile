// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_get_antecedents_familiaux.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_antecedents_familiauxVars>
    _$ggetAntecedentsFamiliauxVarsSerializer =
    new _$Gget_antecedents_familiauxVarsSerializer();

class _$Gget_antecedents_familiauxVarsSerializer
    implements StructuredSerializer<Gget_antecedents_familiauxVars> {
  @override
  final Iterable<Type> types = const [
    Gget_antecedents_familiauxVars,
    _$Gget_antecedents_familiauxVars
  ];
  @override
  final String wireName = 'Gget_antecedents_familiauxVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_antecedents_familiauxVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_antecedents_familiauxVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_antecedents_familiauxVarsBuilder();

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

class _$Gget_antecedents_familiauxVars extends Gget_antecedents_familiauxVars {
  @override
  final String patientId;

  factory _$Gget_antecedents_familiauxVars(
          [void Function(Gget_antecedents_familiauxVarsBuilder)? updates]) =>
      (new Gget_antecedents_familiauxVarsBuilder()..update(updates))._build();

  _$Gget_antecedents_familiauxVars._({required this.patientId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_antecedents_familiauxVars', 'patientId');
  }

  @override
  Gget_antecedents_familiauxVars rebuild(
          void Function(Gget_antecedents_familiauxVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_antecedents_familiauxVarsBuilder toBuilder() =>
      new Gget_antecedents_familiauxVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_antecedents_familiauxVars &&
        patientId == other.patientId;
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
    return (newBuiltValueToStringHelper(r'Gget_antecedents_familiauxVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_antecedents_familiauxVarsBuilder
    implements
        Builder<Gget_antecedents_familiauxVars,
            Gget_antecedents_familiauxVarsBuilder> {
  _$Gget_antecedents_familiauxVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_antecedents_familiauxVarsBuilder();

  Gget_antecedents_familiauxVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_antecedents_familiauxVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_antecedents_familiauxVars;
  }

  @override
  void update(void Function(Gget_antecedents_familiauxVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_antecedents_familiauxVars build() => _build();

  _$Gget_antecedents_familiauxVars _build() {
    final _$result = _$v ??
        new _$Gget_antecedents_familiauxVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_antecedents_familiauxVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
