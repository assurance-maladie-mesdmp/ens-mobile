// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_unsynchronize_service.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gunsynchronize_serviceData> _$gunsynchronizeServiceDataSerializer =
    new _$Gunsynchronize_serviceDataSerializer();
Serializer<Gunsynchronize_serviceData_deleteSynchronizedService>
    _$gunsynchronizeServiceDataDeleteSynchronizedServiceSerializer =
    new _$Gunsynchronize_serviceData_deleteSynchronizedServiceSerializer();

class _$Gunsynchronize_serviceDataSerializer
    implements StructuredSerializer<Gunsynchronize_serviceData> {
  @override
  final Iterable<Type> types = const [
    Gunsynchronize_serviceData,
    _$Gunsynchronize_serviceData
  ];
  @override
  final String wireName = 'Gunsynchronize_serviceData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gunsynchronize_serviceData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'deleteSynchronizedService',
      serializers.serialize(object.deleteSynchronizedService,
          specifiedType: const FullType(
              Gunsynchronize_serviceData_deleteSynchronizedService)),
    ];

    return result;
  }

  @override
  Gunsynchronize_serviceData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gunsynchronize_serviceDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'deleteSynchronizedService':
          result.deleteSynchronizedService.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Gunsynchronize_serviceData_deleteSynchronizedService))!
              as Gunsynchronize_serviceData_deleteSynchronizedService);
          break;
      }
    }

    return result.build();
  }
}

class _$Gunsynchronize_serviceData_deleteSynchronizedServiceSerializer
    implements
        StructuredSerializer<
            Gunsynchronize_serviceData_deleteSynchronizedService> {
  @override
  final Iterable<Type> types = const [
    Gunsynchronize_serviceData_deleteSynchronizedService,
    _$Gunsynchronize_serviceData_deleteSynchronizedService
  ];
  @override
  final String wireName =
      'Gunsynchronize_serviceData_deleteSynchronizedService';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gunsynchronize_serviceData_deleteSynchronizedService object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'success',
      serializers.serialize(object.success,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gunsynchronize_serviceData_deleteSynchronizedService deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gunsynchronize_serviceData_deleteSynchronizedServiceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gunsynchronize_serviceData extends Gunsynchronize_serviceData {
  @override
  final String G__typename;
  @override
  final Gunsynchronize_serviceData_deleteSynchronizedService
      deleteSynchronizedService;

  factory _$Gunsynchronize_serviceData(
          [void Function(Gunsynchronize_serviceDataBuilder)? updates]) =>
      (new Gunsynchronize_serviceDataBuilder()..update(updates))._build();

  _$Gunsynchronize_serviceData._(
      {required this.G__typename, required this.deleteSynchronizedService})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gunsynchronize_serviceData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(deleteSynchronizedService,
        r'Gunsynchronize_serviceData', 'deleteSynchronizedService');
  }

  @override
  Gunsynchronize_serviceData rebuild(
          void Function(Gunsynchronize_serviceDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gunsynchronize_serviceDataBuilder toBuilder() =>
      new Gunsynchronize_serviceDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gunsynchronize_serviceData &&
        G__typename == other.G__typename &&
        deleteSynchronizedService == other.deleteSynchronizedService;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deleteSynchronizedService.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gunsynchronize_serviceData')
          ..add('G__typename', G__typename)
          ..add('deleteSynchronizedService', deleteSynchronizedService))
        .toString();
  }
}

class Gunsynchronize_serviceDataBuilder
    implements
        Builder<Gunsynchronize_serviceData, Gunsynchronize_serviceDataBuilder> {
  _$Gunsynchronize_serviceData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gunsynchronize_serviceData_deleteSynchronizedServiceBuilder?
      _deleteSynchronizedService;
  Gunsynchronize_serviceData_deleteSynchronizedServiceBuilder
      get deleteSynchronizedService => _$this._deleteSynchronizedService ??=
          new Gunsynchronize_serviceData_deleteSynchronizedServiceBuilder();
  set deleteSynchronizedService(
          Gunsynchronize_serviceData_deleteSynchronizedServiceBuilder?
              deleteSynchronizedService) =>
      _$this._deleteSynchronizedService = deleteSynchronizedService;

  Gunsynchronize_serviceDataBuilder() {
    Gunsynchronize_serviceData._initializeBuilder(this);
  }

  Gunsynchronize_serviceDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteSynchronizedService = $v.deleteSynchronizedService.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gunsynchronize_serviceData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gunsynchronize_serviceData;
  }

  @override
  void update(void Function(Gunsynchronize_serviceDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gunsynchronize_serviceData build() => _build();

  _$Gunsynchronize_serviceData _build() {
    _$Gunsynchronize_serviceData _$result;
    try {
      _$result = _$v ??
          new _$Gunsynchronize_serviceData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gunsynchronize_serviceData', 'G__typename'),
              deleteSynchronizedService: deleteSynchronizedService.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteSynchronizedService';
        deleteSynchronizedService.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gunsynchronize_serviceData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gunsynchronize_serviceData_deleteSynchronizedService
    extends Gunsynchronize_serviceData_deleteSynchronizedService {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gunsynchronize_serviceData_deleteSynchronizedService(
          [void Function(
                  Gunsynchronize_serviceData_deleteSynchronizedServiceBuilder)?
              updates]) =>
      (new Gunsynchronize_serviceData_deleteSynchronizedServiceBuilder()
            ..update(updates))
          ._build();

  _$Gunsynchronize_serviceData_deleteSynchronizedService._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gunsynchronize_serviceData_deleteSynchronizedService', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(success,
        r'Gunsynchronize_serviceData_deleteSynchronizedService', 'success');
  }

  @override
  Gunsynchronize_serviceData_deleteSynchronizedService rebuild(
          void Function(
                  Gunsynchronize_serviceData_deleteSynchronizedServiceBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gunsynchronize_serviceData_deleteSynchronizedServiceBuilder toBuilder() =>
      new Gunsynchronize_serviceData_deleteSynchronizedServiceBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gunsynchronize_serviceData_deleteSynchronizedService &&
        G__typename == other.G__typename &&
        success == other.success;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gunsynchronize_serviceData_deleteSynchronizedService')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gunsynchronize_serviceData_deleteSynchronizedServiceBuilder
    implements
        Builder<Gunsynchronize_serviceData_deleteSynchronizedService,
            Gunsynchronize_serviceData_deleteSynchronizedServiceBuilder> {
  _$Gunsynchronize_serviceData_deleteSynchronizedService? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gunsynchronize_serviceData_deleteSynchronizedServiceBuilder() {
    Gunsynchronize_serviceData_deleteSynchronizedService._initializeBuilder(
        this);
  }

  Gunsynchronize_serviceData_deleteSynchronizedServiceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gunsynchronize_serviceData_deleteSynchronizedService other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gunsynchronize_serviceData_deleteSynchronizedService;
  }

  @override
  void update(
      void Function(
              Gunsynchronize_serviceData_deleteSynchronizedServiceBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gunsynchronize_serviceData_deleteSynchronizedService build() => _build();

  _$Gunsynchronize_serviceData_deleteSynchronizedService _build() {
    final _$result = _$v ??
        new _$Gunsynchronize_serviceData_deleteSynchronizedService._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gunsynchronize_serviceData_deleteSynchronizedService',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gunsynchronize_serviceData_deleteSynchronizedService',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
