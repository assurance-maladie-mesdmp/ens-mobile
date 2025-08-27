// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_document_update_document.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gupdate_documentVars> _$gupdateDocumentVarsSerializer =
    new _$Gupdate_documentVarsSerializer();

class _$Gupdate_documentVarsSerializer
    implements StructuredSerializer<Gupdate_documentVars> {
  @override
  final Iterable<Type> types = const [
    Gupdate_documentVars,
    _$Gupdate_documentVars
  ];
  @override
  final String wireName = 'Gupdate_documentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gupdate_documentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'documentPropertiesUpdateInput',
      serializers.serialize(object.documentPropertiesUpdateInput,
          specifiedType: const FullType(_i1.GDocumentPropertiesUpdateInput)),
    ];

    return result;
  }

  @override
  Gupdate_documentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gupdate_documentVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'documentPropertiesUpdateInput':
          result.documentPropertiesUpdateInput.replace(serializers.deserialize(
                  value,
                  specifiedType:
                      const FullType(_i1.GDocumentPropertiesUpdateInput))!
              as _i1.GDocumentPropertiesUpdateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$Gupdate_documentVars extends Gupdate_documentVars {
  @override
  final _i1.GDocumentPropertiesUpdateInput documentPropertiesUpdateInput;

  factory _$Gupdate_documentVars(
          [void Function(Gupdate_documentVarsBuilder)? updates]) =>
      (new Gupdate_documentVarsBuilder()..update(updates))._build();

  _$Gupdate_documentVars._({required this.documentPropertiesUpdateInput})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(documentPropertiesUpdateInput,
        r'Gupdate_documentVars', 'documentPropertiesUpdateInput');
  }

  @override
  Gupdate_documentVars rebuild(
          void Function(Gupdate_documentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gupdate_documentVarsBuilder toBuilder() =>
      new Gupdate_documentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gupdate_documentVars &&
        documentPropertiesUpdateInput == other.documentPropertiesUpdateInput;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, documentPropertiesUpdateInput.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gupdate_documentVars')
          ..add('documentPropertiesUpdateInput', documentPropertiesUpdateInput))
        .toString();
  }
}

class Gupdate_documentVarsBuilder
    implements Builder<Gupdate_documentVars, Gupdate_documentVarsBuilder> {
  _$Gupdate_documentVars? _$v;

  _i1.GDocumentPropertiesUpdateInputBuilder? _documentPropertiesUpdateInput;
  _i1.GDocumentPropertiesUpdateInputBuilder get documentPropertiesUpdateInput =>
      _$this._documentPropertiesUpdateInput ??=
          new _i1.GDocumentPropertiesUpdateInputBuilder();
  set documentPropertiesUpdateInput(
          _i1.GDocumentPropertiesUpdateInputBuilder?
              documentPropertiesUpdateInput) =>
      _$this._documentPropertiesUpdateInput = documentPropertiesUpdateInput;

  Gupdate_documentVarsBuilder();

  Gupdate_documentVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _documentPropertiesUpdateInput =
          $v.documentPropertiesUpdateInput.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gupdate_documentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gupdate_documentVars;
  }

  @override
  void update(void Function(Gupdate_documentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gupdate_documentVars build() => _build();

  _$Gupdate_documentVars _build() {
    _$Gupdate_documentVars _$result;
    try {
      _$result = _$v ??
          new _$Gupdate_documentVars._(
              documentPropertiesUpdateInput:
                  documentPropertiesUpdateInput.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'documentPropertiesUpdateInput';
        documentPropertiesUpdateInput.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gupdate_documentVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
