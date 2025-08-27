// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_entourage_get_entourage.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_entourage_contactVars> _$ggetEntourageContactVarsSerializer =
    new _$Gget_entourage_contactVarsSerializer();

class _$Gget_entourage_contactVarsSerializer
    implements StructuredSerializer<Gget_entourage_contactVars> {
  @override
  final Iterable<Type> types = const [
    Gget_entourage_contactVars,
    _$Gget_entourage_contactVars
  ];
  @override
  final String wireName = 'Gget_entourage_contactVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_entourage_contactVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_entourage_contactVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_entourage_contactVarsBuilder();

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

class _$Gget_entourage_contactVars extends Gget_entourage_contactVars {
  @override
  final String patientId;

  factory _$Gget_entourage_contactVars(
          [void Function(Gget_entourage_contactVarsBuilder)? updates]) =>
      (new Gget_entourage_contactVarsBuilder()..update(updates))._build();

  _$Gget_entourage_contactVars._({required this.patientId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_entourage_contactVars', 'patientId');
  }

  @override
  Gget_entourage_contactVars rebuild(
          void Function(Gget_entourage_contactVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_entourage_contactVarsBuilder toBuilder() =>
      new Gget_entourage_contactVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_entourage_contactVars && patientId == other.patientId;
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
    return (newBuiltValueToStringHelper(r'Gget_entourage_contactVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_entourage_contactVarsBuilder
    implements
        Builder<Gget_entourage_contactVars, Gget_entourage_contactVarsBuilder> {
  _$Gget_entourage_contactVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_entourage_contactVarsBuilder();

  Gget_entourage_contactVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_entourage_contactVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_entourage_contactVars;
  }

  @override
  void update(void Function(Gget_entourage_contactVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_entourage_contactVars build() => _build();

  _$Gget_entourage_contactVars _build() {
    final _$result = _$v ??
        new _$Gget_entourage_contactVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_entourage_contactVars', 'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
