// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_urgence_set_consentement_urgence.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gset_consentement_urgenceData>
    _$gsetConsentementUrgenceDataSerializer =
    new _$Gset_consentement_urgenceDataSerializer();
Serializer<Gset_consentement_urgenceData_setETREAT>
    _$gsetConsentementUrgenceDataSetETREATSerializer =
    new _$Gset_consentement_urgenceData_setETREATSerializer();
Serializer<Gset_consentement_urgenceData_setBTG>
    _$gsetConsentementUrgenceDataSetBTGSerializer =
    new _$Gset_consentement_urgenceData_setBTGSerializer();
Serializer<Gset_consentement_urgenceData_setMASKED>
    _$gsetConsentementUrgenceDataSetMASKEDSerializer =
    new _$Gset_consentement_urgenceData_setMASKEDSerializer();

class _$Gset_consentement_urgenceDataSerializer
    implements StructuredSerializer<Gset_consentement_urgenceData> {
  @override
  final Iterable<Type> types = const [
    Gset_consentement_urgenceData,
    _$Gset_consentement_urgenceData
  ];
  @override
  final String wireName = 'Gset_consentement_urgenceData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gset_consentement_urgenceData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'setETREAT',
      serializers.serialize(object.setETREAT,
          specifiedType:
              const FullType(Gset_consentement_urgenceData_setETREAT)),
      'setBTG',
      serializers.serialize(object.setBTG,
          specifiedType: const FullType(Gset_consentement_urgenceData_setBTG)),
      'setMASKED',
      serializers.serialize(object.setMASKED,
          specifiedType:
              const FullType(Gset_consentement_urgenceData_setMASKED)),
    ];

    return result;
  }

  @override
  Gset_consentement_urgenceData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gset_consentement_urgenceDataBuilder();

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
        case 'setETREAT':
          result.setETREAT.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gset_consentement_urgenceData_setETREAT))!
              as Gset_consentement_urgenceData_setETREAT);
          break;
        case 'setBTG':
          result.setBTG.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gset_consentement_urgenceData_setBTG))!
              as Gset_consentement_urgenceData_setBTG);
          break;
        case 'setMASKED':
          result.setMASKED.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(Gset_consentement_urgenceData_setMASKED))!
              as Gset_consentement_urgenceData_setMASKED);
          break;
      }
    }

    return result.build();
  }
}

