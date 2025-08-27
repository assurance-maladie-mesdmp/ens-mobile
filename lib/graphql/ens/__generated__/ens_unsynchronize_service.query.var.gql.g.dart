// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_unsynchronize_service.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gunsynchronize_serviceVars> _$gunsynchronizeServiceVarsSerializer =
    new _$Gunsynchronize_serviceVarsSerializer();

class _$Gunsynchronize_serviceVarsSerializer
    implements StructuredSerializer<Gunsynchronize_serviceVars> {
  @override
  final Iterable<Type> types = const [
    Gunsynchronize_serviceVars,
    _$Gunsynchronize_serviceVars
  ];
  @override
  final String wireName = 'Gunsynchronize_serviceVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gunsynchronize_serviceVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'oid',
      serializers.serialize(object.oid, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gunsynchronize_serviceVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gunsynchronize_serviceVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'oid':
          result.oid = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gunsynchronize_serviceVars extends Gunsynchronize_serviceVars {
  @override
  final String oid;

  factory _$Gunsynchronize_serviceVars(
          [void Function(Gunsynchronize_serviceVarsBuilder)? updates]) =>
      (new Gunsynchronize_serviceVarsBuilder()..update(updates))._build();

  _$Gunsynchronize_serviceVars._({required this.oid}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oid, r'Gunsynchronize_serviceVars', 'oid');
  }

  @override
  Gunsynchronize_serviceVars rebuild(
          void Function(Gunsynchronize_serviceVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gunsynchronize_serviceVarsBuilder toBuilder() =>
      new Gunsynchronize_serviceVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gunsynchronize_serviceVars && oid == other.oid;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oid.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gunsynchronize_serviceVars')
          ..add('oid', oid))
        .toString();
  }
}

class Gunsynchronize_serviceVarsBuilder
    implements
        Builder<Gunsynchronize_serviceVars, Gunsynchronize_serviceVarsBuilder> {
  _$Gunsynchronize_serviceVars? _$v;

  String? _oid;
  String? get oid => _$this._oid;
  set oid(String? oid) => _$this._oid = oid;

  Gunsynchronize_serviceVarsBuilder();

  Gunsynchronize_serviceVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oid = $v.oid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gunsynchronize_serviceVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gunsynchronize_serviceVars;
  }

  @override
  void update(void Function(Gunsynchronize_serviceVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gunsynchronize_serviceVars build() => _build();

  _$Gunsynchronize_serviceVars _build() {
    final _$result = _$v ??
        new _$Gunsynchronize_serviceVars._(
            oid: BuiltValueNullFieldError.checkNotNull(
                oid, r'Gunsynchronize_serviceVars', 'oid'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
