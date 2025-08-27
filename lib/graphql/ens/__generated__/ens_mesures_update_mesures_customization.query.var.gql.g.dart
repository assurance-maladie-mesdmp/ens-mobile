// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_update_mesures_customization.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_mesures_customizationVars>
    _$gupdateMesuresCustomizationVarsSerializer =
    new _$Gupdate_mesures_customizationVarsSerializer();

class _$Gupdate_mesures_customizationVarsSerializer
    implements StructuredSerializer<Gupdate_mesures_customizationVars> {
  @override
  final Iterable<Type> types = const [
    Gupdate_mesures_customizationVars,
    _$Gupdate_mesures_customizationVars
  ];
  @override
  final String wireName = 'Gupdate_mesures_customizationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_mesures_customizationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'mesureTiles',
      serializers.serialize(object.mesureTiles,
          specifiedType: const FullType(
              BuiltList, const [const FullType(_i1.GMeasureTileInput)])),
    ];

    return result;
  }

  @override
  Gupdate_mesures_customizationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_mesures_customizationVarsBuilder();

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
        case 'mesureTiles':
          result.mesureTiles.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(_i1.GMeasureTileInput)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_mesures_customizationVars
    extends Gupdate_mesures_customizationVars {
  @override
  final String patientId;
  @override
  final BuiltList<_i1.GMeasureTileInput> mesureTiles;

  factory _$Gupdate_mesures_customizationVars(
          [void Function(Gupdate_mesures_customizationVarsBuilder)? updates]) =>
      (new Gupdate_mesures_customizationVarsBuilder()..update(updates))
          ._build();

  _$Gupdate_mesures_customizationVars._(
      {required this.patientId, required this.mesureTiles})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gupdate_mesures_customizationVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(
        mesureTiles, r'Gupdate_mesures_customizationVars', 'mesureTiles');
  }

  @override
  Gupdate_mesures_customizationVars rebuild(
          void Function(Gupdate_mesures_customizationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_mesures_customizationVarsBuilder toBuilder() =>
      new Gupdate_mesures_customizationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_mesures_customizationVars &&
        patientId == other.patientId &&
        mesureTiles == other.mesureTiles;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, mesureTiles.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_mesures_customizationVars')
          ..add('patientId', patientId)
          ..add('mesureTiles', mesureTiles))
        .toString();
  }
}

class Gupdate_mesures_customizationVarsBuilder
    implements
        Builder<Gupdate_mesures_customizationVars,
            Gupdate_mesures_customizationVarsBuilder> {
  _$Gupdate_mesures_customizationVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  ListBuilder<_i1.GMeasureTileInput>? _mesureTiles;
  ListBuilder<_i1.GMeasureTileInput> get mesureTiles =>
      _$this._mesureTiles ??= new ListBuilder<_i1.GMeasureTileInput>();
  set mesureTiles(ListBuilder<_i1.GMeasureTileInput>? mesureTiles) =>
      _$this._mesureTiles = mesureTiles;

  Gupdate_mesures_customizationVarsBuilder();

  Gupdate_mesures_customizationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _mesureTiles = $v.mesureTiles.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_mesures_customizationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_mesures_customizationVars;
  }

  @override
  void update(
      void Function(Gupdate_mesures_customizationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_mesures_customizationVars build() => _build();

  _$Gupdate_mesures_customizationVars _build() {
    _$Gupdate_mesures_customizationVars _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_mesures_customizationVars._(
              patientId: BuiltValueNullFieldError.checkNotNull(
                  patientId, r'Gupdate_mesures_customizationVars', 'patientId'),
              mesureTiles: mesureTiles.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mesureTiles';
        mesureTiles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_mesures_customizationVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
