// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_document_post_document.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gpost_documentVars> _$gpostDocumentVarsSerializer =
    new _$Gpost_documentVarsSerializer();

class _$Gpost_documentVarsSerializer
    implements StructuredSerializer<Gpost_documentVars> {
  @override
  final Iterable<Type> types = const [Gpost_documentVars, _$Gpost_documentVars];
  @override
  final String wireName = 'Gpost_documentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gpost_documentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GDocumentInput)),
    ];

    return result;
  }

  @override
  Gpost_documentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gpost_documentVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GDocumentInput))!
              as _i1.GDocumentInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gpost_documentVars extends Gpost_documentVars {
  @override
  final _i1.GDocumentInput input;

  factory _$Gpost_documentVars(
          [void Function(Gpost_documentVarsBuilder)? updates]) =>
      (new Gpost_documentVarsBuilder()..update(updates))._build();

  _$Gpost_documentVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        input, r'Gpost_documentVars', 'input');
  }

  @override
  Gpost_documentVars rebuild(
          void Function(Gpost_documentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gpost_documentVarsBuilder toBuilder() =>
      new Gpost_documentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gpost_documentVars && input == other.input;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gpost_documentVars')
          ..add('input', input))
        .toString();
  }
}

class Gpost_documentVarsBuilder
    implements Builder<Gpost_documentVars, Gpost_documentVarsBuilder> {
  _$Gpost_documentVars? _$v;

  _i1.GDocumentInputBuilder? _input;
  _i1.GDocumentInputBuilder get input =>
      _$this._input ??= new _i1.GDocumentInputBuilder();
  set input(_i1.GDocumentInputBuilder? input) => _$this._input = input;

  Gpost_documentVarsBuilder();

  Gpost_documentVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gpost_documentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gpost_documentVars;
  }

  @override
  void update(void Function(Gpost_documentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gpost_documentVars build() => _build();

  _$Gpost_documentVars _build() {
    _$Gpost_documentVars _$result;
    try {
      _$result = _$v ?? new _$Gpost_documentVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gpost_documentVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
