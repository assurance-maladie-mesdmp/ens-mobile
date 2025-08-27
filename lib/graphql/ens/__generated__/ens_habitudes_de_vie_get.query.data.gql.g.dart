// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ens_habitudes_de_vie_get.query.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Gget_habitudes_de_vieData> _$ggetHabitudesDeVieDataSerializer =
    new _$Gget_habitudes_de_vieDataSerializer();
Serializer<Gget_habitudes_de_vieData_fetchLifestylesStatus>
    _$ggetHabitudesDeVieDataFetchLifestylesStatusSerializer =
    new _$Gget_habitudes_de_vieData_fetchLifestylesStatusSerializer();
Serializer<Gget_habitudes_de_vieData_fetchLifestylesStatus_sections>
    _$ggetHabitudesDeVieDataFetchLifestylesStatusSectionsSerializer =
    new _$Gget_habitudes_de_vieData_fetchLifestylesStatus_sectionsSerializer();
Serializer<Gget_habitudes_de_vieData_fetchLifestylesMetadata>
    _$ggetHabitudesDeVieDataFetchLifestylesMetadataSerializer =
    new _$Gget_habitudes_de_vieData_fetchLifestylesMetadataSerializer();
Serializer<Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections>
    _$ggetHabitudesDeVieDataFetchLifestylesMetadataSectionsSerializer =
    new _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sectionsSerializer();
Serializer<Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items>
    _$ggetHabitudesDeVieDataFetchLifestylesMetadataSectionsItemsSerializer =
    new _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_itemsSerializer();
Serializer<
        Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details>
    _$ggetHabitudesDeVieDataFetchLifestylesMetadataSectionsItemsDetailsSerializer =
    new _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_detailsSerializer();
Serializer<
        Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options>
    _$ggetHabitudesDeVieDataFetchLifestylesMetadataSectionsItemsDetailsOptionsSerializer =
    new _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_optionsSerializer();
Serializer<
        Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn>
    _$ggetHabitudesDeVieDataFetchLifestylesMetadataSectionsItemsDetailsDisplayOnSerializer =
    new _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOnSerializer();
Serializer<
        Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range>
    _$ggetHabitudesDeVieDataFetchLifestylesMetadataSectionsItemsDetailsDisplayOnRangeSerializer =
    new _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_rangeSerializer();
Serializer<
        Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints>
    _$ggetHabitudesDeVieDataFetchLifestylesMetadataSectionsItemsDetailsConstraintsSerializer =
    new _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraintsSerializer();
Serializer<
        Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range>
    _$ggetHabitudesDeVieDataFetchLifestylesMetadataSectionsItemsDetailsConstraintsRangeSerializer =
    new _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_rangeSerializer();

