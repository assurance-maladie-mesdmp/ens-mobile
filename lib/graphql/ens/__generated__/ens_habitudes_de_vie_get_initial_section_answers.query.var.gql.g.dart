// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_habitudes_de_vie_get_initial_section_answers.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_initial_habitudes_de_vie_section_answerVars>
    _$ggetInitialHabitudesDeVieSectionAnswerVarsSerializer =
    new _$Gget_initial_habitudes_de_vie_section_answerVarsSerializer();

class _$Gget_initial_habitudes_de_vie_section_answerVarsSerializer
    implements
        StructuredSerializer<Gget_initial_habitudes_de_vie_section_answerVars> {
  @override
  final Iterable<Type> types = const [
    Gget_initial_habitudes_de_vie_section_answerVars,
    _$Gget_initial_habitudes_de_vie_section_answerVars
  ];
  @override
  final String wireName = 'Gget_initial_habitudes_de_vie_section_answerVars';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_initial_habitudes_de_vie_section_answerVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_initial_habitudes_de_vie_section_answerVarsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$Gget_initial_habitudes_de_vie_section_answerVars
    extends Gget_initial_habitudes_de_vie_section_answerVars {
  @override
  final String patientId;

  factory _$Gget_initial_habitudes_de_vie_section_answerVars(
          [void Function(
                  Gget_initial_habitudes_de_vie_section_answerVarsBuilder)?
              updates]) =>
      (new Gget_initial_habitudes_de_vie_section_answerVarsBuilder()
            ..update(updates))
          ._build();

  _$Gget_initial_habitudes_de_vie_section_answerVars._(
      {required this.patientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(patientId,
        r'Gget_initial_habitudes_de_vie_section_answerVars', 'patientId');
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerVars rebuild(
          void Function(Gget_initial_habitudes_de_vie_section_answerVarsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_initial_habitudes_de_vie_section_answerVarsBuilder toBuilder() =>
      new Gget_initial_habitudes_de_vie_section_answerVarsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_initial_habitudes_de_vie_section_answerVars &&
        patientId == other.patientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_initial_habitudes_de_vie_section_answerVars')
          ..add('patientId', patientId))
        .toString();
  }
}

class Gget_initial_habitudes_de_vie_section_answerVarsBuilder
    implements
        Builder<Gget_initial_habitudes_de_vie_section_answerVars,
            Gget_initial_habitudes_de_vie_section_answerVarsBuilder> {
  _$Gget_initial_habitudes_de_vie_section_answerVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  Gget_initial_habitudes_de_vie_section_answerVarsBuilder();

  Gget_initial_habitudes_de_vie_section_answerVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_initial_habitudes_de_vie_section_answerVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_initial_habitudes_de_vie_section_answerVars;
  }

  @override
  void update(
      void Function(Gget_initial_habitudes_de_vie_section_answerVarsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_initial_habitudes_de_vie_section_answerVars build() => _build();

  _$Gget_initial_habitudes_de_vie_section_answerVars _build() {
    final _$result = _$v ??
        new _$Gget_initial_habitudes_de_vie_section_answerVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(
                patientId,
                r'Gget_initial_habitudes_de_vie_section_answerVars',
                'patientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
