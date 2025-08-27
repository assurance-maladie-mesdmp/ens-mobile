// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_catalogue_service_get_detail_services.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_detail_serviceVars> _$ggetDetailServiceVarsSerializer =
    new _$Gget_detail_serviceVarsSerializer();

class _$Gget_detail_serviceVarsSerializer
    implements StructuredSerializer<Gget_detail_serviceVars> {
  @override
  final Iterable<Type> types = const [
    Gget_detail_serviceVars,
    _$Gget_detail_serviceVars
  ];
  @override
  final String wireName = 'Gget_detail_serviceVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_detail_serviceVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'serviceId',
      serializers.serialize(object.serviceId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_detail_serviceVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_detail_serviceVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'serviceId':
          result.serviceId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_detail_serviceVars extends Gget_detail_serviceVars {
  @override
  final String serviceId;

  factory _$Gget_detail_serviceVars(
          [void Function(Gget_detail_serviceVarsBuilder)? updates]) =>
      (new Gget_detail_serviceVarsBuilder()..update(updates))._build();

  _$Gget_detail_serviceVars._({required this.serviceId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        serviceId, r'Gget_detail_serviceVars', 'serviceId');
  }

  @override
  Gget_detail_serviceVars rebuild(
          void Function(Gget_detail_serviceVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_detail_serviceVarsBuilder toBuilder() =>
      new Gget_detail_serviceVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_detail_serviceVars && serviceId == other.serviceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serviceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_detail_serviceVars')
          ..add('serviceId', serviceId))
        .toString();
  }
}

class Gget_detail_serviceVarsBuilder
    implements
        Builder<Gget_detail_serviceVars, Gget_detail_serviceVarsBuilder> {
  _$Gget_detail_serviceVars? _$v;

  String? _serviceId;
  String? get serviceId => _$this._serviceId;
  set serviceId(String? serviceId) => _$this._serviceId = serviceId;

  Gget_detail_serviceVarsBuilder();

  Gget_detail_serviceVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serviceId = $v.serviceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_detail_serviceVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_detail_serviceVars;
  }

  @override
  void update(void Function(Gget_detail_serviceVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_detail_serviceVars build() => _build();

  _$Gget_detail_serviceVars _build() {
    final _$result = _$v ??
        new _$Gget_detail_serviceVars._(
            serviceId: BuiltValueNullFieldError.checkNotNull(
                serviceId, r'Gget_detail_serviceVars', 'serviceId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
