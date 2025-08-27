// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_mesure_extract_mesure.fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GextractMesureData> _$gextractMesureDataSerializer =
    new _$GextractMesureDataSerializer();
Serializer<GextractMesureData_measures> _$gextractMesureDataMeasuresSerializer =
    new _$GextractMesureData_measuresSerializer();
Serializer<GextractMesureData_measures_comments>
    _$gextractMesureDataMeasuresCommentsSerializer =
    new _$GextractMesureData_measures_commentsSerializer();
Serializer<GextractMesureData_measures_metrics>
    _$gextractMesureDataMeasuresMetricsSerializer =
    new _$GextractMesureData_measures_metricsSerializer();
Serializer<GextractMesureData_measures_author>
    _$gextractMesureDataMeasuresAuthorSerializer =
    new _$GextractMesureData_measures_authorSerializer();
Serializer<GextractMesureData_measures_permissions>
    _$gextractMesureDataMeasuresPermissionsSerializer =
    new _$GextractMesureData_measures_permissionsSerializer();
Serializer<GextractMesureData_metaData> _$gextractMesureDataMetaDataSerializer =
    new _$GextractMesureData_metaDataSerializer();
Serializer<GextractMesureData_metaData_metrics>
    _$gextractMesureDataMetaDataMetricsSerializer =
    new _$GextractMesureData_metaData_metricsSerializer();
Serializer<GextractMesureData_metaData_metrics_constraints>
    _$gextractMesureDataMetaDataMetricsConstraintsSerializer =
    new _$GextractMesureData_metaData_metrics_constraintsSerializer();
Serializer<GextractMesureData_metaData_metrics_constraints_range>
    _$gextractMesureDataMetaDataMetricsConstraintsRangeSerializer =
    new _$GextractMesureData_metaData_metrics_constraints_rangeSerializer();
Serializer<GextractMesureData_metaData_comments>
    _$gextractMesureDataMetaDataCommentsSerializer =
    new _$GextractMesureData_metaData_commentsSerializer();
Serializer<GextractMesureData_metaData_comments_options>
    _$gextractMesureDataMetaDataCommentsOptionsSerializer =
    new _$GextractMesureData_metaData_comments_optionsSerializer();
Serializer<GextractMesureData_metaData_comments_options_extraValueMetadata>
    _$gextractMesureDataMetaDataCommentsOptionsExtraValueMetadataSerializer =
    new _$GextractMesureData_metaData_comments_options_extraValueMetadataSerializer();
Serializer<
        GextractMesureData_metaData_comments_options_extraValueMetadata_constraints>
    _$gextractMesureDataMetaDataCommentsOptionsExtraValueMetadataConstraintsSerializer =
    new _$GextractMesureData_metaData_comments_options_extraValueMetadata_constraintsSerializer();
Serializer<
        GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range>
    _$gextractMesureDataMetaDataCommentsOptionsExtraValueMetadataConstraintsRangeSerializer =
    new _$GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_rangeSerializer();

class _$GextractMesureDataSerializer
    implements StructuredSerializer<GextractMesureData> {
  @override
  final Iterable<Type> types = const [GextractMesureData, _$GextractMesureData];
  @override
  final String wireName = 'GextractMesureData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GextractMesureData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'measures',
      serializers.serialize(object.measures,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GextractMesureData_measures)])),
      'metaData',
      serializers.serialize(object.metaData,
          specifiedType: const FullType(GextractMesureData_metaData)),
    ];

    return result;
  }

  @override
  GextractMesureData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GextractMesureDataBuilder();

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
        case 'measures':
          result.measures.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GextractMesureData_measures)
              ]))! as BuiltList<Object?>);
          break;
        case 'metaData':
          result.metaData.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GextractMesureData_metaData))!
              as GextractMesureData_metaData);
          break;
      }
    }

    return result.build();
  }
}

class _$GextractMesureData_measuresSerializer
    implements StructuredSerializer<GextractMesureData_measures> {
  @override
  final Iterable<Type> types = const [
    GextractMesureData_measures,
    _$GextractMesureData_measures
  ];
  @override
  final String wireName = 'GextractMesureData_measures';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GextractMesureData_measures object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'formattedMetricValue',
      serializers.serialize(object.formattedMetricValue,
          specifiedType: const FullType(String)),
      'permissions',
      serializers.serialize(object.permissions,
          specifiedType:
              const FullType(GextractMesureData_measures_permissions)),
    ];
    Object? value;
    value = object.effectiveDate;
    if (value != null) {
      result
        ..add('effectiveDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comments;
    if (value != null) {
      result
        ..add('comments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GextractMesureData_measures_comments)])));
    }
    value = object.metrics;
    if (value != null) {
      result
        ..add('metrics')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GextractMesureData_measures_metrics)])));
    }
    value = object.author;
    if (value != null) {
      result
        ..add('author')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GextractMesureData_measures_author)));
    }
    value = object.idDocument;
    if (value != null) {
      result
        ..add('idDocument')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nameDocument;
    if (value != null) {
      result
        ..add('nameDocument')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.growthMetricsIntervalText;
    if (value != null) {
      result
        ..add('growthMetricsIntervalText')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GextractMesureData_measures deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GextractMesureData_measuresBuilder();

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
        case 'effectiveDate':
          result.effectiveDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GextractMesureData_measures_comments)
              ]))! as BuiltList<Object?>);
          break;
        case 'metrics':
          result.metrics.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GextractMesureData_measures_metrics)
              ]))! as BuiltList<Object?>);
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GextractMesureData_measures_author))!
              as GextractMesureData_measures_author);
          break;
        case 'formattedMetricValue':
          result.formattedMetricValue = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'idDocument':
          result.idDocument = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nameDocument':
          result.nameDocument = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'permissions':
          result.permissions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GextractMesureData_measures_permissions))!
              as GextractMesureData_measures_permissions);
          break;
        case 'growthMetricsIntervalText':
          result.growthMetricsIntervalText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GextractMesureData_measures_commentsSerializer
    implements StructuredSerializer<GextractMesureData_measures_comments> {
  @override
  final Iterable<Type> types = const [
    GextractMesureData_measures_comments,
    _$GextractMesureData_measures_comments
  ];
  @override
  final String wireName = 'GextractMesureData_measures_comments';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GextractMesureData_measures_comments object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'value',
      serializers.serialize(object.value,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.extra;
    if (value != null) {
      result
        ..add('extra')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GextractMesureData_measures_comments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GextractMesureData_measures_commentsBuilder();

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
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'extra':
          result.extra = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GextractMesureData_measures_metricsSerializer
    implements StructuredSerializer<GextractMesureData_measures_metrics> {
  @override
  final Iterable<Type> types = const [
    GextractMesureData_measures_metrics,
    _$GextractMesureData_measures_metrics
  ];
  @override
  final String wireName = 'GextractMesureData_measures_metrics';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GextractMesureData_measures_metrics object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'value',
      serializers.serialize(object.value,
          specifiedType: const FullType(double)),
      'unit',
      serializers.serialize(object.unit, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GMeasureCode)));
    }
    return result;
  }

  @override
  GextractMesureData_measures_metrics deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GextractMesureData_measures_metricsBuilder();

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
                  specifiedType: const FullType(_i2.GMeasureCode))
              as _i2.GMeasureCode?;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'unit':
          result.unit = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GextractMesureData_measures_authorSerializer
    implements StructuredSerializer<GextractMesureData_measures_author> {
  @override
  final Iterable<Type> types = const [
    GextractMesureData_measures_author,
    _$GextractMesureData_measures_author
  ];
  @override
  final String wireName = 'GextractMesureData_measures_author';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GextractMesureData_measures_author object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.firstName;
    if (value != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GextractMesureData_measures_author deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GextractMesureData_measures_authorBuilder();

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
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GextractMesureData_measures_permissionsSerializer
    implements StructuredSerializer<GextractMesureData_measures_permissions> {
  @override
  final Iterable<Type> types = const [
    GextractMesureData_measures_permissions,
    _$GextractMesureData_measures_permissions
  ];
  @override
  final String wireName = 'GextractMesureData_measures_permissions';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GextractMesureData_measures_permissions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'delete',
      serializers.serialize(object.delete, specifiedType: const FullType(bool)),
      'update',
      serializers.serialize(object.Gupdate,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GextractMesureData_measures_permissions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GextractMesureData_measures_permissionsBuilder();

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
        case 'delete':
          result.delete = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'update':
          result.Gupdate = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GextractMesureData_metaDataSerializer
    implements StructuredSerializer<GextractMesureData_metaData> {
  @override
  final Iterable<Type> types = const [
    GextractMesureData_metaData,
    _$GextractMesureData_metaData
  ];
  @override
  final String wireName = 'GextractMesureData_metaData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GextractMesureData_metaData object,
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
                const [const FullType(GextractMesureData_metaData_metrics)])));
    }
    value = object.comments;
    if (value != null) {
      result
        ..add('comments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GextractMesureData_metaData_comments)])));
    }
    return result;
  }

  @override
  GextractMesureData_metaData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GextractMesureData_metaDataBuilder();

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
                const FullType(GextractMesureData_metaData_metrics)
              ]))! as BuiltList<Object?>);
          break;
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GextractMesureData_metaData_comments)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GextractMesureData_metaData_metricsSerializer
    implements StructuredSerializer<GextractMesureData_metaData_metrics> {
  @override
  final Iterable<Type> types = const [
    GextractMesureData_metaData_metrics,
    _$GextractMesureData_metaData_metrics
  ];
  @override
  final String wireName = 'GextractMesureData_metaData_metrics';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GextractMesureData_metaData_metrics object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code,
          specifiedType: const FullType(_i2.GMeasureCode)),
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
            const FullType(GextractMesureData_metaData_metrics_constraints)
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
  GextractMesureData_metaData_metrics deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GextractMesureData_metaData_metricsBuilder();

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
                  specifiedType: const FullType(_i2.GMeasureCode))!
              as _i2.GMeasureCode;
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
                const FullType(GextractMesureData_metaData_metrics_constraints)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GextractMesureData_metaData_metrics_constraintsSerializer
    implements
        StructuredSerializer<GextractMesureData_metaData_metrics_constraints> {
  @override
  final Iterable<Type> types = const [
    GextractMesureData_metaData_metrics_constraints,
    _$GextractMesureData_metaData_metrics_constraints
  ];
  @override
  final String wireName = 'GextractMesureData_metaData_metrics_constraints';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GextractMesureData_metaData_metrics_constraints object,
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
                GextractMesureData_metaData_metrics_constraints_range)));
    }
    return result;
  }

  @override
  GextractMesureData_metaData_metrics_constraints deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GextractMesureData_metaData_metrics_constraintsBuilder();

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
                      GextractMesureData_metaData_metrics_constraints_range))!
              as GextractMesureData_metaData_metrics_constraints_range);
          break;
      }
    }

    return result.build();
  }
}

