// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_enrolement_get_enrolment_suggestions.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GEnrolmentUserNameAvailabilityVars>
    _$gEnrolmentUserNameAvailabilityVarsSerializer =
    new _$GEnrolmentUserNameAvailabilityVarsSerializer();

class _$GEnrolmentUserNameAvailabilityVarsSerializer
    implements StructuredSerializer<GEnrolmentUserNameAvailabilityVars> {
  @override
  final Iterable<Type> types = const [
    GEnrolmentUserNameAvailabilityVars,
    _$GEnrolmentUserNameAvailabilityVars
  ];
  @override
  final String wireName = 'GEnrolmentUserNameAvailabilityVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GEnrolmentUserNameAvailabilityVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'userName',
      serializers.serialize(object.userName,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GEnrolmentUserNameAvailabilityVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GEnrolmentUserNameAvailabilityVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userName':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GEnrolmentUserNameAvailabilityVars
    extends GEnrolmentUserNameAvailabilityVars {
  @override
  final String userName;

  factory _$GEnrolmentUserNameAvailabilityVars(
          [void Function(GEnrolmentUserNameAvailabilityVarsBuilder)?
              updates]) =>
      (new GEnrolmentUserNameAvailabilityVarsBuilder()..update(updates))
          ._build();

  _$GEnrolmentUserNameAvailabilityVars._({required this.userName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'GEnrolmentUserNameAvailabilityVars', 'userName');
  }

  @override
  GEnrolmentUserNameAvailabilityVars rebuild(
          void Function(GEnrolmentUserNameAvailabilityVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GEnrolmentUserNameAvailabilityVarsBuilder toBuilder() =>
      new GEnrolmentUserNameAvailabilityVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GEnrolmentUserNameAvailabilityVars &&
        userName == other.userName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GEnrolmentUserNameAvailabilityVars')
          ..add('userName', userName))
        .toString();
  }
}

class GEnrolmentUserNameAvailabilityVarsBuilder
    implements
        Builder<GEnrolmentUserNameAvailabilityVars,
            GEnrolmentUserNameAvailabilityVarsBuilder> {
  _$GEnrolmentUserNameAvailabilityVars? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  GEnrolmentUserNameAvailabilityVarsBuilder();

  GEnrolmentUserNameAvailabilityVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GEnrolmentUserNameAvailabilityVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GEnrolmentUserNameAvailabilityVars;
  }

  @override
  void update(
      void Function(GEnrolmentUserNameAvailabilityVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GEnrolmentUserNameAvailabilityVars build() => _build();

  _$GEnrolmentUserNameAvailabilityVars _build() {
    final _$result = _$v ??
        new _$GEnrolmentUserNameAvailabilityVars._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'GEnrolmentUserNameAvailabilityVars', 'userName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
