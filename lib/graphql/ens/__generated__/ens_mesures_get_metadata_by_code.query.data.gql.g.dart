// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesures_get_metadata_by_code.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_metadata_by_codeData> _$ggetMetadataByCodeDataSerializer =
    new _$Gget_metadata_by_codeDataSerializer();
Serializer<Gget_metadata_by_codeData_measureMetaData>
    _$ggetMetadataByCodeDataMeasureMetaDataSerializer =
    new _$Gget_metadata_by_codeData_measureMetaDataSerializer();
Serializer<Gget_metadata_by_codeData_measureMetaData_metrics>
    _$ggetMetadataByCodeDataMeasureMetaDataMetricsSerializer =
    new _$Gget_metadata_by_codeData_measureMetaData_metricsSerializer();
Serializer<Gget_metadata_by_codeData_measureMetaData_metrics_constraints>
    _$ggetMetadataByCodeDataMeasureMetaDataMetricsConstraintsSerializer =
    new _$Gget_metadata_by_codeData_measureMetaData_metrics_constraintsSerializer();
Serializer<Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range>
    _$ggetMetadataByCodeDataMeasureMetaDataMetricsConstraintsRangeSerializer =
    new _$Gget_metadata_by_codeData_measureMetaData_metrics_constraints_rangeSerializer();
Serializer<Gget_metadata_by_codeData_measureMetaData_comments>
    _$ggetMetadataByCodeDataMeasureMetaDataCommentsSerializer =
    new _$Gget_metadata_by_codeData_measureMetaData_commentsSerializer();
Serializer<Gget_metadata_by_codeData_measureMetaData_comments_options>
    _$ggetMetadataByCodeDataMeasureMetaDataCommentsOptionsSerializer =
    new _$Gget_metadata_by_codeData_measureMetaData_comments_optionsSerializer();
Serializer<
        Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata>
    _$ggetMetadataByCodeDataMeasureMetaDataCommentsOptionsExtraValueMetadataSerializer =
    new _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadataSerializer();
Serializer<
        Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints>
    _$ggetMetadataByCodeDataMeasureMetaDataCommentsOptionsExtraValueMetadataConstraintsSerializer =
    new _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraintsSerializer();
Serializer<
        Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range>
    _$ggetMetadataByCodeDataMeasureMetaDataCommentsOptionsExtraValueMetadataConstraintsRangeSerializer =
    new _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_rangeSerializer();

