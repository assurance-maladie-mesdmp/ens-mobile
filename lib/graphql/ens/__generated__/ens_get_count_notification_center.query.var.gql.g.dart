// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_get_count_notification_center.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_unread_notification_center_countVars>
    _$ggetUnreadNotificationCenterCountVarsSerializer =
    new _$Gget_unread_notification_center_countVarsSerializer();

class _$Gget_unread_notification_center_countVarsSerializer
    implements StructuredSerializer<Gget_unread_notification_center_countVars> {
  @override
  final Iterable<Type> types = const [
    Gget_unread_notification_center_countVars,
    _$Gget_unread_notification_center_countVars
  ];
  @override
  final String wireName = 'Gget_unread_notification_center_countVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_unread_notification_center_countVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  Gget_unread_notification_center_countVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new Gget_unread_notification_center_countVarsBuilder().build();
  }
}

class _$Gget_unread_notification_center_countVars
    extends Gget_unread_notification_center_countVars {
  factory _$Gget_unread_notification_center_countVars(
          [void Function(Gget_unread_notification_center_countVarsBuilder)?
              updates]) =>
      (new Gget_unread_notification_center_countVarsBuilder()..update(updates))
          ._build();

  _$Gget_unread_notification_center_countVars._() : super._();

  @override
  Gget_unread_notification_center_countVars rebuild(
          void Function(Gget_unread_notification_center_countVarsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_unread_notification_center_countVarsBuilder toBuilder() =>
      new Gget_unread_notification_center_countVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_unread_notification_center_countVars;
  }

  @override
  int get hashCode {
    return 1028591213;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(
            r'Gget_unread_notification_center_countVars')
        .toString();
  }
}

class Gget_unread_notification_center_countVarsBuilder
    implements
        Builder<Gget_unread_notification_center_countVars,
            Gget_unread_notification_center_countVarsBuilder> {
  _$Gget_unread_notification_center_countVars? _$v;

  Gget_unread_notification_center_countVarsBuilder();

  @override
  void replace(Gget_unread_notification_center_countVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_unread_notification_center_countVars;
  }

  @override
  void update(
      void Function(Gget_unread_notification_center_countVarsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_unread_notification_center_countVars build() => _build();

  _$Gget_unread_notification_center_countVars _build() {
    final _$result = _$v ?? new _$Gget_unread_notification_center_countVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