class _$GextractMesureData_metaData_metrics_constraints_rangeSerializer
    implements
        StructuredSerializer<
            GextractMesureData_metaData_metrics_constraints_range> {
  @override
  final Iterable<Type> types = const [
    GextractMesureData_metaData_metrics_constraints_range,
    _$GextractMesureData_metaData_metrics_constraints_range
  ];
  @override
  final String wireName =
      'GextractMesureData_metaData_metrics_constraints_range';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GextractMesureData_metaData_metrics_constraints_range object,
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
  GextractMesureData_metaData_metrics_constraints_range deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GextractMesureData_metaData_metrics_constraints_rangeBuilder();

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

class _$GextractMesureData_metaData_commentsSerializer
    implements StructuredSerializer<GextractMesureData_metaData_comments> {
  @override
  final Iterable<Type> types = const [
    GextractMesureData_metaData_comments,
    _$GextractMesureData_metaData_comments
  ];
  @override
  final String wireName = 'GextractMesureData_metaData_comments';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GextractMesureData_metaData_comments object,
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
              const FullType(GextractMesureData_metaData_comments_options)
            ])));
    }
    return result;
  }

  @override
  GextractMesureData_metaData_comments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GextractMesureData_metaData_commentsBuilder();

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
                const FullType(GextractMesureData_metaData_comments_options)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GextractMesureData_metaData_comments_optionsSerializer
    implements
        StructuredSerializer<GextractMesureData_metaData_comments_options> {
  @override
  final Iterable<Type> types = const [
    GextractMesureData_metaData_comments_options,
    _$GextractMesureData_metaData_comments_options
  ];
  @override
  final String wireName = 'GextractMesureData_metaData_comments_options';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GextractMesureData_metaData_comments_options object,
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
                GextractMesureData_metaData_comments_options_extraValueMetadata)));
    }
    return result;
  }

  @override
  GextractMesureData_metaData_comments_options deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GextractMesureData_metaData_comments_optionsBuilder();

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
                      GextractMesureData_metaData_comments_options_extraValueMetadata))!
              as GextractMesureData_metaData_comments_options_extraValueMetadata);
          break;
      }
    }

    return result.build();
  }
}

class _$GextractMesureData_metaData_comments_options_extraValueMetadataSerializer
    implements
        StructuredSerializer<
            GextractMesureData_metaData_comments_options_extraValueMetadata> {
  @override
  final Iterable<Type> types = const [
    GextractMesureData_metaData_comments_options_extraValueMetadata,
    _$GextractMesureData_metaData_comments_options_extraValueMetadata
  ];
  @override
  final String wireName =
      'GextractMesureData_metaData_comments_options_extraValueMetadata';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GextractMesureData_metaData_comments_options_extraValueMetadata object,
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
                GextractMesureData_metaData_comments_options_extraValueMetadata_constraints)
          ])),
    ];

    return result;
  }

  @override
  GextractMesureData_metaData_comments_options_extraValueMetadata deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GextractMesureData_metaData_comments_options_extraValueMetadataBuilder();

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
                    GextractMesureData_metaData_comments_options_extraValueMetadata_constraints)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GextractMesureData_metaData_comments_options_extraValueMetadata_constraintsSerializer
    implements
        StructuredSerializer<
            GextractMesureData_metaData_comments_options_extraValueMetadata_constraints> {
  @override
  final Iterable<Type> types = const [
    GextractMesureData_metaData_comments_options_extraValueMetadata_constraints,
    _$GextractMesureData_metaData_comments_options_extraValueMetadata_constraints
  ];
  @override
  final String wireName =
      'GextractMesureData_metaData_comments_options_extraValueMetadata_constraints';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GextractMesureData_metaData_comments_options_extraValueMetadata_constraints
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
                GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range)));
    }
    return result;
  }

  @override
  GextractMesureData_metaData_comments_options_extraValueMetadata_constraints
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GextractMesureData_metaData_comments_options_extraValueMetadata_constraintsBuilder();

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
                      GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range))!
              as GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range);
          break;
      }
    }

    return result.build();
  }
}

