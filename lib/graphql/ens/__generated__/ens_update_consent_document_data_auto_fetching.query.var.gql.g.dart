// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_update_consent_document_data_auto_fetching.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_finality_consent_statusVars>
    _$gupdateFinalityConsentStatusVarsSerializer =
    new _$Gupdate_finality_consent_statusVarsSerializer();

class _$Gupdate_finality_consent_statusVarsSerializer
    implements StructuredSerializer<Gupdate_finality_consent_statusVars> {
  @override
  final Iterable<Type> types = const [
    Gupdate_finality_consent_statusVars,
    _$Gupdate_finality_consent_statusVars
  ];
  @override
  final String wireName = 'Gupdate_finality_consent_statusVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_finality_consent_statusVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'finalityToUpdate',
      serializers.serialize(object.finalityToUpdate,
          specifiedType: const FullType(_i1.GFinalityConsentToUpdateInput)),
    ];

    return result;
  }

  @override
  Gupdate_finality_consent_statusVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_finality_consent_statusVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'finalityToUpdate':
          result.finalityToUpdate.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GFinalityConsentToUpdateInput))!
              as _i1.GFinalityConsentToUpdateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_finality_consent_statusVars
    extends Gupdate_finality_consent_statusVars {
  @override
  final _i1.GFinalityConsentToUpdateInput finalityToUpdate;

  factory _$Gupdate_finality_consent_statusVars(
          [void Function(Gupdate_finality_consent_statusVarsBuilder)?
              updates]) =>
      (new Gupdate_finality_consent_statusVarsBuilder()..update(updates))
          ._build();

  _$Gupdate_finality_consent_statusVars._({required this.finalityToUpdate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(finalityToUpdate,
        r'Gupdate_finality_consent_statusVars', 'finalityToUpdate');
  }

  @override
  Gupdate_finality_consent_statusVars rebuild(
          void Function(Gupdate_finality_consent_statusVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_finality_consent_statusVarsBuilder toBuilder() =>
      new Gupdate_finality_consent_statusVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_finality_consent_statusVars &&
        finalityToUpdate == other.finalityToUpdate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, finalityToUpdate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_finality_consent_statusVars')
          ..add('finalityToUpdate', finalityToUpdate))
        .toString();
  }
}

class Gupdate_finality_consent_statusVarsBuilder
    implements
        Builder<Gupdate_finality_consent_statusVars,
            Gupdate_finality_consent_statusVarsBuilder> {
  _$Gupdate_finality_consent_statusVars? _$v;

  _i1.GFinalityConsentToUpdateInputBuilder? _finalityToUpdate;
  _i1.GFinalityConsentToUpdateInputBuilder get finalityToUpdate =>
      _$this._finalityToUpdate ??=
          new _i1.GFinalityConsentToUpdateInputBuilder();
  set finalityToUpdate(
          _i1.GFinalityConsentToUpdateInputBuilder? finalityToUpdate) =>
      _$this._finalityToUpdate = finalityToUpdate;

  Gupdate_finality_consent_statusVarsBuilder();

  Gupdate_finality_consent_statusVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _finalityToUpdate = $v.finalityToUpdate.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_finality_consent_statusVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_finality_consent_statusVars;
  }

  @override
  void update(
      void Function(Gupdate_finality_consent_statusVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_finality_consent_statusVars build() => _build();

  _$Gupdate_finality_consent_statusVars _build() {
    _$Gupdate_finality_consent_statusVars _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_finality_consent_statusVars._(
              finalityToUpdate: finalityToUpdate.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'finalityToUpdate';
        finalityToUpdate.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_finality_consent_statusVars',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
