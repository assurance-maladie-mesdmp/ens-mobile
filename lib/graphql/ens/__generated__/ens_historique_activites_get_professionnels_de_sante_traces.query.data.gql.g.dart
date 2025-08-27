// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_historique_activites_get_professionnels_de_sante_traces.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_professionnels_de_sante_tracesData>
    _$ggetProfessionnelsDeSanteTracesDataSerializer =
    new _$Gget_professionnels_de_sante_tracesDataSerializer();
Serializer<Gget_professionnels_de_sante_tracesData_activityTraces>
    _$ggetProfessionnelsDeSanteTracesDataActivityTracesSerializer =
    new _$Gget_professionnels_de_sante_tracesData_activityTracesSerializer();
Serializer<Gget_professionnels_de_sante_tracesData_activityTraces_items>
    _$ggetProfessionnelsDeSanteTracesDataActivityTracesItemsSerializer =
    new _$Gget_professionnels_de_sante_tracesData_activityTraces_itemsSerializer();
Serializer<Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo>
    _$ggetProfessionnelsDeSanteTracesDataActivityTracesPageInfoSerializer =
    new _$Gget_professionnels_de_sante_tracesData_activityTraces_pageInfoSerializer();

class _$Gget_professionnels_de_sante_tracesDataSerializer
    implements StructuredSerializer<Gget_professionnels_de_sante_tracesData> {
  @override
  final Iterable<Type> types = const [
    Gget_professionnels_de_sante_tracesData,
    _$Gget_professionnels_de_sante_tracesData
  ];
  @override
  final String wireName = 'Gget_professionnels_de_sante_tracesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_professionnels_de_sante_tracesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'activityTraces',
      serializers.serialize(object.activityTraces,
          specifiedType: const FullType(
              Gget_professionnels_de_sante_tracesData_activityTraces)),
    ];

    return result;
  }

  @override
  Gget_professionnels_de_sante_tracesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_professionnels_de_sante_tracesDataBuilder();

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
        case 'activityTraces':
          result.activityTraces.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_professionnels_de_sante_tracesData_activityTraces))!
              as Gget_professionnels_de_sante_tracesData_activityTraces);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_professionnels_de_sante_tracesData_activityTracesSerializer
    implements
        StructuredSerializer<
            Gget_professionnels_de_sante_tracesData_activityTraces> {
  @override
  final Iterable<Type> types = const [
    Gget_professionnels_de_sante_tracesData_activityTraces,
    _$Gget_professionnels_de_sante_tracesData_activityTraces
  ];
  @override
  final String wireName =
      'Gget_professionnels_de_sante_tracesData_activityTraces';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_professionnels_de_sante_tracesData_activityTraces object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'items',
      serializers.serialize(object.items,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_professionnels_de_sante_tracesData_activityTraces_items)
          ])),
      'pageInfo',
      serializers.serialize(object.pageInfo,
          specifiedType: const FullType(
              Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo)),
    ];

    return result;
  }

  @override
  Gget_professionnels_de_sante_tracesData_activityTraces deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_professionnels_de_sante_tracesData_activityTracesBuilder();

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
        case 'items':
          result.items.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_professionnels_de_sante_tracesData_activityTraces_items)
              ]))! as BuiltList<Object?>);
          break;
        case 'pageInfo':
          result.pageInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo))!
              as Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_professionnels_de_sante_tracesData_activityTraces_itemsSerializer
    implements
        StructuredSerializer<
            Gget_professionnels_de_sante_tracesData_activityTraces_items> {
  @override
  final Iterable<Type> types = const [
    Gget_professionnels_de_sante_tracesData_activityTraces_items,
    _$Gget_professionnels_de_sante_tracesData_activityTraces_items
  ];
  @override
  final String wireName =
      'Gget_professionnels_de_sante_tracesData_activityTraces_items';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_professionnels_de_sante_tracesData_activityTraces_items object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'actorType',
      serializers.serialize(object.actorType,
          specifiedType: const FullType(_i2.GActivityActorType)),
      'actorDisplayName',
      serializers.serialize(object.actorDisplayName,
          specifiedType: const FullType(String)),
      'actionDate',
      serializers.serialize(object.actionDate,
          specifiedType: const FullType(String)),
      'actionDescription',
      serializers.serialize(object.actionDescription,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_professionnels_de_sante_tracesData_activityTraces_items deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_professionnels_de_sante_tracesData_activityTraces_itemsBuilder();

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
        case 'actorType':
          result.actorType = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GActivityActorType))!
              as _i2.GActivityActorType;
          break;
        case 'actorDisplayName':
          result.actorDisplayName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'actionDate':
          result.actionDate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'actionDescription':
          result.actionDescription = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_professionnels_de_sante_tracesData_activityTraces_pageInfoSerializer
    implements
        StructuredSerializer<
            Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo> {
  @override
  final Iterable<Type> types = const [
    Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo,
    _$Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo
  ];
  @override
  final String wireName =
      'Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
      'hasNextPage',
      serializers.serialize(object.hasNextPage,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_professionnels_de_sante_tracesData_activityTraces_pageInfoBuilder();

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
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'hasNextPage':
          result.hasNextPage = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_professionnels_de_sante_tracesData
    extends Gget_professionnels_de_sante_tracesData {
  @override
  final String G__typename;
  @override
  final Gget_professionnels_de_sante_tracesData_activityTraces activityTraces;

  factory _$Gget_professionnels_de_sante_tracesData(
          [void Function(Gget_professionnels_de_sante_tracesDataBuilder)?
              updates]) =>
      (new Gget_professionnels_de_sante_tracesDataBuilder()..update(updates))
          ._build();

  _$Gget_professionnels_de_sante_tracesData._(
      {required this.G__typename, required this.activityTraces})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_professionnels_de_sante_tracesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(activityTraces,
        r'Gget_professionnels_de_sante_tracesData', 'activityTraces');
  }

  @override
  Gget_professionnels_de_sante_tracesData rebuild(
          void Function(Gget_professionnels_de_sante_tracesDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_professionnels_de_sante_tracesDataBuilder toBuilder() =>
      new Gget_professionnels_de_sante_tracesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_professionnels_de_sante_tracesData &&
        G__typename == other.G__typename &&
        activityTraces == other.activityTraces;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, activityTraces.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_professionnels_de_sante_tracesData')
          ..add('G__typename', G__typename)
          ..add('activityTraces', activityTraces))
        .toString();
  }
}

class Gget_professionnels_de_sante_tracesDataBuilder
    implements
        Builder<Gget_professionnels_de_sante_tracesData,
            Gget_professionnels_de_sante_tracesDataBuilder> {
  _$Gget_professionnels_de_sante_tracesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_professionnels_de_sante_tracesData_activityTracesBuilder?
      _activityTraces;
  Gget_professionnels_de_sante_tracesData_activityTracesBuilder
      get activityTraces => _$this._activityTraces ??=
          new Gget_professionnels_de_sante_tracesData_activityTracesBuilder();
  set activityTraces(
          Gget_professionnels_de_sante_tracesData_activityTracesBuilder?
              activityTraces) =>
      _$this._activityTraces = activityTraces;

  Gget_professionnels_de_sante_tracesDataBuilder() {
    Gget_professionnels_de_sante_tracesData._initializeBuilder(this);
  }

  Gget_professionnels_de_sante_tracesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _activityTraces = $v.activityTraces.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_professionnels_de_sante_tracesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_professionnels_de_sante_tracesData;
  }

  @override
  void update(
      void Function(Gget_professionnels_de_sante_tracesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_professionnels_de_sante_tracesData build() => _build();

  _$Gget_professionnels_de_sante_tracesData _build() {
    _$Gget_professionnels_de_sante_tracesData _$result;
    try {
      _$result = _$v ??
          new _$Gget_professionnels_de_sante_tracesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_professionnels_de_sante_tracesData', 'G__typename'),
              activityTraces: activityTraces.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'activityTraces';
        activityTraces.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_professionnels_de_sante_tracesData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_professionnels_de_sante_tracesData_activityTraces
    extends Gget_professionnels_de_sante_tracesData_activityTraces {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_professionnels_de_sante_tracesData_activityTraces_items>
      items;
  @override
  final Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo
      pageInfo;

  factory _$Gget_professionnels_de_sante_tracesData_activityTraces(
          [void Function(
                  Gget_professionnels_de_sante_tracesData_activityTracesBuilder)?
              updates]) =>
      (new Gget_professionnels_de_sante_tracesData_activityTracesBuilder()
            ..update(updates))
          ._build();

  _$Gget_professionnels_de_sante_tracesData_activityTraces._(
      {required this.G__typename, required this.items, required this.pageInfo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_professionnels_de_sante_tracesData_activityTraces',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(items,
        r'Gget_professionnels_de_sante_tracesData_activityTraces', 'items');
    BuiltValueNullFieldError.checkNotNull(pageInfo,
        r'Gget_professionnels_de_sante_tracesData_activityTraces', 'pageInfo');
  }

  @override
  Gget_professionnels_de_sante_tracesData_activityTraces rebuild(
          void Function(
                  Gget_professionnels_de_sante_tracesData_activityTracesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_professionnels_de_sante_tracesData_activityTracesBuilder toBuilder() =>
      new Gget_professionnels_de_sante_tracesData_activityTracesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_professionnels_de_sante_tracesData_activityTraces &&
        G__typename == other.G__typename &&
        items == other.items &&
        pageInfo == other.pageInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_professionnels_de_sante_tracesData_activityTraces')
          ..add('G__typename', G__typename)
          ..add('items', items)
          ..add('pageInfo', pageInfo))
        .toString();
  }
}

class Gget_professionnels_de_sante_tracesData_activityTracesBuilder
    implements
        Builder<Gget_professionnels_de_sante_tracesData_activityTraces,
            Gget_professionnels_de_sante_tracesData_activityTracesBuilder> {
  _$Gget_professionnels_de_sante_tracesData_activityTraces? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_professionnels_de_sante_tracesData_activityTraces_items>?
      _items;
  ListBuilder<Gget_professionnels_de_sante_tracesData_activityTraces_items>
      get items => _$this._items ??= new ListBuilder<
          Gget_professionnels_de_sante_tracesData_activityTraces_items>();
  set items(
          ListBuilder<
                  Gget_professionnels_de_sante_tracesData_activityTraces_items>?
              items) =>
      _$this._items = items;

  Gget_professionnels_de_sante_tracesData_activityTraces_pageInfoBuilder?
      _pageInfo;
  Gget_professionnels_de_sante_tracesData_activityTraces_pageInfoBuilder
      get pageInfo => _$this._pageInfo ??=
          new Gget_professionnels_de_sante_tracesData_activityTraces_pageInfoBuilder();
  set pageInfo(
          Gget_professionnels_de_sante_tracesData_activityTraces_pageInfoBuilder?
              pageInfo) =>
      _$this._pageInfo = pageInfo;

  Gget_professionnels_de_sante_tracesData_activityTracesBuilder() {
    Gget_professionnels_de_sante_tracesData_activityTraces._initializeBuilder(
        this);
  }

  Gget_professionnels_de_sante_tracesData_activityTracesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _items = $v.items.toBuilder();
      _pageInfo = $v.pageInfo.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_professionnels_de_sante_tracesData_activityTraces other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_professionnels_de_sante_tracesData_activityTraces;
  }

  @override
  void update(
      void Function(
              Gget_professionnels_de_sante_tracesData_activityTracesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_professionnels_de_sante_tracesData_activityTraces build() => _build();

  _$Gget_professionnels_de_sante_tracesData_activityTraces _build() {
    _$Gget_professionnels_de_sante_tracesData_activityTraces _$result;
    try {
      _$result = _$v ??
          new _$Gget_professionnels_de_sante_tracesData_activityTraces._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_professionnels_de_sante_tracesData_activityTraces',
                  'G__typename'),
              items: items.build(),
              pageInfo: pageInfo.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
        _$failedField = 'pageInfo';
        pageInfo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_professionnels_de_sante_tracesData_activityTraces',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_professionnels_de_sante_tracesData_activityTraces_items
    extends Gget_professionnels_de_sante_tracesData_activityTraces_items {
  @override
  final String G__typename;
  @override
  final _i2.GActivityActorType actorType;
  @override
  final String actorDisplayName;
  @override
  final String actionDate;
  @override
  final String actionDescription;

  factory _$Gget_professionnels_de_sante_tracesData_activityTraces_items(
          [void Function(
                  Gget_professionnels_de_sante_tracesData_activityTraces_itemsBuilder)?
              updates]) =>
      (new Gget_professionnels_de_sante_tracesData_activityTraces_itemsBuilder()
            ..update(updates))
          ._build();

  _$Gget_professionnels_de_sante_tracesData_activityTraces_items._(
      {required this.G__typename,
      required this.actorType,
      required this.actorDisplayName,
      required this.actionDate,
      required this.actionDescription})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_professionnels_de_sante_tracesData_activityTraces_items',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        actorType,
        r'Gget_professionnels_de_sante_tracesData_activityTraces_items',
        'actorType');
    BuiltValueNullFieldError.checkNotNull(
        actorDisplayName,
        r'Gget_professionnels_de_sante_tracesData_activityTraces_items',
        'actorDisplayName');
    BuiltValueNullFieldError.checkNotNull(
        actionDate,
        r'Gget_professionnels_de_sante_tracesData_activityTraces_items',
        'actionDate');
    BuiltValueNullFieldError.checkNotNull(
        actionDescription,
        r'Gget_professionnels_de_sante_tracesData_activityTraces_items',
        'actionDescription');
  }

  @override
  Gget_professionnels_de_sante_tracesData_activityTraces_items rebuild(
          void Function(
                  Gget_professionnels_de_sante_tracesData_activityTraces_itemsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_professionnels_de_sante_tracesData_activityTraces_itemsBuilder
      toBuilder() =>
          new Gget_professionnels_de_sante_tracesData_activityTraces_itemsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_professionnels_de_sante_tracesData_activityTraces_items &&
        G__typename == other.G__typename &&
        actorType == other.actorType &&
        actorDisplayName == other.actorDisplayName &&
        actionDate == other.actionDate &&
        actionDescription == other.actionDescription;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, actorType.hashCode);
    _$hash = $jc(_$hash, actorDisplayName.hashCode);
    _$hash = $jc(_$hash, actionDate.hashCode);
    _$hash = $jc(_$hash, actionDescription.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_professionnels_de_sante_tracesData_activityTraces_items')
          ..add('G__typename', G__typename)
          ..add('actorType', actorType)
          ..add('actorDisplayName', actorDisplayName)
          ..add('actionDate', actionDate)
          ..add('actionDescription', actionDescription))
        .toString();
  }
}

class Gget_professionnels_de_sante_tracesData_activityTraces_itemsBuilder
    implements
        Builder<Gget_professionnels_de_sante_tracesData_activityTraces_items,
            Gget_professionnels_de_sante_tracesData_activityTraces_itemsBuilder> {
  _$Gget_professionnels_de_sante_tracesData_activityTraces_items? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GActivityActorType? _actorType;
  _i2.GActivityActorType? get actorType => _$this._actorType;
  set actorType(_i2.GActivityActorType? actorType) =>
      _$this._actorType = actorType;

  String? _actorDisplayName;
  String? get actorDisplayName => _$this._actorDisplayName;
  set actorDisplayName(String? actorDisplayName) =>
      _$this._actorDisplayName = actorDisplayName;

  String? _actionDate;
  String? get actionDate => _$this._actionDate;
  set actionDate(String? actionDate) => _$this._actionDate = actionDate;

  String? _actionDescription;
  String? get actionDescription => _$this._actionDescription;
  set actionDescription(String? actionDescription) =>
      _$this._actionDescription = actionDescription;

  Gget_professionnels_de_sante_tracesData_activityTraces_itemsBuilder() {
    Gget_professionnels_de_sante_tracesData_activityTraces_items
        ._initializeBuilder(this);
  }

  Gget_professionnels_de_sante_tracesData_activityTraces_itemsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _actorType = $v.actorType;
      _actorDisplayName = $v.actorDisplayName;
      _actionDate = $v.actionDate;
      _actionDescription = $v.actionDescription;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_professionnels_de_sante_tracesData_activityTraces_items other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$Gget_professionnels_de_sante_tracesData_activityTraces_items;
  }

  @override
  void update(
      void Function(
              Gget_professionnels_de_sante_tracesData_activityTraces_itemsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_professionnels_de_sante_tracesData_activityTraces_items build() =>
      _build();

  _$Gget_professionnels_de_sante_tracesData_activityTraces_items _build() {
    final _$result = _$v ??
        new _$Gget_professionnels_de_sante_tracesData_activityTraces_items._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_professionnels_de_sante_tracesData_activityTraces_items',
                'G__typename'),
            actorType: BuiltValueNullFieldError.checkNotNull(
                actorType, r'Gget_professionnels_de_sante_tracesData_activityTraces_items', 'actorType'),
            actorDisplayName: BuiltValueNullFieldError.checkNotNull(
                actorDisplayName,
                r'Gget_professionnels_de_sante_tracesData_activityTraces_items',
                'actorDisplayName'),
            actionDate: BuiltValueNullFieldError.checkNotNull(
                actionDate, r'Gget_professionnels_de_sante_tracesData_activityTraces_items', 'actionDate'),
            actionDescription: BuiltValueNullFieldError.checkNotNull(
                actionDescription,
                r'Gget_professionnels_de_sante_tracesData_activityTraces_items',
                'actionDescription'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo
    extends Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo {
  @override
  final String G__typename;
  @override
  final int page;
  @override
  final bool hasNextPage;

  factory _$Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo(
          [void Function(
                  Gget_professionnels_de_sante_tracesData_activityTraces_pageInfoBuilder)?
              updates]) =>
      (new Gget_professionnels_de_sante_tracesData_activityTraces_pageInfoBuilder()
            ..update(updates))
          ._build();

  _$Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo._(
      {required this.G__typename,
      required this.page,
      required this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        page,
        r'Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo',
        'page');
    BuiltValueNullFieldError.checkNotNull(
        hasNextPage,
        r'Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo',
        'hasNextPage');
  }

  @override
  Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo rebuild(
          void Function(
                  Gget_professionnels_de_sante_tracesData_activityTraces_pageInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_professionnels_de_sante_tracesData_activityTraces_pageInfoBuilder
      toBuilder() =>
          new Gget_professionnels_de_sante_tracesData_activityTraces_pageInfoBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo &&
        G__typename == other.G__typename &&
        page == other.page &&
        hasNextPage == other.hasNextPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, hasNextPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo')
          ..add('G__typename', G__typename)
          ..add('page', page)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class Gget_professionnels_de_sante_tracesData_activityTraces_pageInfoBuilder
    implements
        Builder<Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo,
            Gget_professionnels_de_sante_tracesData_activityTraces_pageInfoBuilder> {
  _$Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  Gget_professionnels_de_sante_tracesData_activityTraces_pageInfoBuilder() {
    Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo
        ._initializeBuilder(this);
  }

  Gget_professionnels_de_sante_tracesData_activityTraces_pageInfoBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _page = $v.page;
      _hasNextPage = $v.hasNextPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo;
  }

  @override
  void update(
      void Function(
              Gget_professionnels_de_sante_tracesData_activityTraces_pageInfoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo build() =>
      _build();

  _$Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo _build() {
    final _$result = _$v ??
        new _$Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo',
                'G__typename'),
            page: BuiltValueNullFieldError.checkNotNull(
                page,
                r'Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo',
                'page'),
            hasNextPage: BuiltValueNullFieldError.checkNotNull(
                hasNextPage,
                r'Gget_professionnels_de_sante_tracesData_activityTraces_pageInfo',
                'hasNextPage'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
