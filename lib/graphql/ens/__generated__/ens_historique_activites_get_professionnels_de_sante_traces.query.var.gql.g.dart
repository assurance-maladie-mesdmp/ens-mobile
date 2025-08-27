// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_historique_activites_get_professionnels_de_sante_traces.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_professionnels_de_sante_tracesVars>
    _$ggetProfessionnelsDeSanteTracesVarsSerializer =
    new _$Gget_professionnels_de_sante_tracesVarsSerializer();

class _$Gget_professionnels_de_sante_tracesVarsSerializer
    implements StructuredSerializer<Gget_professionnels_de_sante_tracesVars> {
  @override
  final Iterable<Type> types = const [
    Gget_professionnels_de_sante_tracesVars,
    _$Gget_professionnels_de_sante_tracesVars
  ];
  @override
  final String wireName = 'Gget_professionnels_de_sante_tracesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_professionnels_de_sante_tracesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
      'pageSize',
      serializers.serialize(object.pageSize,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.filter;
    if (value != null) {
      result
        ..add('filter')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GActivityTraceFilterInput)));
    }
    return result;
  }

  @override
  Gget_professionnels_de_sante_tracesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_professionnels_de_sante_tracesVarsBuilder();

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
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'pageSize':
          result.pageSize = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'filter':
          result.filter.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GActivityTraceFilterInput))!
              as _i1.GActivityTraceFilterInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_professionnels_de_sante_tracesVars
    extends Gget_professionnels_de_sante_tracesVars {
  @override
  final String patientId;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final _i1.GActivityTraceFilterInput? filter;

  factory _$Gget_professionnels_de_sante_tracesVars(
          [void Function(Gget_professionnels_de_sante_tracesVarsBuilder)?
              updates]) =>
      (new Gget_professionnels_de_sante_tracesVarsBuilder()..update(updates))
          ._build();

  _$Gget_professionnels_de_sante_tracesVars._(
      {required this.patientId,
      required this.page,
      required this.pageSize,
      this.filter})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_professionnels_de_sante_tracesVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(
        page, r'Gget_professionnels_de_sante_tracesVars', 'page');
    BuiltValueNullFieldError.checkNotNull(
        pageSize, r'Gget_professionnels_de_sante_tracesVars', 'pageSize');
  }

  @override
  Gget_professionnels_de_sante_tracesVars rebuild(
          void Function(Gget_professionnels_de_sante_tracesVarsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_professionnels_de_sante_tracesVarsBuilder toBuilder() =>
      new Gget_professionnels_de_sante_tracesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_professionnels_de_sante_tracesVars &&
        patientId == other.patientId &&
        page == other.page &&
        pageSize == other.pageSize &&
        filter == other.filter;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, pageSize.hashCode);
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_professionnels_de_sante_tracesVars')
          ..add('patientId', patientId)
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('filter', filter))
        .toString();
  }
}

class Gget_professionnels_de_sante_tracesVarsBuilder
    implements
        Builder<Gget_professionnels_de_sante_tracesVars,
            Gget_professionnels_de_sante_tracesVarsBuilder> {
  _$Gget_professionnels_de_sante_tracesVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  _i1.GActivityTraceFilterInputBuilder? _filter;
  _i1.GActivityTraceFilterInputBuilder get filter =>
      _$this._filter ??= new _i1.GActivityTraceFilterInputBuilder();
  set filter(_i1.GActivityTraceFilterInputBuilder? filter) =>
      _$this._filter = filter;

  Gget_professionnels_de_sante_tracesVarsBuilder();

  Gget_professionnels_de_sante_tracesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _page = $v.page;
      _pageSize = $v.pageSize;
      _filter = $v.filter?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_professionnels_de_sante_tracesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_professionnels_de_sante_tracesVars;
  }

  @override
  void update(
      void Function(Gget_professionnels_de_sante_tracesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_professionnels_de_sante_tracesVars build() => _build();

  _$Gget_professionnels_de_sante_tracesVars _build() {
    _$Gget_professionnels_de_sante_tracesVars _$result;
    try {
      _$result = _$v ??
          new _$Gget_professionnels_de_sante_tracesVars._(
              patientId: BuiltValueNullFieldError.checkNotNull(patientId,
                  r'Gget_professionnels_de_sante_tracesVars', 'patientId'),
              page: BuiltValueNullFieldError.checkNotNull(
                  page, r'Gget_professionnels_de_sante_tracesVars', 'page'),
              pageSize: BuiltValueNullFieldError.checkNotNull(pageSize,
                  r'Gget_professionnels_de_sante_tracesVars', 'pageSize'),
              filter: _filter?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filter';
        _filter?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_professionnels_de_sante_tracesVars',
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
