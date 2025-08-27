// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_metadata_fields.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GmetadataFieldsData> _$gmetadataFieldsDataSerializer =
    new _$GmetadataFieldsDataSerializer();
Serializer<GmetadataFieldsData_metrics> _$gmetadataFieldsDataMetricsSerializer =
    new _$GmetadataFieldsData_metricsSerializer();
Serializer<GmetadataFieldsData_metrics_constraints>
    _$gmetadataFieldsDataMetricsConstraintsSerializer =
    new _$GmetadataFieldsData_metrics_constraintsSerializer();
Serializer<GmetadataFieldsData_metrics_constraints_range>
    _$gmetadataFieldsDataMetricsConstraintsRangeSerializer =
    new _$GmetadataFieldsData_metrics_constraints_rangeSerializer();
Serializer<GmetadataFieldsData_comments>
    _$gmetadataFieldsDataCommentsSerializer =
    new _$GmetadataFieldsData_commentsSerializer();
Serializer<GmetadataFieldsData_comments_options>
    _$gmetadataFieldsDataCommentsOptionsSerializer =
    new _$GmetadataFieldsData_comments_optionsSerializer();
Serializer<GmetadataFieldsData_comments_options_extraValueMetadata>
    _$gmetadataFieldsDataCommentsOptionsExtraValueMetadataSerializer =
    new _$GmetadataFieldsData_comments_options_extraValueMetadataSerializer();
Serializer<GmetadataFieldsData_comments_options_extraValueMetadata_constraints>
    _$gmetadataFieldsDataCommentsOptionsExtraValueMetadataConstraintsSerializer =
    new _$GmetadataFieldsData_comments_options_extraValueMetadata_constraintsSerializer();
Serializer<
        GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range>
    _$gmetadataFieldsDataCommentsOptionsExtraValueMetadataConstraintsRangeSerializer =
    new _$GmetadataFieldsData_comments_options_extraValueMetadata_constraints_rangeSerializer();

class _$GmetadataFieldsDataSerializer
    implements StructuredSerializer<GmetadataFieldsData> {
  @override
  final Iterable<Type> types = const [
    GmetadataFieldsData,
    _$GmetadataFieldsData
  ];
  @override
  final String wireName = 'GmetadataFieldsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmetadataFieldsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.metrics;
    if (value != null) {
      result
        ..add('metrics')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GmetadataFieldsData_metrics)])));
    }
    value = object.comments;
    if (value != null) {
      result
        ..add('comments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GmetadataFieldsData_comments)])));
    }
    return result;
  }

  @override
  GmetadataFieldsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmetadataFieldsDataBuilder();

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
        case 'metrics':
          result.metrics.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GmetadataFieldsData_metrics)
              ]))! as BuiltList<Object?>);
          break;
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GmetadataFieldsData_comments)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GmetadataFieldsData_metricsSerializer
    implements StructuredSerializer<GmetadataFieldsData_metrics> {
  @override
  final Iterable<Type> types = const [
    GmetadataFieldsData_metrics,
    _$GmetadataFieldsData_metrics
  ];
  @override
  final String wireName = 'GmetadataFieldsData_metrics';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmetadataFieldsData_metrics object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code,
          specifiedType: const FullType(_i1.GMeasureCode)),
      'unit',
      serializers.serialize(object.unit, specifiedType: const FullType(String)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
      'placeholder',
      serializers.serialize(object.placeholder,
          specifiedType: const FullType(String)),
      'constraints',
      serializers.serialize(object.constraints,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GmetadataFieldsData_metrics_constraints)])),
    ];
    Object? value;
    value = object.maxlength;
    if (value != null) {
      result
        ..add('maxlength')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hint;
    if (value != null) {
      result
        ..add('hint')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GmetadataFieldsData_metrics deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmetadataFieldsData_metricsBuilder();

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
                  specifiedType: const FullType(_i1.GMeasureCode))!
              as _i1.GMeasureCode;
          break;
        case 'unit':
          result.unit = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'placeholder':
          result.placeholder = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'maxlength':
          result.maxlength = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'hint':
          result.hint = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'constraints':
          result.constraints.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GmetadataFieldsData_metrics_constraints)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GmetadataFieldsData_metrics_constraintsSerializer
    implements StructuredSerializer<GmetadataFieldsData_metrics_constraints> {
  @override
  final Iterable<Type> types = const [
    GmetadataFieldsData_metrics_constraints,
    _$GmetadataFieldsData_metrics_constraints
  ];
  @override
  final String wireName = 'GmetadataFieldsData_metrics_constraints';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmetadataFieldsData_metrics_constraints object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.regexp;
    if (value != null) {
      result
        ..add('regexp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.range;
    if (value != null) {
      result
        ..add('range')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GmetadataFieldsData_metrics_constraints_range)));
    }
    return result;
  }

  @override
  GmetadataFieldsData_metrics_constraints deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmetadataFieldsData_metrics_constraintsBuilder();

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
        case 'regexp':
          result.regexp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'range':
          result.range.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GmetadataFieldsData_metrics_constraints_range))!
              as GmetadataFieldsData_metrics_constraints_range);
          break;
      }
    }

    return result.build();
  }
}

