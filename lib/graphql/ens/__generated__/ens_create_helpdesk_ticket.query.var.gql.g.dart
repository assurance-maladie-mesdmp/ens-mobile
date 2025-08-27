// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_create_helpdesk_ticket.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gcreate_helpdesk_ticketVars> _$gcreateHelpdeskTicketVarsSerializer =
    new _$Gcreate_helpdesk_ticketVarsSerializer();

class _$Gcreate_helpdesk_ticketVarsSerializer
    implements StructuredSerializer<Gcreate_helpdesk_ticketVars> {
  @override
  final Iterable<Type> types = const [
    Gcreate_helpdesk_ticketVars,
    _$Gcreate_helpdesk_ticketVars
  ];
  @override
  final String wireName = 'Gcreate_helpdesk_ticketVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gcreate_helpdesk_ticketVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'ticketToCreateInput',
      serializers.serialize(object.ticketToCreateInput,
          specifiedType: const FullType(_i1.GTicketToCreateInput)),
    ];

    return result;
  }

  @override
  Gcreate_helpdesk_ticketVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gcreate_helpdesk_ticketVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ticketToCreateInput':
          result.ticketToCreateInput.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GTicketToCreateInput))!
              as _i1.GTicketToCreateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gcreate_helpdesk_ticketVars extends Gcreate_helpdesk_ticketVars {
  @override
  final _i1.GTicketToCreateInput ticketToCreateInput;

  factory _$Gcreate_helpdesk_ticketVars(
          [void Function(Gcreate_helpdesk_ticketVarsBuilder)? updates]) =>
      (new Gcreate_helpdesk_ticketVarsBuilder()..update(updates))._build();

  _$Gcreate_helpdesk_ticketVars._({required this.ticketToCreateInput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(ticketToCreateInput,
        r'Gcreate_helpdesk_ticketVars', 'ticketToCreateInput');
  }

  @override
  Gcreate_helpdesk_ticketVars rebuild(
          void Function(Gcreate_helpdesk_ticketVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gcreate_helpdesk_ticketVarsBuilder toBuilder() =>
      new Gcreate_helpdesk_ticketVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gcreate_helpdesk_ticketVars &&
        ticketToCreateInput == other.ticketToCreateInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ticketToCreateInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gcreate_helpdesk_ticketVars')
          ..add('ticketToCreateInput', ticketToCreateInput))
        .toString();
  }
}

class Gcreate_helpdesk_ticketVarsBuilder
    implements
        Builder<Gcreate_helpdesk_ticketVars,
            Gcreate_helpdesk_ticketVarsBuilder> {
  _$Gcreate_helpdesk_ticketVars? _$v;

  _i1.GTicketToCreateInputBuilder? _ticketToCreateInput;
  _i1.GTicketToCreateInputBuilder get ticketToCreateInput =>
      _$this._ticketToCreateInput ??= new _i1.GTicketToCreateInputBuilder();
  set ticketToCreateInput(
          _i1.GTicketToCreateInputBuilder? ticketToCreateInput) =>
      _$this._ticketToCreateInput = ticketToCreateInput;

  Gcreate_helpdesk_ticketVarsBuilder();

  Gcreate_helpdesk_ticketVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ticketToCreateInput = $v.ticketToCreateInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gcreate_helpdesk_ticketVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gcreate_helpdesk_ticketVars;
  }

  @override
  void update(void Function(Gcreate_helpdesk_ticketVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gcreate_helpdesk_ticketVars build() => _build();

  _$Gcreate_helpdesk_ticketVars _build() {
    _$Gcreate_helpdesk_ticketVars _$result;
    try {
      _$result = _$v ??
          new _$Gcreate_helpdesk_ticketVars._(
              ticketToCreateInput: ticketToCreateInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ticketToCreateInput';
        ticketToCreateInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gcreate_helpdesk_ticketVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
