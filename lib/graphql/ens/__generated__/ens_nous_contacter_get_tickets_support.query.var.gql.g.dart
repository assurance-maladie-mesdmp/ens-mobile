// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_nous_contacter_get_tickets_support.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_tickets_supportVars> _$ggetTicketsSupportVarsSerializer =
    new _$Gget_tickets_supportVarsSerializer();

class _$Gget_tickets_supportVarsSerializer
    implements StructuredSerializer<Gget_tickets_supportVars> {
  @override
  final Iterable<Type> types = const [
    Gget_tickets_supportVars,
    _$Gget_tickets_supportVars
  ];
  @override
  final String wireName = 'Gget_tickets_supportVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_tickets_supportVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_tickets_supportVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_tickets_supportVarsBuilder();

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

class _$Gget_tickets_supportVars extends Gget_tickets_supportVars {
  @override
  final String patientId;

  factory _$Gget_tickets_supportVars(
          [void Function(Gget_tickets_supportVarsBuilder)? updates]) =>
      (new Gget_tickets_supportVarsBuilder()..update(updates))._build();

  _$Gget_tickets_supportVars._({required this.patientId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_tickets_supportVars', 'patientId');
  }

  @override
  Gget_tickets_supportVars rebuild(
          void Function(Gget_tickets_supportVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_tickets_supportVarsBuilder toBuilder() =>
      new Gget_tickets_supportVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_tickets_supportVars && patientId == other.patientId;
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
    return (newBuiltValueToStringHelper(r'Gget_tickets_supportVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_tickets_supportVarsBuilder
    implements
        Builder<Gget_tickets_supportVars, Gget_tickets_supportVarsBuilder> {
  _$Gget_tickets_supportVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_tickets_supportVarsBuilder();

  Gget_tickets_supportVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_tickets_supportVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_tickets_supportVars;
  }

  @override
  void update(void Function(Gget_tickets_supportVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_tickets_supportVars build() => _build();

  _$Gget_tickets_supportVars _build() {
    final _$result = _$v ??
        new _$Gget_tickets_supportVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_tickets_supportVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
