// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_helpdesk_get_motifs.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_motifs_nouvelle_demandeData>
    _$ggetMotifsNouvelleDemandeDataSerializer =
    new _$Gget_motifs_nouvelle_demandeDataSerializer();
Serializer<Gget_motifs_nouvelle_demandeData_fetchAllReasons>
    _$ggetMotifsNouvelleDemandeDataFetchAllReasonsSerializer =
    new _$Gget_motifs_nouvelle_demandeData_fetchAllReasonsSerializer();

class _$Gget_motifs_nouvelle_demandeDataSerializer
    implements StructuredSerializer<Gget_motifs_nouvelle_demandeData> {
  @override
  final Iterable<Type> types = const [
    Gget_motifs_nouvelle_demandeData,
    _$Gget_motifs_nouvelle_demandeData
  ];
  @override
  final String wireName = 'Gget_motifs_nouvelle_demandeData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_motifs_nouvelle_demandeData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'fetchAllReasons',
      serializers.serialize(object.fetchAllReasons,
          specifiedType: const FullType(BuiltList, const [
            const FullType(Gget_motifs_nouvelle_demandeData_fetchAllReasons)
          ])),
    ];

    return result;
  }

  @override
  Gget_motifs_nouvelle_demandeData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_motifs_nouvelle_demandeDataBuilder();

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
        case 'fetchAllReasons':
          result.fetchAllReasons.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Gget_motifs_nouvelle_demandeData_fetchAllReasons)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_motifs_nouvelle_demandeData_fetchAllReasonsSerializer
    implements
        StructuredSerializer<Gget_motifs_nouvelle_demandeData_fetchAllReasons> {
  @override
  final Iterable<Type> types = const [
    Gget_motifs_nouvelle_demandeData_fetchAllReasons,
    _$Gget_motifs_nouvelle_demandeData_fetchAllReasons
  ];
  @override
  final String wireName = 'Gget_motifs_nouvelle_demandeData_fetchAllReasons';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_motifs_nouvelle_demandeData_fetchAllReasons object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
      'value',
      serializers.serialize(object.value,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_motifs_nouvelle_demandeData_fetchAllReasons deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_motifs_nouvelle_demandeData_fetchAllReasonsBuilder();

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
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_motifs_nouvelle_demandeData
    extends Gget_motifs_nouvelle_demandeData {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_motifs_nouvelle_demandeData_fetchAllReasons>
      fetchAllReasons;

  factory _$Gget_motifs_nouvelle_demandeData(
          [void Function(Gget_motifs_nouvelle_demandeDataBuilder)? updates]) =>
      (new Gget_motifs_nouvelle_demandeDataBuilder()..update(updates))._build();

  _$Gget_motifs_nouvelle_demandeData._(
      {required this.G__typename, required this.fetchAllReasons})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_motifs_nouvelle_demandeData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(fetchAllReasons,
        r'Gget_motifs_nouvelle_demandeData', 'fetchAllReasons');
  }

  @override
  Gget_motifs_nouvelle_demandeData rebuild(
          void Function(Gget_motifs_nouvelle_demandeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_motifs_nouvelle_demandeDataBuilder toBuilder() =>
      new Gget_motifs_nouvelle_demandeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_motifs_nouvelle_demandeData &&
        G__typename == other.G__typename &&
        fetchAllReasons == other.fetchAllReasons;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, fetchAllReasons.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_motifs_nouvelle_demandeData')
          ..add('G__typename', G__typename)
          ..add('fetchAllReasons', fetchAllReasons))
        .toString();
  }
}

class Gget_motifs_nouvelle_demandeDataBuilder
    implements
        Builder<Gget_motifs_nouvelle_demandeData,
            Gget_motifs_nouvelle_demandeDataBuilder> {
  _$Gget_motifs_nouvelle_demandeData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_motifs_nouvelle_demandeData_fetchAllReasons>?
      _fetchAllReasons;
  ListBuilder<Gget_motifs_nouvelle_demandeData_fetchAllReasons>
      get fetchAllReasons => _$this._fetchAllReasons ??=
          new ListBuilder<Gget_motifs_nouvelle_demandeData_fetchAllReasons>();
  set fetchAllReasons(
          ListBuilder<Gget_motifs_nouvelle_demandeData_fetchAllReasons>?
              fetchAllReasons) =>
      _$this._fetchAllReasons = fetchAllReasons;

  Gget_motifs_nouvelle_demandeDataBuilder() {
    Gget_motifs_nouvelle_demandeData._initializeBuilder(this);
  }

  Gget_motifs_nouvelle_demandeDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _fetchAllReasons = $v.fetchAllReasons.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_motifs_nouvelle_demandeData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_motifs_nouvelle_demandeData;
  }

  @override
  void update(void Function(Gget_motifs_nouvelle_demandeDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_motifs_nouvelle_demandeData build() => _build();

  _$Gget_motifs_nouvelle_demandeData _build() {
    _$Gget_motifs_nouvelle_demandeData _$result;
    try {
      _$result = _$v ??
          new _$Gget_motifs_nouvelle_demandeData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_motifs_nouvelle_demandeData', 'G__typename'),
              fetchAllReasons: fetchAllReasons.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fetchAllReasons';
        fetchAllReasons.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_motifs_nouvelle_demandeData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_motifs_nouvelle_demandeData_fetchAllReasons
    extends Gget_motifs_nouvelle_demandeData_fetchAllReasons {
  @override
  final String G__typename;
  @override
  final String label;
  @override
  final String value;

  factory _$Gget_motifs_nouvelle_demandeData_fetchAllReasons(
          [void Function(
                  Gget_motifs_nouvelle_demandeData_fetchAllReasonsBuilder)?
              updates]) =>
      (new Gget_motifs_nouvelle_demandeData_fetchAllReasonsBuilder()
            ..update(updates))
          ._build();

  _$Gget_motifs_nouvelle_demandeData_fetchAllReasons._(
      {required this.G__typename, required this.label, required this.value})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_motifs_nouvelle_demandeData_fetchAllReasons', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        label, r'Gget_motifs_nouvelle_demandeData_fetchAllReasons', 'label');
    BuiltValueNullFieldError.checkNotNull(
        value, r'Gget_motifs_nouvelle_demandeData_fetchAllReasons', 'value');
  }

  @override
  Gget_motifs_nouvelle_demandeData_fetchAllReasons rebuild(
          void Function(Gget_motifs_nouvelle_demandeData_fetchAllReasonsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_motifs_nouvelle_demandeData_fetchAllReasonsBuilder toBuilder() =>
      new Gget_motifs_nouvelle_demandeData_fetchAllReasonsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_motifs_nouvelle_demandeData_fetchAllReasons &&
        G__typename == other.G__typename &&
        label == other.label &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_motifs_nouvelle_demandeData_fetchAllReasons')
          ..add('G__typename', G__typename)
          ..add('label', label)
          ..add('value', value))
        .toString();
  }
}

class Gget_motifs_nouvelle_demandeData_fetchAllReasonsBuilder
    implements
        Builder<Gget_motifs_nouvelle_demandeData_fetchAllReasons,
            Gget_motifs_nouvelle_demandeData_fetchAllReasonsBuilder> {
  _$Gget_motifs_nouvelle_demandeData_fetchAllReasons? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  Gget_motifs_nouvelle_demandeData_fetchAllReasonsBuilder() {
    Gget_motifs_nouvelle_demandeData_fetchAllReasons._initializeBuilder(this);
  }

  Gget_motifs_nouvelle_demandeData_fetchAllReasonsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _label = $v.label;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_motifs_nouvelle_demandeData_fetchAllReasons other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_motifs_nouvelle_demandeData_fetchAllReasons;
  }

  @override
  void update(
      void Function(Gget_motifs_nouvelle_demandeData_fetchAllReasonsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_motifs_nouvelle_demandeData_fetchAllReasons build() => _build();

  _$Gget_motifs_nouvelle_demandeData_fetchAllReasons _build() {
    final _$result = _$v ??
        new _$Gget_motifs_nouvelle_demandeData_fetchAllReasons._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_motifs_nouvelle_demandeData_fetchAllReasons',
                'G__typename'),
            label: BuiltValueNullFieldError.checkNotNull(label,
                r'Gget_motifs_nouvelle_demandeData_fetchAllReasons', 'label'),
            value: BuiltValueNullFieldError.checkNotNull(value,
                r'Gget_motifs_nouvelle_demandeData_fetchAllReasons', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
