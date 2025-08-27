// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mhs_get_histoire_de_sante_episodes.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_histoire_de_sante_episodesVars>
    _$ggetHistoireDeSanteEpisodesVarsSerializer =
    new _$Gget_histoire_de_sante_episodesVarsSerializer();

class _$Gget_histoire_de_sante_episodesVarsSerializer
    implements StructuredSerializer<Gget_histoire_de_sante_episodesVars> {
  @override
  final Iterable<Type> types = const [
    Gget_histoire_de_sante_episodesVars,
    _$Gget_histoire_de_sante_episodesVars
  ];
  @override
  final String wireName = 'Gget_histoire_de_sante_episodesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_histoire_de_sante_episodesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'currentPage',
      serializers.serialize(object.currentPage,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Gget_histoire_de_sante_episodesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_histoire_de_sante_episodesVarsBuilder();

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
        case 'currentPage':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_histoire_de_sante_episodesVars
    extends Gget_histoire_de_sante_episodesVars {
  @override
  final String patientId;
  @override
  final double currentPage;

  factory _$Gget_histoire_de_sante_episodesVars(
          [void Function(Gget_histoire_de_sante_episodesVarsBuilder)?
              updates]) =>
      (new Gget_histoire_de_sante_episodesVarsBuilder()..update(updates))
          ._build();

  _$Gget_histoire_de_sante_episodesVars._(
      {required this.patientId, required this.currentPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_histoire_de_sante_episodesVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(
        currentPage, r'Gget_histoire_de_sante_episodesVars', 'currentPage');
  }

  @override
  Gget_histoire_de_sante_episodesVars rebuild(
          void Function(Gget_histoire_de_sante_episodesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_histoire_de_sante_episodesVarsBuilder toBuilder() =>
      new Gget_histoire_de_sante_episodesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_histoire_de_sante_episodesVars &&
        patientId == other.patientId &&
        currentPage == other.currentPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_histoire_de_sante_episodesVars')
          ..add('patientId', patientId)
          ..add('currentPage', currentPage))
        .toString();
  }
}

class Gget_histoire_de_sante_episodesVarsBuilder
    implements
        Builder<Gget_histoire_de_sante_episodesVars,
            Gget_histoire_de_sante_episodesVarsBuilder> {
  _$Gget_histoire_de_sante_episodesVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  double? _currentPage;
  double? get currentPage => _$this._currentPage;
  set currentPage(double? currentPage) => _$this._currentPage = currentPage;

  Gget_histoire_de_sante_episodesVarsBuilder();

  Gget_histoire_de_sante_episodesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _currentPage = $v.currentPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_histoire_de_sante_episodesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_histoire_de_sante_episodesVars;
  }

  @override
  void update(
      void Function(Gget_histoire_de_sante_episodesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_histoire_de_sante_episodesVars build() => _build();

  _$Gget_histoire_de_sante_episodesVars _build() {
    final _$result = _$v ??
        new _$Gget_histoire_de_sante_episodesVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gget_histoire_de_sante_episodesVars', 'patientId'),
            currentPage: BuiltValueNullFieldError.checkNotNull(currentPage,
                r'Gget_histoire_de_sante_episodesVars', 'currentPage'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
