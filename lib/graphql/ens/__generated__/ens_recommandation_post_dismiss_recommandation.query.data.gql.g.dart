// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_recommandation_post_dismiss_recommandation.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gpost_dismiss_recommandationData>
    _$gpostDismissRecommandationDataSerializer =
    new _$Gpost_dismiss_recommandationDataSerializer();
Serializer<Gpost_dismiss_recommandationData_postponeRecommendationDisplay>
    _$gpostDismissRecommandationDataPostponeRecommendationDisplaySerializer =
    new _$Gpost_dismiss_recommandationData_postponeRecommendationDisplaySerializer();

class _$Gpost_dismiss_recommandationDataSerializer
    implements StructuredSerializer<Gpost_dismiss_recommandationData> {
  @override
  final Iterable<Type> types = const [
    Gpost_dismiss_recommandationData,
    _$Gpost_dismiss_recommandationData
  ];
  @override
  final String wireName = 'Gpost_dismiss_recommandationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gpost_dismiss_recommandationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'postponeRecommendationDisplay',
      serializers.serialize(object.postponeRecommendationDisplay,
          specifiedType: const FullType(
              Gpost_dismiss_recommandationData_postponeRecommendationDisplay)),
    ];

    return result;
  }

  @override
  Gpost_dismiss_recommandationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gpost_dismiss_recommandationDataBuilder();

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
        case 'postponeRecommendationDisplay':
          result.postponeRecommendationDisplay.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      Gpost_dismiss_recommandationData_postponeRecommendationDisplay))!
              as Gpost_dismiss_recommandationData_postponeRecommendationDisplay);
          break;
      }
    }

    return result.build();
  }
}

class _$Gpost_dismiss_recommandationData_postponeRecommendationDisplaySerializer
    implements
        StructuredSerializer<
            Gpost_dismiss_recommandationData_postponeRecommendationDisplay> {
  @override
  final Iterable<Type> types = const [
    Gpost_dismiss_recommandationData_postponeRecommendationDisplay,
    _$Gpost_dismiss_recommandationData_postponeRecommendationDisplay
  ];
  @override
  final String wireName =
      'Gpost_dismiss_recommandationData_postponeRecommendationDisplay';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gpost_dismiss_recommandationData_postponeRecommendationDisplay object,
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
  Gpost_dismiss_recommandationData_postponeRecommendationDisplay deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gpost_dismiss_recommandationData_postponeRecommendationDisplayBuilder();

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

class _$Gpost_dismiss_recommandationData
    extends Gpost_dismiss_recommandationData {
  @override
  final String G__typename;
  @override
  final Gpost_dismiss_recommandationData_postponeRecommendationDisplay
      postponeRecommendationDisplay;

  factory _$Gpost_dismiss_recommandationData(
          [void Function(Gpost_dismiss_recommandationDataBuilder)? updates]) =>
      (new Gpost_dismiss_recommandationDataBuilder()..update(updates))._build();

  _$Gpost_dismiss_recommandationData._(
      {required this.G__typename, required this.postponeRecommendationDisplay})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gpost_dismiss_recommandationData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(postponeRecommendationDisplay,
        r'Gpost_dismiss_recommandationData', 'postponeRecommendationDisplay');
  }

  @override
  Gpost_dismiss_recommandationData rebuild(
          void Function(Gpost_dismiss_recommandationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gpost_dismiss_recommandationDataBuilder toBuilder() =>
      new Gpost_dismiss_recommandationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gpost_dismiss_recommandationData &&
        G__typename == other.G__typename &&
        postponeRecommendationDisplay == other.postponeRecommendationDisplay;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, postponeRecommendationDisplay.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gpost_dismiss_recommandationData')
          ..add('G__typename', G__typename)
          ..add('postponeRecommendationDisplay', postponeRecommendationDisplay))
        .toString();
  }
}

