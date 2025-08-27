// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_habitudes_de_vie_get_section_answer.query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_habitudes_de_vie_section_answerVars>
    _$ggetHabitudesDeVieSectionAnswerVarsSerializer =
    new _$Gget_habitudes_de_vie_section_answerVarsSerializer();

class _$Gget_habitudes_de_vie_section_answerVarsSerializer
    implements StructuredSerializer<Gget_habitudes_de_vie_section_answerVars> {
  @override
  final Iterable<Type> types = const [
    Gget_habitudes_de_vie_section_answerVars,
    _$Gget_habitudes_de_vie_section_answerVars
  ];
  @override
  final String wireName = 'Gget_habitudes_de_vie_section_answerVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_habitudes_de_vie_section_answerVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'patientId',
      serializers.serialize(object.patientId,
          specifiedType: const FullType(String)),
      'sectionType',
      serializers.serialize(object.sectionType,
          specifiedType: const FullType(_i1.GLifestyleSectionEnum)),
    ];

    return result;
  }

  @override
  Gget_habitudes_de_vie_section_answerVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_habitudes_de_vie_section_answerVarsBuilder();

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
        case 'sectionType':
          result.sectionType = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GLifestyleSectionEnum))!
              as _i1.GLifestyleSectionEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_habitudes_de_vie_section_answerVars
    extends Gget_habitudes_de_vie_section_answerVars {
  @override
  final String patientId;
  @override
  final _i1.GLifestyleSectionEnum sectionType;

  factory _$Gget_habitudes_de_vie_section_answerVars(
          [void Function(Gget_habitudes_de_vie_section_answerVarsBuilder)?
              updates]) =>
      (new Gget_habitudes_de_vie_section_answerVarsBuilder()..update(updates))
          ._build();

  _$Gget_habitudes_de_vie_section_answerVars._(
      {required this.patientId, required this.sectionType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        patientId, r'Gget_habitudes_de_vie_section_answerVars', 'patientId');
    BuiltValueNullFieldError.checkNotNull(sectionType,
        r'Gget_habitudes_de_vie_section_answerVars', 'sectionType');
  }

  @override
  Gget_habitudes_de_vie_section_answerVars rebuild(
          void Function(Gget_habitudes_de_vie_section_answerVarsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_habitudes_de_vie_section_answerVarsBuilder toBuilder() =>
      new Gget_habitudes_de_vie_section_answerVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_habitudes_de_vie_section_answerVars &&
        patientId == other.patientId &&
        sectionType == other.sectionType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, patientId.hashCode);
    _$hash = $jc(_$hash, sectionType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_habitudes_de_vie_section_answerVars')
          ..add('patientId', patientId)
          ..add('sectionType', sectionType))
        .toString();
  }
}

class Gget_habitudes_de_vie_section_answerVarsBuilder
    implements
        Builder<Gget_habitudes_de_vie_section_answerVars,
            Gget_habitudes_de_vie_section_answerVarsBuilder> {
  _$Gget_habitudes_de_vie_section_answerVars? _$v;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  _i1.GLifestyleSectionEnum? _sectionType;
  _i1.GLifestyleSectionEnum? get sectionType => _$this._sectionType;
  set sectionType(_i1.GLifestyleSectionEnum? sectionType) =>
      _$this._sectionType = sectionType;

  Gget_habitudes_de_vie_section_answerVarsBuilder();

  Gget_habitudes_de_vie_section_answerVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patientId = $v.patientId;
      _sectionType = $v.sectionType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_habitudes_de_vie_section_answerVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_habitudes_de_vie_section_answerVars;
  }

  @override
  void update(
      void Function(Gget_habitudes_de_vie_section_answerVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_habitudes_de_vie_section_answerVars build() => _build();

  _$Gget_habitudes_de_vie_section_answerVars _build() {
    final _$result = _$v ??
        new _$Gget_habitudes_de_vie_section_answerVars._(
            patientId: BuiltValueNullFieldError.checkNotNull(patientId,
                r'Gget_habitudes_de_vie_section_answerVars', 'patientId'),
            sectionType: BuiltValueNullFieldError.checkNotNull(sectionType,
                r'Gget_habitudes_de_vie_section_answerVars', 'sectionType'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
