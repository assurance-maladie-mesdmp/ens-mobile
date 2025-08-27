// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_catalogue_services.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GserviceData> _$gserviceDataSerializer =
    new _$GserviceDataSerializer();
Serializer<GserviceData_editor> _$gserviceDataEditorSerializer =
    new _$GserviceData_editorSerializer();
Serializer<GserviceData_logo> _$gserviceDataLogoSerializer =
    new _$GserviceData_logoSerializer();
Serializer<GserviceData_finalities> _$gserviceDataFinalitiesSerializer =
    new _$GserviceData_finalitiesSerializer();
Serializer<GregionData> _$gregionDataSerializer = new _$GregionDataSerializer();
Serializer<GthematicsData> _$gthematicsDataSerializer =
    new _$GthematicsDataSerializer();

class _$GserviceDataSerializer implements StructuredSerializer<GserviceData> {
  @override
  final Iterable<Type> types = const [GserviceData, _$GserviceData];
  @override
  final String wireName = 'GserviceData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GserviceData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'editor',
      serializers.serialize(object.editor,
          specifiedType: const FullType(GserviceData_editor)),
      'codesRegions',
      serializers.serialize(object.codesRegions,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'thematics',
      serializers.serialize(object.thematics,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    Object? value;
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.logo;
    if (value != null) {
      result
        ..add('logo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GserviceData_logo)));
    }
    value = object.finalities;
    if (value != null) {
      result
        ..add('finalities')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GserviceData_finalities)])));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GServiceStatusEnum)));
    }
    value = object.cguUrl;
    if (value != null) {
      result
        ..add('cguUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GserviceData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GserviceDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'editor':
          result.editor.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GserviceData_editor))!
              as GserviceData_editor);
          break;
        case 'logo':
          result.logo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GserviceData_logo))!
              as GserviceData_logo);
          break;
        case 'finalities':
          result.finalities.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GserviceData_finalities)
              ]))! as BuiltList<Object?>);
          break;
        case 'codesRegions':
          result.codesRegions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'thematics':
          result.thematics.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GServiceStatusEnum))
              as _i1.GServiceStatusEnum?;
          break;
        case 'cguUrl':
          result.cguUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GserviceData_editorSerializer
    implements StructuredSerializer<GserviceData_editor> {
  @override
  final Iterable<Type> types = const [
    GserviceData_editor,
    _$GserviceData_editor
  ];
  @override
  final String wireName = 'GserviceData_editor';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GserviceData_editor object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GserviceData_editor deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GserviceData_editorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GserviceData_logoSerializer
    implements StructuredSerializer<GserviceData_logo> {
  @override
  final Iterable<Type> types = const [GserviceData_logo, _$GserviceData_logo];
  @override
  final String wireName = 'GserviceData_logo';

  @override
  Iterable<Object?> serialize(Serializers serializers, GserviceData_logo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.file;
    if (value != null) {
      result
        ..add('file')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GserviceData_logo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GserviceData_logoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'file':
          result.file = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GserviceData_finalitiesSerializer
    implements StructuredSerializer<GserviceData_finalities> {
  @override
  final Iterable<Type> types = const [
    GserviceData_finalities,
    _$GserviceData_finalities
  ];
  @override
  final String wireName = 'GserviceData_finalities';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GserviceData_finalities object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'icone',
      serializers.serialize(object.icone,
          specifiedType: const FullType(String)),
      'libelle',
      serializers.serialize(object.libelle,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GserviceData_finalities deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GserviceData_finalitiesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'icone':
          result.icone = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'libelle':
          result.libelle = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GregionDataSerializer implements StructuredSerializer<GregionData> {
  @override
  final Iterable<Type> types = const [GregionData, _$GregionData];
  @override
  final String wireName = 'GregionData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GregionData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GregionData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GregionDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GthematicsDataSerializer
    implements StructuredSerializer<GthematicsData> {
  @override
  final Iterable<Type> types = const [GthematicsData, _$GthematicsData];
  @override
  final String wireName = 'GthematicsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GthematicsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GthematicsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GthematicsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GserviceData extends GserviceData {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final GserviceData_editor editor;
  @override
  final GserviceData_logo? logo;
  @override
  final BuiltList<GserviceData_finalities>? finalities;
  @override
  final BuiltList<String> codesRegions;
  @override
  final BuiltList<String> thematics;
  @override
  final _i1.GServiceStatusEnum? status;
  @override
  final String? cguUrl;

  factory _$GserviceData([void Function(GserviceDataBuilder)? updates]) =>
      (new GserviceDataBuilder()..update(updates))._build();

  _$GserviceData._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.description,
      required this.editor,
      this.logo,
      this.finalities,
      required this.codesRegions,
      required this.thematics,
      this.status,
      this.cguUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GserviceData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GserviceData', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'GserviceData', 'name');
    BuiltValueNullFieldError.checkNotNull(editor, r'GserviceData', 'editor');
    BuiltValueNullFieldError.checkNotNull(
        codesRegions, r'GserviceData', 'codesRegions');
    BuiltValueNullFieldError.checkNotNull(
        thematics, r'GserviceData', 'thematics');
  }

  @override
  GserviceData rebuild(void Function(GserviceDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GserviceDataBuilder toBuilder() => new GserviceDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GserviceData &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        editor == other.editor &&
        logo == other.logo &&
        finalities == other.finalities &&
        codesRegions == other.codesRegions &&
        thematics == other.thematics &&
        status == other.status &&
        cguUrl == other.cguUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, editor.hashCode);
    _$hash = $jc(_$hash, logo.hashCode);
    _$hash = $jc(_$hash, finalities.hashCode);
    _$hash = $jc(_$hash, codesRegions.hashCode);
    _$hash = $jc(_$hash, thematics.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, cguUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GserviceData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('editor', editor)
          ..add('logo', logo)
          ..add('finalities', finalities)
          ..add('codesRegions', codesRegions)
          ..add('thematics', thematics)
          ..add('status', status)
          ..add('cguUrl', cguUrl))
        .toString();
  }
}

class GserviceDataBuilder
    implements Builder<GserviceData, GserviceDataBuilder> {
  _$GserviceData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GserviceData_editorBuilder? _editor;
  GserviceData_editorBuilder get editor =>
      _$this._editor ??= new GserviceData_editorBuilder();
  set editor(GserviceData_editorBuilder? editor) => _$this._editor = editor;

  GserviceData_logoBuilder? _logo;
  GserviceData_logoBuilder get logo =>
      _$this._logo ??= new GserviceData_logoBuilder();
  set logo(GserviceData_logoBuilder? logo) => _$this._logo = logo;

  ListBuilder<GserviceData_finalities>? _finalities;
  ListBuilder<GserviceData_finalities> get finalities =>
      _$this._finalities ??= new ListBuilder<GserviceData_finalities>();
  set finalities(ListBuilder<GserviceData_finalities>? finalities) =>
      _$this._finalities = finalities;

  ListBuilder<String>? _codesRegions;
  ListBuilder<String> get codesRegions =>
      _$this._codesRegions ??= new ListBuilder<String>();
  set codesRegions(ListBuilder<String>? codesRegions) =>
      _$this._codesRegions = codesRegions;

  ListBuilder<String>? _thematics;
  ListBuilder<String> get thematics =>
      _$this._thematics ??= new ListBuilder<String>();
  set thematics(ListBuilder<String>? thematics) =>
      _$this._thematics = thematics;

  _i1.GServiceStatusEnum? _status;
  _i1.GServiceStatusEnum? get status => _$this._status;
  set status(_i1.GServiceStatusEnum? status) => _$this._status = status;

  String? _cguUrl;
  String? get cguUrl => _$this._cguUrl;
  set cguUrl(String? cguUrl) => _$this._cguUrl = cguUrl;

  GserviceDataBuilder() {
    GserviceData._initializeBuilder(this);
  }

  GserviceDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _editor = $v.editor.toBuilder();
      _logo = $v.logo?.toBuilder();
      _finalities = $v.finalities?.toBuilder();
      _codesRegions = $v.codesRegions.toBuilder();
      _thematics = $v.thematics.toBuilder();
      _status = $v.status;
      _cguUrl = $v.cguUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GserviceData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GserviceData;
  }

  @override
  void update(void Function(GserviceDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GserviceData build() => _build();

  _$GserviceData _build() {
    _$GserviceData _$result;
    try {
      _$result = _$v ??
          new _$GserviceData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GserviceData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GserviceData', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GserviceData', 'name'),
              description: description,
              editor: editor.build(),
              logo: _logo?.build(),
              finalities: _finalities?.build(),
              codesRegions: codesRegions.build(),
              thematics: thematics.build(),
              status: status,
              cguUrl: cguUrl);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'editor';
        editor.build();
        _$failedField = 'logo';
        _logo?.build();
        _$failedField = 'finalities';
        _finalities?.build();
        _$failedField = 'codesRegions';
        codesRegions.build();
        _$failedField = 'thematics';
        thematics.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GserviceData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GserviceData_editor extends GserviceData_editor {
  @override
  final String G__typename;
  @override
  final String name;

  factory _$GserviceData_editor(
          [void Function(GserviceData_editorBuilder)? updates]) =>
      (new GserviceData_editorBuilder()..update(updates))._build();

  _$GserviceData_editor._({required this.G__typename, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GserviceData_editor', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(name, r'GserviceData_editor', 'name');
  }

  @override
  GserviceData_editor rebuild(
          void Function(GserviceData_editorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GserviceData_editorBuilder toBuilder() =>
      new GserviceData_editorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GserviceData_editor &&
        G__typename == other.G__typename &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GserviceData_editor')
          ..add('G__typename', G__typename)
          ..add('name', name))
        .toString();
  }
}

class GserviceData_editorBuilder
    implements Builder<GserviceData_editor, GserviceData_editorBuilder> {
  _$GserviceData_editor? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GserviceData_editorBuilder() {
    GserviceData_editor._initializeBuilder(this);
  }

  GserviceData_editorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GserviceData_editor other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GserviceData_editor;
  }

  @override
  void update(void Function(GserviceData_editorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GserviceData_editor build() => _build();

  _$GserviceData_editor _build() {
    final _$result = _$v ??
        new _$GserviceData_editor._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GserviceData_editor', 'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GserviceData_editor', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GserviceData_logo extends GserviceData_logo {
  @override
  final String G__typename;
  @override
  final String? file;
  @override
  final String? type;

  factory _$GserviceData_logo(
          [void Function(GserviceData_logoBuilder)? updates]) =>
      (new GserviceData_logoBuilder()..update(updates))._build();

  _$GserviceData_logo._({required this.G__typename, this.file, this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GserviceData_logo', 'G__typename');
  }

  @override
  GserviceData_logo rebuild(void Function(GserviceData_logoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GserviceData_logoBuilder toBuilder() =>
      new GserviceData_logoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GserviceData_logo &&
        G__typename == other.G__typename &&
        file == other.file &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, file.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GserviceData_logo')
          ..add('G__typename', G__typename)
          ..add('file', file)
          ..add('type', type))
        .toString();
  }
}

class GserviceData_logoBuilder
    implements Builder<GserviceData_logo, GserviceData_logoBuilder> {
  _$GserviceData_logo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _file;
  String? get file => _$this._file;
  set file(String? file) => _$this._file = file;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  GserviceData_logoBuilder() {
    GserviceData_logo._initializeBuilder(this);
  }

  GserviceData_logoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _file = $v.file;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GserviceData_logo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GserviceData_logo;
  }

  @override
  void update(void Function(GserviceData_logoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GserviceData_logo build() => _build();

  _$GserviceData_logo _build() {
    final _$result = _$v ??
        new _$GserviceData_logo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GserviceData_logo', 'G__typename'),
            file: file,
            type: type);
    replace(_$result);
    return _$result;
  }
}

class _$GserviceData_finalities extends GserviceData_finalities {
  @override
  final String G__typename;
  @override
  final String icone;
  @override
  final String libelle;
  @override
  final String description;

  factory _$GserviceData_finalities(
          [void Function(GserviceData_finalitiesBuilder)? updates]) =>
      (new GserviceData_finalitiesBuilder()..update(updates))._build();

  _$GserviceData_finalities._(
      {required this.G__typename,
      required this.icone,
      required this.libelle,
      required this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GserviceData_finalities', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        icone, r'GserviceData_finalities', 'icone');
    BuiltValueNullFieldError.checkNotNull(
        libelle, r'GserviceData_finalities', 'libelle');
    BuiltValueNullFieldError.checkNotNull(
        description, r'GserviceData_finalities', 'description');
  }

  @override
  GserviceData_finalities rebuild(
          void Function(GserviceData_finalitiesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GserviceData_finalitiesBuilder toBuilder() =>
      new GserviceData_finalitiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GserviceData_finalities &&
        G__typename == other.G__typename &&
        icone == other.icone &&
        libelle == other.libelle &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, icone.hashCode);
    _$hash = $jc(_$hash, libelle.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GserviceData_finalities')
          ..add('G__typename', G__typename)
          ..add('icone', icone)
          ..add('libelle', libelle)
          ..add('description', description))
        .toString();
  }
}

class GserviceData_finalitiesBuilder
    implements
        Builder<GserviceData_finalities, GserviceData_finalitiesBuilder> {
  _$GserviceData_finalities? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _icone;
  String? get icone => _$this._icone;
  set icone(String? icone) => _$this._icone = icone;

  String? _libelle;
  String? get libelle => _$this._libelle;
  set libelle(String? libelle) => _$this._libelle = libelle;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GserviceData_finalitiesBuilder() {
    GserviceData_finalities._initializeBuilder(this);
  }

  GserviceData_finalitiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _icone = $v.icone;
      _libelle = $v.libelle;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GserviceData_finalities other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GserviceData_finalities;
  }

  @override
  void update(void Function(GserviceData_finalitiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GserviceData_finalities build() => _build();

  _$GserviceData_finalities _build() {
    final _$result = _$v ??
        new _$GserviceData_finalities._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GserviceData_finalities', 'G__typename'),
            icone: BuiltValueNullFieldError.checkNotNull(
                icone, r'GserviceData_finalities', 'icone'),
            libelle: BuiltValueNullFieldError.checkNotNull(
                libelle, r'GserviceData_finalities', 'libelle'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'GserviceData_finalities', 'description'));
    replace(_$result);
    return _$result;
  }
}

class _$GregionData extends GregionData {
  @override
  final String G__typename;
  @override
  final String code;
  @override
  final String label;

  factory _$GregionData([void Function(GregionDataBuilder)? updates]) =>
      (new GregionDataBuilder()..update(updates))._build();

  _$GregionData._(
      {required this.G__typename, required this.code, required this.label})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GregionData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(code, r'GregionData', 'code');
    BuiltValueNullFieldError.checkNotNull(label, r'GregionData', 'label');
  }

  @override
  GregionData rebuild(void Function(GregionDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GregionDataBuilder toBuilder() => new GregionDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GregionData &&
        G__typename == other.G__typename &&
        code == other.code &&
        label == other.label;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GregionData')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('label', label))
        .toString();
  }
}

class GregionDataBuilder implements Builder<GregionData, GregionDataBuilder> {
  _$GregionData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  GregionDataBuilder() {
    GregionData._initializeBuilder(this);
  }

  GregionDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _code = $v.code;
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GregionData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GregionData;
  }

  @override
  void update(void Function(GregionDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GregionData build() => _build();

  _$GregionData _build() {
    final _$result = _$v ??
        new _$GregionData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GregionData', 'G__typename'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'GregionData', 'code'),
            label: BuiltValueNullFieldError.checkNotNull(
                label, r'GregionData', 'label'));
    replace(_$result);
    return _$result;
  }
}

class _$GthematicsData extends GthematicsData {
  @override
  final String G__typename;
  @override
  final String code;
  @override
  final String label;

  factory _$GthematicsData([void Function(GthematicsDataBuilder)? updates]) =>
      (new GthematicsDataBuilder()..update(updates))._build();

  _$GthematicsData._(
      {required this.G__typename, required this.code, required this.label})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GthematicsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(code, r'GthematicsData', 'code');
    BuiltValueNullFieldError.checkNotNull(label, r'GthematicsData', 'label');
  }

  @override
  GthematicsData rebuild(void Function(GthematicsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GthematicsDataBuilder toBuilder() =>
      new GthematicsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GthematicsData &&
        G__typename == other.G__typename &&
        code == other.code &&
        label == other.label;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GthematicsData')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('label', label))
        .toString();
  }
}

class GthematicsDataBuilder
    implements Builder<GthematicsData, GthematicsDataBuilder> {
  _$GthematicsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  GthematicsDataBuilder() {
    GthematicsData._initializeBuilder(this);
  }

  GthematicsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _code = $v.code;
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GthematicsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GthematicsData;
  }

  @override
  void update(void Function(GthematicsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GthematicsData build() => _build();

  _$GthematicsData _build() {
    final _$result = _$v ??
        new _$GthematicsData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GthematicsData', 'G__typename'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'GthematicsData', 'code'),
            label: BuiltValueNullFieldError.checkNotNull(
                label, r'GthematicsData', 'label'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
