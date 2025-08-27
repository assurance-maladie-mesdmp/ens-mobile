// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_directives_anticipee_get.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_directives_anticipeesVars>
    _$ggetDirectivesAnticipeesVarsSerializer =
    new _$Gget_directives_anticipeesVarsSerializer();

class _$Gget_directives_anticipeesVarsSerializer
    implements StructuredSerializer<Gget_directives_anticipeesVars> {
  @override
  final Iterable<Type> types = const [
    Gget_directives_anticipeesVars,
    _$Gget_directives_anticipeesVars
  ];
  @override
  final String wireName = 'Gget_directives_anticipeesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_directives_anticipeesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_directives_anticipeesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_directives_anticipeesVarsBuilder();

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

class _$Gget_directives_anticipeesVars extends Gget_directives_anticipeesVars {
  @override
  final String patientId;

  factory _$Gget_directives_anticipeesVars(
          [void Function(Gget_directives_anticipeesVarsBuilder)? updates]) =>
      (new Gget_directives_anticipeesVarsBuilder()..update(updates))._build();

  _$Gget_directives_anticipeesVars._({required this.patientId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_directives_anticipeesVars', 'patientId');
  }

  @override
  Gget_directives_anticipeesVars rebuild(
          void Function(Gget_directives_anticipeesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_directives_anticipeesVarsBuilder toBuilder() =>
      new Gget_directives_anticipeesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_directives_anticipeesVars &&
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
    return (newBuiltValueToStringHelper(r'Gget_directives_anticipeesVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_directives_anticipeesVarsBuilder
    implements
        Builder<Gget_directives_anticipeesVars,
            Gget_directives_anticipeesVarsBuilder> {
  _$Gget_directives_anticipeesVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_directives_anticipeesVarsBuilder();

  Gget_directives_anticipeesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_directives_anticipeesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_directives_anticipeesVars;
  }

  @override
  void update(void Function(Gget_directives_anticipeesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_directives_anticipeesVars build() => _build();

  _$Gget_directives_anticipeesVars _build() {
    final _$result = _$v ??
        new _$Gget_directives_anticipeesVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_directives_anticipeesVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
