// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'valueSet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ValueSet _$ValueSetFromJson(Map<String, dynamic> json) {
  return ValueSet(
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    element_implicitRules: json['element_implicitRules'] == null
        ? null
        : Element.fromJson(
            json['element_implicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    element_language: json['element_language'] == null
        ? null
        : Element.fromJson(json['element_language'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    url: json['url'] as String,
    element_url: json['element_url'] == null
        ? null
        : Element.fromJson(json['element_url'] as Map<String, dynamic>),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    version: json['version'] as String,
    element_version: json['element_version'] == null
        ? null
        : Element.fromJson(json['element_version'] as Map<String, dynamic>),
    name: json['name'] as String,
    element_name: json['element_name'] == null
        ? null
        : Element.fromJson(json['element_name'] as Map<String, dynamic>),
    title: json['title'] as String,
    element_title: json['element_title'] == null
        ? null
        : Element.fromJson(json['element_title'] as Map<String, dynamic>),
    status: json['status'] as String,
    element_status: json['element_status'] == null
        ? null
        : Element.fromJson(json['element_status'] as Map<String, dynamic>),
    experimental: json['experimental'] as bool,
    element_experimental: json['element_experimental'] == null
        ? null
        : Element.fromJson(
            json['element_experimental'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    element_date: json['element_date'] == null
        ? null
        : Element.fromJson(json['element_date'] as Map<String, dynamic>),
    publisher: json['publisher'] as String,
    element_publisher: json['element_publisher'] == null
        ? null
        : Element.fromJson(json['element_publisher'] as Map<String, dynamic>),
    contact: (json['contact'] as List)
        ?.map((e) => e == null
            ? null
            : ContactDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String,
    element_description: json['element_description'] == null
        ? null
        : Element.fromJson(json['element_description'] as Map<String, dynamic>),
    useContext: (json['useContext'] as List)
        ?.map((e) =>
            e == null ? null : UsageContext.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    jurisdiction: (json['jurisdiction'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    immutable: json['immutable'] as bool,
    element_immutable: json['element_immutable'] == null
        ? null
        : Element.fromJson(json['element_immutable'] as Map<String, dynamic>),
    purpose: json['purpose'] as String,
    element_purpose: json['element_purpose'] == null
        ? null
        : Element.fromJson(json['element_purpose'] as Map<String, dynamic>),
    copyright: json['copyright'] as String,
    element_copyright: json['element_copyright'] == null
        ? null
        : Element.fromJson(json['element_copyright'] as Map<String, dynamic>),
    compose: json['compose'] == null
        ? null
        : ValueSet_Compose.fromJson(json['compose'] as Map<String, dynamic>),
    expansion: json['expansion'] == null
        ? null
        : ValueSet_Expansion.fromJson(
            json['expansion'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ValueSetToJson(ValueSet instance) => <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'element_implicitRules': instance.element_implicitRules?.toJson(),
      'language': instance.language,
      'element_language': instance.element_language?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained?.map((e) => e?.toJson())?.toList(),
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'url': instance.url,
      'element_url': instance.element_url?.toJson(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'version': instance.version,
      'element_version': instance.element_version?.toJson(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'title': instance.title,
      'element_title': instance.element_title?.toJson(),
      'status': instance.status,
      'element_status': instance.element_status?.toJson(),
      'experimental': instance.experimental,
      'element_experimental': instance.element_experimental?.toJson(),
      'date': instance.date?.toIso8601String(),
      'element_date': instance.element_date?.toJson(),
      'publisher': instance.publisher,
      'element_publisher': instance.element_publisher?.toJson(),
      'contact': instance.contact?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'element_description': instance.element_description?.toJson(),
      'useContext': instance.useContext?.map((e) => e?.toJson())?.toList(),
      'jurisdiction': instance.jurisdiction?.map((e) => e?.toJson())?.toList(),
      'immutable': instance.immutable,
      'element_immutable': instance.element_immutable?.toJson(),
      'purpose': instance.purpose,
      'element_purpose': instance.element_purpose?.toJson(),
      'copyright': instance.copyright,
      'element_copyright': instance.element_copyright?.toJson(),
      'compose': instance.compose?.toJson(),
      'expansion': instance.expansion?.toJson(),
    };

ValueSet_Compose _$ValueSet_ComposeFromJson(Map<String, dynamic> json) {
  return ValueSet_Compose(
    (json['include'] as List)
        ?.map((e) => e == null
            ? null
            : ValueSet_Include.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    lockedDate: json['lockedDate'] as String,
    element_lockedDate: json['element_lockedDate'] == null
        ? null
        : Element.fromJson(json['element_lockedDate'] as Map<String, dynamic>),
    inactive: json['inactive'] as bool,
    element_inactive: json['element_inactive'] == null
        ? null
        : Element.fromJson(json['element_inactive'] as Map<String, dynamic>),
    exclude: (json['exclude'] as List)
        ?.map((e) => e == null
            ? null
            : ValueSet_Include.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ValueSet_ComposeToJson(ValueSet_Compose instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'lockedDate': instance.lockedDate,
      'element_lockedDate': instance.element_lockedDate?.toJson(),
      'inactive': instance.inactive,
      'element_inactive': instance.element_inactive?.toJson(),
      'include': instance.include?.map((e) => e?.toJson())?.toList(),
      'exclude': instance.exclude?.map((e) => e?.toJson())?.toList(),
    };

ValueSet_Include _$ValueSet_IncludeFromJson(Map<String, dynamic> json) {
  return ValueSet_Include(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    system: json['system'] as String,
    element_system: json['element_system'] == null
        ? null
        : Element.fromJson(json['element_system'] as Map<String, dynamic>),
    version: json['version'] as String,
    element_version: json['element_version'] == null
        ? null
        : Element.fromJson(json['element_version'] as Map<String, dynamic>),
    concept: (json['concept'] as List)
        ?.map((e) => e == null
            ? null
            : ValueSet_Concept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    filter: (json['filter'] as List)
        ?.map((e) => e == null
            ? null
            : ValueSet_Filter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    valueSet: (json['valueSet'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$ValueSet_IncludeToJson(ValueSet_Include instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'system': instance.system,
      'element_system': instance.element_system?.toJson(),
      'version': instance.version,
      'element_version': instance.element_version?.toJson(),
      'concept': instance.concept?.map((e) => e?.toJson())?.toList(),
      'filter': instance.filter?.map((e) => e?.toJson())?.toList(),
      'valueSet': instance.valueSet,
    };

ValueSet_Concept _$ValueSet_ConceptFromJson(Map<String, dynamic> json) {
  return ValueSet_Concept(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] as String,
    element_code: json['element_code'] == null
        ? null
        : Element.fromJson(json['element_code'] as Map<String, dynamic>),
    display: json['display'] as String,
    element_display: json['element_display'] == null
        ? null
        : Element.fromJson(json['element_display'] as Map<String, dynamic>),
    designation: (json['designation'] as List)
        ?.map((e) => e == null
            ? null
            : ValueSet_Designation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ValueSet_ConceptToJson(ValueSet_Concept instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'code': instance.code,
      'element_code': instance.element_code?.toJson(),
      'display': instance.display,
      'element_display': instance.element_display?.toJson(),
      'designation': instance.designation?.map((e) => e?.toJson())?.toList(),
    };

ValueSet_Designation _$ValueSet_DesignationFromJson(Map<String, dynamic> json) {
  return ValueSet_Designation(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    language: json['language'] as String,
    element_language: json['element_language'] == null
        ? null
        : Element.fromJson(json['element_language'] as Map<String, dynamic>),
    use: json['use'] == null
        ? null
        : Coding.fromJson(json['use'] as Map<String, dynamic>),
    value: json['value'] as String,
    element_value: json['element_value'] == null
        ? null
        : Element.fromJson(json['element_value'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ValueSet_DesignationToJson(
        ValueSet_Designation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'language': instance.language,
      'element_language': instance.element_language?.toJson(),
      'use': instance.use?.toJson(),
      'value': instance.value,
      'element_value': instance.element_value?.toJson(),
    };

ValueSet_Filter _$ValueSet_FilterFromJson(Map<String, dynamic> json) {
  return ValueSet_Filter(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    property: json['property'] as String,
    element_property: json['element_property'] == null
        ? null
        : Element.fromJson(json['element_property'] as Map<String, dynamic>),
    op: json['op'] as String,
    element_op: json['element_op'] == null
        ? null
        : Element.fromJson(json['element_op'] as Map<String, dynamic>),
    value: json['value'] as String,
    element_value: json['element_value'] == null
        ? null
        : Element.fromJson(json['element_value'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ValueSet_FilterToJson(ValueSet_Filter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'property': instance.property,
      'element_property': instance.element_property?.toJson(),
      'op': instance.op,
      'element_op': instance.element_op?.toJson(),
      'value': instance.value,
      'element_value': instance.element_value?.toJson(),
    };

ValueSet_Expansion _$ValueSet_ExpansionFromJson(Map<String, dynamic> json) {
  return ValueSet_Expansion(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: json['identifier'] as String,
    element_identifier: json['element_identifier'] == null
        ? null
        : Element.fromJson(json['element_identifier'] as Map<String, dynamic>),
    timestamp: json['timestamp'] == null
        ? null
        : DateTime.parse(json['timestamp'] as String),
    element_timestamp: json['element_timestamp'] == null
        ? null
        : Element.fromJson(json['element_timestamp'] as Map<String, dynamic>),
    total: json['total'] as int,
    element_total: json['element_total'] == null
        ? null
        : Element.fromJson(json['element_total'] as Map<String, dynamic>),
    offset: json['offset'] as int,
    element_offset: json['element_offset'] == null
        ? null
        : Element.fromJson(json['element_offset'] as Map<String, dynamic>),
    parameter: (json['parameter'] as List)
        ?.map((e) => e == null
            ? null
            : ValueSet_Parameter.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contains: (json['contains'] as List)
        ?.map((e) => e == null
            ? null
            : ValueSet_Contains.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ValueSet_ExpansionToJson(ValueSet_Expansion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier,
      'element_identifier': instance.element_identifier?.toJson(),
      'timestamp': instance.timestamp?.toIso8601String(),
      'element_timestamp': instance.element_timestamp?.toJson(),
      'total': instance.total,
      'element_total': instance.element_total?.toJson(),
      'offset': instance.offset,
      'element_offset': instance.element_offset?.toJson(),
      'parameter': instance.parameter?.map((e) => e?.toJson())?.toList(),
      'contains': instance.contains?.map((e) => e?.toJson())?.toList(),
    };

ValueSet_Parameter _$ValueSet_ParameterFromJson(Map<String, dynamic> json) {
  return ValueSet_Parameter(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    name: json['name'] as String,
    element_name: json['element_name'] == null
        ? null
        : Element.fromJson(json['element_name'] as Map<String, dynamic>),
    valueString: json['valueString'] as String,
    element_valueString: json['element_valueString'] == null
        ? null
        : Element.fromJson(json['element_valueString'] as Map<String, dynamic>),
    valueBoolean: json['valueBoolean'] as bool,
    element_valueBoolean: json['element_valueBoolean'] == null
        ? null
        : Element.fromJson(
            json['element_valueBoolean'] as Map<String, dynamic>),
    valueInteger: json['valueInteger'] as int,
    element_valueInteger: json['element_valueInteger'] == null
        ? null
        : Element.fromJson(
            json['element_valueInteger'] as Map<String, dynamic>),
    valueDecimal: (json['valueDecimal'] as num)?.toDouble(),
    element_valueDecimal: json['element_valueDecimal'] == null
        ? null
        : Element.fromJson(
            json['element_valueDecimal'] as Map<String, dynamic>),
    valueUri: json['valueUri'] as String,
    element_valueUri: json['element_valueUri'] == null
        ? null
        : Element.fromJson(json['element_valueUri'] as Map<String, dynamic>),
    valueCode: json['valueCode'] as String,
    element_valueCode: json['element_valueCode'] == null
        ? null
        : Element.fromJson(json['element_valueCode'] as Map<String, dynamic>),
    valueDateTime: json['valueDateTime'] as String,
    element_valueDateTime: json['element_valueDateTime'] == null
        ? null
        : Element.fromJson(
            json['element_valueDateTime'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ValueSet_ParameterToJson(ValueSet_Parameter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'name': instance.name,
      'element_name': instance.element_name?.toJson(),
      'valueString': instance.valueString,
      'element_valueString': instance.element_valueString?.toJson(),
      'valueBoolean': instance.valueBoolean,
      'element_valueBoolean': instance.element_valueBoolean?.toJson(),
      'valueInteger': instance.valueInteger,
      'element_valueInteger': instance.element_valueInteger?.toJson(),
      'valueDecimal': instance.valueDecimal,
      'element_valueDecimal': instance.element_valueDecimal?.toJson(),
      'valueUri': instance.valueUri,
      'element_valueUri': instance.element_valueUri?.toJson(),
      'valueCode': instance.valueCode,
      'element_valueCode': instance.element_valueCode?.toJson(),
      'valueDateTime': instance.valueDateTime,
      'element_valueDateTime': instance.element_valueDateTime?.toJson(),
    };

ValueSet_Contains _$ValueSet_ContainsFromJson(Map<String, dynamic> json) {
  return ValueSet_Contains(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    system: json['system'] as String,
    element_system: json['element_system'] == null
        ? null
        : Element.fromJson(json['element_system'] as Map<String, dynamic>),
    abstract: json['abstract'] as bool,
    element_abstract: json['element_abstract'] == null
        ? null
        : Element.fromJson(json['element_abstract'] as Map<String, dynamic>),
    inactive: json['inactive'] as bool,
    element_inactive: json['element_inactive'] == null
        ? null
        : Element.fromJson(json['element_inactive'] as Map<String, dynamic>),
    version: json['version'] as String,
    element_version: json['element_version'] == null
        ? null
        : Element.fromJson(json['element_version'] as Map<String, dynamic>),
    code: json['code'] as String,
    element_code: json['element_code'] == null
        ? null
        : Element.fromJson(json['element_code'] as Map<String, dynamic>),
    display: json['display'] as String,
    element_display: json['element_display'] == null
        ? null
        : Element.fromJson(json['element_display'] as Map<String, dynamic>),
    designation: (json['designation'] as List)
        ?.map((e) => e == null
            ? null
            : ValueSet_Designation.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    contains: (json['contains'] as List)
        ?.map((e) => e == null
            ? null
            : ValueSet_Contains.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ValueSet_ContainsToJson(ValueSet_Contains instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'system': instance.system,
      'element_system': instance.element_system?.toJson(),
      'abstract': instance.abstract,
      'element_abstract': instance.element_abstract?.toJson(),
      'inactive': instance.inactive,
      'element_inactive': instance.element_inactive?.toJson(),
      'version': instance.version,
      'element_version': instance.element_version?.toJson(),
      'code': instance.code,
      'element_code': instance.element_code?.toJson(),
      'display': instance.display,
      'element_display': instance.element_display?.toJson(),
      'designation': instance.designation?.map((e) => e?.toJson())?.toList(),
      'contains': instance.contains?.map((e) => e?.toJson())?.toList(),
    };
