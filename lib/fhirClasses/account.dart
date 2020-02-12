import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 56)
class Account {

	static Future<Account> newInstance({
		String id,
		Meta meta,
		String implicitRules,
		Element elementImplicitRules,
		String language,
		Element elementLanguage,
		Narrative text,
		List<dynamic> contained,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<Identifier> identifier,
		String status,
		Element elementStatus,
		CodeableConcept type,
		String name,
		Element elementName,
		List<Reference> subject,
		Period servicePeriod,
		List<Account_Coverage> coverage,
		Reference owner,
		String description,
		Element elementDescription,
		List<Account_Guarantor> guarantor,
		Reference partOf}) async {
	Account newAccount = new Account(
			id: await newId('Account'),
			meta: meta,
			implicitRules: implicitRules,
			elementImplicitRules: elementImplicitRules,
			language: language,
			elementLanguage: elementLanguage,
			text: text,
			contained: contained,
			extension: extension,
			modifierExtension: modifierExtension,
			identifier: identifier,
			status: status,
			elementStatus: elementStatus,
			type: type,
			name: name,
			elementName: elementName,
			subject: subject,
			servicePeriod: servicePeriod,
			coverage: coverage,
			owner: owner,
			description: description,
			elementDescription: elementDescription,
			guarantor: guarantor,
			partOf: partOf);
	var accountBox = await Hive.openBox<Account>('AccountBox');
	accountBox.add(newAccount);
	return newAccount;
}
  @HiveField(0)
  final String resourceType= 'Account';
  @HiveField(1)
  String id;
  @HiveField(2)
  Meta meta;
  @HiveField(3)
  String implicitRules;
  @HiveField(4)
  Element elementImplicitRules;
  @HiveField(5)
  String language;
  @HiveField(6)
  Element elementLanguage;
  @HiveField(7)
  Narrative text;
  @HiveField(8)
  List<dynamic> contained;
  @HiveField(9)
  List<Extension> extension;
  @HiveField(10)
  List<Extension> modifierExtension;
  @HiveField(11)
  List<Identifier> identifier;
  @HiveField(12)
  String status; // <code> enum: active/inactive/entered-in-error/on-hold/unknown;
  @HiveField(13)
  Element elementStatus;
  @HiveField(14)
  CodeableConcept type;
  @HiveField(15)
  String name;
  @HiveField(16)
  Element elementName;
  @HiveField(17)
  List<Reference> subject;
  @HiveField(18)
  Period servicePeriod;
  @HiveField(19)
  List<Account_Coverage> coverage;
  @HiveField(20)
  Reference owner;
  @HiveField(21)
  String description;
  @HiveField(22)
  Element elementDescription;
  @HiveField(23)
  List<Account_Guarantor> guarantor;
  @HiveField(24)
  Reference partOf;

Account(
  {this.id,
    this.meta,
    this.implicitRules,
    this.elementImplicitRules,
    this.language,
    this.elementLanguage,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.elementStatus,
    this.type,
    this.name,
    this.elementName,
    this.subject,
    this.servicePeriod,
    this.coverage,
    this.owner,
    this.description,
    this.elementDescription,
    this.guarantor,
    this.partOf
    });

