// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_messagerie_delete_conversation.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_conversationVars> _$gdeleteConversationVarsSerializer =
    new _$Gdelete_conversationVarsSerializer();

class _$Gdelete_conversationVarsSerializer
    implements StructuredSerializer<Gdelete_conversationVars> {
  @override
  final Iterable<Type> types = const [
    Gdelete_conversationVars,
    _$Gdelete_conversationVars
  ];
  @override
  final String wireName = 'Gdelete_conversationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_conversationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'conversationId',
      serializers.serialize(object.conversationId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gdelete_conversationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_conversationVarsBuilder();

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
        case 'conversationId':
          result.conversationId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_conversationVars extends Gdelete_conversationVars {
  @override
  final String patientId;
  @override
  final String conversationId;

  factory _$Gdelete_conversationVars(
          [void Function(Gdelete_conversationVarsBuilder)? updates]) =>
      (new Gdelete_conversationVarsBuilder()..update(updates))._build();

  _$Gdelete_conversationVars._(
      {required this.patientId, required this.conversationId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gdelete_conversationVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(
        conversationId, r'Gdelete_conversationVars', 'conversationId');
  }

  @override
  Gdelete_conversationVars rebuild(
          void Function(Gdelete_conversationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_conversationVarsBuilder toBuilder() =>
      new Gdelete_conversationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_conversationVars &&
        patientId == other.patientId &&
        conversationId == other.conversationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, conversationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_conversationVars')
          ..add('patientId', patientId)
          ..add('conversationId', conversationId))
        .toString();
  }
}

class Gdelete_conversationVarsBuilder
    implements
        Builder<Gdelete_conversationVars, Gdelete_conversationVarsBuilder> {
  _$Gdelete_conversationVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  String? _conversationId;
  String? get conversationId => _$this._conversationId;
  set conversationId(String? conversationId) =>
      _$this._conversationId = conversationId;

  Gdelete_conversationVarsBuilder();

  Gdelete_conversationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _conversationId = $v.conversationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_conversationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_conversationVars;
  }

  @override
  void update(void Function(Gdelete_conversationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_conversationVars build() => _build();

  _$Gdelete_conversationVars _build() {
    final _$result = _$v ??
        new _$Gdelete_conversationVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId, r'Gdelete_conversationVars', 'patientId'),
            conversationId: BuiltValueNullFieldError.checkNotNull(
                conversationId, r'Gdelete_conversationVars', 'conversationId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
