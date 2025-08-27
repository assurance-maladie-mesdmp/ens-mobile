// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_nous_contacter_get_ticket_support_details.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_ticket_support_detailsVars>
    _$ggetTicketSupportDetailsVarsSerializer =
    new _$Gget_ticket_support_detailsVarsSerializer();

class _$Gget_ticket_support_detailsVarsSerializer
    implements StructuredSerializer<Gget_ticket_support_detailsVars> {
  @override
  final Iterable<Type> types = const [
    Gget_ticket_support_detailsVars,
    _$Gget_ticket_support_detailsVars
  ];
  @override
  final String wireName = 'Gget_ticket_support_detailsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_ticket_support_detailsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'ticketId',
      serializers.serialize(object.ticketId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_ticket_support_detailsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_ticket_support_detailsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ticketId':
          result.ticketId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_ticket_support_detailsVars
    extends Gget_ticket_support_detailsVars {
  @override
  final String ticketId;

  factory _$Gget_ticket_support_detailsVars(
          [void Function(Gget_ticket_support_detailsVarsBuilder)? updates]) =>
      (new Gget_ticket_support_detailsVarsBuilder()..update(updates))._build();

  _$Gget_ticket_support_detailsVars._({required this.ticketId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        ticketId, r'Gget_ticket_support_detailsVars', 'ticketId');
  }

  @override
  Gget_ticket_support_detailsVars rebuild(
          void Function(Gget_ticket_support_detailsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_ticket_support_detailsVarsBuilder toBuilder() =>
      new Gget_ticket_support_detailsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_ticket_support_detailsVars &&
        ticketId == other.ticketId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ticketId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_ticket_support_detailsVars')
          ..add('ticketId', ticketId))
        .toString();
  }
}

class Gget_ticket_support_detailsVarsBuilder
    implements
        Builder<Gget_ticket_support_detailsVars,
            Gget_ticket_support_detailsVarsBuilder> {
  _$Gget_ticket_support_detailsVars? _$v;

  String? _ticketId;
  String? get ticketId => _$this._ticketId;
  set ticketId(String? ticketId) => _$this._ticketId = ticketId;

  Gget_ticket_support_detailsVarsBuilder();

  Gget_ticket_support_detailsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ticketId = $v.ticketId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_ticket_support_detailsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_ticket_support_detailsVars;
  }

  @override
  void update(void Function(Gget_ticket_support_detailsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_ticket_support_detailsVars build() => _build();

  _$Gget_ticket_support_detailsVars _build() {
    final _$result = _$v ??
        new _$Gget_ticket_support_detailsVars._(
            ticketId: BuiltValueNullFieldError.checkNotNull(
                ticketId, r'Gget_ticket_support_detailsVars', 'ticketId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