class _$Gset_consentement_urgenceData_setETREATSerializer
    implements StructuredSerializer<Gset_consentement_urgenceData_setETREAT> {
  @override
  final Iterable<Type> types = const [
    Gset_consentement_urgenceData_setETREAT,
    _$Gset_consentement_urgenceData_setETREAT
  ];
  @override
  final String wireName = 'Gset_consentement_urgenceData_setETREAT';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gset_consentement_urgenceData_setETREAT object,
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
  Gset_consentement_urgenceData_setETREAT deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gset_consentement_urgenceData_setETREATBuilder();

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

class _$Gset_consentement_urgenceData_setBTGSerializer
    implements StructuredSerializer<Gset_consentement_urgenceData_setBTG> {
  @override
  final Iterable<Type> types = const [
    Gset_consentement_urgenceData_setBTG,
    _$Gset_consentement_urgenceData_setBTG
  ];
  @override
  final String wireName = 'Gset_consentement_urgenceData_setBTG';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gset_consentement_urgenceData_setBTG object,
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
  Gset_consentement_urgenceData_setBTG deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gset_consentement_urgenceData_setBTGBuilder();

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

class _$Gset_consentement_urgenceData_setMASKEDSerializer
    implements StructuredSerializer<Gset_consentement_urgenceData_setMASKED> {
  @override
  final Iterable<Type> types = const [
    Gset_consentement_urgenceData_setMASKED,
    _$Gset_consentement_urgenceData_setMASKED
  ];
  @override
  final String wireName = 'Gset_consentement_urgenceData_setMASKED';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gset_consentement_urgenceData_setMASKED object,
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
  Gset_consentement_urgenceData_setMASKED deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gset_consentement_urgenceData_setMASKEDBuilder();

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

class _$Gset_consentement_urgenceData extends Gset_consentement_urgenceData {
  @override
  final String G__typename;
  @override
  final Gset_consentement_urgenceData_setETREAT setETREAT;
  @override
  final Gset_consentement_urgenceData_setBTG setBTG;
  @override
  final Gset_consentement_urgenceData_setMASKED setMASKED;

  factory _$Gset_consentement_urgenceData(
          [void Function(Gset_consentement_urgenceDataBuilder)? updates]) =>
      (new Gset_consentement_urgenceDataBuilder()..update(updates))._build();

  _$Gset_consentement_urgenceData._(
      {required this.G__typename,
      required this.setETREAT,
      required this.setBTG,
      required this.setMASKED})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gset_consentement_urgenceData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        setETREAT, r'Gset_consentement_urgenceData', 'setETREAT');
    BuiltValueNullFieldError.checkNotNull(
        setBTG, r'Gset_consentement_urgenceData', 'setBTG');
    BuiltValueNullFieldError.checkNotNull(
        setMASKED, r'Gset_consentement_urgenceData', 'setMASKED');
  }

  @override
  Gset_consentement_urgenceData rebuild(
          void Function(Gset_consentement_urgenceDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gset_consentement_urgenceDataBuilder toBuilder() =>
      new Gset_consentement_urgenceDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gset_consentement_urgenceData &&
        G__typename == other.G__typename &&
        setETREAT == other.setETREAT &&
        setBTG == other.setBTG &&
        setMASKED == other.setMASKED;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, setETREAT.hashCode);
    _$hash = $jc(_$hash, setBTG.hashCode);
    _$hash = $jc(_$hash, setMASKED.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gset_consentement_urgenceData')
          ..add('G__typename', G__typename)
          ..add('setETREAT', setETREAT)
          ..add('setBTG', setBTG)
          ..add('setMASKED', setMASKED))
        .toString();
  }
}

class Gset_consentement_urgenceDataBuilder
    implements
        Builder<Gset_consentement_urgenceData,
            Gset_consentement_urgenceDataBuilder> {
  _$Gset_consentement_urgenceData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gset_consentement_urgenceData_setETREATBuilder? _setETREAT;
  Gset_consentement_urgenceData_setETREATBuilder get setETREAT =>
      _$this._setETREAT ??=
          new Gset_consentement_urgenceData_setETREATBuilder();
  set setETREAT(Gset_consentement_urgenceData_setETREATBuilder? setETREAT) =>
      _$this._setETREAT = setETREAT;

  Gset_consentement_urgenceData_setBTGBuilder? _setBTG;
  Gset_consentement_urgenceData_setBTGBuilder get setBTG =>
      _$this._setBTG ??= new Gset_consentement_urgenceData_setBTGBuilder();
  set setBTG(Gset_consentement_urgenceData_setBTGBuilder? setBTG) =>
      _$this._setBTG = setBTG;

  Gset_consentement_urgenceData_setMASKEDBuilder? _setMASKED;
  Gset_consentement_urgenceData_setMASKEDBuilder get setMASKED =>
      _$this._setMASKED ??=
          new Gset_consentement_urgenceData_setMASKEDBuilder();
  set setMASKED(Gset_consentement_urgenceData_setMASKEDBuilder? setMASKED) =>
      _$this._setMASKED = setMASKED;

  Gset_consentement_urgenceDataBuilder() {
    Gset_consentement_urgenceData._initializeBuilder(this);
  }

  Gset_consentement_urgenceDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _setETREAT = $v.setETREAT.toBuilder();
      _setBTG = $v.setBTG.toBuilder();
      _setMASKED = $v.setMASKED.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gset_consentement_urgenceData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gset_consentement_urgenceData;
  }

  @override
  void update(void Function(Gset_consentement_urgenceDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gset_consentement_urgenceData build() => _build();

  _$Gset_consentement_urgenceData _build() {
    _$Gset_consentement_urgenceData _$result;
    try {
      _$result = _$v ??
          new _$Gset_consentement_urgenceData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gset_consentement_urgenceData', 'G__typename'),
              setETREAT: setETREAT.build(),
              setBTG: setBTG.build(),
              setMASKED: setMASKED.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'setETREAT';
        setETREAT.build();
        _$failedField = 'setBTG';
        setBTG.build();
        _$failedField = 'setMASKED';
        setMASKED.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gset_consentement_urgenceData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gset_consentement_urgenceData_setETREAT
    extends Gset_consentement_urgenceData_setETREAT {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gset_consentement_urgenceData_setETREAT(
          [void Function(Gset_consentement_urgenceData_setETREATBuilder)?
              updates]) =>
      (new Gset_consentement_urgenceData_setETREATBuilder()..update(updates))
          ._build();

  _$Gset_consentement_urgenceData_setETREAT._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gset_consentement_urgenceData_setETREAT', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gset_consentement_urgenceData_setETREAT', 'success');
  }

  @override
  Gset_consentement_urgenceData_setETREAT rebuild(
          void Function(Gset_consentement_urgenceData_setETREATBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gset_consentement_urgenceData_setETREATBuilder toBuilder() =>
      new Gset_consentement_urgenceData_setETREATBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gset_consentement_urgenceData_setETREAT &&
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
            r'Gset_consentement_urgenceData_setETREAT')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gset_consentement_urgenceData_setETREATBuilder
    implements
        Builder<Gset_consentement_urgenceData_setETREAT,
            Gset_consentement_urgenceData_setETREATBuilder> {
  _$Gset_consentement_urgenceData_setETREAT? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gset_consentement_urgenceData_setETREATBuilder() {
    Gset_consentement_urgenceData_setETREAT._initializeBuilder(this);
  }

  Gset_consentement_urgenceData_setETREATBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gset_consentement_urgenceData_setETREAT other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gset_consentement_urgenceData_setETREAT;
  }

  @override
  void update(
      void Function(Gset_consentement_urgenceData_setETREATBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gset_consentement_urgenceData_setETREAT build() => _build();

  _$Gset_consentement_urgenceData_setETREAT _build() {
    final _$result = _$v ??
        new _$Gset_consentement_urgenceData_setETREAT._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gset_consentement_urgenceData_setETREAT', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(success,
                r'Gset_consentement_urgenceData_setETREAT', 'success'));
    replace(_$result);
    return _$result;
  }
}

class _$Gset_consentement_urgenceData_setBTG
    extends Gset_consentement_urgenceData_setBTG {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gset_consentement_urgenceData_setBTG(
          [void Function(Gset_consentement_urgenceData_setBTGBuilder)?
              updates]) =>
      (new Gset_consentement_urgenceData_setBTGBuilder()..update(updates))
          ._build();

  _$Gset_consentement_urgenceData_setBTG._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gset_consentement_urgenceData_setBTG', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gset_consentement_urgenceData_setBTG', 'success');
  }

  @override
  Gset_consentement_urgenceData_setBTG rebuild(
          void Function(Gset_consentement_urgenceData_setBTGBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gset_consentement_urgenceData_setBTGBuilder toBuilder() =>
      new Gset_consentement_urgenceData_setBTGBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gset_consentement_urgenceData_setBTG &&
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
    return (newBuiltValueToStringHelper(r'Gset_consentement_urgenceData_setBTG')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gset_consentement_urgenceData_setBTGBuilder
    implements
        Builder<Gset_consentement_urgenceData_setBTG,
            Gset_consentement_urgenceData_setBTGBuilder> {
  _$Gset_consentement_urgenceData_setBTG? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gset_consentement_urgenceData_setBTGBuilder() {
    Gset_consentement_urgenceData_setBTG._initializeBuilder(this);
  }

  Gset_consentement_urgenceData_setBTGBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gset_consentement_urgenceData_setBTG other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gset_consentement_urgenceData_setBTG;
  }

  @override
  void update(
      void Function(Gset_consentement_urgenceData_setBTGBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gset_consentement_urgenceData_setBTG build() => _build();

  _$Gset_consentement_urgenceData_setBTG _build() {
    final _$result = _$v ??
        new _$Gset_consentement_urgenceData_setBTG._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gset_consentement_urgenceData_setBTG', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'Gset_consentement_urgenceData_setBTG', 'success'));
    replace(_$result);
    return _$result;
  }
}

class _$Gset_consentement_urgenceData_setMASKED
    extends Gset_consentement_urgenceData_setMASKED {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gset_consentement_urgenceData_setMASKED(
          [void Function(Gset_consentement_urgenceData_setMASKEDBuilder)?
              updates]) =>
      (new Gset_consentement_urgenceData_setMASKEDBuilder()..update(updates))
          ._build();

  _$Gset_consentement_urgenceData_setMASKED._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gset_consentement_urgenceData_setMASKED', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success, r'Gset_consentement_urgenceData_setMASKED', 'success');
  }

  @override
  Gset_consentement_urgenceData_setMASKED rebuild(
          void Function(Gset_consentement_urgenceData_setMASKEDBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gset_consentement_urgenceData_setMASKEDBuilder toBuilder() =>
      new Gset_consentement_urgenceData_setMASKEDBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gset_consentement_urgenceData_setMASKED &&
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
            r'Gset_consentement_urgenceData_setMASKED')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gset_consentement_urgenceData_setMASKEDBuilder
    implements
        Builder<Gset_consentement_urgenceData_setMASKED,
            Gset_consentement_urgenceData_setMASKEDBuilder> {
  _$Gset_consentement_urgenceData_setMASKED? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gset_consentement_urgenceData_setMASKEDBuilder() {
    Gset_consentement_urgenceData_setMASKED._initializeBuilder(this);
  }

  Gset_consentement_urgenceData_setMASKEDBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gset_consentement_urgenceData_setMASKED other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gset_consentement_urgenceData_setMASKED;
  }

  @override
  void update(
      void Function(Gset_consentement_urgenceData_setMASKEDBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gset_consentement_urgenceData_setMASKED build() => _build();

  _$Gset_consentement_urgenceData_setMASKED _build() {
    final _$result = _$v ??
        new _$Gset_consentement_urgenceData_setMASKED._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'Gset_consentement_urgenceData_setMASKED', 'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(success,
                r'Gset_consentement_urgenceData_setMASKED', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
