// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_link.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_linkVars> _$gdeleteLinkVarsSerializer =
    new _$Gdelete_linkVarsSerializer();

class _$Gdelete_linkVarsSerializer
    implements StructuredSerializer<Gdelete_linkVars> {
  @override
  final Iterable<Type> types = const [Gdelete_linkVars, _$Gdelete_linkVars];
  @override
  final String wireName = 'Gdelete_linkVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, Gdelete_linkVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'deleteLinksInput',
      serializers.serialize(object.deleteLinksInput,
          specifiedType: const FullType(_i1.GDeleteLinkInput)),
    ];

    return result;
  }

  @override
  Gdelete_linkVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_linkVarsBuilder();

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
        case 'deleteLinksInput':
          result.deleteLinksInput.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GDeleteLinkInput))!
              as _i1.GDeleteLinkInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_linkVars extends Gdelete_linkVars {
  @override
  final String patientId;
  @override
  final _i1.GDeleteLinkInput deleteLinksInput;

  factory _$Gdelete_linkVars(
          [void Function(Gdelete_linkVarsBuilder)? updates]) =>
      (new Gdelete_linkVarsBuilder()..update(updates))._build();

  _$Gdelete_linkVars._(
      {required this.patientId, required this.deleteLinksInput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gdelete_linkVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(
        deleteLinksInput, r'Gdelete_linkVars', 'deleteLinksInput');
  }

  @override
  Gdelete_linkVars rebuild(void Function(Gdelete_linkVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_linkVarsBuilder toBuilder() =>
      new Gdelete_linkVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_linkVars &&
        patientId == other.patientId &&
        deleteLinksInput == other.deleteLinksInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, deleteLinksInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_linkVars')
          ..add('patientId', patientId)
          ..add('deleteLinksInput', deleteLinksInput))
        .toString();
  }
}

class Gdelete_linkVarsBuilder
    implements Builder<Gdelete_linkVars, Gdelete_linkVarsBuilder> {
  _$Gdelete_linkVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  _i1.GDeleteLinkInputBuilder? _deleteLinksInput;
  _i1.GDeleteLinkInputBuilder get deleteLinksInput =>
      _$this._deleteLinksInput ??= new _i1.GDeleteLinkInputBuilder();
  set deleteLinksInput(_i1.GDeleteLinkInputBuilder? deleteLinksInput) =>
      _$this._deleteLinksInput = deleteLinksInput;

  Gdelete_linkVarsBuilder();

  Gdelete_linkVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _deleteLinksInput = $v.deleteLinksInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_linkVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_linkVars;
  }

  @override
  void update(void Function(Gdelete_linkVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_linkVars build() => _build();

  _$Gdelete_linkVars _build() {
    _$Gdelete_linkVars _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_linkVars._(
              patientId: BuiltValueNullFieldError.checkNotNull(
                  patientId, r'Gdelete_linkVars', 'patientId'),
              deleteLinksInput: deleteLinksInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteLinksInput';
        deleteLinksInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_linkVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
