// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_send_signalement.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gsend_signalementVars> _$gsendSignalementVarsSerializer =
    new _$Gsend_signalementVarsSerializer();

class _$Gsend_signalementVarsSerializer
    implements StructuredSerializer<Gsend_signalementVars> {
  @override
  final Iterable<Type> types = const [
    Gsend_signalementVars,
    _$Gsend_signalementVars
  ];
  @override
  final String wireName = 'Gsend_signalementVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gsend_signalementVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'demandeRequest',
      serializers.serialize(object.demandeRequest,
          specifiedType: const FullType(_i1.GReportRequestForm)),
    ];

    return result;
  }

  @override
  Gsend_signalementVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gsend_signalementVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'demandeRequest':
          result.demandeRequest.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GReportRequestForm))!
              as _i1.GReportRequestForm);
          break;
      }
    }

    return result.build();
  }
}

class _$Gsend_signalementVars extends Gsend_signalementVars {
  @override
  final _i1.GReportRequestForm demandeRequest;

  factory _$Gsend_signalementVars(
          [void Function(Gsend_signalementVarsBuilder)? updates]) =>
      (new Gsend_signalementVarsBuilder()..update(updates))._build();

  _$Gsend_signalementVars._({required this.demandeRequest}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        demandeRequest, r'Gsend_signalementVars', 'demandeRequest');
  }

  @override
  Gsend_signalementVars rebuild(
          void Function(Gsend_signalementVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gsend_signalementVarsBuilder toBuilder() =>
      new Gsend_signalementVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gsend_signalementVars &&
        demandeRequest == other.demandeRequest;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, demandeRequest.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gsend_signalementVars')
          ..add('demandeRequest', demandeRequest))
        .toString();
  }
}

class Gsend_signalementVarsBuilder
    implements Builder<Gsend_signalementVars, Gsend_signalementVarsBuilder> {
  _$Gsend_signalementVars? _$v;

  _i1.GReportRequestFormBuilder? _demandeRequest;
  _i1.GReportRequestFormBuilder get demandeRequest =>
      _$this._demandeRequest ??= new _i1.GReportRequestFormBuilder();
  set demandeRequest(_i1.GReportRequestFormBuilder? demandeRequest) =>
      _$this._demandeRequest = demandeRequest;

  Gsend_signalementVarsBuilder();

  Gsend_signalementVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _demandeRequest = $v.demandeRequest.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gsend_signalementVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gsend_signalementVars;
  }

  @override
  void update(void Function(Gsend_signalementVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gsend_signalementVars build() => _build();

  _$Gsend_signalementVars _build() {
    _$Gsend_signalementVars _$result;
    try {
      _$result = _$v ??
          new _$Gsend_signalementVars._(demandeRequest: demandeRequest.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'demandeRequest';
        demandeRequest.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gsend_signalementVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
