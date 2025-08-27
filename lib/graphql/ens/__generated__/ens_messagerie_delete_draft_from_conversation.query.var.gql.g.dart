// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_messagerie_delete_draft_from_conversation.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gdelete_draft_from_conversationVars>
    _$gdeleteDraftFromConversationVarsSerializer =
    new _$Gdelete_draft_from_conversationVarsSerializer();

class _$Gdelete_draft_from_conversationVarsSerializer
    implements StructuredSerializer<Gdelete_draft_from_conversationVars> {
  @override
  final Iterable<Type> types = const [
    Gdelete_draft_from_conversationVars,
    _$Gdelete_draft_from_conversationVars
  ];
  @override
  final String wireName = 'Gdelete_draft_from_conversationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gdelete_draft_from_conversationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'deleteDraftFromConversationInput',
      serializers.serialize(object.deleteDraftFromConversationInput,
          specifiedType: const FullType(_i1.GDeleteDraftFromConversationInput)),
    ];

    return result;
  }

  @override
  Gdelete_draft_from_conversationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gdelete_draft_from_conversationVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'deleteDraftFromConversationInput':
          result.deleteDraftFromConversationInput.replace(
              serializers.deserialize(value,
                      specifiedType: const FullType(
                          _i1.GDeleteDraftFromConversationInput))!
                  as _i1.GDeleteDraftFromConversationInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gdelete_draft_from_conversationVars
    extends Gdelete_draft_from_conversationVars {
  @override
  final _i1.GDeleteDraftFromConversationInput deleteDraftFromConversationInput;

  factory _$Gdelete_draft_from_conversationVars(
          [void Function(Gdelete_draft_from_conversationVarsBuilder)?
              updates]) =>
      (new Gdelete_draft_from_conversationVarsBuilder()..update(updates))
          ._build();

  _$Gdelete_draft_from_conversationVars._(
      {required this.deleteDraftFromConversationInput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        deleteDraftFromConversationInput,
        r'Gdelete_draft_from_conversationVars',
        'deleteDraftFromConversationInput');
  }

  @override
  Gdelete_draft_from_conversationVars rebuild(
          void Function(Gdelete_draft_from_conversationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gdelete_draft_from_conversationVarsBuilder toBuilder() =>
      new Gdelete_draft_from_conversationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gdelete_draft_from_conversationVars &&
        deleteDraftFromConversationInput ==
            other.deleteDraftFromConversationInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deleteDraftFromConversationInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gdelete_draft_from_conversationVars')
          ..add('deleteDraftFromConversationInput',
              deleteDraftFromConversationInput))
        .toString();
  }
}

class Gdelete_draft_from_conversationVarsBuilder
    implements
        Builder<Gdelete_draft_from_conversationVars,
            Gdelete_draft_from_conversationVarsBuilder> {
  _$Gdelete_draft_from_conversationVars? _$v;

  _i1.GDeleteDraftFromConversationInputBuilder?
      _deleteDraftFromConversationInput;
  _i1.GDeleteDraftFromConversationInputBuilder
      get deleteDraftFromConversationInput =>
          _$this._deleteDraftFromConversationInput ??=
              new _i1.GDeleteDraftFromConversationInputBuilder();
  set deleteDraftFromConversationInput(
          _i1.GDeleteDraftFromConversationInputBuilder?
              deleteDraftFromConversationInput) =>
      _$this._deleteDraftFromConversationInput =
          deleteDraftFromConversationInput;

  Gdelete_draft_from_conversationVarsBuilder();

  Gdelete_draft_from_conversationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deleteDraftFromConversationInput =
          $v.deleteDraftFromConversationInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gdelete_draft_from_conversationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gdelete_draft_from_conversationVars;
  }

  @override
  void update(
      void Function(Gdelete_draft_from_conversationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gdelete_draft_from_conversationVars build() => _build();

  _$Gdelete_draft_from_conversationVars _build() {
    _$Gdelete_draft_from_conversationVars _$result;
    try {
      _$result = _$v ??
          new _$Gdelete_draft_from_conversationVars._(
              deleteDraftFromConversationInput:
                  deleteDraftFromConversationInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteDraftFromConversationInput';
        deleteDraftFromConversationInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gdelete_draft_from_conversationVars',
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
