// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_get_notification_center.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_notification_centerVars>
    _$ggetNotificationCenterVarsSerializer =
    new _$Gget_notification_centerVarsSerializer();

class _$Gget_notification_centerVarsSerializer
    implements StructuredSerializer<Gget_notification_centerVars> {
  @override
  final Iterable<Type> types = const [
    Gget_notification_centerVars,
    _$Gget_notification_centerVars
  ];
  @override
  final String wireName = 'Gget_notification_centerVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_notification_centerVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  Gget_notification_centerVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new Gget_notification_centerVarsBuilder().build();
  }
}

class _$Gget_notification_centerVars extends Gget_notification_centerVars {
  factory _$Gget_notification_centerVars(
          [void Function(Gget_notification_centerVarsBuilder)? updates]) =>
      (new Gget_notification_centerVarsBuilder()..update(updates))._build();

  _$Gget_notification_centerVars._() : super._();

  @override
  Gget_notification_centerVars rebuild(
          void Function(Gget_notification_centerVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_notification_centerVarsBuilder toBuilder() =>
      new Gget_notification_centerVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_notification_centerVars;
  }

  @override
  int get hashCode {
    return 477030367;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'Gget_notification_centerVars')
        .toString();
  }
}

class Gget_notification_centerVarsBuilder
    implements
        Builder<Gget_notification_centerVars,
            Gget_notification_centerVarsBuilder> {
  _$Gget_notification_centerVars? _$v;

  Gget_notification_centerVarsBuilder();

  @override
  void replace(Gget_notification_centerVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_notification_centerVars;
  }

  @override
  void update(void Function(Gget_notification_centerVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_notification_centerVars build() => _build();

  _$Gget_notification_centerVars _build() {
    final _$result = _$v ?? new _$Gget_notification_centerVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
