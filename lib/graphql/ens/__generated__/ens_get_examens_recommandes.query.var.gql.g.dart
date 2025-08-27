// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_get_examens_recommandes.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_examens_recommandesVars>
    _$ggetExamensRecommandesVarsSerializer =
    new _$Gget_examens_recommandesVarsSerializer();

class _$Gget_examens_recommandesVarsSerializer
    implements StructuredSerializer<Gget_examens_recommandesVars> {
  @override
  final Iterable<Type> types = const [
    Gget_examens_recommandesVars,
    _$Gget_examens_recommandesVars
  ];
  @override
  final String wireName = 'Gget_examens_recommandesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_examens_recommandesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_examens_recommandesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_examens_recommandesVarsBuilder();

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

class _$Gget_examens_recommandesVars extends Gget_examens_recommandesVars {
  @override
  final String patientId;

  factory _$Gget_examens_recommandesVars(
          [void Function(Gget_examens_recommandesVarsBuilder)? updates]) =>
      (new Gget_examens_recommandesVarsBuilder()..update(updates))._build();

  _$Gget_examens_recommandesVars._({required this.patientId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_examens_recommandesVars', 'patientId');
  }

  @override
  Gget_examens_recommandesVars rebuild(
          void Function(Gget_examens_recommandesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_examens_recommandesVarsBuilder toBuilder() =>
      new Gget_examens_recommandesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_examens_recommandesVars &&
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
    return (newBuiltValueToStringHelper(r'Gget_examens_recommandesVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_examens_recommandesVarsBuilder
    implements
        Builder<Gget_examens_recommandesVars,
            Gget_examens_recommandesVarsBuilder> {
  _$Gget_examens_recommandesVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_examens_recommandesVarsBuilder();

  Gget_examens_recommandesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_examens_recommandesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_examens_recommandesVars;
  }

  @override
  void update(void Function(Gget_examens_recommandesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_examens_recommandesVars build() => _build();

  _$Gget_examens_recommandesVars _build() {
    final _$result = _$v ??
        new _$Gget_examens_recommandesVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_examens_recommandesVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
