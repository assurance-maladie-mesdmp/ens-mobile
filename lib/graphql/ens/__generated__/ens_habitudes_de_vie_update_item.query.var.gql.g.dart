// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_habitudes_de_vie_update_item.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_habitudes_de_vie_itemVars>
    _$gupdateHabitudesDeVieItemVarsSerializer =
    new _$Gupdate_habitudes_de_vie_itemVarsSerializer();

class _$Gupdate_habitudes_de_vie_itemVarsSerializer
    implements StructuredSerializer<Gupdate_habitudes_de_vie_itemVars> {
  @override
  final Iterable<Type> types = const [
    Gupdate_habitudes_de_vie_itemVars,
    _$Gupdate_habitudes_de_vie_itemVars
  ];
  @override
  final String wireName = 'Gupdate_habitudes_de_vie_itemVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_habitudes_de_vie_itemVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'lifestyleInput',
      serializers.serialize(object.lifestyleInput,
          specifiedType: const FullType(_i1.GLifestyleItemInput)),
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gupdate_habitudes_de_vie_itemVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_habitudes_de_vie_itemVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'lifestyleInput':
          result.lifestyleInput.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GLifestyleItemInput))!
              as _i1.GLifestyleItemInput);
          break;
        case 'patientId':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_habitudes_de_vie_itemVars
    extends Gupdate_habitudes_de_vie_itemVars {
  @override
  final _i1.GLifestyleItemInput lifestyleInput;
  @override
  final String patientId;

  factory _$Gupdate_habitudes_de_vie_itemVars(
          [void Function(Gupdate_habitudes_de_vie_itemVarsBuilder)? updates]) =>
      (new Gupdate_habitudes_de_vie_itemVarsBuilder()..update(updates))
          ._build();

  _$Gupdate_habitudes_de_vie_itemVars._(
      {required this.lifestyleInput, required this.patientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        lifestyleInput, r'Gupdate_habitudes_de_vie_itemVars', 'lifestyleInput');
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gupdate_habitudes_de_vie_itemVars', 'patientId');
  }

  @override
  Gupdate_habitudes_de_vie_itemVars rebuild(
          void Function(Gupdate_habitudes_de_vie_itemVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_habitudes_de_vie_itemVarsBuilder toBuilder() =>
      new Gupdate_habitudes_de_vie_itemVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_habitudes_de_vie_itemVars &&
        lifestyleInput == other.lifestyleInput &&
        patientId == other.patientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lifestyleInput.hashCode);
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_habitudes_de_vie_itemVars')
          ..add('lifestyleInput', lifestyleInput)
          ..add('patientId', patientId))
        .toString();
  }
}

class Gupdate_habitudes_de_vie_itemVarsBuilder
    implements
        Builder<Gupdate_habitudes_de_vie_itemVars,
            Gupdate_habitudes_de_vie_itemVarsBuilder> {
  _$Gupdate_habitudes_de_vie_itemVars? _$v;

  _i1.GLifestyleItemInputBuilder? _lifestyleInput;
  _i1.GLifestyleItemInputBuilder get lifestyleInput =>
      _$this._lifestyleInput ??= new _i1.GLifestyleItemInputBuilder();
  set lifestyleInput(_i1.GLifestyleItemInputBuilder? lifestyleInput) =>
      _$this._lifestyleInput = lifestyleInput;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gupdate_habitudes_de_vie_itemVarsBuilder();

  Gupdate_habitudes_de_vie_itemVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lifestyleInput = $v.lifestyleInput.toBuilder();
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_habitudes_de_vie_itemVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_habitudes_de_vie_itemVars;
  }

  @override
  void update(
      void Function(Gupdate_habitudes_de_vie_itemVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_habitudes_de_vie_itemVars build() => _build();

  _$Gupdate_habitudes_de_vie_itemVars _build() {
    _$Gupdate_habitudes_de_vie_itemVars _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_habitudes_de_vie_itemVars._(
              lifestyleInput: lifestyleInput.build(),
              patientId: BuiltValueNullFieldError.checkNotNull(patientId,
                  r'Gupdate_habitudes_de_vie_itemVars', 'patientId'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'lifestyleInput';
        lifestyleInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_habitudes_de_vie_itemVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
