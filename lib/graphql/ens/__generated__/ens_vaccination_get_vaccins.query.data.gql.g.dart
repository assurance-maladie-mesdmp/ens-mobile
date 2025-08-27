// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_vaccination_get_vaccins.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_vaccinsData> _$ggetVaccinsDataSerializer =
    new _$Gget_vaccinsDataSerializer();
Serializer<Gget_vaccinsData_vaccinesRef>
    _$ggetVaccinsDataVaccinesRefSerializer =
    new _$Gget_vaccinsData_vaccinesRefSerializer();

class _$Gget_vaccinsDataSerializer
    implements StructuredSerializer<Gget_vaccinsData> {
  @override
  final Iterable<Type> types = const [Gget_vaccinsData, _$Gget_vaccinsData];
  @override
  final String wireName = 'Gget_vaccinsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gget_vaccinsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'vaccinesRef',
      serializers.serialize(object.vaccinesRef,
          specifiedType: const FullType(
              BuiltList, const [const FullType(Gget_vaccinsData_vaccinesRef)])),
    ];

    return result;
  }

  @override
  Gget_vaccinsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_vaccinsDataBuilder();

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
        case 'vaccinesRef':
          result.vaccinesRef.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gget_vaccinsData_vaccinesRef)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_vaccinsData_vaccinesRefSerializer
    implements StructuredSerializer<Gget_vaccinsData_vaccinesRef> {
  @override
  final Iterable<Type> types = const [
    Gget_vaccinsData_vaccinesRef,
    _$Gget_vaccinsData_vaccinesRef
  ];
  @override
  final String wireName = 'Gget_vaccinsData_vaccinesRef';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_vaccinsData_vaccinesRef object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'vaccineRefId',
      serializers.serialize(object.vaccineRefId,
          specifiedType: const FullType(String)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
      'pathologies',
      serializers.serialize(object.pathologies,
          specifiedType: const FullType(String)),
      'cipCodes',
      serializers.serialize(object.cipCodes,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    Object? value;
    value = object.marketingStart;
    if (value != null) {
      result
        ..add('marketingStart')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.marketingEnd;
    if (value != null) {
      result
        ..add('marketingEnd')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_vaccinsData_vaccinesRef deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_vaccinsData_vaccinesRefBuilder();

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
        case 'vaccineRefId':
          result.vaccineRefId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'pathologies':
          result.pathologies = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'marketingStart':
          result.marketingStart = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'marketingEnd':
          result.marketingEnd = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cipCodes':
          result.cipCodes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_vaccinsData extends Gget_vaccinsData {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_vaccinsData_vaccinesRef> vaccinesRef;

  factory _$Gget_vaccinsData(
          [void Function(Gget_vaccinsDataBuilder)? updates]) =>
      (new Gget_vaccinsDataBuilder()..update(updates))._build();

  _$Gget_vaccinsData._({required this.G__typename, required this.vaccinesRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_vaccinsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        vaccinesRef, r'Gget_vaccinsData', 'vaccinesRef');
  }

  @override
  Gget_vaccinsData rebuild(void Function(Gget_vaccinsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_vaccinsDataBuilder toBuilder() =>
      new Gget_vaccinsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_vaccinsData &&
        G__typename == other.G__typename &&
        vaccinesRef == other.vaccinesRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, vaccinesRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_vaccinsData')
          ..add('G__typename', G__typename)
          ..add('vaccinesRef', vaccinesRef))
        .toString();
  }
}

class Gget_vaccinsDataBuilder
    implements Builder<Gget_vaccinsData, Gget_vaccinsDataBuilder> {
  _$Gget_vaccinsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_vaccinsData_vaccinesRef>? _vaccinesRef;
  ListBuilder<Gget_vaccinsData_vaccinesRef> get vaccinesRef =>
      _$this._vaccinesRef ??= new ListBuilder<Gget_vaccinsData_vaccinesRef>();
  set vaccinesRef(ListBuilder<Gget_vaccinsData_vaccinesRef>? vaccinesRef) =>
      _$this._vaccinesRef = vaccinesRef;

  Gget_vaccinsDataBuilder() {
    Gget_vaccinsData._initializeBuilder(this);
  }

  Gget_vaccinsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _vaccinesRef = $v.vaccinesRef.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_vaccinsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_vaccinsData;
  }

  @override
  void update(void Function(Gget_vaccinsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_vaccinsData build() => _build();

  _$Gget_vaccinsData _build() {
    _$Gget_vaccinsData _$result;
    try {
      _$result = _$v ??
          new _$Gget_vaccinsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_vaccinsData', 'G__typename'),
              vaccinesRef: vaccinesRef.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vaccinesRef';
        vaccinesRef.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_vaccinsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_vaccinsData_vaccinesRef extends Gget_vaccinsData_vaccinesRef {
  @override
  final String G__typename;
  @override
  final String vaccineRefId;
  @override
  final String label;
  @override
  final String pathologies;
  @override
  final String? marketingStart;
  @override
  final String? marketingEnd;
  @override
  final BuiltList<String> cipCodes;

  factory _$Gget_vaccinsData_vaccinesRef(
          [void Function(Gget_vaccinsData_vaccinesRefBuilder)? updates]) =>
      (new Gget_vaccinsData_vaccinesRefBuilder()..update(updates))._build();

  _$Gget_vaccinsData_vaccinesRef._(
      {required this.G__typename,
      required this.vaccineRefId,
      required this.label,
      required this.pathologies,
      this.marketingStart,
      this.marketingEnd,
      required this.cipCodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_vaccinsData_vaccinesRef', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        vaccineRefId, r'Gget_vaccinsData_vaccinesRef', 'vaccineRefId');
    BuiltValueNullFieldError.checkNotNull(
        label, r'Gget_vaccinsData_vaccinesRef', 'label');
    BuiltValueNullFieldError.checkNotNull(
        pathologies, r'Gget_vaccinsData_vaccinesRef', 'pathologies');
    BuiltValueNullFieldError.checkNotNull(
        cipCodes, r'Gget_vaccinsData_vaccinesRef', 'cipCodes');
  }

  @override
  Gget_vaccinsData_vaccinesRef rebuild(
          void Function(Gget_vaccinsData_vaccinesRefBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_vaccinsData_vaccinesRefBuilder toBuilder() =>
      new Gget_vaccinsData_vaccinesRefBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_vaccinsData_vaccinesRef &&
        G__typename == other.G__typename &&
        vaccineRefId == other.vaccineRefId &&
        label == other.label &&
        pathologies == other.pathologies &&
        marketingStart == other.marketingStart &&
        marketingEnd == other.marketingEnd &&
        cipCodes == other.cipCodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, vaccineRefId.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, pathologies.hashCode);
    _$hash = $jc(_$hash, marketingStart.hashCode);
    _$hash = $jc(_$hash, marketingEnd.hashCode);
    _$hash = $jc(_$hash, cipCodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_vaccinsData_vaccinesRef')
          ..add('G__typename', G__typename)
          ..add('vaccineRefId', vaccineRefId)
          ..add('label', label)
          ..add('pathologies', pathologies)
          ..add('marketingStart', marketingStart)
          ..add('marketingEnd', marketingEnd)
          ..add('cipCodes', cipCodes))
        .toString();
  }
}

class Gget_vaccinsData_vaccinesRefBuilder
    implements
        Builder<Gget_vaccinsData_vaccinesRef,
            Gget_vaccinsData_vaccinesRefBuilder> {
  _$Gget_vaccinsData_vaccinesRef? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _vaccineRefId;
  String? get vaccineRefId => _$this._vaccineRefId;
  set vaccineRefId(String? vaccineRefId) => _$this._vaccineRefId = vaccineRefId;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _pathologies;
  String? get pathologies => _$this._pathologies;
  set pathologies(String? pathologies) => _$this._pathologies = pathologies;

  String? _marketingStart;
  String? get marketingStart => _$this._marketingStart;
  set marketingStart(String? marketingStart) =>
      _$this._marketingStart = marketingStart;

  String? _marketingEnd;
  String? get marketingEnd => _$this._marketingEnd;
  set marketingEnd(String? marketingEnd) => _$this._marketingEnd = marketingEnd;

  ListBuilder<String>? _cipCodes;
  ListBuilder<String> get cipCodes =>
      _$this._cipCodes ??= new ListBuilder<String>();
  set cipCodes(ListBuilder<String>? cipCodes) => _$this._cipCodes = cipCodes;

  Gget_vaccinsData_vaccinesRefBuilder() {
    Gget_vaccinsData_vaccinesRef._initializeBuilder(this);
  }

  Gget_vaccinsData_vaccinesRefBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _vaccineRefId = $v.vaccineRefId;
      _label = $v.label;
      _pathologies = $v.pathologies;
      _marketingStart = $v.marketingStart;
      _marketingEnd = $v.marketingEnd;
      _cipCodes = $v.cipCodes.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_vaccinsData_vaccinesRef other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_vaccinsData_vaccinesRef;
  }

  @override
  void update(void Function(Gget_vaccinsData_vaccinesRefBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_vaccinsData_vaccinesRef build() => _build();

  _$Gget_vaccinsData_vaccinesRef _build() {
    _$Gget_vaccinsData_vaccinesRef _$result;
    try {
      _$result = _$v ??
          new _$Gget_vaccinsData_vaccinesRef._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_vaccinsData_vaccinesRef', 'G__typename'),
              vaccineRefId: BuiltValueNullFieldError.checkNotNull(vaccineRefId,
                  r'Gget_vaccinsData_vaccinesRef', 'vaccineRefId'),
              label: BuiltValueNullFieldError.checkNotNull(
                  label, r'Gget_vaccinsData_vaccinesRef', 'label'),
              pathologies: BuiltValueNullFieldError.checkNotNull(
                  pathologies, r'Gget_vaccinsData_vaccinesRef', 'pathologies'),
              marketingStart: marketingStart,
              marketingEnd: marketingEnd,
              cipCodes: cipCodes.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cipCodes';
        cipCodes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_vaccinsData_vaccinesRef', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