class _$GmetadataFieldsData_metrics_constraints_rangeSerializer
    implements
        StructuredSerializer<GmetadataFieldsData_metrics_constraints_range> {
  @override
  final Iterable<Type> types = const [
    GmetadataFieldsData_metrics_constraints_range,
    _$GmetadataFieldsData_metrics_constraints_range
  ];
  @override
  final String wireName = 'GmetadataFieldsData_metrics_constraints_range';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GmetadataFieldsData_metrics_constraints_range object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.min;
    if (value != null) {
      result
        ..add('min')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.max;
    if (value != null) {
      result
        ..add('max')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  GmetadataFieldsData_metrics_constraints_range deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmetadataFieldsData_metrics_constraints_rangeBuilder();

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
        case 'min':
          result.min = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'max':
          result.max = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$GmetadataFieldsData_commentsSerializer
    implements StructuredSerializer<GmetadataFieldsData_comments> {
  @override
  final Iterable<Type> types = const [
    GmetadataFieldsData_comments,
    _$GmetadataFieldsData_comments
  ];
  @override
  final String wireName = 'GmetadataFieldsData_comments';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmetadataFieldsData_comments object,
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
      'placeholder',
      serializers.serialize(object.placeholder,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.options;
    if (value != null) {
      result
        ..add('options')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GmetadataFieldsData_comments_options)])));
    }
    return result;
  }

  @override
  GmetadataFieldsData_comments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmetadataFieldsData_commentsBuilder();

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
        case 'placeholder':
          result.placeholder = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'options':
          result.options.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GmetadataFieldsData_comments_options)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GmetadataFieldsData_comments_optionsSerializer
    implements StructuredSerializer<GmetadataFieldsData_comments_options> {
  @override
  final Iterable<Type> types = const [
    GmetadataFieldsData_comments_options,
    _$GmetadataFieldsData_comments_options
  ];
  @override
  final String wireName = 'GmetadataFieldsData_comments_options';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GmetadataFieldsData_comments_options object,
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
    Object? value;
    value = object.extraValueMetadata;
    if (value != null) {
      result
        ..add('extraValueMetadata')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GmetadataFieldsData_comments_options_extraValueMetadata)));
    }
    return result;
  }

  @override
  GmetadataFieldsData_comments_options deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GmetadataFieldsData_comments_optionsBuilder();

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
        case 'extraValueMetadata':
          result.extraValueMetadata.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GmetadataFieldsData_comments_options_extraValueMetadata))!
              as GmetadataFieldsData_comments_options_extraValueMetadata);
          break;
      }
    }

    return result.build();
  }
}

class _$GmetadataFieldsData_comments_options_extraValueMetadataSerializer
    implements
        StructuredSerializer<
            GmetadataFieldsData_comments_options_extraValueMetadata> {
  @override
  final Iterable<Type> types = const [
    GmetadataFieldsData_comments_options_extraValueMetadata,
    _$GmetadataFieldsData_comments_options_extraValueMetadata
  ];
  @override
  final String wireName =
      'GmetadataFieldsData_comments_options_extraValueMetadata';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GmetadataFieldsData_comments_options_extraValueMetadata object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'fieldLabel',
      serializers.serialize(object.fieldLabel,
          specifiedType: const FullType(String)),
      'maxLength',
      serializers.serialize(object.maxLength,
          specifiedType: const FullType(double)),
      'constraints',
      serializers.serialize(object.constraints,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                GmetadataFieldsData_comments_options_extraValueMetadata_constraints)
          ])),
    ];

    return result;
  }

  @override
  GmetadataFieldsData_comments_options_extraValueMetadata deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GmetadataFieldsData_comments_options_extraValueMetadataBuilder();

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
        case 'fieldLabel':
          result.fieldLabel = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'maxLength':
          result.maxLength = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'constraints':
          result.constraints.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GmetadataFieldsData_comments_options_extraValueMetadata_constraints)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GmetadataFieldsData_comments_options_extraValueMetadata_constraintsSerializer
    implements
        StructuredSerializer<
            GmetadataFieldsData_comments_options_extraValueMetadata_constraints> {
  @override
  final Iterable<Type> types = const [
    GmetadataFieldsData_comments_options_extraValueMetadata_constraints,
    _$GmetadataFieldsData_comments_options_extraValueMetadata_constraints
  ];
  @override
  final String wireName =
      'GmetadataFieldsData_comments_options_extraValueMetadata_constraints';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GmetadataFieldsData_comments_options_extraValueMetadata_constraints
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.regexp;
    if (value != null) {
      result
        ..add('regexp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.range;
    if (value != null) {
      result
        ..add('range')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range)));
    }
    return result;
  }

  @override
  GmetadataFieldsData_comments_options_extraValueMetadata_constraints
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GmetadataFieldsData_comments_options_extraValueMetadata_constraintsBuilder();

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
        case 'regexp':
          result.regexp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'range':
          result.range.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range))!
              as GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range);
          break;
      }
    }

    return result.build();
  }
}