class _$GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_rangeSerializer
    implements
        StructuredSerializer<
            GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range> {
  @override
  final Iterable<Type> types = const [
    GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range,
    _$GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range
  ];
  @override
  final String wireName =
      'GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range
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
  GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_rangeBuilder();

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

class _$GextractMesureData extends GextractMesureData {
  @override
  final String G__typename;
  @override
  final String code;
  @override
  final BuiltList<GextractMesureData_measures> measures;
  @override
  final GextractMesureData_metaData metaData;

  factory _$GextractMesureData(
          [void Function(GextractMesureDataBuilder)? updates]) =>
      (new GextractMesureDataBuilder()..update(updates))._build();

  _$GextractMesureData._(
      {required this.G__typename,
      required this.code,
      required this.measures,
      required this.metaData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GextractMesureData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(code, r'GextractMesureData', 'code');
    BuiltValueNullFieldError.checkNotNull(
        measures, r'GextractMesureData', 'measures');
    BuiltValueNullFieldError.checkNotNull(
        metaData, r'GextractMesureData', 'metaData');
  }

  @override
  GextractMesureData rebuild(
          void Function(GextractMesureDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GextractMesureDataBuilder toBuilder() =>
      new GextractMesureDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GextractMesureData &&
        G__typename == other.G__typename &&
        code == other.code &&
        measures == other.measures &&
        metaData == other.metaData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, measures.hashCode);
    _$hash = $jc(_$hash, metaData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GextractMesureData')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('measures', measures)
          ..add('metaData', metaData))
        .toString();
  }
}

class GextractMesureDataBuilder
    implements Builder<GextractMesureData, GextractMesureDataBuilder> {
  _$GextractMesureData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  ListBuilder<GextractMesureData_measures>? _measures;
  ListBuilder<GextractMesureData_measures> get measures =>
      _$this._measures ??= new ListBuilder<GextractMesureData_measures>();
  set measures(ListBuilder<GextractMesureData_measures>? measures) =>
      _$this._measures = measures;

  GextractMesureData_metaDataBuilder? _metaData;
  GextractMesureData_metaDataBuilder get metaData =>
      _$this._metaData ??= new GextractMesureData_metaDataBuilder();
  set metaData(GextractMesureData_metaDataBuilder? metaData) =>
      _$this._metaData = metaData;

  GextractMesureDataBuilder() {
    GextractMesureData._initializeBuilder(this);
  }

  GextractMesureDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _code = $v.code;
      _measures = $v.measures.toBuilder();
      _metaData = $v.metaData.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GextractMesureData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GextractMesureData;
  }

  @override
  void update(void Function(GextractMesureDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GextractMesureData build() => _build();

  _$GextractMesureData _build() {
    _$GextractMesureData _$result;
    try {
      _$result = _$v ??
          new _$GextractMesureData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GextractMesureData', 'G__typename'),
              code: BuiltValueNullFieldError.checkNotNull(
                  code, r'GextractMesureData', 'code'),
              measures: measures.build(),
              metaData: metaData.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'measures';
        measures.build();
        _$failedField = 'metaData';
        metaData.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GextractMesureData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GextractMesureData_measures extends GextractMesureData_measures {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? effectiveDate;
  @override
  final BuiltList<GextractMesureData_measures_comments>? comments;
  @override
  final BuiltList<GextractMesureData_measures_metrics>? metrics;
  @override
  final GextractMesureData_measures_author? author;
  @override
  final String formattedMetricValue;
  @override
  final String? idDocument;
  @override
  final String? nameDocument;
  @override
  final GextractMesureData_measures_permissions permissions;
  @override
  final String? growthMetricsIntervalText;

  factory _$GextractMesureData_measures(
          [void Function(GextractMesureData_measuresBuilder)? updates]) =>
      (new GextractMesureData_measuresBuilder()..update(updates))._build();

  _$GextractMesureData_measures._(
      {required this.G__typename,
      required this.id,
      this.effectiveDate,
      this.comments,
      this.metrics,
      this.author,
      required this.formattedMetricValue,
      this.idDocument,
      this.nameDocument,
      required this.permissions,
      this.growthMetricsIntervalText})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GextractMesureData_measures', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GextractMesureData_measures', 'id');
    BuiltValueNullFieldError.checkNotNull(formattedMetricValue,
        r'GextractMesureData_measures', 'formattedMetricValue');
    BuiltValueNullFieldError.checkNotNull(
        permissions, r'GextractMesureData_measures', 'permissions');
  }

  @override
  GextractMesureData_measures rebuild(
          void Function(GextractMesureData_measuresBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GextractMesureData_measuresBuilder toBuilder() =>
      new GextractMesureData_measuresBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GextractMesureData_measures &&
        G__typename == other.G__typename &&
        id == other.id &&
        effectiveDate == other.effectiveDate &&
        comments == other.comments &&
        metrics == other.metrics &&
        author == other.author &&
        formattedMetricValue == other.formattedMetricValue &&
        idDocument == other.idDocument &&
        nameDocument == other.nameDocument &&
        permissions == other.permissions &&
        growthMetricsIntervalText == other.growthMetricsIntervalText;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, effectiveDate.hashCode);
    _$hash = $jc(_$hash, comments.hashCode);
    _$hash = $jc(_$hash, metrics.hashCode);
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jc(_$hash, formattedMetricValue.hashCode);
    _$hash = $jc(_$hash, idDocument.hashCode);
    _$hash = $jc(_$hash, nameDocument.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jc(_$hash, growthMetricsIntervalText.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GextractMesureData_measures')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('effectiveDate', effectiveDate)
          ..add('comments', comments)
          ..add('metrics', metrics)
          ..add('author', author)
          ..add('formattedMetricValue', formattedMetricValue)
          ..add('idDocument', idDocument)
          ..add('nameDocument', nameDocument)
          ..add('permissions', permissions)
          ..add('growthMetricsIntervalText', growthMetricsIntervalText))
        .toString();
  }
}

class GextractMesureData_measuresBuilder
    implements
        Builder<GextractMesureData_measures,
            GextractMesureData_measuresBuilder> {
  _$GextractMesureData_measures? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _effectiveDate;
  String? get effectiveDate => _$this._effectiveDate;
  set effectiveDate(String? effectiveDate) =>
      _$this._effectiveDate = effectiveDate;

  ListBuilder<GextractMesureData_measures_comments>? _comments;
  ListBuilder<GextractMesureData_measures_comments> get comments =>
      _$this._comments ??=
          new ListBuilder<GextractMesureData_measures_comments>();
  set comments(ListBuilder<GextractMesureData_measures_comments>? comments) =>
      _$this._comments = comments;

  ListBuilder<GextractMesureData_measures_metrics>? _metrics;
  ListBuilder<GextractMesureData_measures_metrics> get metrics =>
      _$this._metrics ??=
          new ListBuilder<GextractMesureData_measures_metrics>();
  set metrics(ListBuilder<GextractMesureData_measures_metrics>? metrics) =>
      _$this._metrics = metrics;

  GextractMesureData_measures_authorBuilder? _author;
  GextractMesureData_measures_authorBuilder get author =>
      _$this._author ??= new GextractMesureData_measures_authorBuilder();
  set author(GextractMesureData_measures_authorBuilder? author) =>
      _$this._author = author;

  String? _formattedMetricValue;
  String? get formattedMetricValue => _$this._formattedMetricValue;
  set formattedMetricValue(String? formattedMetricValue) =>
      _$this._formattedMetricValue = formattedMetricValue;

  String? _idDocument;
  String? get idDocument => _$this._idDocument;
  set idDocument(String? idDocument) => _$this._idDocument = idDocument;

  String? _nameDocument;
  String? get nameDocument => _$this._nameDocument;
  set nameDocument(String? nameDocument) => _$this._nameDocument = nameDocument;

  GextractMesureData_measures_permissionsBuilder? _permissions;
  GextractMesureData_measures_permissionsBuilder get permissions =>
      _$this._permissions ??=
          new GextractMesureData_measures_permissionsBuilder();
  set permissions(
          GextractMesureData_measures_permissionsBuilder? permissions) =>
      _$this._permissions = permissions;

  String? _growthMetricsIntervalText;
  String? get growthMetricsIntervalText => _$this._growthMetricsIntervalText;
  set growthMetricsIntervalText(String? growthMetricsIntervalText) =>
      _$this._growthMetricsIntervalText = growthMetricsIntervalText;

  GextractMesureData_measuresBuilder() {
    GextractMesureData_measures._initializeBuilder(this);
  }

  GextractMesureData_measuresBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _effectiveDate = $v.effectiveDate;
      _comments = $v.comments?.toBuilder();
      _metrics = $v.metrics?.toBuilder();
      _author = $v.author?.toBuilder();
      _formattedMetricValue = $v.formattedMetricValue;
      _idDocument = $v.idDocument;
      _nameDocument = $v.nameDocument;
      _permissions = $v.permissions.toBuilder();
      _growthMetricsIntervalText = $v.growthMetricsIntervalText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GextractMesureData_measures other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GextractMesureData_measures;
  }

  @override
  void update(void Function(GextractMesureData_measuresBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GextractMesureData_measures build() => _build();

  _$GextractMesureData_measures _build() {
    _$GextractMesureData_measures _$result;
    try {
      _$result = _$v ??
          new _$GextractMesureData_measures._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GextractMesureData_measures', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GextractMesureData_measures', 'id'),
              effectiveDate: effectiveDate,
              comments: _comments?.build(),
              metrics: _metrics?.build(),
              author: _author?.build(),
              formattedMetricValue: BuiltValueNullFieldError.checkNotNull(
                  formattedMetricValue,
                  r'GextractMesureData_measures',
                  'formattedMetricValue'),
              idDocument: idDocument,
              nameDocument: nameDocument,
              permissions: permissions.build(),
              growthMetricsIntervalText: growthMetricsIntervalText);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'comments';
        _comments?.build();
        _$failedField = 'metrics';
        _metrics?.build();
        _$failedField = 'author';
        _author?.build();

        _$failedField = 'permissions';
        permissions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GextractMesureData_measures', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GextractMesureData_measures_comments
    extends GextractMesureData_measures_comments {
  @override
  final String G__typename;
  @override
  final String code;
  @override
  final String value;
  @override
  final String? extra;

  factory _$GextractMesureData_measures_comments(
          [void Function(GextractMesureData_measures_commentsBuilder)?
              updates]) =>
      (new GextractMesureData_measures_commentsBuilder()..update(updates))
          ._build();

  _$GextractMesureData_measures_comments._(
      {required this.G__typename,
      required this.code,
      required this.value,
      this.extra})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GextractMesureData_measures_comments', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        code, r'GextractMesureData_measures_comments', 'code');
    BuiltValueNullFieldError.checkNotNull(
        value, r'GextractMesureData_measures_comments', 'value');
  }

  @override
  GextractMesureData_measures_comments rebuild(
          void Function(GextractMesureData_measures_commentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GextractMesureData_measures_commentsBuilder toBuilder() =>
      new GextractMesureData_measures_commentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GextractMesureData_measures_comments &&
        G__typename == other.G__typename &&
        code == other.code &&
        value == other.value &&
        extra == other.extra;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, extra.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GextractMesureData_measures_comments')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('value', value)
          ..add('extra', extra))
        .toString();
  }
}

class GextractMesureData_measures_commentsBuilder
    implements
        Builder<GextractMesureData_measures_comments,
            GextractMesureData_measures_commentsBuilder> {
  _$GextractMesureData_measures_comments? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  String? _extra;
  String? get extra => _$this._extra;
  set extra(String? extra) => _$this._extra = extra;

  GextractMesureData_measures_commentsBuilder() {
    GextractMesureData_measures_comments._initializeBuilder(this);
  }

  GextractMesureData_measures_commentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _code = $v.code;
      _value = $v.value;
      _extra = $v.extra;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GextractMesureData_measures_comments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GextractMesureData_measures_comments;
  }

  @override
  void update(
      void Function(GextractMesureData_measures_commentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GextractMesureData_measures_comments build() => _build();

  _$GextractMesureData_measures_comments _build() {
    final _$result = _$v ??
        new _$GextractMesureData_measures_comments._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GextractMesureData_measures_comments', 'G__typename'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'GextractMesureData_measures_comments', 'code'),
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'GextractMesureData_measures_comments', 'value'),
            extra: extra);
    replace(_$result);
    return _$result;
  }
}

class _$GextractMesureData_measures_metrics
    extends GextractMesureData_measures_metrics {
  @override
  final String G__typename;
  @override
  final _i2.GMeasureCode? code;
  @override
  final double value;
  @override
  final String unit;

  factory _$GextractMesureData_measures_metrics(
          [void Function(GextractMesureData_measures_metricsBuilder)?
              updates]) =>
      (new GextractMesureData_measures_metricsBuilder()..update(updates))
          ._build();

  _$GextractMesureData_measures_metrics._(
      {required this.G__typename,
      this.code,
      required this.value,
      required this.unit})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GextractMesureData_measures_metrics', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        value, r'GextractMesureData_measures_metrics', 'value');
    BuiltValueNullFieldError.checkNotNull(
        unit, r'GextractMesureData_measures_metrics', 'unit');
  }

  @override
  GextractMesureData_measures_metrics rebuild(
          void Function(GextractMesureData_measures_metricsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GextractMesureData_measures_metricsBuilder toBuilder() =>
      new GextractMesureData_measures_metricsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GextractMesureData_measures_metrics &&
        G__typename == other.G__typename &&
        code == other.code &&
        value == other.value &&
        unit == other.unit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, unit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GextractMesureData_measures_metrics')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('value', value)
          ..add('unit', unit))
        .toString();
  }
}

class GextractMesureData_measures_metricsBuilder
    implements
        Builder<GextractMesureData_measures_metrics,
            GextractMesureData_measures_metricsBuilder> {
  _$GextractMesureData_measures_metrics? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GMeasureCode? _code;
  _i2.GMeasureCode? get code => _$this._code;
  set code(_i2.GMeasureCode? code) => _$this._code = code;

  double? _value;
  double? get value => _$this._value;
  set value(double? value) => _$this._value = value;

  String? _unit;
  String? get unit => _$this._unit;
  set unit(String? unit) => _$this._unit = unit;

  GextractMesureData_measures_metricsBuilder() {
    GextractMesureData_measures_metrics._initializeBuilder(this);
  }

  GextractMesureData_measures_metricsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _code = $v.code;
      _value = $v.value;
      _unit = $v.unit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GextractMesureData_measures_metrics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GextractMesureData_measures_metrics;
  }

  @override
  void update(
      void Function(GextractMesureData_measures_metricsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GextractMesureData_measures_metrics build() => _build();

  _$GextractMesureData_measures_metrics _build() {
    final _$result = _$v ??
        new _$GextractMesureData_measures_metrics._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GextractMesureData_measures_metrics', 'G__typename'),
            code: code,
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'GextractMesureData_measures_metrics', 'value'),
            unit: BuiltValueNullFieldError.checkNotNull(
                unit, r'GextractMesureData_measures_metrics', 'unit'));
    replace(_$result);
    return _$result;
  }
}

class _$GextractMesureData_measures_author
    extends GextractMesureData_measures_author {
  @override
  final String G__typename;
  @override
  final String? firstName;
  @override
  final String? lastName;

  factory _$GextractMesureData_measures_author(
          [void Function(GextractMesureData_measures_authorBuilder)?
              updates]) =>
      (new GextractMesureData_measures_authorBuilder()..update(updates))
          ._build();

  _$GextractMesureData_measures_author._(
      {required this.G__typename, this.firstName, this.lastName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GextractMesureData_measures_author', 'G__typename');
  }

  @override
  GextractMesureData_measures_author rebuild(
          void Function(GextractMesureData_measures_authorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GextractMesureData_measures_authorBuilder toBuilder() =>
      new GextractMesureData_measures_authorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GextractMesureData_measures_author &&
        G__typename == other.G__typename &&
        firstName == other.firstName &&
        lastName == other.lastName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GextractMesureData_measures_author')
          ..add('G__typename', G__typename)
          ..add('firstName', firstName)
          ..add('lastName', lastName))
        .toString();
  }
}

class GextractMesureData_measures_authorBuilder
    implements
        Builder<GextractMesureData_measures_author,
            GextractMesureData_measures_authorBuilder> {
  _$GextractMesureData_measures_author? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  GextractMesureData_measures_authorBuilder() {
    GextractMesureData_measures_author._initializeBuilder(this);
  }

  GextractMesureData_measures_authorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GextractMesureData_measures_author other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GextractMesureData_measures_author;
  }

  @override
  void update(
      void Function(GextractMesureData_measures_authorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GextractMesureData_measures_author build() => _build();

  _$GextractMesureData_measures_author _build() {
    final _$result = _$v ??
        new _$GextractMesureData_measures_author._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GextractMesureData_measures_author', 'G__typename'),
            firstName: firstName,
            lastName: lastName);
    replace(_$result);
    return _$result;
  }
}

class _$GextractMesureData_measures_permissions
    extends GextractMesureData_measures_permissions {
  @override
  final String G__typename;
  @override
  final bool delete;
  @override
  final bool Gupdate;

  factory _$GextractMesureData_measures_permissions(
          [void Function(GextractMesureData_measures_permissionsBuilder)?
              updates]) =>
      (new GextractMesureData_measures_permissionsBuilder()..update(updates))
          ._build();

  _$GextractMesureData_measures_permissions._(
      {required this.G__typename, required this.delete, required this.Gupdate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GextractMesureData_measures_permissions', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        delete, r'GextractMesureData_measures_permissions', 'delete');
    BuiltValueNullFieldError.checkNotNull(
        Gupdate, r'GextractMesureData_measures_permissions', 'Gupdate');
  }

  @override
  GextractMesureData_measures_permissions rebuild(
          void Function(GextractMesureData_measures_permissionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GextractMesureData_measures_permissionsBuilder toBuilder() =>
      new GextractMesureData_measures_permissionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GextractMesureData_measures_permissions &&
        G__typename == other.G__typename &&
        delete == other.delete &&
        Gupdate == other.Gupdate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, delete.hashCode);
    _$hash = $jc(_$hash, Gupdate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GextractMesureData_measures_permissions')
          ..add('G__typename', G__typename)
          ..add('delete', delete)
          ..add('Gupdate', Gupdate))
        .toString();
  }
}

class GextractMesureData_measures_permissionsBuilder
    implements
        Builder<GextractMesureData_measures_permissions,
            GextractMesureData_measures_permissionsBuilder> {
  _$GextractMesureData_measures_permissions? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _delete;
  bool? get delete => _$this._delete;
  set delete(bool? delete) => _$this._delete = delete;

  bool? _Gupdate;
  bool? get Gupdate => _$this._Gupdate;
  set Gupdate(bool? Gupdate) => _$this._Gupdate = Gupdate;

  GextractMesureData_measures_permissionsBuilder() {
    GextractMesureData_measures_permissions._initializeBuilder(this);
  }

  GextractMesureData_measures_permissionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _delete = $v.delete;
      _Gupdate = $v.Gupdate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GextractMesureData_measures_permissions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GextractMesureData_measures_permissions;
  }

  @override
  void update(
      void Function(GextractMesureData_measures_permissionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GextractMesureData_measures_permissions build() => _build();

  _$GextractMesureData_measures_permissions _build() {
    final _$result = _$v ??
        new _$GextractMesureData_measures_permissions._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GextractMesureData_measures_permissions', 'G__typename'),
            delete: BuiltValueNullFieldError.checkNotNull(
                delete, r'GextractMesureData_measures_permissions', 'delete'),
            Gupdate: BuiltValueNullFieldError.checkNotNull(Gupdate,
                r'GextractMesureData_measures_permissions', 'Gupdate'));
    replace(_$result);
    return _$result;
  }
}

class _$GextractMesureData_metaData extends GextractMesureData_metaData {
  @override
  final String G__typename;
  @override
  final BuiltList<GextractMesureData_metaData_metrics>? metrics;
  @override
  final BuiltList<GextractMesureData_metaData_comments>? comments;

  factory _$GextractMesureData_metaData(
          [void Function(GextractMesureData_metaDataBuilder)? updates]) =>
      (new GextractMesureData_metaDataBuilder()..update(updates))._build();

  _$GextractMesureData_metaData._(
      {required this.G__typename, this.metrics, this.comments})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GextractMesureData_metaData', 'G__typename');
  }

  @override
  GextractMesureData_metaData rebuild(
          void Function(GextractMesureData_metaDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GextractMesureData_metaDataBuilder toBuilder() =>
      new GextractMesureData_metaDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GextractMesureData_metaData &&
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
    return (newBuiltValueToStringHelper(r'GextractMesureData_metaData')
          ..add('G__typename', G__typename)
          ..add('metrics', metrics)
          ..add('comments', comments))
        .toString();
  }
}

class GextractMesureData_metaDataBuilder
    implements
        Builder<GextractMesureData_metaData,
            GextractMesureData_metaDataBuilder> {
  _$GextractMesureData_metaData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GextractMesureData_metaData_metrics>? _metrics;
  ListBuilder<GextractMesureData_metaData_metrics> get metrics =>
      _$this._metrics ??=
          new ListBuilder<GextractMesureData_metaData_metrics>();
  set metrics(ListBuilder<GextractMesureData_metaData_metrics>? metrics) =>
      _$this._metrics = metrics;

  ListBuilder<GextractMesureData_metaData_comments>? _comments;
  ListBuilder<GextractMesureData_metaData_comments> get comments =>
      _$this._comments ??=
          new ListBuilder<GextractMesureData_metaData_comments>();
  set comments(ListBuilder<GextractMesureData_metaData_comments>? comments) =>
      _$this._comments = comments;

  GextractMesureData_metaDataBuilder() {
    GextractMesureData_metaData._initializeBuilder(this);
  }

  GextractMesureData_metaDataBuilder get _$this {
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
  void replace(GextractMesureData_metaData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GextractMesureData_metaData;
  }

  @override
  void update(void Function(GextractMesureData_metaDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GextractMesureData_metaData build() => _build();

  _$GextractMesureData_metaData _build() {
    _$GextractMesureData_metaData _$result;
    try {
      _$result = _$v ??
          new _$GextractMesureData_metaData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GextractMesureData_metaData', 'G__typename'),
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
            r'GextractMesureData_metaData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GextractMesureData_metaData_metrics
    extends GextractMesureData_metaData_metrics {
  @override
  final String G__typename;
  @override
  final _i2.GMeasureCode code;
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
  final BuiltList<GextractMesureData_metaData_metrics_constraints> constraints;

  factory _$GextractMesureData_metaData_metrics(
          [void Function(GextractMesureData_metaData_metricsBuilder)?
              updates]) =>
      (new GextractMesureData_metaData_metricsBuilder()..update(updates))
          ._build();

  _$GextractMesureData_metaData_metrics._(
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
        G__typename, r'GextractMesureData_metaData_metrics', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        code, r'GextractMesureData_metaData_metrics', 'code');
    BuiltValueNullFieldError.checkNotNull(
        unit, r'GextractMesureData_metaData_metrics', 'unit');
    BuiltValueNullFieldError.checkNotNull(
        label, r'GextractMesureData_metaData_metrics', 'label');
    BuiltValueNullFieldError.checkNotNull(
        placeholder, r'GextractMesureData_metaData_metrics', 'placeholder');
    BuiltValueNullFieldError.checkNotNull(
        constraints, r'GextractMesureData_metaData_metrics', 'constraints');
  }

  @override
  GextractMesureData_metaData_metrics rebuild(
          void Function(GextractMesureData_metaData_metricsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GextractMesureData_metaData_metricsBuilder toBuilder() =>
      new GextractMesureData_metaData_metricsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GextractMesureData_metaData_metrics &&
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
    return (newBuiltValueToStringHelper(r'GextractMesureData_metaData_metrics')
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

class GextractMesureData_metaData_metricsBuilder
    implements
        Builder<GextractMesureData_metaData_metrics,
            GextractMesureData_metaData_metricsBuilder> {
  _$GextractMesureData_metaData_metrics? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GMeasureCode? _code;
  _i2.GMeasureCode? get code => _$this._code;
  set code(_i2.GMeasureCode? code) => _$this._code = code;

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

  ListBuilder<GextractMesureData_metaData_metrics_constraints>? _constraints;
  ListBuilder<GextractMesureData_metaData_metrics_constraints>
      get constraints => _$this._constraints ??=
          new ListBuilder<GextractMesureData_metaData_metrics_constraints>();
  set constraints(
          ListBuilder<GextractMesureData_metaData_metrics_constraints>?
              constraints) =>
      _$this._constraints = constraints;

  GextractMesureData_metaData_metricsBuilder() {
    GextractMesureData_metaData_metrics._initializeBuilder(this);
  }

  GextractMesureData_metaData_metricsBuilder get _$this {
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
  void replace(GextractMesureData_metaData_metrics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GextractMesureData_metaData_metrics;
  }

  @override
  void update(
      void Function(GextractMesureData_metaData_metricsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GextractMesureData_metaData_metrics build() => _build();

  _$GextractMesureData_metaData_metrics _build() {
    _$GextractMesureData_metaData_metrics _$result;
    try {
      _$result = _$v ??
          new _$GextractMesureData_metaData_metrics._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GextractMesureData_metaData_metrics', 'G__typename'),
              code: BuiltValueNullFieldError.checkNotNull(
                  code, r'GextractMesureData_metaData_metrics', 'code'),
              unit: BuiltValueNullFieldError.checkNotNull(
                  unit, r'GextractMesureData_metaData_metrics', 'unit'),
              label: BuiltValueNullFieldError.checkNotNull(
                  label, r'GextractMesureData_metaData_metrics', 'label'),
              placeholder: BuiltValueNullFieldError.checkNotNull(placeholder,
                  r'GextractMesureData_metaData_metrics', 'placeholder'),
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
            r'GextractMesureData_metaData_metrics',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GextractMesureData_metaData_metrics_constraints
    extends GextractMesureData_metaData_metrics_constraints {
  @override
  final String G__typename;
  @override
  final String? regexp;
  @override
  final String message;
  @override
  final GextractMesureData_metaData_metrics_constraints_range? range;

  factory _$GextractMesureData_metaData_metrics_constraints(
          [void Function(
                  GextractMesureData_metaData_metrics_constraintsBuilder)?
              updates]) =>
      (new GextractMesureData_metaData_metrics_constraintsBuilder()
            ..update(updates))
          ._build();

  _$GextractMesureData_metaData_metrics_constraints._(
      {required this.G__typename,
      this.regexp,
      required this.message,
      this.range})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GextractMesureData_metaData_metrics_constraints', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GextractMesureData_metaData_metrics_constraints', 'message');
  }

  @override
  GextractMesureData_metaData_metrics_constraints rebuild(
          void Function(GextractMesureData_metaData_metrics_constraintsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GextractMesureData_metaData_metrics_constraintsBuilder toBuilder() =>
      new GextractMesureData_metaData_metrics_constraintsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GextractMesureData_metaData_metrics_constraints &&
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
            r'GextractMesureData_metaData_metrics_constraints')
          ..add('G__typename', G__typename)
          ..add('regexp', regexp)
          ..add('message', message)
          ..add('range', range))
        .toString();
  }
}

class GextractMesureData_metaData_metrics_constraintsBuilder
    implements
        Builder<GextractMesureData_metaData_metrics_constraints,
            GextractMesureData_metaData_metrics_constraintsBuilder> {
  _$GextractMesureData_metaData_metrics_constraints? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _regexp;
  String? get regexp => _$this._regexp;
  set regexp(String? regexp) => _$this._regexp = regexp;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GextractMesureData_metaData_metrics_constraints_rangeBuilder? _range;
  GextractMesureData_metaData_metrics_constraints_rangeBuilder get range =>
      _$this._range ??=
          new GextractMesureData_metaData_metrics_constraints_rangeBuilder();
  set range(
          GextractMesureData_metaData_metrics_constraints_rangeBuilder?
              range) =>
      _$this._range = range;

  GextractMesureData_metaData_metrics_constraintsBuilder() {
    GextractMesureData_metaData_metrics_constraints._initializeBuilder(this);
  }

  GextractMesureData_metaData_metrics_constraintsBuilder get _$this {
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
  void replace(GextractMesureData_metaData_metrics_constraints other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GextractMesureData_metaData_metrics_constraints;
  }

  @override
  void update(
      void Function(GextractMesureData_metaData_metrics_constraintsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GextractMesureData_metaData_metrics_constraints build() => _build();

  _$GextractMesureData_metaData_metrics_constraints _build() {
    _$GextractMesureData_metaData_metrics_constraints _$result;
    try {
      _$result = _$v ??
          new _$GextractMesureData_metaData_metrics_constraints._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GextractMesureData_metaData_metrics_constraints',
                  'G__typename'),
              regexp: regexp,
              message: BuiltValueNullFieldError.checkNotNull(
                  message,
                  r'GextractMesureData_metaData_metrics_constraints',
                  'message'),
              range: _range?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'range';
        _range?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GextractMesureData_metaData_metrics_constraints',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GextractMesureData_metaData_metrics_constraints_range
    extends GextractMesureData_metaData_metrics_constraints_range {
  @override
  final String G__typename;
  @override
  final double? min;
  @override
  final double? max;

  factory _$GextractMesureData_metaData_metrics_constraints_range(
          [void Function(
                  GextractMesureData_metaData_metrics_constraints_rangeBuilder)?
              updates]) =>
      (new GextractMesureData_metaData_metrics_constraints_rangeBuilder()
            ..update(updates))
          ._build();

  _$GextractMesureData_metaData_metrics_constraints_range._(
      {required this.G__typename, this.min, this.max})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GextractMesureData_metaData_metrics_constraints_range',
        'G__typename');
  }

  @override
  GextractMesureData_metaData_metrics_constraints_range rebuild(
          void Function(
                  GextractMesureData_metaData_metrics_constraints_rangeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GextractMesureData_metaData_metrics_constraints_rangeBuilder toBuilder() =>
      new GextractMesureData_metaData_metrics_constraints_rangeBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GextractMesureData_metaData_metrics_constraints_range &&
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
            r'GextractMesureData_metaData_metrics_constraints_range')
          ..add('G__typename', G__typename)
          ..add('min', min)
          ..add('max', max))
        .toString();
  }
}

class GextractMesureData_metaData_metrics_constraints_rangeBuilder
    implements
        Builder<GextractMesureData_metaData_metrics_constraints_range,
            GextractMesureData_metaData_metrics_constraints_rangeBuilder> {
  _$GextractMesureData_metaData_metrics_constraints_range? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _min;
  double? get min => _$this._min;
  set min(double? min) => _$this._min = min;

  double? _max;
  double? get max => _$this._max;
  set max(double? max) => _$this._max = max;

  GextractMesureData_metaData_metrics_constraints_rangeBuilder() {
    GextractMesureData_metaData_metrics_constraints_range._initializeBuilder(
        this);
  }

  GextractMesureData_metaData_metrics_constraints_rangeBuilder get _$this {
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
  void replace(GextractMesureData_metaData_metrics_constraints_range other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GextractMesureData_metaData_metrics_constraints_range;
  }

  @override
  void update(
      void Function(
              GextractMesureData_metaData_metrics_constraints_rangeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GextractMesureData_metaData_metrics_constraints_range build() => _build();

  _$GextractMesureData_metaData_metrics_constraints_range _build() {
    final _$result = _$v ??
        new _$GextractMesureData_metaData_metrics_constraints_range._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GextractMesureData_metaData_metrics_constraints_range',
                'G__typename'),
            min: min,
            max: max);
    replace(_$result);
    return _$result;
  }
}

class _$GextractMesureData_metaData_comments
    extends GextractMesureData_metaData_comments {
  @override
  final String G__typename;
  @override
  final String code;
  @override
  final String label;
  @override
  final String placeholder;
  @override
  final BuiltList<GextractMesureData_metaData_comments_options>? options;

  factory _$GextractMesureData_metaData_comments(
          [void Function(GextractMesureData_metaData_commentsBuilder)?
              updates]) =>
      (new GextractMesureData_metaData_commentsBuilder()..update(updates))
          ._build();

  _$GextractMesureData_metaData_comments._(
      {required this.G__typename,
      required this.code,
      required this.label,
      required this.placeholder,
      this.options})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GextractMesureData_metaData_comments', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        code, r'GextractMesureData_metaData_comments', 'code');
    BuiltValueNullFieldError.checkNotNull(
        label, r'GextractMesureData_metaData_comments', 'label');
    BuiltValueNullFieldError.checkNotNull(
        placeholder, r'GextractMesureData_metaData_comments', 'placeholder');
  }

  @override
  GextractMesureData_metaData_comments rebuild(
          void Function(GextractMesureData_metaData_commentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GextractMesureData_metaData_commentsBuilder toBuilder() =>
      new GextractMesureData_metaData_commentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GextractMesureData_metaData_comments &&
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
    return (newBuiltValueToStringHelper(r'GextractMesureData_metaData_comments')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('label', label)
          ..add('placeholder', placeholder)
          ..add('options', options))
        .toString();
  }
}

class GextractMesureData_metaData_commentsBuilder
    implements
        Builder<GextractMesureData_metaData_comments,
            GextractMesureData_metaData_commentsBuilder> {
  _$GextractMesureData_metaData_comments? _$v;

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

  ListBuilder<GextractMesureData_metaData_comments_options>? _options;
  ListBuilder<GextractMesureData_metaData_comments_options> get options =>
      _$this._options ??=
          new ListBuilder<GextractMesureData_metaData_comments_options>();
  set options(
          ListBuilder<GextractMesureData_metaData_comments_options>? options) =>
      _$this._options = options;

  GextractMesureData_metaData_commentsBuilder() {
    GextractMesureData_metaData_comments._initializeBuilder(this);
  }

  GextractMesureData_metaData_commentsBuilder get _$this {
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
  void replace(GextractMesureData_metaData_comments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GextractMesureData_metaData_comments;
  }

  @override
  void update(
      void Function(GextractMesureData_metaData_commentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GextractMesureData_metaData_comments build() => _build();

  _$GextractMesureData_metaData_comments _build() {
    _$GextractMesureData_metaData_comments _$result;
    try {
      _$result = _$v ??
          new _$GextractMesureData_metaData_comments._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GextractMesureData_metaData_comments', 'G__typename'),
              code: BuiltValueNullFieldError.checkNotNull(
                  code, r'GextractMesureData_metaData_comments', 'code'),
              label: BuiltValueNullFieldError.checkNotNull(
                  label, r'GextractMesureData_metaData_comments', 'label'),
              placeholder: BuiltValueNullFieldError.checkNotNull(placeholder,
                  r'GextractMesureData_metaData_comments', 'placeholder'),
              options: _options?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GextractMesureData_metaData_comments',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GextractMesureData_metaData_comments_options
    extends GextractMesureData_metaData_comments_options {
  @override
  final String G__typename;
  @override
  final String code;
  @override
  final String label;
  @override
  final GextractMesureData_metaData_comments_options_extraValueMetadata?
      extraValueMetadata;

  factory _$GextractMesureData_metaData_comments_options(
          [void Function(GextractMesureData_metaData_comments_optionsBuilder)?
              updates]) =>
      (new GextractMesureData_metaData_comments_optionsBuilder()
            ..update(updates))
          ._build();

  _$GextractMesureData_metaData_comments_options._(
      {required this.G__typename,
      required this.code,
      required this.label,
      this.extraValueMetadata})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GextractMesureData_metaData_comments_options', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        code, r'GextractMesureData_metaData_comments_options', 'code');
    BuiltValueNullFieldError.checkNotNull(
        label, r'GextractMesureData_metaData_comments_options', 'label');
  }

  @override
  GextractMesureData_metaData_comments_options rebuild(
          void Function(GextractMesureData_metaData_comments_optionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GextractMesureData_metaData_comments_optionsBuilder toBuilder() =>
      new GextractMesureData_metaData_comments_optionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GextractMesureData_metaData_comments_options &&
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
            r'GextractMesureData_metaData_comments_options')
          ..add('G__typename', G__typename)
          ..add('code', code)
          ..add('label', label)
          ..add('extraValueMetadata', extraValueMetadata))
        .toString();
  }
}

class GextractMesureData_metaData_comments_optionsBuilder
    implements
        Builder<GextractMesureData_metaData_comments_options,
            GextractMesureData_metaData_comments_optionsBuilder> {
  _$GextractMesureData_metaData_comments_options? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  GextractMesureData_metaData_comments_options_extraValueMetadataBuilder?
      _extraValueMetadata;
  GextractMesureData_metaData_comments_options_extraValueMetadataBuilder
      get extraValueMetadata => _$this._extraValueMetadata ??=
          new GextractMesureData_metaData_comments_options_extraValueMetadataBuilder();
  set extraValueMetadata(
          GextractMesureData_metaData_comments_options_extraValueMetadataBuilder?
              extraValueMetadata) =>
      _$this._extraValueMetadata = extraValueMetadata;

  GextractMesureData_metaData_comments_optionsBuilder() {
    GextractMesureData_metaData_comments_options._initializeBuilder(this);
  }

  GextractMesureData_metaData_comments_optionsBuilder get _$this {
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
  void replace(GextractMesureData_metaData_comments_options other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GextractMesureData_metaData_comments_options;
  }

  @override
  void update(
      void Function(GextractMesureData_metaData_comments_optionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GextractMesureData_metaData_comments_options build() => _build();

  _$GextractMesureData_metaData_comments_options _build() {
    _$GextractMesureData_metaData_comments_options _$result;
    try {
      _$result = _$v ??
          new _$GextractMesureData_metaData_comments_options._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GextractMesureData_metaData_comments_options',
                  'G__typename'),
              code: BuiltValueNullFieldError.checkNotNull(code,
                  r'GextractMesureData_metaData_comments_options', 'code'),
              label: BuiltValueNullFieldError.checkNotNull(label,
                  r'GextractMesureData_metaData_comments_options', 'label'),
              extraValueMetadata: _extraValueMetadata?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'extraValueMetadata';
        _extraValueMetadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GextractMesureData_metaData_comments_options',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GextractMesureData_metaData_comments_options_extraValueMetadata
    extends GextractMesureData_metaData_comments_options_extraValueMetadata {
  @override
  final String G__typename;
  @override
  final String fieldLabel;
  @override
  final double maxLength;
  @override
  final BuiltList<
          GextractMesureData_metaData_comments_options_extraValueMetadata_constraints>
      constraints;

  factory _$GextractMesureData_metaData_comments_options_extraValueMetadata(
          [void Function(
                  GextractMesureData_metaData_comments_options_extraValueMetadataBuilder)?
              updates]) =>
      (new GextractMesureData_metaData_comments_options_extraValueMetadataBuilder()
            ..update(updates))
          ._build();

  _$GextractMesureData_metaData_comments_options_extraValueMetadata._(
      {required this.G__typename,
      required this.fieldLabel,
      required this.maxLength,
      required this.constraints})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GextractMesureData_metaData_comments_options_extraValueMetadata',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        fieldLabel,
        r'GextractMesureData_metaData_comments_options_extraValueMetadata',
        'fieldLabel');
    BuiltValueNullFieldError.checkNotNull(
        maxLength,
        r'GextractMesureData_metaData_comments_options_extraValueMetadata',
        'maxLength');
    BuiltValueNullFieldError.checkNotNull(
        constraints,
        r'GextractMesureData_metaData_comments_options_extraValueMetadata',
        'constraints');
  }

  @override
  GextractMesureData_metaData_comments_options_extraValueMetadata rebuild(
          void Function(
                  GextractMesureData_metaData_comments_options_extraValueMetadataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GextractMesureData_metaData_comments_options_extraValueMetadataBuilder
      toBuilder() =>
          new GextractMesureData_metaData_comments_options_extraValueMetadataBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GextractMesureData_metaData_comments_options_extraValueMetadata &&
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
            r'GextractMesureData_metaData_comments_options_extraValueMetadata')
          ..add('G__typename', G__typename)
          ..add('fieldLabel', fieldLabel)
          ..add('maxLength', maxLength)
          ..add('constraints', constraints))
        .toString();
  }
}

class GextractMesureData_metaData_comments_options_extraValueMetadataBuilder
    implements
        Builder<GextractMesureData_metaData_comments_options_extraValueMetadata,
            GextractMesureData_metaData_comments_options_extraValueMetadataBuilder> {
  _$GextractMesureData_metaData_comments_options_extraValueMetadata? _$v;

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
          GextractMesureData_metaData_comments_options_extraValueMetadata_constraints>?
      _constraints;
  ListBuilder<
          GextractMesureData_metaData_comments_options_extraValueMetadata_constraints>
      get constraints => _$this._constraints ??= new ListBuilder<
          GextractMesureData_metaData_comments_options_extraValueMetadata_constraints>();
  set constraints(
          ListBuilder<
                  GextractMesureData_metaData_comments_options_extraValueMetadata_constraints>?
              constraints) =>
      _$this._constraints = constraints;

  GextractMesureData_metaData_comments_options_extraValueMetadataBuilder() {
    GextractMesureData_metaData_comments_options_extraValueMetadata
        ._initializeBuilder(this);
  }

  GextractMesureData_metaData_comments_options_extraValueMetadataBuilder
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
      GextractMesureData_metaData_comments_options_extraValueMetadata other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GextractMesureData_metaData_comments_options_extraValueMetadata;
  }

  @override
  void update(
      void Function(
              GextractMesureData_metaData_comments_options_extraValueMetadataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GextractMesureData_metaData_comments_options_extraValueMetadata build() =>
      _build();

  _$GextractMesureData_metaData_comments_options_extraValueMetadata _build() {
    _$GextractMesureData_metaData_comments_options_extraValueMetadata _$result;
    try {
      _$result = _$v ??
          new _$GextractMesureData_metaData_comments_options_extraValueMetadata
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GextractMesureData_metaData_comments_options_extraValueMetadata',
                  'G__typename'),
              fieldLabel: BuiltValueNullFieldError.checkNotNull(
                  fieldLabel,
                  r'GextractMesureData_metaData_comments_options_extraValueMetadata',
                  'fieldLabel'),
              maxLength: BuiltValueNullFieldError.checkNotNull(
                  maxLength,
                  r'GextractMesureData_metaData_comments_options_extraValueMetadata',
                  'maxLength'),
              constraints: constraints.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'constraints';
        constraints.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GextractMesureData_metaData_comments_options_extraValueMetadata',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GextractMesureData_metaData_comments_options_extraValueMetadata_constraints
    extends GextractMesureData_metaData_comments_options_extraValueMetadata_constraints {
  @override
  final String G__typename;
  @override
  final String? regexp;
  @override
  final String message;
  @override
  final GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range?
      range;

  factory _$GextractMesureData_metaData_comments_options_extraValueMetadata_constraints(
          [void Function(
                  GextractMesureData_metaData_comments_options_extraValueMetadata_constraintsBuilder)?
              updates]) =>
      (new GextractMesureData_metaData_comments_options_extraValueMetadata_constraintsBuilder()
            ..update(updates))
          ._build();

  _$GextractMesureData_metaData_comments_options_extraValueMetadata_constraints._(
      {required this.G__typename,
      this.regexp,
      required this.message,
      this.range})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GextractMesureData_metaData_comments_options_extraValueMetadata_constraints',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message,
        r'GextractMesureData_metaData_comments_options_extraValueMetadata_constraints',
        'message');
  }

  @override
  GextractMesureData_metaData_comments_options_extraValueMetadata_constraints
      rebuild(
              void Function(
                      GextractMesureData_metaData_comments_options_extraValueMetadata_constraintsBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GextractMesureData_metaData_comments_options_extraValueMetadata_constraintsBuilder
      toBuilder() =>
          new GextractMesureData_metaData_comments_options_extraValueMetadata_constraintsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GextractMesureData_metaData_comments_options_extraValueMetadata_constraints &&
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
            r'GextractMesureData_metaData_comments_options_extraValueMetadata_constraints')
          ..add('G__typename', G__typename)
          ..add('regexp', regexp)
          ..add('message', message)
          ..add('range', range))
        .toString();
  }
}

class GextractMesureData_metaData_comments_options_extraValueMetadata_constraintsBuilder
    implements
        Builder<
            GextractMesureData_metaData_comments_options_extraValueMetadata_constraints,
            GextractMesureData_metaData_comments_options_extraValueMetadata_constraintsBuilder> {
  _$GextractMesureData_metaData_comments_options_extraValueMetadata_constraints?
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

  GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_rangeBuilder?
      _range;
  GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_rangeBuilder
      get range => _$this._range ??=
          new GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_rangeBuilder();
  set range(
          GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_rangeBuilder?
              range) =>
      _$this._range = range;

  GextractMesureData_metaData_comments_options_extraValueMetadata_constraintsBuilder() {
    GextractMesureData_metaData_comments_options_extraValueMetadata_constraints
        ._initializeBuilder(this);
  }

  GextractMesureData_metaData_comments_options_extraValueMetadata_constraintsBuilder
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
      GextractMesureData_metaData_comments_options_extraValueMetadata_constraints
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GextractMesureData_metaData_comments_options_extraValueMetadata_constraints;
  }

  @override
  void update(
      void Function(
              GextractMesureData_metaData_comments_options_extraValueMetadata_constraintsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GextractMesureData_metaData_comments_options_extraValueMetadata_constraints
      build() => _build();

  _$GextractMesureData_metaData_comments_options_extraValueMetadata_constraints
      _build() {
    _$GextractMesureData_metaData_comments_options_extraValueMetadata_constraints
        _$result;
    try {
      _$result = _$v ??
          new _$GextractMesureData_metaData_comments_options_extraValueMetadata_constraints
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GextractMesureData_metaData_comments_options_extraValueMetadata_constraints',
                  'G__typename'),
              regexp: regexp,
              message: BuiltValueNullFieldError.checkNotNull(
                  message,
                  r'GextractMesureData_metaData_comments_options_extraValueMetadata_constraints',
                  'message'),
              range: _range?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'range';
        _range?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GextractMesureData_metaData_comments_options_extraValueMetadata_constraints',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range
    extends GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range {
  @override
  final String G__typename;
  @override
  final double? min;
  @override
  final double? max;

  factory _$GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range(
          [void Function(
                  GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_rangeBuilder)?
              updates]) =>
      (new GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_rangeBuilder()
            ..update(updates))
          ._build();

  _$GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range._(
      {required this.G__typename, this.min, this.max})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range',
        'G__typename');
  }

  @override
  GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range
      rebuild(
              void Function(
                      GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_rangeBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_rangeBuilder
      toBuilder() =>
          new GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_rangeBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range &&
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
            r'GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range')
          ..add('G__typename', G__typename)
          ..add('min', min)
          ..add('max', max))
        .toString();
  }
}

class GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_rangeBuilder
    implements
        Builder<
            GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range,
            GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_rangeBuilder> {
  _$GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range?
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

  GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_rangeBuilder() {
    GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range
        ._initializeBuilder(this);
  }

  GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_rangeBuilder
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
      GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range;
  }

  @override
  void update(
      void Function(
              GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_rangeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range
      build() => _build();

  _$GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range
      _build() {
    final _$result = _$v ??
        new _$GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range',
                'G__typename'),
            min: min,
            max: max);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
