// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_ps_get_confidentialities.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_confidentialities_psVars>
    _$ggetConfidentialitiesPsVarsSerializer =
    new _$Gget_confidentialities_psVarsSerializer();

class _$Gget_confidentialities_psVarsSerializer
    implements StructuredSerializer<Gget_confidentialities_psVars> {
  @override
  final Iterable<Type> types = const [
    Gget_confidentialities_psVars,
    _$Gget_confidentialities_psVars
  ];
  @override
  final String wireName = 'Gget_confidentialities_psVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_confidentialities_psVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'dmpConsentementInput',
      serializers.serialize(object.dmpConsentementInput,
          specifiedType: const FullType(_i1.GGetDmpConsentementInput)),
    ];

    return result;
  }

  @override
  Gget_confidentialities_psVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_confidentialities_psVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'dmpConsentementInput':
          result.dmpConsentementInput.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GGetDmpConsentementInput))!
              as _i1.GGetDmpConsentementInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_confidentialities_psVars extends Gget_confidentialities_psVars {
  @override
  final _i1.GGetDmpConsentementInput dmpConsentementInput;

  factory _$Gget_confidentialities_psVars(
          [void Function(Gget_confidentialities_psVarsBuilder)? updates]) =>
      (new Gget_confidentialities_psVarsBuilder()..update(updates))._build();

  _$Gget_confidentialities_psVars._({required this.dmpConsentementInput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(dmpConsentementInput,
        r'Gget_confidentialities_psVars', 'dmpConsentementInput');
  }

  @override
  Gget_confidentialities_psVars rebuild(
          void Function(Gget_confidentialities_psVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_confidentialities_psVarsBuilder toBuilder() =>
      new Gget_confidentialities_psVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_confidentialities_psVars &&
        dmpConsentementInput == other.dmpConsentementInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dmpConsentementInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_confidentialities_psVars')
          ..add('dmpConsentementInput', dmpConsentementInput))
        .toString();
  }
}

class Gget_confidentialities_psVarsBuilder
    implements
        Builder<Gget_confidentialities_psVars,
            Gget_confidentialities_psVarsBuilder> {
  _$Gget_confidentialities_psVars? _$v;

  _i1.GGetDmpConsentementInputBuilder? _dmpConsentementInput;
  _i1.GGetDmpConsentementInputBuilder get dmpConsentementInput =>
      _$this._dmpConsentementInput ??=
          new _i1.GGetDmpConsentementInputBuilder();
  set dmpConsentementInput(
          _i1.GGetDmpConsentementInputBuilder? dmpConsentementInput) =>
      _$this._dmpConsentementInput = dmpConsentementInput;

  Gget_confidentialities_psVarsBuilder();

  Gget_confidentialities_psVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dmpConsentementInput = $v.dmpConsentementInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_confidentialities_psVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_confidentialities_psVars;
  }

  @override
  void update(void Function(Gget_confidentialities_psVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_confidentialities_psVars build() => _build();

  _$Gget_confidentialities_psVars _build() {
    _$Gget_confidentialities_psVars _$result;
    try {
      _$result = _$v ??
          new _$Gget_confidentialities_psVars._(
              dmpConsentementInput: dmpConsentementInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dmpConsentementInput';
        dmpConsentementInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_confidentialities_psVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