class _$GmetadataFieldsData_comments_options_extraValueMetadata_constraints_rangeSerializer
    implements
        StructuredSerializer<
            GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range> {
  @override
  final Iterable<Type> types = const [
    GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range,
    _$GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range
  ];
  @override
  final String wireName =
      'GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.min;
    if (value != null) {
      result
        ..add('min')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.max;
    if (value != null) {
      result
        ..add('max')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GmetadataFieldsData_comments_options_extraValueMetadata_constraints_rangeBuilder();

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
        case 'min':
          result.min = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'max':
          result.max = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$GmetadataFieldsData extends GmetadataFieldsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GmetadataFieldsData_metrics>? metrics;
  @override
  final BuiltList<GmetadataFieldsData_comments>? comments;

  factory _$GmetadataFieldsData(
          [void Function(GmetadataFieldsDataBuilder)? updates]) =>
      (new GmetadataFieldsDataBuilder()..update(updates))._build();

  _$GmetadataFieldsData._(
      {required this.G__typename, this.metrics, this.comments})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GmetadataFieldsData', 'G__typename');
  }

  @override
  GmetadataFieldsData rebuild(
          void Function(GmetadataFieldsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmetadataFieldsDataBuilder toBuilder() =>
      new GmetadataFieldsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmetadataFieldsData &&
        G__typename == other.G__typename &&
        metrics == other.metrics &&
        comments == other.comments;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, metrics.hashCode);
    _$hash = $jc(_$hash, comments.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GmetadataFieldsData')
          ..add('G__typename', G__typename)
          ..add('metrics', metrics)
          ..add('comments', comments))
        .toString();
  }
}

class GmetadataFieldsDataBuilder
    implements Builder<GmetadataFieldsData, GmetadataFieldsDataBuilder> {
  _$GmetadataFieldsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GmetadataFieldsData_metrics>? _metrics;
  ListBuilder<GmetadataFieldsData_metrics> get metrics =>
      _$this._metrics ??= new ListBuilder<GmetadataFieldsData_metrics>();
  set metrics(ListBuilder<GmetadataFieldsData_metrics>? metrics) =>
      _$this._metrics = metrics;

  ListBuilder<GmetadataFieldsData_comments>? _comments;
  ListBuilder<GmetadataFieldsData_comments> get comments =>
      _$this._comments ??= new ListBuilder<GmetadataFieldsData_comments>();
  set comments(ListBuilder<GmetadataFieldsData_comments>? comments) =>
      _$this._comments = comments;

  GmetadataFieldsDataBuilder() {
    GmetadataFieldsData._initializeBuilder(this);
  }

  GmetadataFieldsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _metrics = $v.metrics?.toBuilder();
      _comments = $v.comments?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GmetadataFieldsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmetadataFieldsData;
  }

  @override
  void update(void Function(GmetadataFieldsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmetadataFieldsData build() => _build();

  _$GmetadataFieldsData _build() {
    _$GmetadataFieldsData _$result;
    try {
      _$result = _$v ??
          new _$GmetadataFieldsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GmetadataFieldsData', 'G__typename'),
              metrics: _metrics?.build(),
              comments: _comments?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metrics';
        _metrics?.build();
        _$failedField = 'comments';
        _comments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GmetadataFieldsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmetadataFieldsData_metrics extends GmetadataFieldsData_metrics {
  @override
  final String G__typename;
  @override
  final _i1.GMeasureCode code;
  @override
  final String unit;
  @override
  final String label;
  @override
  final String placeholder;
  @override
  final String? maxlength;
  @override
  final String? hint;
  @override
  final BuiltList<GmetadataFieldsData_metrics_constraints> constraints;

  factory _$GmetadataFieldsData_metrics(
          [void Function(GmetadataFieldsData_metricsBuilder)? updates]) =>
      (new GmetadataFieldsData_metricsBuilder()..update(updates))._build();

  _$GmetadataFieldsData_metrics._(
      {required this.G__typename,
      required this.code,
      required this.unit,
      required this.label,
      required this.placeholder,
      this.maxlength,
      this.hint,
      required this.constraints})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GmetadataFieldsData_metrics', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        code, r'GmetadataFieldsData_metrics', 'code');
    BuiltValueNullFieldError.checkNotNull(
        unit, r'GmetadataFieldsData_metrics', 'unit');
    BuiltValueNullFieldError.checkNotNull(
        label, r'GmetadataFieldsData_metrics', 'label');
    BuiltValueNullFieldError.checkNotNull(
        placeholder, r'GmetadataFieldsData_metrics', 'placeholder');
    BuiltValueNullFieldError.checkNotNull(
        constraints, r'GmetadataFieldsData_metrics', 'constraints');
  }

  @override
  GmetadataFieldsData_metrics rebuild(
          void Function(GmetadataFieldsData_metricsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmetadataFieldsData_metricsBuilder toBuilder() =>
      new GmetadataFieldsData_metricsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmetadataFieldsData_metrics &&
        G__typename == other.G__typename &&
        code == other.code &&
        unit == other.unit &&
        label == other.label &&
        placeholder == other.placeholder &&
        maxlength == other.maxlength &&
        hint == other.hint &&
        constraints == other.constraints;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, unit.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, placeholder.hashCode);
    _$hash = $jc(_$hash, maxlength.hashCode);
    _$hash = $jc(_$hash, hint.hashCode);
    _$hash = $jc(_$hash, constraints.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GmetadataFieldsData_metrics')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('unit', unit)
          ..add('label', label)
          ..add('placeholder', placeholder)
          ..add('maxlength', maxlength)
          ..add('hint', hint)
          ..add('constraints', constraints))
        .toString();
  }
}

class GmetadataFieldsData_metricsBuilder
    implements
        Builder<GmetadataFieldsData_metrics,
            GmetadataFieldsData_metricsBuilder> {
  _$GmetadataFieldsData_metrics? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i1.GMeasureCode? _code;
  _i1.GMeasureCode? get code => _$this._code;
  set code(_i1.GMeasureCode? code) => _$this._code = code;

  String? _unit;
  String? get unit => _$this._unit;
  set unit(String? unit) => _$this._unit = unit;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _placeholder;
  String? get placeholder => _$this._placeholder;
  set placeholder(String? placeholder) => _$this._placeholder = placeholder;

  String? _maxlength;
  String? get maxlength => _$this._maxlength;
  set maxlength(String? maxlength) => _$this._maxlength = maxlength;

  String? _hint;
  String? get hint => _$this._hint;
  set hint(String? hint) => _$this._hint = hint;

  ListBuilder<GmetadataFieldsData_metrics_constraints>? _constraints;
  ListBuilder<GmetadataFieldsData_metrics_constraints> get constraints =>
      _$this._constraints ??=
          new ListBuilder<GmetadataFieldsData_metrics_constraints>();
  set constraints(
          ListBuilder<GmetadataFieldsData_metrics_constraints>? constraints) =>
      _$this._constraints = constraints;

  GmetadataFieldsData_metricsBuilder() {
    GmetadataFieldsData_metrics._initializeBuilder(this);
  }

  GmetadataFieldsData_metricsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _code = $v.code;
      _unit = $v.unit;
      _label = $v.label;
      _placeholder = $v.placeholder;
      _maxlength = $v.maxlength;
      _hint = $v.hint;
      _constraints = $v.constraints.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GmetadataFieldsData_metrics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmetadataFieldsData_metrics;
  }

  @override
  void update(void Function(GmetadataFieldsData_metricsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmetadataFieldsData_metrics build() => _build();

  _$GmetadataFieldsData_metrics _build() {
    _$GmetadataFieldsData_metrics _$result;
    try {
      _$result = _$v ??
          new _$GmetadataFieldsData_metrics._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GmetadataFieldsData_metrics', 'G__typename'),
              code: BuiltValueNullFieldError.checkNotNull(
                  code, r'GmetadataFieldsData_metrics', 'code'),
              unit: BuiltValueNullFieldError.checkNotNull(
                  unit, r'GmetadataFieldsData_metrics', 'unit'),
              label: BuiltValueNullFieldError.checkNotNull(
                  label, r'GmetadataFieldsData_metrics', 'label'),
              placeholder: BuiltValueNullFieldError.checkNotNull(
                  placeholder, r'GmetadataFieldsData_metrics', 'placeholder'),
              maxlength: maxlength,
              hint: hint,
              constraints: constraints.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'constraints';
        constraints.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GmetadataFieldsData_metrics', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmetadataFieldsData_metrics_constraints
    extends GmetadataFieldsData_metrics_constraints {
  @override
  final String G__typename;
  @override
  final String? regexp;
  @override
  final String message;
  @override
  final GmetadataFieldsData_metrics_constraints_range? range;

  factory _$GmetadataFieldsData_metrics_constraints(
          [void Function(GmetadataFieldsData_metrics_constraintsBuilder)?
              updates]) =>
      (new GmetadataFieldsData_metrics_constraintsBuilder()..update(updates))
          ._build();

  _$GmetadataFieldsData_metrics_constraints._(
      {required this.G__typename,
      this.regexp,
      required this.message,
      this.range})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GmetadataFieldsData_metrics_constraints', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GmetadataFieldsData_metrics_constraints', 'message');
  }

  @override
  GmetadataFieldsData_metrics_constraints rebuild(
          void Function(GmetadataFieldsData_metrics_constraintsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmetadataFieldsData_metrics_constraintsBuilder toBuilder() =>
      new GmetadataFieldsData_metrics_constraintsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmetadataFieldsData_metrics_constraints &&
        G__typename == other.G__typename &&
        regexp == other.regexp &&
        message == other.message &&
        range == other.range;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, regexp.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, range.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GmetadataFieldsData_metrics_constraints')
          ..add('G__typename', G__typename)
          ..add('regexp', regexp)
          ..add('message', message)
          ..add('range', range))
        .toString();
  }
}

class GmetadataFieldsData_metrics_constraintsBuilder
    implements
        Builder<GmetadataFieldsData_metrics_constraints,
            GmetadataFieldsData_metrics_constraintsBuilder> {
  _$GmetadataFieldsData_metrics_constraints? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _regexp;
  String? get regexp => _$this._regexp;
  set regexp(String? regexp) => _$this._regexp = regexp;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GmetadataFieldsData_metrics_constraints_rangeBuilder? _range;
  GmetadataFieldsData_metrics_constraints_rangeBuilder get range =>
      _$this._range ??=
          new GmetadataFieldsData_metrics_constraints_rangeBuilder();
  set range(GmetadataFieldsData_metrics_constraints_rangeBuilder? range) =>
      _$this._range = range;

  GmetadataFieldsData_metrics_constraintsBuilder() {
    GmetadataFieldsData_metrics_constraints._initializeBuilder(this);
  }

  GmetadataFieldsData_metrics_constraintsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _regexp = $v.regexp;
      _message = $v.message;
      _range = $v.range?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GmetadataFieldsData_metrics_constraints other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmetadataFieldsData_metrics_constraints;
  }

  @override
  void update(
      void Function(GmetadataFieldsData_metrics_constraintsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmetadataFieldsData_metrics_constraints build() => _build();

  _$GmetadataFieldsData_metrics_constraints _build() {
    _$GmetadataFieldsData_metrics_constraints _$result;
    try {
      _$result = _$v ??
          new _$GmetadataFieldsData_metrics_constraints._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GmetadataFieldsData_metrics_constraints', 'G__typename'),
              regexp: regexp,
              message: BuiltValueNullFieldError.checkNotNull(message,
                  r'GmetadataFieldsData_metrics_constraints', 'message'),
              range: _range?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'range';
        _range?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GmetadataFieldsData_metrics_constraints',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmetadataFieldsData_metrics_constraints_range
    extends GmetadataFieldsData_metrics_constraints_range {
  @override
  final String G__typename;
  @override
  final double? min;
  @override
  final double? max;

  factory _$GmetadataFieldsData_metrics_constraints_range(
          [void Function(GmetadataFieldsData_metrics_constraints_rangeBuilder)?
              updates]) =>
      (new GmetadataFieldsData_metrics_constraints_rangeBuilder()
            ..update(updates))
          ._build();

  _$GmetadataFieldsData_metrics_constraints_range._(
      {required this.G__typename, this.min, this.max})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GmetadataFieldsData_metrics_constraints_range', 'G__typename');
  }

  @override
  GmetadataFieldsData_metrics_constraints_range rebuild(
          void Function(GmetadataFieldsData_metrics_constraints_rangeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmetadataFieldsData_metrics_constraints_rangeBuilder toBuilder() =>
      new GmetadataFieldsData_metrics_constraints_rangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmetadataFieldsData_metrics_constraints_range &&
        G__typename == other.G__typename &&
        min == other.min &&
        max == other.max;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, min.hashCode);
    _$hash = $jc(_$hash, max.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GmetadataFieldsData_metrics_constraints_range')
          ..add('G__typename', G__typename)
          ..add('min', min)
          ..add('max', max))
        .toString();
  }
}

class GmetadataFieldsData_metrics_constraints_rangeBuilder
    implements
        Builder<GmetadataFieldsData_metrics_constraints_range,
            GmetadataFieldsData_metrics_constraints_rangeBuilder> {
  _$GmetadataFieldsData_metrics_constraints_range? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _min;
  double? get min => _$this._min;
  set min(double? min) => _$this._min = min;

  double? _max;
  double? get max => _$this._max;
  set max(double? max) => _$this._max = max;

  GmetadataFieldsData_metrics_constraints_rangeBuilder() {
    GmetadataFieldsData_metrics_constraints_range._initializeBuilder(this);
  }

  GmetadataFieldsData_metrics_constraints_rangeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _min = $v.min;
      _max = $v.max;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GmetadataFieldsData_metrics_constraints_range other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmetadataFieldsData_metrics_constraints_range;
  }

  @override
  void update(
      void Function(GmetadataFieldsData_metrics_constraints_rangeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GmetadataFieldsData_metrics_constraints_range build() => _build();

  _$GmetadataFieldsData_metrics_constraints_range _build() {
    final _$result = _$v ??
        new _$GmetadataFieldsData_metrics_constraints_range._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GmetadataFieldsData_metrics_constraints_range',
                'G__typename'),
            min: min,
            max: max);
    replace(_$result);
    return _$result;
  }
}

class _$GmetadataFieldsData_comments extends GmetadataFieldsData_comments {
  @override
  final String G__typename;
  @override
  final String code;
  @override
  final String label;
  @override
  final String placeholder;
  @override
  final BuiltList<GmetadataFieldsData_comments_options>? options;

  factory _$GmetadataFieldsData_comments(
          [void Function(GmetadataFieldsData_commentsBuilder)? updates]) =>
      (new GmetadataFieldsData_commentsBuilder()..update(updates))._build();

  _$GmetadataFieldsData_comments._(
      {required this.G__typename,
      required this.code,
      required this.label,
      required this.placeholder,
      this.options})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GmetadataFieldsData_comments', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        code, r'GmetadataFieldsData_comments', 'code');
    BuiltValueNullFieldError.checkNotNull(
        label, r'GmetadataFieldsData_comments', 'label');
    BuiltValueNullFieldError.checkNotNull(
        placeholder, r'GmetadataFieldsData_comments', 'placeholder');
  }

  @override
  GmetadataFieldsData_comments rebuild(
          void Function(GmetadataFieldsData_commentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmetadataFieldsData_commentsBuilder toBuilder() =>
      new GmetadataFieldsData_commentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmetadataFieldsData_comments &&
        G__typename == other.G__typename &&
        code == other.code &&
        label == other.label &&
        placeholder == other.placeholder &&
        options == other.options;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, placeholder.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GmetadataFieldsData_comments')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('label', label)
          ..add('placeholder', placeholder)
          ..add('options', options))
        .toString();
  }
}

class GmetadataFieldsData_commentsBuilder
    implements
        Builder<GmetadataFieldsData_comments,
            GmetadataFieldsData_commentsBuilder> {
  _$GmetadataFieldsData_comments? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _placeholder;
  String? get placeholder => _$this._placeholder;
  set placeholder(String? placeholder) => _$this._placeholder = placeholder;

  ListBuilder<GmetadataFieldsData_comments_options>? _options;
  ListBuilder<GmetadataFieldsData_comments_options> get options =>
      _$this._options ??=
          new ListBuilder<GmetadataFieldsData_comments_options>();
  set options(ListBuilder<GmetadataFieldsData_comments_options>? options) =>
      _$this._options = options;

  GmetadataFieldsData_commentsBuilder() {
    GmetadataFieldsData_comments._initializeBuilder(this);
  }

  GmetadataFieldsData_commentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _code = $v.code;
      _label = $v.label;
      _placeholder = $v.placeholder;
      _options = $v.options?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GmetadataFieldsData_comments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmetadataFieldsData_comments;
  }

  @override
  void update(void Function(GmetadataFieldsData_commentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmetadataFieldsData_comments build() => _build();

  _$GmetadataFieldsData_comments _build() {
    _$GmetadataFieldsData_comments _$result;
    try {
      _$result = _$v ??
          new _$GmetadataFieldsData_comments._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GmetadataFieldsData_comments', 'G__typename'),
              code: BuiltValueNullFieldError.checkNotNull(
                  code, r'GmetadataFieldsData_comments', 'code'),
              label: BuiltValueNullFieldError.checkNotNull(
                  label, r'GmetadataFieldsData_comments', 'label'),
              placeholder: BuiltValueNullFieldError.checkNotNull(
                  placeholder, r'GmetadataFieldsData_comments', 'placeholder'),
              options: _options?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GmetadataFieldsData_comments', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmetadataFieldsData_comments_options
    extends GmetadataFieldsData_comments_options {
  @override
  final String G__typename;
  @override
  final String code;
  @override
  final String label;
  @override
  final GmetadataFieldsData_comments_options_extraValueMetadata?
      extraValueMetadata;

  factory _$GmetadataFieldsData_comments_options(
          [void Function(GmetadataFieldsData_comments_optionsBuilder)?
              updates]) =>
      (new GmetadataFieldsData_comments_optionsBuilder()..update(updates))
          ._build();

  _$GmetadataFieldsData_comments_options._(
      {required this.G__typename,
      required this.code,
      required this.label,
      this.extraValueMetadata})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GmetadataFieldsData_comments_options', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        code, r'GmetadataFieldsData_comments_options', 'code');
    BuiltValueNullFieldError.checkNotNull(
        label, r'GmetadataFieldsData_comments_options', 'label');
  }

  @override
  GmetadataFieldsData_comments_options rebuild(
          void Function(GmetadataFieldsData_comments_optionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmetadataFieldsData_comments_optionsBuilder toBuilder() =>
      new GmetadataFieldsData_comments_optionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmetadataFieldsData_comments_options &&
        G__typename == other.G__typename &&
        code == other.code &&
        label == other.label &&
        extraValueMetadata == other.extraValueMetadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, extraValueMetadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GmetadataFieldsData_comments_options')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('label', label)
          ..add('extraValueMetadata', extraValueMetadata))
        .toString();
  }
}

class GmetadataFieldsData_comments_optionsBuilder
    implements
        Builder<GmetadataFieldsData_comments_options,
            GmetadataFieldsData_comments_optionsBuilder> {
  _$GmetadataFieldsData_comments_options? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  GmetadataFieldsData_comments_options_extraValueMetadataBuilder?
      _extraValueMetadata;
  GmetadataFieldsData_comments_options_extraValueMetadataBuilder
      get extraValueMetadata => _$this._extraValueMetadata ??=
          new GmetadataFieldsData_comments_options_extraValueMetadataBuilder();
  set extraValueMetadata(
          GmetadataFieldsData_comments_options_extraValueMetadataBuilder?
              extraValueMetadata) =>
      _$this._extraValueMetadata = extraValueMetadata;

  GmetadataFieldsData_comments_optionsBuilder() {
    GmetadataFieldsData_comments_options._initializeBuilder(this);
  }

  GmetadataFieldsData_comments_optionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _code = $v.code;
      _label = $v.label;
      _extraValueMetadata = $v.extraValueMetadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GmetadataFieldsData_comments_options other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmetadataFieldsData_comments_options;
  }

  @override
  void update(
      void Function(GmetadataFieldsData_comments_optionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GmetadataFieldsData_comments_options build() => _build();

  _$GmetadataFieldsData_comments_options _build() {
    _$GmetadataFieldsData_comments_options _$result;
    try {
      _$result = _$v ??
          new _$GmetadataFieldsData_comments_options._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GmetadataFieldsData_comments_options', 'G__typename'),
              code: BuiltValueNullFieldError.checkNotNull(
                  code, r'GmetadataFieldsData_comments_options', 'code'),
              label: BuiltValueNullFieldError.checkNotNull(
                  label, r'GmetadataFieldsData_comments_options', 'label'),
              extraValueMetadata: _extraValueMetadata?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'extraValueMetadata';
        _extraValueMetadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GmetadataFieldsData_comments_options',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmetadataFieldsData_comments_options_extraValueMetadata
    extends GmetadataFieldsData_comments_options_extraValueMetadata {
  @override
  final String G__typename;
  @override
  final String fieldLabel;
  @override
  final double maxLength;
  @override
  final BuiltList<
          GmetadataFieldsData_comments_options_extraValueMetadata_constraints>
      constraints;

  factory _$GmetadataFieldsData_comments_options_extraValueMetadata(
          [void Function(
                  GmetadataFieldsData_comments_options_extraValueMetadataBuilder)?
              updates]) =>
      (new GmetadataFieldsData_comments_options_extraValueMetadataBuilder()
            ..update(updates))
          ._build();

  _$GmetadataFieldsData_comments_options_extraValueMetadata._(
      {required this.G__typename,
      required this.fieldLabel,
      required this.maxLength,
      required this.constraints})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GmetadataFieldsData_comments_options_extraValueMetadata',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        fieldLabel,
        r'GmetadataFieldsData_comments_options_extraValueMetadata',
        'fieldLabel');
    BuiltValueNullFieldError.checkNotNull(
        maxLength,
        r'GmetadataFieldsData_comments_options_extraValueMetadata',
        'maxLength');
    BuiltValueNullFieldError.checkNotNull(
        constraints,
        r'GmetadataFieldsData_comments_options_extraValueMetadata',
        'constraints');
  }

  @override
  GmetadataFieldsData_comments_options_extraValueMetadata rebuild(
          void Function(
                  GmetadataFieldsData_comments_options_extraValueMetadataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmetadataFieldsData_comments_options_extraValueMetadataBuilder toBuilder() =>
      new GmetadataFieldsData_comments_options_extraValueMetadataBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GmetadataFieldsData_comments_options_extraValueMetadata &&
        G__typename == other.G__typename &&
        fieldLabel == other.fieldLabel &&
        maxLength == other.maxLength &&
        constraints == other.constraints;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, fieldLabel.hashCode);
    _$hash = $jc(_$hash, maxLength.hashCode);
    _$hash = $jc(_$hash, constraints.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GmetadataFieldsData_comments_options_extraValueMetadata')
          ..add('G__typename', G__typename)
          ..add('fieldLabel', fieldLabel)
          ..add('maxLength', maxLength)
          ..add('constraints', constraints))
        .toString();
  }
}

class GmetadataFieldsData_comments_options_extraValueMetadataBuilder
    implements
        Builder<GmetadataFieldsData_comments_options_extraValueMetadata,
            GmetadataFieldsData_comments_options_extraValueMetadataBuilder> {
  _$GmetadataFieldsData_comments_options_extraValueMetadata? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _fieldLabel;
  String? get fieldLabel => _$this._fieldLabel;
  set fieldLabel(String? fieldLabel) => _$this._fieldLabel = fieldLabel;

  double? _maxLength;
  double? get maxLength => _$this._maxLength;
  set maxLength(double? maxLength) => _$this._maxLength = maxLength;

  ListBuilder<
          GmetadataFieldsData_comments_options_extraValueMetadata_constraints>?
      _constraints;
  ListBuilder<
          GmetadataFieldsData_comments_options_extraValueMetadata_constraints>
      get constraints => _$this._constraints ??= new ListBuilder<
          GmetadataFieldsData_comments_options_extraValueMetadata_constraints>();
  set constraints(
          ListBuilder<
                  GmetadataFieldsData_comments_options_extraValueMetadata_constraints>?
              constraints) =>
      _$this._constraints = constraints;

  GmetadataFieldsData_comments_options_extraValueMetadataBuilder() {
    GmetadataFieldsData_comments_options_extraValueMetadata._initializeBuilder(
        this);
  }

  GmetadataFieldsData_comments_options_extraValueMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _fieldLabel = $v.fieldLabel;
      _maxLength = $v.maxLength;
      _constraints = $v.constraints.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GmetadataFieldsData_comments_options_extraValueMetadata other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GmetadataFieldsData_comments_options_extraValueMetadata;
  }

  @override
  void update(
      void Function(
              GmetadataFieldsData_comments_options_extraValueMetadataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GmetadataFieldsData_comments_options_extraValueMetadata build() => _build();

  _$GmetadataFieldsData_comments_options_extraValueMetadata _build() {
    _$GmetadataFieldsData_comments_options_extraValueMetadata _$result;
    try {
      _$result = _$v ??
          new _$GmetadataFieldsData_comments_options_extraValueMetadata._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GmetadataFieldsData_comments_options_extraValueMetadata',
                  'G__typename'),
              fieldLabel: BuiltValueNullFieldError.checkNotNull(
                  fieldLabel,
                  r'GmetadataFieldsData_comments_options_extraValueMetadata',
                  'fieldLabel'),
              maxLength: BuiltValueNullFieldError.checkNotNull(
                  maxLength,
                  r'GmetadataFieldsData_comments_options_extraValueMetadata',
                  'maxLength'),
              constraints: constraints.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'constraints';
        constraints.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GmetadataFieldsData_comments_options_extraValueMetadata',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmetadataFieldsData_comments_options_extraValueMetadata_constraints
    extends GmetadataFieldsData_comments_options_extraValueMetadata_constraints {
  @override
  final String G__typename;
  @override
  final String? regexp;
  @override
  final String message;
  @override
  final GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range?
      range;

  factory _$GmetadataFieldsData_comments_options_extraValueMetadata_constraints(
          [void Function(
                  GmetadataFieldsData_comments_options_extraValueMetadata_constraintsBuilder)?
              updates]) =>
      (new GmetadataFieldsData_comments_options_extraValueMetadata_constraintsBuilder()
            ..update(updates))
          ._build();

  _$GmetadataFieldsData_comments_options_extraValueMetadata_constraints._(
      {required this.G__typename,
      this.regexp,
      required this.message,
      this.range})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GmetadataFieldsData_comments_options_extraValueMetadata_constraints',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message,
        r'GmetadataFieldsData_comments_options_extraValueMetadata_constraints',
        'message');
  }

  @override
  GmetadataFieldsData_comments_options_extraValueMetadata_constraints rebuild(
          void Function(
                  GmetadataFieldsData_comments_options_extraValueMetadata_constraintsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmetadataFieldsData_comments_options_extraValueMetadata_constraintsBuilder
      toBuilder() =>
          new GmetadataFieldsData_comments_options_extraValueMetadata_constraintsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GmetadataFieldsData_comments_options_extraValueMetadata_constraints &&
        G__typename == other.G__typename &&
        regexp == other.regexp &&
        message == other.message &&
        range == other.range;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, regexp.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, range.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GmetadataFieldsData_comments_options_extraValueMetadata_constraints')
          ..add('G__typename', G__typename)
          ..add('regexp', regexp)
          ..add('message', message)
          ..add('range', range))
        .toString();
  }
}

class GmetadataFieldsData_comments_options_extraValueMetadata_constraintsBuilder
    implements
        Builder<
            GmetadataFieldsData_comments_options_extraValueMetadata_constraints,
            GmetadataFieldsData_comments_options_extraValueMetadata_constraintsBuilder> {
  _$GmetadataFieldsData_comments_options_extraValueMetadata_constraints? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _regexp;
  String? get regexp => _$this._regexp;
  set regexp(String? regexp) => _$this._regexp = regexp;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GmetadataFieldsData_comments_options_extraValueMetadata_constraints_rangeBuilder?
      _range;
  GmetadataFieldsData_comments_options_extraValueMetadata_constraints_rangeBuilder
      get range => _$this._range ??=
          new GmetadataFieldsData_comments_options_extraValueMetadata_constraints_rangeBuilder();
  set range(
          GmetadataFieldsData_comments_options_extraValueMetadata_constraints_rangeBuilder?
              range) =>
      _$this._range = range;

  GmetadataFieldsData_comments_options_extraValueMetadata_constraintsBuilder() {
    GmetadataFieldsData_comments_options_extraValueMetadata_constraints
        ._initializeBuilder(this);
  }

  GmetadataFieldsData_comments_options_extraValueMetadata_constraintsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _regexp = $v.regexp;
      _message = $v.message;
      _range = $v.range?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GmetadataFieldsData_comments_options_extraValueMetadata_constraints
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GmetadataFieldsData_comments_options_extraValueMetadata_constraints;
  }

  @override
  void update(
      void Function(
              GmetadataFieldsData_comments_options_extraValueMetadata_constraintsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GmetadataFieldsData_comments_options_extraValueMetadata_constraints build() =>
      _build();

  _$GmetadataFieldsData_comments_options_extraValueMetadata_constraints
      _build() {
    _$GmetadataFieldsData_comments_options_extraValueMetadata_constraints
        _$result;
    try {
      _$result = _$v ??
          new _$GmetadataFieldsData_comments_options_extraValueMetadata_constraints
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GmetadataFieldsData_comments_options_extraValueMetadata_constraints',
                  'G__typename'),
              regexp: regexp,
              message: BuiltValueNullFieldError.checkNotNull(
                  message,
                  r'GmetadataFieldsData_comments_options_extraValueMetadata_constraints',
                  'message'),
              range: _range?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'range';
        _range?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GmetadataFieldsData_comments_options_extraValueMetadata_constraints',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range
    extends GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range {
  @override
  final String G__typename;
  @override
  final double? min;
  @override
  final double? max;

  factory _$GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range(
          [void Function(
                  GmetadataFieldsData_comments_options_extraValueMetadata_constraints_rangeBuilder)?
              updates]) =>
      (new GmetadataFieldsData_comments_options_extraValueMetadata_constraints_rangeBuilder()
            ..update(updates))
          ._build();

  _$GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range._(
      {required this.G__typename, this.min, this.max})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range',
        'G__typename');
  }

  @override
  GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range rebuild(
          void Function(
                  GmetadataFieldsData_comments_options_extraValueMetadata_constraints_rangeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GmetadataFieldsData_comments_options_extraValueMetadata_constraints_rangeBuilder
      toBuilder() =>
          new GmetadataFieldsData_comments_options_extraValueMetadata_constraints_rangeBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range &&
        G__typename == other.G__typename &&
        min == other.min &&
        max == other.max;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, min.hashCode);
    _$hash = $jc(_$hash, max.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range')
          ..add('G__typename', G__typename)
          ..add('min', min)
          ..add('max', max))
        .toString();
  }
}

class GmetadataFieldsData_comments_options_extraValueMetadata_constraints_rangeBuilder
    implements
        Builder<
            GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range,
            GmetadataFieldsData_comments_options_extraValueMetadata_constraints_rangeBuilder> {
  _$GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _min;
  double? get min => _$this._min;
  set min(double? min) => _$this._min = min;

  double? _max;
  double? get max => _$this._max;
  set max(double? max) => _$this._max = max;

  GmetadataFieldsData_comments_options_extraValueMetadata_constraints_rangeBuilder() {
    GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range
        ._initializeBuilder(this);
  }

  GmetadataFieldsData_comments_options_extraValueMetadata_constraints_rangeBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _min = $v.min;
      _max = $v.max;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range;
  }

  @override
  void update(
      void Function(
              GmetadataFieldsData_comments_options_extraValueMetadata_constraints_rangeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range
      build() => _build();

  _$GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range
      _build() {
    final _$result = _$v ??
        new _$GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range',
                'G__typename'),
            min: min,
            max: max);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