class _$Gget_habitudes_de_vieDataSerializer
    implements StructuredSerializer<Gget_habitudes_de_vieData> {
  @override
  final Iterable<Type> types = const [
    Gget_habitudes_de_vieData,
    _$Gget_habitudes_de_vieData
  ];
  @override
  final String wireName = 'Gget_habitudes_de_vieData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Gget_habitudes_de_vieData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'fetchLifestylesStatus',
      serializers.serialize(object.fetchLifestylesStatus,
          specifiedType:
              const FullType(Gget_habitudes_de_vieData_fetchLifestylesStatus)),
      'fetchLifestylesMetadata',
      serializers.serialize(object.fetchLifestylesMetadata,
          specifiedType: const FullType(
              Gget_habitudes_de_vieData_fetchLifestylesMetadata)),
    ];

    return result;
  }

  @override
  Gget_habitudes_de_vieData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_habitudes_de_vieDataBuilder();

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
        case 'fetchLifestylesStatus':
          result.fetchLifestylesStatus.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_habitudes_de_vieData_fetchLifestylesStatus))!
              as Gget_habitudes_de_vieData_fetchLifestylesStatus);
          break;
        case 'fetchLifestylesMetadata':
          result.fetchLifestylesMetadata.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_habitudes_de_vieData_fetchLifestylesMetadata))!
              as Gget_habitudes_de_vieData_fetchLifestylesMetadata);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_habitudes_de_vieData_fetchLifestylesStatusSerializer
    implements
        StructuredSerializer<Gget_habitudes_de_vieData_fetchLifestylesStatus> {
  @override
  final Iterable<Type> types = const [
    Gget_habitudes_de_vieData_fetchLifestylesStatus,
    _$Gget_habitudes_de_vieData_fetchLifestylesStatus
  ];
  @override
  final String wireName = 'Gget_habitudes_de_vieData_fetchLifestylesStatus';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_habitudes_de_vieData_fetchLifestylesStatus object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'sections',
      serializers.serialize(object.sections,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_habitudes_de_vieData_fetchLifestylesStatus_sections)
          ])),
    ];

    return result;
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesStatus deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Gget_habitudes_de_vieData_fetchLifestylesStatusBuilder();

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
        case 'sections':
          result.sections.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_habitudes_de_vieData_fetchLifestylesStatus_sections)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_habitudes_de_vieData_fetchLifestylesStatus_sectionsSerializer
    implements
        StructuredSerializer<
            Gget_habitudes_de_vieData_fetchLifestylesStatus_sections> {
  @override
  final Iterable<Type> types = const [
    Gget_habitudes_de_vieData_fetchLifestylesStatus_sections,
    _$Gget_habitudes_de_vieData_fetchLifestylesStatus_sections
  ];
  @override
  final String wireName =
      'Gget_habitudes_de_vieData_fetchLifestylesStatus_sections';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_habitudes_de_vieData_fetchLifestylesStatus_sections object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name,
          specifiedType: const FullType(_i2.GLifestyleSectionEnum)),
    ];
    Object? value;
    value = object.lastModifiedDate;
    if (value != null) {
      result
        ..add('lastModifiedDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesStatus_sections deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_habitudes_de_vieData_fetchLifestylesStatus_sectionsBuilder();

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
                  specifiedType: const FullType(_i2.GLifestyleSectionEnum))!
              as _i2.GLifestyleSectionEnum;
          break;
        case 'lastModifiedDate':
          result.lastModifiedDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_habitudes_de_vieData_fetchLifestylesMetadataSerializer
    implements
        StructuredSerializer<
            Gget_habitudes_de_vieData_fetchLifestylesMetadata> {
  @override
  final Iterable<Type> types = const [
    Gget_habitudes_de_vieData_fetchLifestylesMetadata,
    _$Gget_habitudes_de_vieData_fetchLifestylesMetadata
  ];
  @override
  final String wireName = 'Gget_habitudes_de_vieData_fetchLifestylesMetadata';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_habitudes_de_vieData_fetchLifestylesMetadata object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'sections',
      serializers.serialize(object.sections,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections)
          ])),
    ];

    return result;
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_habitudes_de_vieData_fetchLifestylesMetadataBuilder();

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
        case 'sections':
          result.sections.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sectionsSerializer
    implements
        StructuredSerializer<
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections> {
  @override
  final Iterable<Type> types = const [
    Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections,
    _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections
  ];
  @override
  final String wireName =
      'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name,
          specifiedType: const FullType(_i2.GLifestyleSectionEnum)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
      'sectionTag',
      serializers.serialize(object.sectionTag,
          specifiedType: const FullType(String)),
      'items',
      serializers.serialize(object.items,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items)
          ])),
    ];

    return result;
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_habitudes_de_vieData_fetchLifestylesMetadata_sectionsBuilder();

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
                  specifiedType: const FullType(_i2.GLifestyleSectionEnum))!
              as _i2.GLifestyleSectionEnum;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'sectionTag':
          result.sectionTag = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_itemsSerializer
    implements
        StructuredSerializer<
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items> {
  @override
  final Iterable<Type> types = const [
    Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items,
    _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items
  ];
  @override
  final String wireName =
      'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'itemTag',
      serializers.serialize(object.itemTag,
          specifiedType: const FullType(String)),
      'details',
      serializers.serialize(object.details,
          specifiedType: const FullType(BuiltList, const [
            const FullType(
                Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details)
          ])),
    ];

    return result;
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_itemsBuilder();

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
        case 'itemTag':
          result.itemTag = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'details':
          result.details.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_detailsSerializer
    implements
        StructuredSerializer<
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details> {
  @override
  final Iterable<Type> types = const [
    Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details,
    _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details
  ];
  @override
  final String wireName =
      'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(_i2.GLifestyleItemDisplayEnum)),
      'detailTag',
      serializers.serialize(object.detailTag,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.example;
    if (value != null) {
      result
        ..add('example')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.options;
    if (value != null) {
      result
        ..add('options')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options)
            ])));
    }
    value = object.displayOn;
    if (value != null) {
      result
        ..add('displayOn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn)));
    }
    value = object.maxLength;
    if (value != null) {
      result
        ..add('maxLength')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.constraints;
    if (value != null) {
      result
        ..add('constraints')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints)
            ])));
    }
    return result;
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_detailsBuilder();

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
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'example':
          result.example = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GLifestyleItemDisplayEnum))!
              as _i2.GLifestyleItemDisplayEnum;
          break;
        case 'detailTag':
          result.detailTag = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'options':
          result.options.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options)
              ]))! as BuiltList<Object?>);
          break;
        case 'displayOn':
          result.displayOn.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn))!
              as Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn);
          break;
        case 'maxLength':
          result.maxLength = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'constraints':
          result.constraints.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_optionsSerializer
    implements
        StructuredSerializer<
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options> {
  @override
  final Iterable<Type> types = const [
    Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options,
    _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options
  ];
  @override
  final String wireName =
      'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'value',
      serializers.serialize(object.value,
          specifiedType: const FullType(String)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_optionsBuilder();

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
        case 'value':
          result.value = serializers.deserialize(value,
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

class _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOnSerializer
    implements
        StructuredSerializer<
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn> {
  @override
  final Iterable<Type> types = const [
    Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn,
    _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn
  ];
  @override
  final String wireName =
      'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.value;
    if (value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.range;
    if (value != null) {
      result
        ..add('range')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range)));
    }
    return result;
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOnBuilder();

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
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'range':
          result.range.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range))!
              as Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range);
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_rangeSerializer
    implements
        StructuredSerializer<
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range> {
  @override
  final Iterable<Type> types = const [
    Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range,
    _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range
  ];
  @override
  final String wireName =
      'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range
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
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_rangeBuilder();

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

class _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraintsSerializer
    implements
        StructuredSerializer<
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints> {
  @override
  final Iterable<Type> types = const [
    Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints,
    _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints
  ];
  @override
  final String wireName =
      'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints
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
    value = object.range;
    if (value != null) {
      result
        ..add('range')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range)));
    }
    value = object.regexp;
    if (value != null) {
      result
        ..add('regexp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraintsBuilder();

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
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'range':
          result.range.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range))!
              as Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range);
          break;
        case 'regexp':
          result.regexp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_rangeSerializer
    implements
        StructuredSerializer<
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range> {
  @override
  final Iterable<Type> types = const [
    Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range,
    _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range
  ];
  @override
  final String wireName =
      'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.max;
    if (value != null) {
      result
        ..add('max')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.min;
    if (value != null) {
      result
        ..add('min')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_rangeBuilder();

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
        case 'max':
          result.max = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'min':
          result.min = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$Gget_habitudes_de_vieData extends Gget_habitudes_de_vieData {
  @override
  final String G__typename;
  @override
  final Gget_habitudes_de_vieData_fetchLifestylesStatus fetchLifestylesStatus;
  @override
  final Gget_habitudes_de_vieData_fetchLifestylesMetadata
      fetchLifestylesMetadata;

  factory _$Gget_habitudes_de_vieData(
          [void Function(Gget_habitudes_de_vieDataBuilder)? updates]) =>
      (new Gget_habitudes_de_vieDataBuilder()..update(updates))._build();

  _$Gget_habitudes_de_vieData._(
      {required this.G__typename,
      required this.fetchLifestylesStatus,
      required this.fetchLifestylesMetadata})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'Gget_habitudes_de_vieData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(fetchLifestylesStatus,
        r'Gget_habitudes_de_vieData', 'fetchLifestylesStatus');
    BuiltValueNullFieldError.checkNotNull(fetchLifestylesMetadata,
        r'Gget_habitudes_de_vieData', 'fetchLifestylesMetadata');
  }

  @override
  Gget_habitudes_de_vieData rebuild(
          void Function(Gget_habitudes_de_vieDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_habitudes_de_vieDataBuilder toBuilder() =>
      new Gget_habitudes_de_vieDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_habitudes_de_vieData &&
        G__typename == other.G__typename &&
        fetchLifestylesStatus == other.fetchLifestylesStatus &&
        fetchLifestylesMetadata == other.fetchLifestylesMetadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, fetchLifestylesStatus.hashCode);
    _$hash = $jc(_$hash, fetchLifestylesMetadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Gget_habitudes_de_vieData')
          ..add('G__typename', G__typename)
          ..add('fetchLifestylesStatus', fetchLifestylesStatus)
          ..add('fetchLifestylesMetadata', fetchLifestylesMetadata))
        .toString();
  }
}

class Gget_habitudes_de_vieDataBuilder
    implements
        Builder<Gget_habitudes_de_vieData, Gget_habitudes_de_vieDataBuilder> {
  _$Gget_habitudes_de_vieData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  Gget_habitudes_de_vieData_fetchLifestylesStatusBuilder?
      _fetchLifestylesStatus;
  Gget_habitudes_de_vieData_fetchLifestylesStatusBuilder
      get fetchLifestylesStatus => _$this._fetchLifestylesStatus ??=
          new Gget_habitudes_de_vieData_fetchLifestylesStatusBuilder();
  set fetchLifestylesStatus(
          Gget_habitudes_de_vieData_fetchLifestylesStatusBuilder?
              fetchLifestylesStatus) =>
      _$this._fetchLifestylesStatus = fetchLifestylesStatus;

  Gget_habitudes_de_vieData_fetchLifestylesMetadataBuilder?
      _fetchLifestylesMetadata;
  Gget_habitudes_de_vieData_fetchLifestylesMetadataBuilder
      get fetchLifestylesMetadata => _$this._fetchLifestylesMetadata ??=
          new Gget_habitudes_de_vieData_fetchLifestylesMetadataBuilder();
  set fetchLifestylesMetadata(
          Gget_habitudes_de_vieData_fetchLifestylesMetadataBuilder?
              fetchLifestylesMetadata) =>
      _$this._fetchLifestylesMetadata = fetchLifestylesMetadata;

  Gget_habitudes_de_vieDataBuilder() {
    Gget_habitudes_de_vieData._initializeBuilder(this);
  }

  Gget_habitudes_de_vieDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _fetchLifestylesStatus = $v.fetchLifestylesStatus.toBuilder();
      _fetchLifestylesMetadata = $v.fetchLifestylesMetadata.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_habitudes_de_vieData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_habitudes_de_vieData;
  }

  @override
  void update(void Function(Gget_habitudes_de_vieDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_habitudes_de_vieData build() => _build();

  _$Gget_habitudes_de_vieData _build() {
    _$Gget_habitudes_de_vieData _$result;
    try {
      _$result = _$v ??
          new _$Gget_habitudes_de_vieData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'Gget_habitudes_de_vieData', 'G__typename'),
              fetchLifestylesStatus: fetchLifestylesStatus.build(),
              fetchLifestylesMetadata: fetchLifestylesMetadata.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fetchLifestylesStatus';
        fetchLifestylesStatus.build();
        _$failedField = 'fetchLifestylesMetadata';
        fetchLifestylesMetadata.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_habitudes_de_vieData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_habitudes_de_vieData_fetchLifestylesStatus
    extends Gget_habitudes_de_vieData_fetchLifestylesStatus {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_habitudes_de_vieData_fetchLifestylesStatus_sections>
      sections;

  factory _$Gget_habitudes_de_vieData_fetchLifestylesStatus(
          [void Function(
                  Gget_habitudes_de_vieData_fetchLifestylesStatusBuilder)?
              updates]) =>
      (new Gget_habitudes_de_vieData_fetchLifestylesStatusBuilder()
            ..update(updates))
          ._build();

  _$Gget_habitudes_de_vieData_fetchLifestylesStatus._(
      {required this.G__typename, required this.sections})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_habitudes_de_vieData_fetchLifestylesStatus', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(sections,
        r'Gget_habitudes_de_vieData_fetchLifestylesStatus', 'sections');
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesStatus rebuild(
          void Function(Gget_habitudes_de_vieData_fetchLifestylesStatusBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_habitudes_de_vieData_fetchLifestylesStatusBuilder toBuilder() =>
      new Gget_habitudes_de_vieData_fetchLifestylesStatusBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_habitudes_de_vieData_fetchLifestylesStatus &&
        G__typename == other.G__typename &&
        sections == other.sections;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, sections.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_habitudes_de_vieData_fetchLifestylesStatus')
          ..add('G__typename', G__typename)
          ..add('sections', sections))
        .toString();
  }
}

class Gget_habitudes_de_vieData_fetchLifestylesStatusBuilder
    implements
        Builder<Gget_habitudes_de_vieData_fetchLifestylesStatus,
            Gget_habitudes_de_vieData_fetchLifestylesStatusBuilder> {
  _$Gget_habitudes_de_vieData_fetchLifestylesStatus? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_habitudes_de_vieData_fetchLifestylesStatus_sections>?
      _sections;
  ListBuilder<Gget_habitudes_de_vieData_fetchLifestylesStatus_sections>
      get sections => _$this._sections ??= new ListBuilder<
          Gget_habitudes_de_vieData_fetchLifestylesStatus_sections>();
  set sections(
          ListBuilder<Gget_habitudes_de_vieData_fetchLifestylesStatus_sections>?
              sections) =>
      _$this._sections = sections;

  Gget_habitudes_de_vieData_fetchLifestylesStatusBuilder() {
    Gget_habitudes_de_vieData_fetchLifestylesStatus._initializeBuilder(this);
  }

  Gget_habitudes_de_vieData_fetchLifestylesStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _sections = $v.sections.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_habitudes_de_vieData_fetchLifestylesStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_habitudes_de_vieData_fetchLifestylesStatus;
  }

  @override
  void update(
      void Function(Gget_habitudes_de_vieData_fetchLifestylesStatusBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesStatus build() => _build();

  _$Gget_habitudes_de_vieData_fetchLifestylesStatus _build() {
    _$Gget_habitudes_de_vieData_fetchLifestylesStatus _$result;
    try {
      _$result = _$v ??
          new _$Gget_habitudes_de_vieData_fetchLifestylesStatus._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_habitudes_de_vieData_fetchLifestylesStatus',
                  'G__typename'),
              sections: sections.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sections';
        sections.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_habitudes_de_vieData_fetchLifestylesStatus',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_habitudes_de_vieData_fetchLifestylesStatus_sections
    extends Gget_habitudes_de_vieData_fetchLifestylesStatus_sections {
  @override
  final String G__typename;
  @override
  final _i2.GLifestyleSectionEnum name;
  @override
  final String? lastModifiedDate;

  factory _$Gget_habitudes_de_vieData_fetchLifestylesStatus_sections(
          [void Function(
                  Gget_habitudes_de_vieData_fetchLifestylesStatus_sectionsBuilder)?
              updates]) =>
      (new Gget_habitudes_de_vieData_fetchLifestylesStatus_sectionsBuilder()
            ..update(updates))
          ._build();

  _$Gget_habitudes_de_vieData_fetchLifestylesStatus_sections._(
      {required this.G__typename, required this.name, this.lastModifiedDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_habitudes_de_vieData_fetchLifestylesStatus_sections',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(name,
        r'Gget_habitudes_de_vieData_fetchLifestylesStatus_sections', 'name');
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesStatus_sections rebuild(
          void Function(
                  Gget_habitudes_de_vieData_fetchLifestylesStatus_sectionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_habitudes_de_vieData_fetchLifestylesStatus_sectionsBuilder toBuilder() =>
      new Gget_habitudes_de_vieData_fetchLifestylesStatus_sectionsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_habitudes_de_vieData_fetchLifestylesStatus_sections &&
        G__typename == other.G__typename &&
        name == other.name &&
        lastModifiedDate == other.lastModifiedDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, lastModifiedDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_habitudes_de_vieData_fetchLifestylesStatus_sections')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('lastModifiedDate', lastModifiedDate))
        .toString();
  }
}

class Gget_habitudes_de_vieData_fetchLifestylesStatus_sectionsBuilder
    implements
        Builder<Gget_habitudes_de_vieData_fetchLifestylesStatus_sections,
            Gget_habitudes_de_vieData_fetchLifestylesStatus_sectionsBuilder> {
  _$Gget_habitudes_de_vieData_fetchLifestylesStatus_sections? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GLifestyleSectionEnum? _name;
  _i2.GLifestyleSectionEnum? get name => _$this._name;
  set name(_i2.GLifestyleSectionEnum? name) => _$this._name = name;

  String? _lastModifiedDate;
  String? get lastModifiedDate => _$this._lastModifiedDate;
  set lastModifiedDate(String? lastModifiedDate) =>
      _$this._lastModifiedDate = lastModifiedDate;

  Gget_habitudes_de_vieData_fetchLifestylesStatus_sectionsBuilder() {
    Gget_habitudes_de_vieData_fetchLifestylesStatus_sections._initializeBuilder(
        this);
  }

  Gget_habitudes_de_vieData_fetchLifestylesStatus_sectionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _lastModifiedDate = $v.lastModifiedDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_habitudes_de_vieData_fetchLifestylesStatus_sections other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_habitudes_de_vieData_fetchLifestylesStatus_sections;
  }

  @override
  void update(
      void Function(
              Gget_habitudes_de_vieData_fetchLifestylesStatus_sectionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesStatus_sections build() => _build();

  _$Gget_habitudes_de_vieData_fetchLifestylesStatus_sections _build() {
    final _$result = _$v ??
        new _$Gget_habitudes_de_vieData_fetchLifestylesStatus_sections._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_habitudes_de_vieData_fetchLifestylesStatus_sections',
                'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                r'Gget_habitudes_de_vieData_fetchLifestylesStatus_sections',
                'name'),
            lastModifiedDate: lastModifiedDate);
    replace(_$result);
    return _$result;
  }
}

class _$Gget_habitudes_de_vieData_fetchLifestylesMetadata
    extends Gget_habitudes_de_vieData_fetchLifestylesMetadata {
  @override
  final String G__typename;
  @override
  final BuiltList<Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections>
      sections;

  factory _$Gget_habitudes_de_vieData_fetchLifestylesMetadata(
          [void Function(
                  Gget_habitudes_de_vieData_fetchLifestylesMetadataBuilder)?
              updates]) =>
      (new Gget_habitudes_de_vieData_fetchLifestylesMetadataBuilder()
            ..update(updates))
          ._build();

  _$Gget_habitudes_de_vieData_fetchLifestylesMetadata._(
      {required this.G__typename, required this.sections})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'Gget_habitudes_de_vieData_fetchLifestylesMetadata', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(sections,
        r'Gget_habitudes_de_vieData_fetchLifestylesMetadata', 'sections');
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata rebuild(
          void Function(
                  Gget_habitudes_de_vieData_fetchLifestylesMetadataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadataBuilder toBuilder() =>
      new Gget_habitudes_de_vieData_fetchLifestylesMetadataBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gget_habitudes_de_vieData_fetchLifestylesMetadata &&
        G__typename == other.G__typename &&
        sections == other.sections;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, sections.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_habitudes_de_vieData_fetchLifestylesMetadata')
          ..add('G__typename', G__typename)
          ..add('sections', sections))
        .toString();
  }
}

class Gget_habitudes_de_vieData_fetchLifestylesMetadataBuilder
    implements
        Builder<Gget_habitudes_de_vieData_fetchLifestylesMetadata,
            Gget_habitudes_de_vieData_fetchLifestylesMetadataBuilder> {
  _$Gget_habitudes_de_vieData_fetchLifestylesMetadata? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections>?
      _sections;
  ListBuilder<Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections>
      get sections => _$this._sections ??= new ListBuilder<
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections>();
  set sections(
          ListBuilder<
                  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections>?
              sections) =>
      _$this._sections = sections;

  Gget_habitudes_de_vieData_fetchLifestylesMetadataBuilder() {
    Gget_habitudes_de_vieData_fetchLifestylesMetadata._initializeBuilder(this);
  }

  Gget_habitudes_de_vieData_fetchLifestylesMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _sections = $v.sections.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gget_habitudes_de_vieData_fetchLifestylesMetadata other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_habitudes_de_vieData_fetchLifestylesMetadata;
  }

  @override
  void update(
      void Function(Gget_habitudes_de_vieData_fetchLifestylesMetadataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata build() => _build();

  _$Gget_habitudes_de_vieData_fetchLifestylesMetadata _build() {
    _$Gget_habitudes_de_vieData_fetchLifestylesMetadata _$result;
    try {
      _$result = _$v ??
          new _$Gget_habitudes_de_vieData_fetchLifestylesMetadata._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_habitudes_de_vieData_fetchLifestylesMetadata',
                  'G__typename'),
              sections: sections.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sections';
        sections.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_habitudes_de_vieData_fetchLifestylesMetadata',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections
    extends Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections {
  @override
  final String G__typename;
  @override
  final _i2.GLifestyleSectionEnum name;
  @override
  final String label;
  @override
  final String sectionTag;
  @override
  final BuiltList<
      Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items> items;

  factory _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections(
          [void Function(
                  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sectionsBuilder)?
              updates]) =>
      (new Gget_habitudes_de_vieData_fetchLifestylesMetadata_sectionsBuilder()
            ..update(updates))
          ._build();

  _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections._(
      {required this.G__typename,
      required this.name,
      required this.label,
      required this.sectionTag,
      required this.items})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(name,
        r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections', 'name');
    BuiltValueNullFieldError.checkNotNull(label,
        r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections', 'label');
    BuiltValueNullFieldError.checkNotNull(
        sectionTag,
        r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections',
        'sectionTag');
    BuiltValueNullFieldError.checkNotNull(items,
        r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections', 'items');
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections rebuild(
          void Function(
                  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sectionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sectionsBuilder
      toBuilder() =>
          new Gget_habitudes_de_vieData_fetchLifestylesMetadata_sectionsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections &&
        G__typename == other.G__typename &&
        name == other.name &&
        label == other.label &&
        sectionTag == other.sectionTag &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, sectionTag.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('label', label)
          ..add('sectionTag', sectionTag)
          ..add('items', items))
        .toString();
  }
}

class Gget_habitudes_de_vieData_fetchLifestylesMetadata_sectionsBuilder
    implements
        Builder<Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections,
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sectionsBuilder> {
  _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GLifestyleSectionEnum? _name;
  _i2.GLifestyleSectionEnum? get name => _$this._name;
  set name(_i2.GLifestyleSectionEnum? name) => _$this._name = name;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _sectionTag;
  String? get sectionTag => _$this._sectionTag;
  set sectionTag(String? sectionTag) => _$this._sectionTag = sectionTag;

  ListBuilder<Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items>?
      _items;
  ListBuilder<Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items>
      get items => _$this._items ??= new ListBuilder<
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items>();
  set items(
          ListBuilder<
                  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items>?
              items) =>
      _$this._items = items;

  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sectionsBuilder() {
    Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections
        ._initializeBuilder(this);
  }

  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sectionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _label = $v.label;
      _sectionTag = $v.sectionTag;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections;
  }

  @override
  void update(
      void Function(
              Gget_habitudes_de_vieData_fetchLifestylesMetadata_sectionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections build() =>
      _build();

  _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections _build() {
    _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections _$result;
    try {
      _$result = _$v ??
          new _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections',
                  'G__typename'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name,
                  r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections',
                  'name'),
              label: BuiltValueNullFieldError.checkNotNull(label,
                  r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections', 'label'),
              sectionTag: BuiltValueNullFieldError.checkNotNull(
                  sectionTag,
                  r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections',
                  'sectionTag'),
              items: items.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items
    extends Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String itemTag;
  @override
  final BuiltList<
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details>
      details;

  factory _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items(
          [void Function(
                  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_itemsBuilder)?
              updates]) =>
      (new Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_itemsBuilder()
            ..update(updates))
          ._build();

  _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items._(
      {required this.G__typename,
      required this.name,
      required this.itemTag,
      required this.details})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items',
        'name');
    BuiltValueNullFieldError.checkNotNull(
        itemTag,
        r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items',
        'itemTag');
    BuiltValueNullFieldError.checkNotNull(
        details,
        r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items',
        'details');
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items rebuild(
          void Function(
                  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_itemsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_itemsBuilder
      toBuilder() =>
          new Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_itemsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items &&
        G__typename == other.G__typename &&
        name == other.name &&
        itemTag == other.itemTag &&
        details == other.details;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, itemTag.hashCode);
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('itemTag', itemTag)
          ..add('details', details))
        .toString();
  }
}

class Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_itemsBuilder
    implements
        Builder<
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items,
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_itemsBuilder> {
  _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _itemTag;
  String? get itemTag => _$this._itemTag;
  set itemTag(String? itemTag) => _$this._itemTag = itemTag;

  ListBuilder<
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details>?
      _details;
  ListBuilder<
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details>
      get details => _$this._details ??= new ListBuilder<
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details>();
  set details(
          ListBuilder<
                  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details>?
              details) =>
      _$this._details = details;

  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_itemsBuilder() {
    Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items
        ._initializeBuilder(this);
  }

  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_itemsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _itemTag = $v.itemTag;
      _details = $v.details.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items;
  }

  @override
  void update(
      void Function(
              Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_itemsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items build() =>
      _build();

  _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items _build() {
    _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items _$result;
    try {
      _$result = _$v ??
          new _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items',
                  'G__typename'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name,
                  r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items',
                  'name'),
              itemTag: BuiltValueNullFieldError.checkNotNull(
                  itemTag,
                  r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items',
                  'itemTag'),
              details: details.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        details.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details
    extends Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String label;
  @override
  final String? description;
  @override
  final String? example;
  @override
  final _i2.GLifestyleItemDisplayEnum type;
  @override
  final String detailTag;
  @override
  final BuiltList<
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options>?
      options;
  @override
  final Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn?
      displayOn;
  @override
  final double? maxLength;
  @override
  final BuiltList<
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints>?
      constraints;

  factory _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details(
          [void Function(
                  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_detailsBuilder)?
              updates]) =>
      (new Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_detailsBuilder()
            ..update(updates))
          ._build();

  _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details._(
      {required this.G__typename,
      required this.name,
      required this.label,
      this.description,
      this.example,
      required this.type,
      required this.detailTag,
      this.options,
      this.displayOn,
      this.maxLength,
      this.constraints})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details',
        'name');
    BuiltValueNullFieldError.checkNotNull(
        label,
        r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details',
        'label');
    BuiltValueNullFieldError.checkNotNull(
        type,
        r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details',
        'type');
    BuiltValueNullFieldError.checkNotNull(
        detailTag,
        r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details',
        'detailTag');
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details rebuild(
          void Function(
                  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_detailsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_detailsBuilder
      toBuilder() =>
          new Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_detailsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details &&
        G__typename == other.G__typename &&
        name == other.name &&
        label == other.label &&
        description == other.description &&
        example == other.example &&
        type == other.type &&
        detailTag == other.detailTag &&
        options == other.options &&
        displayOn == other.displayOn &&
        maxLength == other.maxLength &&
        constraints == other.constraints;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, example.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, detailTag.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, displayOn.hashCode);
    _$hash = $jc(_$hash, maxLength.hashCode);
    _$hash = $jc(_$hash, constraints.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('label', label)
          ..add('description', description)
          ..add('example', example)
          ..add('type', type)
          ..add('detailTag', detailTag)
          ..add('options', options)
          ..add('displayOn', displayOn)
          ..add('maxLength', maxLength)
          ..add('constraints', constraints))
        .toString();
  }
}

class Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_detailsBuilder
    implements
        Builder<
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details,
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_detailsBuilder> {
  _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _example;
  String? get example => _$this._example;
  set example(String? example) => _$this._example = example;

  _i2.GLifestyleItemDisplayEnum? _type;
  _i2.GLifestyleItemDisplayEnum? get type => _$this._type;
  set type(_i2.GLifestyleItemDisplayEnum? type) => _$this._type = type;

  String? _detailTag;
  String? get detailTag => _$this._detailTag;
  set detailTag(String? detailTag) => _$this._detailTag = detailTag;

  ListBuilder<
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options>?
      _options;
  ListBuilder<
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options>
      get options => _$this._options ??= new ListBuilder<
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options>();
  set options(
          ListBuilder<
                  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options>?
              options) =>
      _$this._options = options;

  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOnBuilder?
      _displayOn;
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOnBuilder
      get displayOn => _$this._displayOn ??=
          new Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOnBuilder();
  set displayOn(
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOnBuilder?
              displayOn) =>
      _$this._displayOn = displayOn;

  double? _maxLength;
  double? get maxLength => _$this._maxLength;
  set maxLength(double? maxLength) => _$this._maxLength = maxLength;

  ListBuilder<
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints>?
      _constraints;
  ListBuilder<
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints>
      get constraints => _$this._constraints ??= new ListBuilder<
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints>();
  set constraints(
          ListBuilder<
                  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints>?
              constraints) =>
      _$this._constraints = constraints;

  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_detailsBuilder() {
    Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details
        ._initializeBuilder(this);
  }

  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_detailsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _label = $v.label;
      _description = $v.description;
      _example = $v.example;
      _type = $v.type;
      _detailTag = $v.detailTag;
      _options = $v.options?.toBuilder();
      _displayOn = $v.displayOn?.toBuilder();
      _maxLength = $v.maxLength;
      _constraints = $v.constraints?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details;
  }

  @override
  void update(
      void Function(
              Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_detailsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details
      build() => _build();

  _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details
      _build() {
    _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details',
                  'G__typename'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details', 'name'),
              label: BuiltValueNullFieldError.checkNotNull(
                  label,
                  r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details',
                  'label'),
              description: description,
              example: example,
              type: BuiltValueNullFieldError.checkNotNull(
                  type,
                  r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details',
                  'type'),
              detailTag: BuiltValueNullFieldError.checkNotNull(
                  detailTag,
                  r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details',
                  'detailTag'),
              options: _options?.build(),
              displayOn: _displayOn?.build(),
              maxLength: maxLength,
              constraints: _constraints?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();
        _$failedField = 'displayOn';
        _displayOn?.build();

        _$failedField = 'constraints';
        _constraints?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options
    extends Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options {
  @override
  final String G__typename;
  @override
  final String value;
  @override
  final String label;

  factory _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options(
          [void Function(
                  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_optionsBuilder)?
              updates]) =>
      (new Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_optionsBuilder()
            ..update(updates))
          ._build();

  _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options._(
      {required this.G__typename, required this.value, required this.label})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        value,
        r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options',
        'value');
    BuiltValueNullFieldError.checkNotNull(
        label,
        r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options',
        'label');
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options
      rebuild(
              void Function(
                      Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_optionsBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_optionsBuilder
      toBuilder() =>
          new Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_optionsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options &&
        G__typename == other.G__typename &&
        value == other.value &&
        label == other.label;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options')
          ..add('G__typename', G__typename)
          ..add('value', value)
          ..add('label', label))
        .toString();
  }
}

class Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_optionsBuilder
    implements
        Builder<
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options,
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_optionsBuilder> {
  _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_optionsBuilder() {
    Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options
        ._initializeBuilder(this);
  }

  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_optionsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _value = $v.value;
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options;
  }

  @override
  void update(
      void Function(
              Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_optionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options
      build() => _build();

  _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options
      _build() {
    final _$result = _$v ??
        new _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options',
                'G__typename'),
            value: BuiltValueNullFieldError.checkNotNull(
                value,
                r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options',
                'value'),
            label: BuiltValueNullFieldError.checkNotNull(
                label,
                r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options',
                'label'));
    replace(_$result);
    return _$result;
  }
}

class _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn
    extends Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String? value;
  @override
  final Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range?
      range;

  factory _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn(
          [void Function(
                  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOnBuilder)?
              updates]) =>
      (new Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOnBuilder()
            ..update(updates))
          ._build();

  _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn._(
      {required this.G__typename, required this.name, this.value, this.range})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name,
        r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn',
        'name');
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn
      rebuild(
              void Function(
                      Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOnBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOnBuilder
      toBuilder() =>
          new Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOnBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn &&
        G__typename == other.G__typename &&
        name == other.name &&
        value == other.value &&
        range == other.range;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, range.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('value', value)
          ..add('range', range))
        .toString();
  }
}

class Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOnBuilder
    implements
        Builder<
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn,
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOnBuilder> {
  _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_rangeBuilder?
      _range;
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_rangeBuilder
      get range => _$this._range ??=
          new Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_rangeBuilder();
  set range(
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_rangeBuilder?
              range) =>
      _$this._range = range;

  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOnBuilder() {
    Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn
        ._initializeBuilder(this);
  }

  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOnBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _value = $v.value;
      _range = $v.range?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn;
  }

  @override
  void update(
      void Function(
              Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOnBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn
      build() => _build();

  _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn
      _build() {
    _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn',
                  'G__typename'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name,
                  r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn',
                  'name'),
              value: value,
              range: _range?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'range';
        _range?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range
    extends Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range {
  @override
  final String G__typename;
  @override
  final double? min;
  @override
  final double? max;

  factory _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range(
          [void Function(
                  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_rangeBuilder)?
              updates]) =>
      (new Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_rangeBuilder()
            ..update(updates))
          ._build();

  _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range._(
      {required this.G__typename, this.min, this.max})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range',
        'G__typename');
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range
      rebuild(
              void Function(
                      Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_rangeBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_rangeBuilder
      toBuilder() =>
          new Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_rangeBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range &&
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
            r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range')
          ..add('G__typename', G__typename)
          ..add('min', min)
          ..add('max', max))
        .toString();
  }
}

class Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_rangeBuilder
    implements
        Builder<
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range,
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_rangeBuilder> {
  _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range?
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

  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_rangeBuilder() {
    Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range
        ._initializeBuilder(this);
  }

  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_rangeBuilder
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
      Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range;
  }

  @override
  void update(
      void Function(
              Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_rangeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range
      build() => _build();

  _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range
      _build() {
    final _$result = _$v ??
        new _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn_range',
                'G__typename'),
            min: min,
            max: max);
    replace(_$result);
    return _$result;
  }
}

class _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints
    extends Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints {
  @override
  final String G__typename;
  @override
  final String message;
  @override
  final Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range?
      range;
  @override
  final String? regexp;

  factory _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints(
          [void Function(
                  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraintsBuilder)?
              updates]) =>
      (new Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraintsBuilder()
            ..update(updates))
          ._build();

  _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints._(
      {required this.G__typename,
      required this.message,
      this.range,
      this.regexp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message,
        r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints',
        'message');
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints
      rebuild(
              void Function(
                      Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraintsBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraintsBuilder
      toBuilder() =>
          new Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraintsBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints &&
        G__typename == other.G__typename &&
        message == other.message &&
        range == other.range &&
        regexp == other.regexp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, range.hashCode);
    _$hash = $jc(_$hash, regexp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints')
          ..add('G__typename', G__typename)
          ..add('message', message)
          ..add('range', range)
          ..add('regexp', regexp))
        .toString();
  }
}

class Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraintsBuilder
    implements
        Builder<
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints,
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraintsBuilder> {
  _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_rangeBuilder?
      _range;
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_rangeBuilder
      get range => _$this._range ??=
          new Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_rangeBuilder();
  set range(
          Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_rangeBuilder?
              range) =>
      _$this._range = range;

  String? _regexp;
  String? get regexp => _$this._regexp;
  set regexp(String? regexp) => _$this._regexp = regexp;

  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraintsBuilder() {
    Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints
        ._initializeBuilder(this);
  }

  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraintsBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _message = $v.message;
      _range = $v.range?.toBuilder();
      _regexp = $v.regexp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints;
  }

  @override
  void update(
      void Function(
              Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraintsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints
      build() => _build();

  _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints
      _build() {
    _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints
        _$result;
    try {
      _$result = _$v ??
          new _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints',
                  'G__typename'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message,
                  r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints',
                  'message'),
              range: _range?.build(),
              regexp: regexp);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'range';
        _range?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range
    extends Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range {
  @override
  final String G__typename;
  @override
  final double? max;
  @override
  final double? min;

  factory _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range(
          [void Function(
                  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_rangeBuilder)?
              updates]) =>
      (new Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_rangeBuilder()
            ..update(updates))
          ._build();

  _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range._(
      {required this.G__typename, this.max, this.min})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range',
        'G__typename');
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range
      rebuild(
              void Function(
                      Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_rangeBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_rangeBuilder
      toBuilder() =>
          new Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_rangeBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range &&
        G__typename == other.G__typename &&
        max == other.max &&
        min == other.min;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, max.hashCode);
    _$hash = $jc(_$hash, min.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range')
          ..add('G__typename', G__typename)
          ..add('max', max)
          ..add('min', min))
        .toString();
  }
}

class Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_rangeBuilder
    implements
        Builder<
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range,
            Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_rangeBuilder> {
  _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _max;
  double? get max => _$this._max;
  set max(double? max) => _$this._max = max;

  double? _min;
  double? get min => _$this._min;
  set min(double? min) => _$this._min = min;

  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_rangeBuilder() {
    Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range
        ._initializeBuilder(this);
  }

  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_rangeBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _max = $v.max;
      _min = $v.min;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range;
  }

  @override
  void update(
      void Function(
              Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_rangeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range
      build() => _build();

  _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range
      _build() {
    final _$result = _$v ??
        new _$Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints_range',
                'G__typename'),
            max: max,
            min: min);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