class Gpost_dismiss_recommandationDataBuilder
    implements
        Builder<Gpost_dismiss_recommandationData,
            Gpost_dismiss_recommandationDataBuilder> {
  _$Gpost_dismiss_recommandationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gpost_dismiss_recommandationData_postponeRecommendationDisplayBuilder?
      _postponeRecommendationDisplay;
  Gpost_dismiss_recommandationData_postponeRecommendationDisplayBuilder
      get postponeRecommendationDisplay => _$this
              ._postponeRecommendationDisplay ??=
          new Gpost_dismiss_recommandationData_postponeRecommendationDisplayBuilder();
  set postponeRecommendationDisplay(
          Gpost_dismiss_recommandationData_postponeRecommendationDisplayBuilder?
              postponeRecommendationDisplay) =>
      _$this._postponeRecommendationDisplay = postponeRecommendationDisplay;

  Gpost_dismiss_recommandationDataBuilder() {
    Gpost_dismiss_recommandationData._initializeBuilder(this);
  }

  Gpost_dismiss_recommandationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _postponeRecommendationDisplay =
          $v.postponeRecommendationDisplay.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gpost_dismiss_recommandationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gpost_dismiss_recommandationData;
  }

  @override
  void update(void Function(Gpost_dismiss_recommandationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gpost_dismiss_recommandationData build() => _build();

  _$Gpost_dismiss_recommandationData _build() {
    _$Gpost_dismiss_recommandationData _$result;
    try {
      _$result = _$v ??
          new _$Gpost_dismiss_recommandationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gpost_dismiss_recommandationData', 'G__typename'),
              postponeRecommendationDisplay:
                  postponeRecommendationDisplay.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'postponeRecommendationDisplay';
        postponeRecommendationDisplay.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gpost_dismiss_recommandationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gpost_dismiss_recommandationData_postponeRecommendationDisplay
    extends Gpost_dismiss_recommandationData_postponeRecommendationDisplay {
  @override
  final String G__typename;
  @override
  final bool success;

  factory _$Gpost_dismiss_recommandationData_postponeRecommendationDisplay(
          [void Function(
                  Gpost_dismiss_recommandationData_postponeRecommendationDisplayBuilder)?
              updates]) =>
      (new Gpost_dismiss_recommandationData_postponeRecommendationDisplayBuilder()
            ..update(updates))
          ._build();

  _$Gpost_dismiss_recommandationData_postponeRecommendationDisplay._(
      {required this.G__typename, required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gpost_dismiss_recommandationData_postponeRecommendationDisplay',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        success,
        r'Gpost_dismiss_recommandationData_postponeRecommendationDisplay',
        'success');
  }

  @override
  Gpost_dismiss_recommandationData_postponeRecommendationDisplay rebuild(
          void Function(
                  Gpost_dismiss_recommandationData_postponeRecommendationDisplayBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gpost_dismiss_recommandationData_postponeRecommendationDisplayBuilder
      toBuilder() =>
          new Gpost_dismiss_recommandationData_postponeRecommendationDisplayBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gpost_dismiss_recommandationData_postponeRecommendationDisplay &&
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
            r'Gpost_dismiss_recommandationData_postponeRecommendationDisplay')
          ..add('G__typename', G__typename)
          ..add('success', success))
        .toString();
  }
}

class Gpost_dismiss_recommandationData_postponeRecommendationDisplayBuilder
    implements
        Builder<Gpost_dismiss_recommandationData_postponeRecommendationDisplay,
            Gpost_dismiss_recommandationData_postponeRecommendationDisplayBuilder> {
  _$Gpost_dismiss_recommandationData_postponeRecommendationDisplay? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  Gpost_dismiss_recommandationData_postponeRecommendationDisplayBuilder() {
    Gpost_dismiss_recommandationData_postponeRecommendationDisplay
        ._initializeBuilder(this);
  }

  Gpost_dismiss_recommandationData_postponeRecommendationDisplayBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gpost_dismiss_recommandationData_postponeRecommendationDisplay other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gpost_dismiss_recommandationData_postponeRecommendationDisplay;
  }

  @override
  void update(
      void Function(
              Gpost_dismiss_recommandationData_postponeRecommendationDisplayBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gpost_dismiss_recommandationData_postponeRecommendationDisplay build() =>
      _build();

  _$Gpost_dismiss_recommandationData_postponeRecommendationDisplay _build() {
    final _$result = _$v ??
        new _$Gpost_dismiss_recommandationData_postponeRecommendationDisplay._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gpost_dismiss_recommandationData_postponeRecommendationDisplay',
                'G__typename'),
            success: BuiltValueNullFieldError.checkNotNull(
                success,
                r'Gpost_dismiss_recommandationData_postponeRecommendationDisplay',
                'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