class _$Gget_metadata_by_codeDataSerializer
    implements StructuredSerializer<Gget_metadata_by_codeData> {
  @override
  final Iterable<Type> types = const [
    Gget_metadata_by_codeData,
    _$Gget_metadata_by_codeData
  ];
  @override
  final String wireName = 'Gget_metadata_by_codeData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_metadata_by_codeData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'measureMetaData',
      serializers.serialize(object.measureMetaData,
          specifiedType:
              const FullType(Gget_metadata_by_codeData_measureMetaData)),
    ];

    return result;
  }

  @override
  Gget_metadata_by_codeData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_metadata_by_codeDataBuilder();

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
        case 'measureMetaData':
          result.measureMetaData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_metadata_by_codeData_measureMetaData))!
              as Gget_metadata_by_codeData_measureMetaData);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_metadata_by_codeData_measureMetaDataSerializer
    implements StructuredSerializer<Gget_metadata_by_codeData_measureMetaData> {
  @override
  final Iterable<Type> types = const [
    Gget_metadata_by_codeData_measureMetaData,
    _$Gget_metadata_by_codeData_measureMetaData
  ];
  @override
  final String wireName = 'Gget_metadata_by_codeData_measureMetaData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_metadata_by_codeData_measureMetaData object,
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
            specifiedType: const FullType(BuiltList, const [
              const FullType(Gget_metadata_by_codeData_measureMetaData_metrics)
            ])));
    }
    value = object.comments;
    if (value != null) {
      result
        ..add('comments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(Gget_metadata_by_codeData_measureMetaData_comments)
            ])));
    }
    return result;
  }

  @override
  Gget_metadata_by_codeData_measureMetaData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_metadata_by_codeData_measureMetaDataBuilder();

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
                const FullType(
                    Gget_metadata_by_codeData_measureMetaData_metrics)
              ]))! as BuiltList<Object?>);
          break;
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_metadata_by_codeData_measureMetaData_comments)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_metadata_by_codeData_measureMetaData_metricsSerializer
    implements
        StructuredSerializer<
            Gget_metadata_by_codeData_measureMetaData_metrics> {
  @override
  final Iterable<Type> types = const [
    Gget_metadata_by_codeData_measureMetaData_metrics,
    _$Gget_metadata_by_codeData_measureMetaData_metrics
  ];
  @override
  final String wireName = 'Gget_metadata_by_codeData_measureMetaData_metrics';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_metadata_by_codeData_measureMetaData_metrics object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code,
          specifiedType: const FullType(_i3.GMeasureCode)),
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
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_metadata_by_codeData_measureMetaData_metrics_constraints)
          ])),
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
  Gget_metadata_by_codeData_measureMetaData_metrics deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_metadata_by_codeData_measureMetaData_metricsBuilder();

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
                  specifiedType: const FullType(_i3.GMeasureCode))!
              as _i3.GMeasureCode;
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
                const FullType(
                    Gget_metadata_by_codeData_measureMetaData_metrics_constraints)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_metadata_by_codeData_measureMetaData_metrics_constraintsSerializer
    implements
        StructuredSerializer<
            Gget_metadata_by_codeData_measureMetaData_metrics_constraints> {
  @override
  final Iterable<Type> types = const [
    Gget_metadata_by_codeData_measureMetaData_metrics_constraints,
    _$Gget_metadata_by_codeData_measureMetaData_metrics_constraints
  ];
  @override
  final String wireName =
      'Gget_metadata_by_codeData_measureMetaData_metrics_constraints';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_metadata_by_codeData_measureMetaData_metrics_constraints object,
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
                Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range)));
    }
    return result;
  }

  @override
  Gget_metadata_by_codeData_measureMetaData_metrics_constraints deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_metadata_by_codeData_measureMetaData_metrics_constraintsBuilder();

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
                      Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range))!
              as Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_metadata_by_codeData_measureMetaData_metrics_constraints_rangeSerializer
    implements
        StructuredSerializer<
            Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range> {
  @override
  final Iterable<Type> types = const [
    Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range,
    _$Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range
  ];
  @override
  final String wireName =
      'Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range
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
  Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_metadata_by_codeData_measureMetaData_metrics_constraints_rangeBuilder();

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

class _$Gget_metadata_by_codeData_measureMetaData_commentsSerializer
    implements
        StructuredSerializer<
            Gget_metadata_by_codeData_measureMetaData_comments> {
  @override
  final Iterable<Type> types = const [
    Gget_metadata_by_codeData_measureMetaData_comments,
    _$Gget_metadata_by_codeData_measureMetaData_comments
  ];
  @override
  final String wireName = 'Gget_metadata_by_codeData_measureMetaData_comments';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_metadata_by_codeData_measureMetaData_comments object,
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
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_metadata_by_codeData_measureMetaData_comments_options)
            ])));
    }
    return result;
  }

  @override
  Gget_metadata_by_codeData_measureMetaData_comments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_metadata_by_codeData_measureMetaData_commentsBuilder();

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
                const FullType(
                    Gget_metadata_by_codeData_measureMetaData_comments_options)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_metadata_by_codeData_measureMetaData_comments_optionsSerializer
    implements
        StructuredSerializer<
            Gget_metadata_by_codeData_measureMetaData_comments_options> {
  @override
  final Iterable<Type> types = const [
    Gget_metadata_by_codeData_measureMetaData_comments_options,
    _$Gget_metadata_by_codeData_measureMetaData_comments_options
  ];
  @override
  final String wireName =
      'Gget_metadata_by_codeData_measureMetaData_comments_options';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_metadata_by_codeData_measureMetaData_comments_options object,
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
                Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata)));
    }
    return result;
  }

  @override
  Gget_metadata_by_codeData_measureMetaData_comments_options deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_metadata_by_codeData_measureMetaData_comments_optionsBuilder();

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
                      Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata))!
              as Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadataSerializer
    implements
        StructuredSerializer<
            Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata> {
  @override
  final Iterable<Type> types = const [
    Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata,
    _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata
  ];
  @override
  final String wireName =
      'Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata
          object,
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
                Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints)
          ])),
    ];

    return result;
  }

  @override
  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadataBuilder();

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
                    Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraintsSerializer
    implements
        StructuredSerializer<
            Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints> {
  @override
  final Iterable<Type> types = const [
    Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints,
    _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints
  ];
  @override
  final String wireName =
      'Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints
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
                Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range)));
    }
    return result;
  }

  @override
  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraintsBuilder();

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
                      Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range))!
              as Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_rangeSerializer
    implements
        StructuredSerializer<
            Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range> {
  @override
  final Iterable<Type> types = const [
    Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range,
    _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range
  ];
  @override
  final String wireName =
      'Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range
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
  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_rangeBuilder();

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

class _$Gget_metadata_by_codeData extends Gget_metadata_by_codeData {
  @override
  final String G__typename;
  @override
  final Gget_metadata_by_codeData_measureMetaData measureMetaData;

  factory _$Gget_metadata_by_codeData(
          [void Function(Gget_metadata_by_codeDataBuilder)? updates]) =>
      (new Gget_metadata_by_codeDataBuilder()..update(updates))._build();

  _$Gget_metadata_by_codeData._(
      {required this.G__typename, required this.measureMetaData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_metadata_by_codeData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        measureMetaData, r'Gget_metadata_by_codeData', 'measureMetaData');
  }

  @override
  Gget_metadata_by_codeData rebuild(
          void Function(Gget_metadata_by_codeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_metadata_by_codeDataBuilder toBuilder() =>
      new Gget_metadata_by_codeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_metadata_by_codeData &&
        G__typename == other.G__typename &&
        measureMetaData == other.measureMetaData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, measureMetaData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_metadata_by_codeData')
          ..add('G__typename', G__typename)
          ..add('measureMetaData', measureMetaData))
        .toString();
  }
}

class Gget_metadata_by_codeDataBuilder
    implements
        Builder<Gget_metadata_by_codeData, Gget_metadata_by_codeDataBuilder> {
  _$Gget_metadata_by_codeData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_metadata_by_codeData_measureMetaDataBuilder? _measureMetaData;
  Gget_metadata_by_codeData_measureMetaDataBuilder get measureMetaData =>
      _$this._measureMetaData ??=
          new Gget_metadata_by_codeData_measureMetaDataBuilder();
  set measureMetaData(
          Gget_metadata_by_codeData_measureMetaDataBuilder? measureMetaData) =>
      _$this._measureMetaData = measureMetaData;

  Gget_metadata_by_codeDataBuilder() {
    Gget_metadata_by_codeData._initializeBuilder(this);
  }

  Gget_metadata_by_codeDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _measureMetaData = $v.measureMetaData.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_metadata_by_codeData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_metadata_by_codeData;
  }

  @override
  void update(void Function(Gget_metadata_by_codeDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_metadata_by_codeData build() => _build();

  _$Gget_metadata_by_codeData _build() {
    _$Gget_metadata_by_codeData _$result;
    try {
      _$result = _$v ??
          new _$Gget_metadata_by_codeData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_metadata_by_codeData', 'G__typename'),
              measureMetaData: measureMetaData.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'measureMetaData';
        measureMetaData.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_metadata_by_codeData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_metadata_by_codeData_measureMetaData
    extends Gget_metadata_by_codeData_measureMetaData {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_metadata_by_codeData_measureMetaData_metrics>? metrics;
  @override
  final BuiltList<Gget_metadata_by_codeData_measureMetaData_comments>? comments;

  factory _$Gget_metadata_by_codeData_measureMetaData(
          [void Function(Gget_metadata_by_codeData_measureMetaDataBuilder)?
              updates]) =>
      (new Gget_metadata_by_codeData_measureMetaDataBuilder()..update(updates))
          ._build();

  _$Gget_metadata_by_codeData_measureMetaData._(
      {required this.G__typename, this.metrics, this.comments})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_metadata_by_codeData_measureMetaData', 'G__typename');
  }

  @override
  Gget_metadata_by_codeData_measureMetaData rebuild(
          void Function(Gget_metadata_by_codeData_measureMetaDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_metadata_by_codeData_measureMetaDataBuilder toBuilder() =>
      new Gget_metadata_by_codeData_measureMetaDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_metadata_by_codeData_measureMetaData &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_metadata_by_codeData_measureMetaData')
          ..add('G__typename', G__typename)
          ..add('metrics', metrics)
          ..add('comments', comments))
        .toString();
  }
}

class Gget_metadata_by_codeData_measureMetaDataBuilder
    implements
        Builder<Gget_metadata_by_codeData_measureMetaData,
            Gget_metadata_by_codeData_measureMetaDataBuilder> {
  _$Gget_metadata_by_codeData_measureMetaData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_metadata_by_codeData_measureMetaData_metrics>? _metrics;
  ListBuilder<Gget_metadata_by_codeData_measureMetaData_metrics> get metrics =>
      _$this._metrics ??=
          new ListBuilder<Gget_metadata_by_codeData_measureMetaData_metrics>();
  set metrics(
          ListBuilder<Gget_metadata_by_codeData_measureMetaData_metrics>?
              metrics) =>
      _$this._metrics = metrics;

  ListBuilder<Gget_metadata_by_codeData_measureMetaData_comments>? _comments;
  ListBuilder<Gget_metadata_by_codeData_measureMetaData_comments>
      get comments => _$this._comments ??=
          new ListBuilder<Gget_metadata_by_codeData_measureMetaData_comments>();
  set comments(
          ListBuilder<Gget_metadata_by_codeData_measureMetaData_comments>?
              comments) =>
      _$this._comments = comments;

  Gget_metadata_by_codeData_measureMetaDataBuilder() {
    Gget_metadata_by_codeData_measureMetaData._initializeBuilder(this);
  }

  Gget_metadata_by_codeData_measureMetaDataBuilder get _$this {
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
  void replace(Gget_metadata_by_codeData_measureMetaData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_metadata_by_codeData_measureMetaData;
  }

  @override
  void update(
      void Function(Gget_metadata_by_codeData_measureMetaDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_metadata_by_codeData_measureMetaData build() => _build();

  _$Gget_metadata_by_codeData_measureMetaData _build() {
    _$Gget_metadata_by_codeData_measureMetaData _$result;
    try {
      _$result = _$v ??
          new _$Gget_metadata_by_codeData_measureMetaData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'Gget_metadata_by_codeData_measureMetaData', 'G__typename'),
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
            r'Gget_metadata_by_codeData_measureMetaData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_metadata_by_codeData_measureMetaData_metrics
    extends Gget_metadata_by_codeData_measureMetaData_metrics {
  @override
  final String G__typename;
  @override
  final _i3.GMeasureCode code;
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
  final BuiltList<Gget_metadata_by_codeData_measureMetaData_metrics_constraints>
      constraints;

  factory _$Gget_metadata_by_codeData_measureMetaData_metrics(
          [void Function(
                  Gget_metadata_by_codeData_measureMetaData_metricsBuilder)?
              updates]) =>
      (new Gget_metadata_by_codeData_measureMetaData_metricsBuilder()
            ..update(updates))
          ._build();

  _$Gget_metadata_by_codeData_measureMetaData_metrics._(
      {required this.G__typename,
      required this.code,
      required this.unit,
      required this.label,
      required this.placeholder,
      this.maxlength,
      this.hint,
      required this.constraints})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_metadata_by_codeData_measureMetaData_metrics', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        code, r'Gget_metadata_by_codeData_measureMetaData_metrics', 'code');
    BuiltValueNullFieldError.checkNotNull(
        unit, r'Gget_metadata_by_codeData_measureMetaData_metrics', 'unit');
    BuiltValueNullFieldError.checkNotNull(
        label, r'Gget_metadata_by_codeData_measureMetaData_metrics', 'label');
    BuiltValueNullFieldError.checkNotNull(placeholder,
        r'Gget_metadata_by_codeData_measureMetaData_metrics', 'placeholder');
    BuiltValueNullFieldError.checkNotNull(constraints,
        r'Gget_metadata_by_codeData_measureMetaData_metrics', 'constraints');
  }

  @override
  Gget_metadata_by_codeData_measureMetaData_metrics rebuild(
          void Function(
                  Gget_metadata_by_codeData_measureMetaData_metricsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_metadata_by_codeData_measureMetaData_metricsBuilder toBuilder() =>
      new Gget_metadata_by_codeData_measureMetaData_metricsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_metadata_by_codeData_measureMetaData_metrics &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_metadata_by_codeData_measureMetaData_metrics')
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

class Gget_metadata_by_codeData_measureMetaData_metricsBuilder
    implements
        Builder<Gget_metadata_by_codeData_measureMetaData_metrics,
            Gget_metadata_by_codeData_measureMetaData_metricsBuilder> {
  _$Gget_metadata_by_codeData_measureMetaData_metrics? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i3.GMeasureCode? _code;
  _i3.GMeasureCode? get code => _$this._code;
  set code(_i3.GMeasureCode? code) => _$this._code = code;

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

  ListBuilder<Gget_metadata_by_codeData_measureMetaData_metrics_constraints>?
      _constraints;
  ListBuilder<Gget_metadata_by_codeData_measureMetaData_metrics_constraints>
      get constraints => _$this._constraints ??= new ListBuilder<
          Gget_metadata_by_codeData_measureMetaData_metrics_constraints>();
  set constraints(
          ListBuilder<
                  Gget_metadata_by_codeData_measureMetaData_metrics_constraints>?
              constraints) =>
      _$this._constraints = constraints;

  Gget_metadata_by_codeData_measureMetaData_metricsBuilder() {
    Gget_metadata_by_codeData_measureMetaData_metrics._initializeBuilder(this);
  }

  Gget_metadata_by_codeData_measureMetaData_metricsBuilder get _$this {
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
  void replace(Gget_metadata_by_codeData_measureMetaData_metrics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_metadata_by_codeData_measureMetaData_metrics;
  }

  @override
  void update(
      void Function(Gget_metadata_by_codeData_measureMetaData_metricsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_metadata_by_codeData_measureMetaData_metrics build() => _build();

  _$Gget_metadata_by_codeData_measureMetaData_metrics _build() {
    _$Gget_metadata_by_codeData_measureMetaData_metrics _$result;
    try {
      _$result = _$v ??
          new _$Gget_metadata_by_codeData_measureMetaData_metrics._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_metadata_by_codeData_measureMetaData_metrics',
                  'G__typename'),
              code: BuiltValueNullFieldError.checkNotNull(
                  code, r'Gget_metadata_by_codeData_measureMetaData_metrics', 'code'),
              unit: BuiltValueNullFieldError.checkNotNull(unit,
                  r'Gget_metadata_by_codeData_measureMetaData_metrics', 'unit'),
              label: BuiltValueNullFieldError.checkNotNull(
                  label,
                  r'Gget_metadata_by_codeData_measureMetaData_metrics',
                  'label'),
              placeholder: BuiltValueNullFieldError.checkNotNull(
                  placeholder,
                  r'Gget_metadata_by_codeData_measureMetaData_metrics',
                  'placeholder'),
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
            r'Gget_metadata_by_codeData_measureMetaData_metrics',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_metadata_by_codeData_measureMetaData_metrics_constraints
    extends Gget_metadata_by_codeData_measureMetaData_metrics_constraints {
  @override
  final String G__typename;
  @override
  final String? regexp;
  @override
  final String message;
  @override
  final Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range?
      range;

  factory _$Gget_metadata_by_codeData_measureMetaData_metrics_constraints(
          [void Function(
                  Gget_metadata_by_codeData_measureMetaData_metrics_constraintsBuilder)?
              updates]) =>
      (new Gget_metadata_by_codeData_measureMetaData_metrics_constraintsBuilder()
            ..update(updates))
          ._build();

  _$Gget_metadata_by_codeData_measureMetaData_metrics_constraints._(
      {required this.G__typename,
      this.regexp,
      required this.message,
      this.range})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_metadata_by_codeData_measureMetaData_metrics_constraints',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message,
        r'Gget_metadata_by_codeData_measureMetaData_metrics_constraints',
        'message');
  }

  @override
  Gget_metadata_by_codeData_measureMetaData_metrics_constraints rebuild(
          void Function(
                  Gget_metadata_by_codeData_measureMetaData_metrics_constraintsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_metadata_by_codeData_measureMetaData_metrics_constraintsBuilder
      toBuilder() =>
          new Gget_metadata_by_codeData_measureMetaData_metrics_constraintsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_metadata_by_codeData_measureMetaData_metrics_constraints &&
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
            r'Gget_metadata_by_codeData_measureMetaData_metrics_constraints')
          ..add('G__typename', G__typename)
          ..add('regexp', regexp)
          ..add('message', message)
          ..add('range', range))
        .toString();
  }
}

class Gget_metadata_by_codeData_measureMetaData_metrics_constraintsBuilder
    implements
        Builder<Gget_metadata_by_codeData_measureMetaData_metrics_constraints,
            Gget_metadata_by_codeData_measureMetaData_metrics_constraintsBuilder> {
  _$Gget_metadata_by_codeData_measureMetaData_metrics_constraints? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _regexp;
  String? get regexp => _$this._regexp;
  set regexp(String? regexp) => _$this._regexp = regexp;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Gget_metadata_by_codeData_measureMetaData_metrics_constraints_rangeBuilder?
      _range;
  Gget_metadata_by_codeData_measureMetaData_metrics_constraints_rangeBuilder
      get range => _$this._range ??=
          new Gget_metadata_by_codeData_measureMetaData_metrics_constraints_rangeBuilder();
  set range(
          Gget_metadata_by_codeData_measureMetaData_metrics_constraints_rangeBuilder?
              range) =>
      _$this._range = range;

  Gget_metadata_by_codeData_measureMetaData_metrics_constraintsBuilder() {
    Gget_metadata_by_codeData_measureMetaData_metrics_constraints
        ._initializeBuilder(this);
  }

  Gget_metadata_by_codeData_measureMetaData_metrics_constraintsBuilder
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
      Gget_metadata_by_codeData_measureMetaData_metrics_constraints other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_metadata_by_codeData_measureMetaData_metrics_constraints;
  }

  @override
  void update(
      void Function(
              Gget_metadata_by_codeData_measureMetaData_metrics_constraintsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_metadata_by_codeData_measureMetaData_metrics_constraints build() =>
      _build();

  _$Gget_metadata_by_codeData_measureMetaData_metrics_constraints _build() {
    _$Gget_metadata_by_codeData_measureMetaData_metrics_constraints _$result;
    try {
      _$result = _$v ??
          new _$Gget_metadata_by_codeData_measureMetaData_metrics_constraints._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_metadata_by_codeData_measureMetaData_metrics_constraints',
                  'G__typename'),
              regexp: regexp,
              message: BuiltValueNullFieldError.checkNotNull(
                  message,
                  r'Gget_metadata_by_codeData_measureMetaData_metrics_constraints',
                  'message'),
              range: _range?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'range';
        _range?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_metadata_by_codeData_measureMetaData_metrics_constraints',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range
    extends Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range {
  @override
  final String G__typename;
  @override
  final double? min;
  @override
  final double? max;

  factory _$Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range(
          [void Function(
                  Gget_metadata_by_codeData_measureMetaData_metrics_constraints_rangeBuilder)?
              updates]) =>
      (new Gget_metadata_by_codeData_measureMetaData_metrics_constraints_rangeBuilder()
            ..update(updates))
          ._build();

  _$Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range._(
      {required this.G__typename, this.min, this.max})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range',
        'G__typename');
  }

  @override
  Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range rebuild(
          void Function(
                  Gget_metadata_by_codeData_measureMetaData_metrics_constraints_rangeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_metadata_by_codeData_measureMetaData_metrics_constraints_rangeBuilder
      toBuilder() =>
          new Gget_metadata_by_codeData_measureMetaData_metrics_constraints_rangeBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range &&
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
            r'Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range')
          ..add('G__typename', G__typename)
          ..add('min', min)
          ..add('max', max))
        .toString();
  }
}

class Gget_metadata_by_codeData_measureMetaData_metrics_constraints_rangeBuilder
    implements
        Builder<
            Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range,
            Gget_metadata_by_codeData_measureMetaData_metrics_constraints_rangeBuilder> {
  _$Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _min;
  double? get min => _$this._min;
  set min(double? min) => _$this._min = min;

  double? _max;
  double? get max => _$this._max;
  set max(double? max) => _$this._max = max;

  Gget_metadata_by_codeData_measureMetaData_metrics_constraints_rangeBuilder() {
    Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range
        ._initializeBuilder(this);
  }

  Gget_metadata_by_codeData_measureMetaData_metrics_constraints_rangeBuilder
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
      Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range;
  }

  @override
  void update(
      void Function(
              Gget_metadata_by_codeData_measureMetaData_metrics_constraints_rangeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range build() =>
      _build();

  _$Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range
      _build() {
    final _$result = _$v ??
        new _$Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range',
                'G__typename'),
            min: min,
            max: max);
    replace(_$result);
    return _$result;
  }
}

class _$Gget_metadata_by_codeData_measureMetaData_comments
    extends Gget_metadata_by_codeData_measureMetaData_comments {
  @override
  final String G__typename;
  @override
  final String code;
  @override
  final String label;
  @override
  final String placeholder;
  @override
  final BuiltList<Gget_metadata_by_codeData_measureMetaData_comments_options>?
      options;

  factory _$Gget_metadata_by_codeData_measureMetaData_comments(
          [void Function(
                  Gget_metadata_by_codeData_measureMetaData_commentsBuilder)?
              updates]) =>
      (new Gget_metadata_by_codeData_measureMetaData_commentsBuilder()
            ..update(updates))
          ._build();

  _$Gget_metadata_by_codeData_measureMetaData_comments._(
      {required this.G__typename,
      required this.code,
      required this.label,
      required this.placeholder,
      this.options})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_metadata_by_codeData_measureMetaData_comments', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        code, r'Gget_metadata_by_codeData_measureMetaData_comments', 'code');
    BuiltValueNullFieldError.checkNotNull(
        label, r'Gget_metadata_by_codeData_measureMetaData_comments', 'label');
    BuiltValueNullFieldError.checkNotNull(placeholder,
        r'Gget_metadata_by_codeData_measureMetaData_comments', 'placeholder');
  }

  @override
  Gget_metadata_by_codeData_measureMetaData_comments rebuild(
          void Function(
                  Gget_metadata_by_codeData_measureMetaData_commentsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_metadata_by_codeData_measureMetaData_commentsBuilder toBuilder() =>
      new Gget_metadata_by_codeData_measureMetaData_commentsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_metadata_by_codeData_measureMetaData_comments &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_metadata_by_codeData_measureMetaData_comments')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('label', label)
          ..add('placeholder', placeholder)
          ..add('options', options))
        .toString();
  }
}

class Gget_metadata_by_codeData_measureMetaData_commentsBuilder
    implements
        Builder<Gget_metadata_by_codeData_measureMetaData_comments,
            Gget_metadata_by_codeData_measureMetaData_commentsBuilder> {
  _$Gget_metadata_by_codeData_measureMetaData_comments? _$v;

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

  ListBuilder<Gget_metadata_by_codeData_measureMetaData_comments_options>?
      _options;
  ListBuilder<Gget_metadata_by_codeData_measureMetaData_comments_options>
      get options => _$this._options ??= new ListBuilder<
          Gget_metadata_by_codeData_measureMetaData_comments_options>();
  set options(
          ListBuilder<
                  Gget_metadata_by_codeData_measureMetaData_comments_options>?
              options) =>
      _$this._options = options;

  Gget_metadata_by_codeData_measureMetaData_commentsBuilder() {
    Gget_metadata_by_codeData_measureMetaData_comments._initializeBuilder(this);
  }

  Gget_metadata_by_codeData_measureMetaData_commentsBuilder get _$this {
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
  void replace(Gget_metadata_by_codeData_measureMetaData_comments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_metadata_by_codeData_measureMetaData_comments;
  }

  @override
  void update(
      void Function(Gget_metadata_by_codeData_measureMetaData_commentsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_metadata_by_codeData_measureMetaData_comments build() => _build();

  _$Gget_metadata_by_codeData_measureMetaData_comments _build() {
    _$Gget_metadata_by_codeData_measureMetaData_comments _$result;
    try {
      _$result = _$v ??
          new _$Gget_metadata_by_codeData_measureMetaData_comments._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_metadata_by_codeData_measureMetaData_comments',
                  'G__typename'),
              code: BuiltValueNullFieldError.checkNotNull(
                  code,
                  r'Gget_metadata_by_codeData_measureMetaData_comments',
                  'code'),
              label: BuiltValueNullFieldError.checkNotNull(
                  label,
                  r'Gget_metadata_by_codeData_measureMetaData_comments',
                  'label'),
              placeholder: BuiltValueNullFieldError.checkNotNull(
                  placeholder,
                  r'Gget_metadata_by_codeData_measureMetaData_comments',
                  'placeholder'),
              options: _options?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_metadata_by_codeData_measureMetaData_comments',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_metadata_by_codeData_measureMetaData_comments_options
    extends Gget_metadata_by_codeData_measureMetaData_comments_options {
  @override
  final String G__typename;
  @override
  final String code;
  @override
  final String label;
  @override
  final Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata?
      extraValueMetadata;

  factory _$Gget_metadata_by_codeData_measureMetaData_comments_options(
          [void Function(
                  Gget_metadata_by_codeData_measureMetaData_comments_optionsBuilder)?
              updates]) =>
      (new Gget_metadata_by_codeData_measureMetaData_comments_optionsBuilder()
            ..update(updates))
          ._build();

  _$Gget_metadata_by_codeData_measureMetaData_comments_options._(
      {required this.G__typename,
      required this.code,
      required this.label,
      this.extraValueMetadata})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_metadata_by_codeData_measureMetaData_comments_options',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(code,
        r'Gget_metadata_by_codeData_measureMetaData_comments_options', 'code');
    BuiltValueNullFieldError.checkNotNull(label,
        r'Gget_metadata_by_codeData_measureMetaData_comments_options', 'label');
  }

  @override
  Gget_metadata_by_codeData_measureMetaData_comments_options rebuild(
          void Function(
                  Gget_metadata_by_codeData_measureMetaData_comments_optionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_metadata_by_codeData_measureMetaData_comments_optionsBuilder
      toBuilder() =>
          new Gget_metadata_by_codeData_measureMetaData_comments_optionsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_metadata_by_codeData_measureMetaData_comments_options &&
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
    return (newBuiltValueToStringHelper(
            r'Gget_metadata_by_codeData_measureMetaData_comments_options')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('label', label)
          ..add('extraValueMetadata', extraValueMetadata))
        .toString();
  }
}

class Gget_metadata_by_codeData_measureMetaData_comments_optionsBuilder
    implements
        Builder<Gget_metadata_by_codeData_measureMetaData_comments_options,
            Gget_metadata_by_codeData_measureMetaData_comments_optionsBuilder> {
  _$Gget_metadata_by_codeData_measureMetaData_comments_options? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadataBuilder?
      _extraValueMetadata;
  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadataBuilder
      get extraValueMetadata => _$this._extraValueMetadata ??=
          new Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadataBuilder();
  set extraValueMetadata(
          Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadataBuilder?
              extraValueMetadata) =>
      _$this._extraValueMetadata = extraValueMetadata;

  Gget_metadata_by_codeData_measureMetaData_comments_optionsBuilder() {
    Gget_metadata_by_codeData_measureMetaData_comments_options
        ._initializeBuilder(this);
  }

  Gget_metadata_by_codeData_measureMetaData_comments_optionsBuilder get _$this {
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
  void replace(
      Gget_metadata_by_codeData_measureMetaData_comments_options other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_metadata_by_codeData_measureMetaData_comments_options;
  }

  @override
  void update(
      void Function(
              Gget_metadata_by_codeData_measureMetaData_comments_optionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_metadata_by_codeData_measureMetaData_comments_options build() =>
      _build();

  _$Gget_metadata_by_codeData_measureMetaData_comments_options _build() {
    _$Gget_metadata_by_codeData_measureMetaData_comments_options _$result;
    try {
      _$result = _$v ??
          new _$Gget_metadata_by_codeData_measureMetaData_comments_options._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_metadata_by_codeData_measureMetaData_comments_options',
                  'G__typename'),
              code: BuiltValueNullFieldError.checkNotNull(
                  code,
                  r'Gget_metadata_by_codeData_measureMetaData_comments_options',
                  'code'),
              label: BuiltValueNullFieldError.checkNotNull(
                  label,
                  r'Gget_metadata_by_codeData_measureMetaData_comments_options',
                  'label'),
              extraValueMetadata: _extraValueMetadata?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'extraValueMetadata';
        _extraValueMetadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_metadata_by_codeData_measureMetaData_comments_options',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata
    extends Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata {
  @override
  final String G__typename;
  @override
  final String fieldLabel;
  @override
  final double maxLength;
  @override
  final BuiltList<
          Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints>
      constraints;

  factory _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata(
          [void Function(
                  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadataBuilder)?
              updates]) =>
      (new Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadataBuilder()
            ..update(updates))
          ._build();

  _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata._(
      {required this.G__typename,
      required this.fieldLabel,
      required this.maxLength,
      required this.constraints})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        fieldLabel,
        r'Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata',
        'fieldLabel');
    BuiltValueNullFieldError.checkNotNull(
        maxLength,
        r'Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata',
        'maxLength');
    BuiltValueNullFieldError.checkNotNull(
        constraints,
        r'Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata',
        'constraints');
  }

  @override
  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata
      rebuild(
              void Function(
                      Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadataBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadataBuilder
      toBuilder() =>
          new Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadataBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata &&
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
            r'Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata')
          ..add('G__typename', G__typename)
          ..add('fieldLabel', fieldLabel)
          ..add('maxLength', maxLength)
          ..add('constraints', constraints))
        .toString();
  }
}

class Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadataBuilder
    implements
        Builder<
            Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata,
            Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadataBuilder> {
  _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata?
      _$v;

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
          Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints>?
      _constraints;
  ListBuilder<
          Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints>
      get constraints => _$this._constraints ??= new ListBuilder<
          Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints>();
  set constraints(
          ListBuilder<
                  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints>?
              constraints) =>
      _$this._constraints = constraints;

  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadataBuilder() {
    Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata
        ._initializeBuilder(this);
  }

  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadataBuilder
      get _$this {
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
  void replace(
      Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata;
  }

  @override
  void update(
      void Function(
              Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata
      build() => _build();

  _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata
      _build() {
    _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata',
                  'G__typename'),
              fieldLabel: BuiltValueNullFieldError.checkNotNull(
                  fieldLabel,
                  r'Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata',
                  'fieldLabel'),
              maxLength: BuiltValueNullFieldError.checkNotNull(
                  maxLength,
                  r'Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata',
                  'maxLength'),
              constraints: constraints.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'constraints';
        constraints.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints
    extends Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints {
  @override
  final String G__typename;
  @override
  final String? regexp;
  @override
  final String message;
  @override
  final Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range?
      range;

  factory _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints(
          [void Function(
                  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraintsBuilder)?
              updates]) =>
      (new Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraintsBuilder()
            ..update(updates))
          ._build();

  _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints._(
      {required this.G__typename,
      this.regexp,
      required this.message,
      this.range})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message,
        r'Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints',
        'message');
  }

  @override
  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints
      rebuild(
              void Function(
                      Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraintsBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraintsBuilder
      toBuilder() =>
          new Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraintsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints &&
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
            r'Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints')
          ..add('G__typename', G__typename)
          ..add('regexp', regexp)
          ..add('message', message)
          ..add('range', range))
        .toString();
  }
}

class Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraintsBuilder
    implements
        Builder<
            Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints,
            Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraintsBuilder> {
  _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _regexp;
  String? get regexp => _$this._regexp;
  set regexp(String? regexp) => _$this._regexp = regexp;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_rangeBuilder?
      _range;
  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_rangeBuilder
      get range => _$this._range ??=
          new Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_rangeBuilder();
  set range(
          Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_rangeBuilder?
              range) =>
      _$this._range = range;

  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraintsBuilder() {
    Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints
        ._initializeBuilder(this);
  }

  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraintsBuilder
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
      Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints;
  }

  @override
  void update(
      void Function(
              Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraintsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints
      build() => _build();

  _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints
      _build() {
    _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints',
                  'G__typename'),
              regexp: regexp,
              message: BuiltValueNullFieldError.checkNotNull(
                  message,
                  r'Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints',
                  'message'),
              range: _range?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'range';
        _range?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range
    extends Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range {
  @override
  final String G__typename;
  @override
  final double? min;
  @override
  final double? max;

  factory _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range(
          [void Function(
                  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_rangeBuilder)?
              updates]) =>
      (new Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_rangeBuilder()
            ..update(updates))
          ._build();

  _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range._(
      {required this.G__typename, this.min, this.max})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range',
        'G__typename');
  }

  @override
  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range
      rebuild(
              void Function(
                      Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_rangeBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_rangeBuilder
      toBuilder() =>
          new Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_rangeBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range &&
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
            r'Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range')
          ..add('G__typename', G__typename)
          ..add('min', min)
          ..add('max', max))
        .toString();
  }
}

class Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_rangeBuilder
    implements
        Builder<
            Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range,
            Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_rangeBuilder> {
  _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range?
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

  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_rangeBuilder() {
    Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range
        ._initializeBuilder(this);
  }

  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_rangeBuilder
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
      Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range;
  }

  @override
  void update(
      void Function(
              Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_rangeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range
      build() => _build();

  _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range
      _build() {
    final _$result = _$v ??
        new _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range',
                'G__typename'),
            min: min,
            max: max);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