  factory Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);
  Map<String, dynamic> toJson() => _$AccountToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Account_Coverage {

	static Future<Account_Coverage> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Reference coverage,
		int priority,
		Element elementPriority}) async {
	Account_Coverage newAccount_Coverage = new Account_Coverage(
			id: await newId('Account_Coverage'),
			extension: extension,
			modifierExtension: modifierExtension,
			coverage: coverage,
			priority: priority,
			elementPriority: elementPriority);
	var account_CoverageBox = await Hive.openBox<Account_Coverage>('Account_CoverageBox');
	account_CoverageBox.add(newAccount_Coverage);
	return newAccount_Coverage;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference coverage;
  int priority;
  Element elementPriority;

Account_Coverage(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.coverage,
    this.priority,
    this.elementPriority
    });

  factory Account_Coverage.fromJson(Map<String, dynamic> json) => _$Account_CoverageFromJson(json);
  Map<String, dynamic> toJson() => _$Account_CoverageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Account_Guarantor {

	static Future<Account_Guarantor> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		Reference party,
		bool onHold,
		Element elementOnHold,
		Period period}) async {
	Account_Guarantor newAccount_Guarantor = new Account_Guarantor(
			id: await newId('Account_Guarantor'),
			extension: extension,
			modifierExtension: modifierExtension,
			party: party,
			onHold: onHold,
			elementOnHold: elementOnHold,
			period: period);
	var account_GuarantorBox = await Hive.openBox<Account_Guarantor>('Account_GuarantorBox');
	account_GuarantorBox.add(newAccount_Guarantor);
	return newAccount_Guarantor;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference party;
  bool onHold;
  Element elementOnHold;
  Period period;

Account_Guarantor(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.party,
    this.onHold,
    this.elementOnHold,
    this.period
    });

  factory Account_Guarantor.fromJson(Map<String, dynamic> json) => _$Account_GuarantorFromJson(json);
  Map<String, dynamic> toJson() => _$Account_GuarantorToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AccountAdapter extends TypeAdapter<Account> {
  @override
  final typeId = 56;

  @override
  Account read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Account(
      id: fields[1] as String,
      meta: fields[2] as Meta,
      implicitRules: fields[3] as String,
      elementImplicitRules: fields[4] as Element,
      language: fields[5] as String,
      elementLanguage: fields[6] as Element,
      text: fields[7] as Narrative,
      contained: (fields[8] as List)?.cast<dynamic>(),
      extension: (fields[9] as List)?.cast<Extension>(),
      modifierExtension: (fields[10] as List)?.cast<Extension>(),
      identifier: (fields[11] as List)?.cast<Identifier>(),
      status: fields[12] as String,
      elementStatus: fields[13] as Element,
      type: fields[14] as CodeableConcept,
      name: fields[15] as String,
      elementName: fields[16] as Element,
      subject: (fields[17] as List)?.cast<Reference>(),
      servicePeriod: fields[18] as Period,
      coverage: (fields[19] as List)?.cast<Account_Coverage>(),
      owner: fields[20] as Reference,
      description: fields[21] as String,
      elementDescription: fields[22] as Element,
      guarantor: (fields[23] as List)?.cast<Account_Guarantor>(),
      partOf: fields[24] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, Account obj) {
    writer
      ..writeByte(25)
      ..writeByte(0)
      ..write(obj.resourceType)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.meta)
      ..writeByte(3)
      ..write(obj.implicitRules)
      ..writeByte(4)
      ..write(obj.elementImplicitRules)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.elementLanguage)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.contained)
      ..writeByte(9)
      ..write(obj.extension)
      ..writeByte(10)
      ..write(obj.modifierExtension)
      ..writeByte(11)
      ..write(obj.identifier)
      ..writeByte(12)
      ..write(obj.status)
      ..writeByte(13)
      ..write(obj.elementStatus)
      ..writeByte(14)
      ..write(obj.type)
      ..writeByte(15)
      ..write(obj.name)
      ..writeByte(16)
      ..write(obj.elementName)
      ..writeByte(17)
      ..write(obj.subject)
      ..writeByte(18)
      ..write(obj.servicePeriod)
      ..writeByte(19)
      ..write(obj.coverage)
      ..writeByte(20)
      ..write(obj.owner)
      ..writeByte(21)
      ..write(obj.description)
      ..writeByte(22)
      ..write(obj.elementDescription)
      ..writeByte(23)
      ..write(obj.guarantor)
      ..writeByte(24)
      ..write(obj.partOf);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Account _$AccountFromJson(Map<String, dynamic> json) {
  return Account(
    id: json['id'] as String,
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    implicitRules: json['implicitRules'] as String,
    elementImplicitRules: json['elementImplicitRules'] == null
        ? null
        : Element.fromJson(
            json['elementImplicitRules'] as Map<String, dynamic>),
    language: json['language'] as String,
    elementLanguage: json['elementLanguage'] == null
        ? null
        : Element.fromJson(json['elementLanguage'] as Map<String, dynamic>),
    text: json['text'] == null
        ? null
        : Narrative.fromJson(json['text'] as Map<String, dynamic>),
    contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
        ?.toList(),
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    identifier: (json['identifier'] as List)
        ?.map((e) =>
            e == null ? null : Identifier.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
    elementStatus: json['elementStatus'] == null
        ? null
        : Element.fromJson(json['elementStatus'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    subject: (json['subject'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    servicePeriod: json['servicePeriod'] == null
        ? null
        : Period.fromJson(json['servicePeriod'] as Map<String, dynamic>),
    coverage: (json['coverage'] as List)
        ?.map((e) => e == null
            ? null
            : Account_Coverage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    owner: json['owner'] == null
        ? null
        : Reference.fromJson(json['owner'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    guarantor: (json['guarantor'] as List)
        ?.map((e) => e == null
            ? null
            : Account_Guarantor.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    partOf: json['partOf'] == null
        ? null
        : Reference.fromJson(json['partOf'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'id': instance.id,
      'meta': instance.meta?.toJson(),
      'implicitRules': instance.implicitRules,
      'elementImplicitRules': instance.elementImplicitRules?.toJson(),
      'language': instance.language,
      'elementLanguage': instance.elementLanguage?.toJson(),
      'text': instance.text?.toJson(),
      'contained': instance.contained,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'identifier': instance.identifier?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
      'elementStatus': instance.elementStatus?.toJson(),
      'type': instance.type?.toJson(),
      'name': instance.name,
      'elementName': instance.elementName?.toJson(),
      'subject': instance.subject?.map((e) => e?.toJson())?.toList(),
      'servicePeriod': instance.servicePeriod?.toJson(),
      'coverage': instance.coverage?.map((e) => e?.toJson())?.toList(),
      'owner': instance.owner?.toJson(),
      'description': instance.description,
      'elementDescription': instance.elementDescription?.toJson(),
      'guarantor': instance.guarantor?.map((e) => e?.toJson())?.toList(),
      'partOf': instance.partOf?.toJson(),
    };

Account_Coverage _$Account_CoverageFromJson(Map<String, dynamic> json) {
  return Account_Coverage(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    coverage: json['coverage'] == null
        ? null
        : Reference.fromJson(json['coverage'] as Map<String, dynamic>),
    priority: json['priority'] as int,
    elementPriority: json['elementPriority'] == null
        ? null
        : Element.fromJson(json['elementPriority'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Account_CoverageToJson(Account_Coverage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'coverage': instance.coverage?.toJson(),
      'priority': instance.priority,
      'elementPriority': instance.elementPriority?.toJson(),
    };

Account_Guarantor _$Account_GuarantorFromJson(Map<String, dynamic> json) {
  return Account_Guarantor(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    party: json['party'] == null
        ? null
        : Reference.fromJson(json['party'] as Map<String, dynamic>),
    onHold: json['onHold'] as bool,
    elementOnHold: json['elementOnHold'] == null
        ? null
        : Element.fromJson(json['elementOnHold'] as Map<String, dynamic>),
    period: json['period'] == null
        ? null
        : Period.fromJson(json['period'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Account_GuarantorToJson(Account_Guarantor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'party': instance.party?.toJson(),
      'onHold': instance.onHold,
      'elementOnHold': instance.elementOnHold?.toJson(),
      'period': instance.period?.toJson(),
    };
