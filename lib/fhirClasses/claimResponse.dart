import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fhir/fhirClasses/classes.dart';

import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/address.dart';
import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
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
@HiveType(typeId: 75)
class ClaimResponse {

	static Future<ClaimResponse> newInstance({
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
		CodeableConcept subType,
		String use,
		Element elementUse,
		Reference patient,
		DateTime created,
		Element elementCreated,
		Reference insurer,
		Reference requestor,
		Reference request,
		String outcome,
		Element elementOutcome,
		String disposition,
		Element elementDisposition,
		String preAuthRef,
		Element elementPreAuthRef,
		Period preAuthPeriod,
		CodeableConcept payeeType,
		List<ClaimResponse_Item> item,
		List<ClaimResponse_AddItem> addItem,
		List<ClaimResponse_Adjudication> adjudication,
		List<ClaimResponse_Total> total,
		ClaimResponse_Payment payment,
		CodeableConcept fundsReserve,
		CodeableConcept formCode,
		Attachment form,
		List<ClaimResponse_ProcessNote> processNote,
		List<Reference> communicationRequest,
		List<ClaimResponse_Insurance> insurance,
		List<ClaimResponse_Error> error}) async {
	ClaimResponse newClaimResponse = new ClaimResponse(
			id: await newId('ClaimResponse'),
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
			subType: subType,
			use: use,
			elementUse: elementUse,
			patient: patient,
			created: created,
			elementCreated: elementCreated,
			insurer: insurer,
			requestor: requestor,
			request: request,
			outcome: outcome,
			elementOutcome: elementOutcome,
			disposition: disposition,
			elementDisposition: elementDisposition,
			preAuthRef: preAuthRef,
			elementPreAuthRef: elementPreAuthRef,
			preAuthPeriod: preAuthPeriod,
			payeeType: payeeType,
			item: item,
			addItem: addItem,
			adjudication: adjudication,
			total: total,
			payment: payment,
			fundsReserve: fundsReserve,
			formCode: formCode,
			form: form,
			processNote: processNote,
			communicationRequest: communicationRequest,
			insurance: insurance,
			error: error);
	var claimResponseBox = await Hive.openBox<ClaimResponse>('ClaimResponseBox');
	claimResponseBox.add(newClaimResponse);
	return newClaimResponse;
}
  @HiveField(0)
  final String resourceType= 'ClaimResponse';
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
  String status;
  @HiveField(13)
  Element elementStatus;
  @HiveField(14)
  CodeableConcept type;
  @HiveField(15)
  CodeableConcept subType;
  @HiveField(16)
  String use;
  @HiveField(17)
  Element elementUse;
  @HiveField(18)
  Reference patient;
  @HiveField(19)
  DateTime created;
  @HiveField(20)
  Element elementCreated;
  @HiveField(21)
  Reference insurer;
  @HiveField(22)
  Reference requestor;
  @HiveField(23)
  Reference request;
  @HiveField(24)
  String outcome;
  @HiveField(25)
  Element elementOutcome;
  @HiveField(26)
  String disposition;
  @HiveField(27)
  Element elementDisposition;
  @HiveField(28)
  String preAuthRef;
  @HiveField(29)
  Element elementPreAuthRef;
  @HiveField(30)
  Period preAuthPeriod;
  @HiveField(31)
  CodeableConcept payeeType;
  @HiveField(32)
  List<ClaimResponse_Item> item;
  @HiveField(33)
  List<ClaimResponse_AddItem> addItem;
  @HiveField(34)
  List<ClaimResponse_Adjudication> adjudication;
  @HiveField(35)
  List<ClaimResponse_Total> total;
  @HiveField(36)
  ClaimResponse_Payment payment;
  @HiveField(37)
  CodeableConcept fundsReserve;
  @HiveField(38)
  CodeableConcept formCode;
  @HiveField(39)
  Attachment form;
  @HiveField(40)
  List<ClaimResponse_ProcessNote> processNote;
  @HiveField(41)
  List<Reference> communicationRequest;
  @HiveField(42)
  List<ClaimResponse_Insurance> insurance;
  @HiveField(43)
  List<ClaimResponse_Error> error;

ClaimResponse(
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
    @required this.type,
    this.subType,
    this.use,
    this.elementUse,
    @required this.patient,
    this.created,
    this.elementCreated,
    @required this.insurer,
    this.requestor,
    this.request,
    this.outcome,
    this.elementOutcome,
    this.disposition,
    this.elementDisposition,
    this.preAuthRef,
    this.elementPreAuthRef,
    this.preAuthPeriod,
    this.payeeType,
    this.item,
    this.addItem,
    this.adjudication,
    this.total,
    this.payment,
    this.fundsReserve,
    this.formCode,
    this.form,
    this.processNote,
    this.communicationRequest,
    this.insurance,
    this.error
    });

  factory ClaimResponse.fromJson(Map<String, dynamic> json) => _$ClaimResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Item {

	static Future<ClaimResponse_Item> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		int itemSequence,
		Element elementItemSequence,
		List<int> noteNumber,
		List<Element> elementNoteNumber,
		List<ClaimResponse_Adjudication> adjudication,
		List<ClaimResponse_Detail> detail}) async {
	ClaimResponse_Item newClaimResponse_Item = new ClaimResponse_Item(
			id: await newId('ClaimResponse_Item'),
			extension: extension,
			modifierExtension: modifierExtension,
			itemSequence: itemSequence,
			elementItemSequence: elementItemSequence,
			noteNumber: noteNumber,
			elementNoteNumber: elementNoteNumber,
			adjudication: adjudication,
			detail: detail);
	var claimResponse_ItemBox = await Hive.openBox<ClaimResponse_Item>('ClaimResponse_ItemBox');
	claimResponse_ItemBox.add(newClaimResponse_Item);
	return newClaimResponse_Item;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int itemSequence;
  Element elementItemSequence;
  List<int> noteNumber;
  List<Element> elementNoteNumber;
  List<ClaimResponse_Adjudication> adjudication;
  List<ClaimResponse_Detail> detail;

ClaimResponse_Item(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.itemSequence,
    this.elementItemSequence,
    this.noteNumber,
    this.elementNoteNumber,
    @required this.adjudication,
    this.detail
    });

  factory ClaimResponse_Item.fromJson(Map<String, dynamic> json) => _$ClaimResponse_ItemFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_ItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Adjudication {

	static Future<ClaimResponse_Adjudication> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept category,
		CodeableConcept reason,
		Money amount,
		double value,
		Element elementValue}) async {
	ClaimResponse_Adjudication newClaimResponse_Adjudication = new ClaimResponse_Adjudication(
			id: await newId('ClaimResponse_Adjudication'),
			extension: extension,
			modifierExtension: modifierExtension,
			category: category,
			reason: reason,
			amount: amount,
			value: value,
			elementValue: elementValue);
	var claimResponse_AdjudicationBox = await Hive.openBox<ClaimResponse_Adjudication>('ClaimResponse_AdjudicationBox');
	claimResponse_AdjudicationBox.add(newClaimResponse_Adjudication);
	return newClaimResponse_Adjudication;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept category;
  CodeableConcept reason;
  Money amount;
  double value;
  Element elementValue;

ClaimResponse_Adjudication(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.category,
    this.reason,
    this.amount,
    this.value,
    this.elementValue
    });

  factory ClaimResponse_Adjudication.fromJson(Map<String, dynamic> json) => _$ClaimResponse_AdjudicationFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_AdjudicationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Detail {

	static Future<ClaimResponse_Detail> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		int detailSequence,
		Element elementDetailSequence,
		List<int> noteNumber,
		List<Element> elementNoteNumber,
		List<ClaimResponse_Adjudication> adjudication,
		List<ClaimResponse_SubDetail> subDetail}) async {
	ClaimResponse_Detail newClaimResponse_Detail = new ClaimResponse_Detail(
			id: await newId('ClaimResponse_Detail'),
			extension: extension,
			modifierExtension: modifierExtension,
			detailSequence: detailSequence,
			elementDetailSequence: elementDetailSequence,
			noteNumber: noteNumber,
			elementNoteNumber: elementNoteNumber,
			adjudication: adjudication,
			subDetail: subDetail);
	var claimResponse_DetailBox = await Hive.openBox<ClaimResponse_Detail>('ClaimResponse_DetailBox');
	claimResponse_DetailBox.add(newClaimResponse_Detail);
	return newClaimResponse_Detail;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int detailSequence;
  Element elementDetailSequence;
  List<int> noteNumber;
  List<Element> elementNoteNumber;
  List<ClaimResponse_Adjudication> adjudication;
  List<ClaimResponse_SubDetail> subDetail;

ClaimResponse_Detail(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.detailSequence,
    this.elementDetailSequence,
    this.noteNumber,
    this.elementNoteNumber,
    @required this.adjudication,
    this.subDetail
    });

  factory ClaimResponse_Detail.fromJson(Map<String, dynamic> json) => _$ClaimResponse_DetailFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_DetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_SubDetail {

	static Future<ClaimResponse_SubDetail> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		int subDetailSequence,
		Element elementSubDetailSequence,
		List<int> noteNumber,
		List<Element> elementNoteNumber,
		List<ClaimResponse_Adjudication> adjudication}) async {
	ClaimResponse_SubDetail newClaimResponse_SubDetail = new ClaimResponse_SubDetail(
			id: await newId('ClaimResponse_SubDetail'),
			extension: extension,
			modifierExtension: modifierExtension,
			subDetailSequence: subDetailSequence,
			elementSubDetailSequence: elementSubDetailSequence,
			noteNumber: noteNumber,
			elementNoteNumber: elementNoteNumber,
			adjudication: adjudication);
	var claimResponse_SubDetailBox = await Hive.openBox<ClaimResponse_SubDetail>('ClaimResponse_SubDetailBox');
	claimResponse_SubDetailBox.add(newClaimResponse_SubDetail);
	return newClaimResponse_SubDetail;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int subDetailSequence;
  Element elementSubDetailSequence;
  List<int> noteNumber;
  List<Element> elementNoteNumber;
  List<ClaimResponse_Adjudication> adjudication;

ClaimResponse_SubDetail(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.subDetailSequence,
    this.elementSubDetailSequence,
    this.noteNumber,
    this.elementNoteNumber,
    this.adjudication
    });

  factory ClaimResponse_SubDetail.fromJson(Map<String, dynamic> json) => _$ClaimResponse_SubDetailFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_SubDetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_AddItem {

	static Future<ClaimResponse_AddItem> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		List<int> itemSequence,
		List<Element> elementItemSequence,
		List<int> detailSequence,
		List<Element> elementDetailSequence,
		List<int> subdetailSequence,
		List<Element> elementSubdetailSequence,
		List<Reference> provider,
		CodeableConcept productOrService,
		List<CodeableConcept> modifier,
		List<CodeableConcept> programCode,
		String servicedDate,
		Element elementServicedDate,
		Period servicedPeriod,
		CodeableConcept locationCodeableConcept,
		Address locationAddress,
		Reference locationReference,
		Quantity quantity,
		Money unitPrice,
		double factor,
		Element elementFactor,
		Money net,
		CodeableConcept bodySite,
		List<CodeableConcept> subSite,
		List<int> noteNumber,
		List<Element> elementNoteNumber,
		List<ClaimResponse_Adjudication> adjudication,
		List<ClaimResponse_Detail1> detail}) async {
	ClaimResponse_AddItem newClaimResponse_AddItem = new ClaimResponse_AddItem(
			id: await newId('ClaimResponse_AddItem'),
			extension: extension,
			modifierExtension: modifierExtension,
			itemSequence: itemSequence,
			elementItemSequence: elementItemSequence,
			detailSequence: detailSequence,
			elementDetailSequence: elementDetailSequence,
			subdetailSequence: subdetailSequence,
			elementSubdetailSequence: elementSubdetailSequence,
			provider: provider,
			productOrService: productOrService,
			modifier: modifier,
			programCode: programCode,
			servicedDate: servicedDate,
			elementServicedDate: elementServicedDate,
			servicedPeriod: servicedPeriod,
			locationCodeableConcept: locationCodeableConcept,
			locationAddress: locationAddress,
			locationReference: locationReference,
			quantity: quantity,
			unitPrice: unitPrice,
			factor: factor,
			elementFactor: elementFactor,
			net: net,
			bodySite: bodySite,
			subSite: subSite,
			noteNumber: noteNumber,
			elementNoteNumber: elementNoteNumber,
			adjudication: adjudication,
			detail: detail);
	var claimResponse_AddItemBox = await Hive.openBox<ClaimResponse_AddItem>('ClaimResponse_AddItemBox');
	claimResponse_AddItemBox.add(newClaimResponse_AddItem);
	return newClaimResponse_AddItem;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<int> itemSequence;
  List<Element> elementItemSequence;
  List<int> detailSequence;
  List<Element> elementDetailSequence;
  List<int> subdetailSequence;
  List<Element> elementSubdetailSequence;
  List<Reference> provider;
  CodeableConcept productOrService;
  List<CodeableConcept> modifier;
  List<CodeableConcept> programCode;
  String servicedDate; //  pattern: ^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$
  Element elementServicedDate;
  Period servicedPeriod;
  CodeableConcept locationCodeableConcept;
  Address locationAddress;
  Reference locationReference;
  Quantity quantity;
  Money unitPrice;
  double factor;
  Element elementFactor;
  Money net;
  CodeableConcept bodySite;
  List<CodeableConcept> subSite;
  List<int> noteNumber;
  List<Element> elementNoteNumber;
  List<ClaimResponse_Adjudication> adjudication;
  List<ClaimResponse_Detail1> detail;

ClaimResponse_AddItem(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.itemSequence,
    this.elementItemSequence,
    this.detailSequence,
    this.elementDetailSequence,
    this.subdetailSequence,
    this.elementSubdetailSequence,
    this.provider,
    @required this.productOrService,
    this.modifier,
    this.programCode,
    this.servicedDate,
    this.elementServicedDate,
    this.servicedPeriod,
    this.locationCodeableConcept,
    this.locationAddress,
    this.locationReference,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.elementFactor,
    this.net,
    this.bodySite,
    this.subSite,
    this.noteNumber,
    this.elementNoteNumber,
    @required this.adjudication,
    this.detail
    });

  factory ClaimResponse_AddItem.fromJson(Map<String, dynamic> json) => _$ClaimResponse_AddItemFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_AddItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Detail1 {

	static Future<ClaimResponse_Detail1> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept productOrService,
		List<CodeableConcept> modifier,
		Quantity quantity,
		Money unitPrice,
		double factor,
		Element elementFactor,
		Money net,
		List<int> noteNumber,
		List<Element> elementNoteNumber,
		List<ClaimResponse_Adjudication> adjudication,
		List<ClaimResponse_SubDetail1> subDetail}) async {
	ClaimResponse_Detail1 newClaimResponse_Detail1 = new ClaimResponse_Detail1(
			id: await newId('ClaimResponse_Detail1'),
			extension: extension,
			modifierExtension: modifierExtension,
			productOrService: productOrService,
			modifier: modifier,
			quantity: quantity,
			unitPrice: unitPrice,
			factor: factor,
			elementFactor: elementFactor,
			net: net,
			noteNumber: noteNumber,
			elementNoteNumber: elementNoteNumber,
			adjudication: adjudication,
			subDetail: subDetail);
	var claimResponse_Detail1Box = await Hive.openBox<ClaimResponse_Detail1>('ClaimResponse_Detail1Box');
	claimResponse_Detail1Box.add(newClaimResponse_Detail1);
	return newClaimResponse_Detail1;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept productOrService;
  List<CodeableConcept> modifier;
  Quantity quantity;
  Money unitPrice;
  double factor;
  Element elementFactor;
  Money net;
  List<int> noteNumber;
  List<Element> elementNoteNumber;
  List<ClaimResponse_Adjudication> adjudication;
  List<ClaimResponse_SubDetail1> subDetail;

ClaimResponse_Detail1(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.productOrService,
    this.modifier,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.elementFactor,
    this.net,
    this.noteNumber,
    this.elementNoteNumber,
    @required this.adjudication,
    this.subDetail
    });

  factory ClaimResponse_Detail1.fromJson(Map<String, dynamic> json) => _$ClaimResponse_Detail1FromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_Detail1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_SubDetail1 {

	static Future<ClaimResponse_SubDetail1> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept productOrService,
		List<CodeableConcept> modifier,
		Quantity quantity,
		Money unitPrice,
		double factor,
		Element elementFactor,
		Money net,
		List<int> noteNumber,
		List<Element> elementNoteNumber,
		List<ClaimResponse_Adjudication> adjudication}) async {
	ClaimResponse_SubDetail1 newClaimResponse_SubDetail1 = new ClaimResponse_SubDetail1(
			id: await newId('ClaimResponse_SubDetail1'),
			extension: extension,
			modifierExtension: modifierExtension,
			productOrService: productOrService,
			modifier: modifier,
			quantity: quantity,
			unitPrice: unitPrice,
			factor: factor,
			elementFactor: elementFactor,
			net: net,
			noteNumber: noteNumber,
			elementNoteNumber: elementNoteNumber,
			adjudication: adjudication);
	var claimResponse_SubDetail1Box = await Hive.openBox<ClaimResponse_SubDetail1>('ClaimResponse_SubDetail1Box');
	claimResponse_SubDetail1Box.add(newClaimResponse_SubDetail1);
	return newClaimResponse_SubDetail1;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept productOrService;
  List<CodeableConcept> modifier;
  Quantity quantity;
  Money unitPrice;
  double factor;
  Element elementFactor;
  Money net;
  List<int> noteNumber;
  List<Element> elementNoteNumber;
  List<ClaimResponse_Adjudication> adjudication;

ClaimResponse_SubDetail1(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.productOrService,
    this.modifier,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.elementFactor,
    this.net,
    this.noteNumber,
    this.elementNoteNumber,
    @required this.adjudication
    });

  factory ClaimResponse_SubDetail1.fromJson(Map<String, dynamic> json) => _$ClaimResponse_SubDetail1FromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_SubDetail1ToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Total {

	static Future<ClaimResponse_Total> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept category,
		Money amount}) async {
	ClaimResponse_Total newClaimResponse_Total = new ClaimResponse_Total(
			id: await newId('ClaimResponse_Total'),
			extension: extension,
			modifierExtension: modifierExtension,
			category: category,
			amount: amount);
	var claimResponse_TotalBox = await Hive.openBox<ClaimResponse_Total>('ClaimResponse_TotalBox');
	claimResponse_TotalBox.add(newClaimResponse_Total);
	return newClaimResponse_Total;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept category;
  Money amount;

ClaimResponse_Total(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.category,
    @required this.amount
    });

  factory ClaimResponse_Total.fromJson(Map<String, dynamic> json) => _$ClaimResponse_TotalFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_TotalToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Payment {

	static Future<ClaimResponse_Payment> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		CodeableConcept type,
		Money adjustment,
		CodeableConcept adjustmentReason,
		String date,
		Element elementDate,
		Money amount,
		Identifier identifier}) async {
	ClaimResponse_Payment newClaimResponse_Payment = new ClaimResponse_Payment(
			id: await newId('ClaimResponse_Payment'),
			extension: extension,
			modifierExtension: modifierExtension,
			type: type,
			adjustment: adjustment,
			adjustmentReason: adjustmentReason,
			date: date,
			elementDate: elementDate,
			amount: amount,
			identifier: identifier);
	var claimResponse_PaymentBox = await Hive.openBox<ClaimResponse_Payment>('ClaimResponse_PaymentBox');
	claimResponse_PaymentBox.add(newClaimResponse_Payment);
	return newClaimResponse_Payment;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  Money adjustment;
  CodeableConcept adjustmentReason;
  String date;
  Element elementDate;
  Money amount;
  Identifier identifier;

ClaimResponse_Payment(
  {this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    this.adjustment,
    this.adjustmentReason,
    this.date,
    this.elementDate,
    @required this.amount,
    this.identifier
    });

  factory ClaimResponse_Payment.fromJson(Map<String, dynamic> json) => _$ClaimResponse_PaymentFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_PaymentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_ProcessNote {

	static Future<ClaimResponse_ProcessNote> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		int number,
		Element elementNumber,
		String type,
		Element elementType,
		String text,
		Element elementText,
		CodeableConcept language}) async {
	ClaimResponse_ProcessNote newClaimResponse_ProcessNote = new ClaimResponse_ProcessNote(
			id: await newId('ClaimResponse_ProcessNote'),
			extension: extension,
			modifierExtension: modifierExtension,
			number: number,
			elementNumber: elementNumber,
			type: type,
			elementType: elementType,
			text: text,
			elementText: elementText,
			language: language);
	var claimResponse_ProcessNoteBox = await Hive.openBox<ClaimResponse_ProcessNote>('ClaimResponse_ProcessNoteBox');
	claimResponse_ProcessNoteBox.add(newClaimResponse_ProcessNote);
	return newClaimResponse_ProcessNote;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int number;
  Element elementNumber;
  String type; // <code> enum: display/print/printoper;
  Element elementType;
  String text;
  Element elementText;
  CodeableConcept language;

ClaimResponse_ProcessNote(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.number,
    this.elementNumber,
    this.type,
    this.elementType,
    this.text,
    this.elementText,
    this.language
    });

  factory ClaimResponse_ProcessNote.fromJson(Map<String, dynamic> json) => _$ClaimResponse_ProcessNoteFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_ProcessNoteToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Insurance {

	static Future<ClaimResponse_Insurance> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		int sequence,
		Element elementSequence,
		bool focal,
		Element elementFocal,
		Reference coverage,
		String businessArrangement,
		Element elementBusinessArrangement,
		Reference claimResponse}) async {
	ClaimResponse_Insurance newClaimResponse_Insurance = new ClaimResponse_Insurance(
			id: await newId('ClaimResponse_Insurance'),
			extension: extension,
			modifierExtension: modifierExtension,
			sequence: sequence,
			elementSequence: elementSequence,
			focal: focal,
			elementFocal: elementFocal,
			coverage: coverage,
			businessArrangement: businessArrangement,
			elementBusinessArrangement: elementBusinessArrangement,
			claimResponse: claimResponse);
	var claimResponse_InsuranceBox = await Hive.openBox<ClaimResponse_Insurance>('ClaimResponse_InsuranceBox');
	claimResponse_InsuranceBox.add(newClaimResponse_Insurance);
	return newClaimResponse_Insurance;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int sequence;
  Element elementSequence;
  bool focal;
  Element elementFocal;
  Reference coverage;
  String businessArrangement;
  Element elementBusinessArrangement;
  Reference claimResponse;

ClaimResponse_Insurance(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.elementSequence,
    this.focal,
    this.elementFocal,
    @required this.coverage,
    this.businessArrangement,
    this.elementBusinessArrangement,
    this.claimResponse
    });

  factory ClaimResponse_Insurance.fromJson(Map<String, dynamic> json) => _$ClaimResponse_InsuranceFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_InsuranceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ClaimResponse_Error {

	static Future<ClaimResponse_Error> newInstance({
		String id,
		List<Extension> extension,
		List<Extension> modifierExtension,
		int itemSequence,
		Element elementItemSequence,
		int detailSequence,
		Element elementDetailSequence,
		int subDetailSequence,
		Element elementSubDetailSequence,
		CodeableConcept code}) async {
	ClaimResponse_Error newClaimResponse_Error = new ClaimResponse_Error(
			id: await newId('ClaimResponse_Error'),
			extension: extension,
			modifierExtension: modifierExtension,
			itemSequence: itemSequence,
			elementItemSequence: elementItemSequence,
			detailSequence: detailSequence,
			elementDetailSequence: elementDetailSequence,
			subDetailSequence: subDetailSequence,
			elementSubDetailSequence: elementSubDetailSequence,
			code: code);
	var claimResponse_ErrorBox = await Hive.openBox<ClaimResponse_Error>('ClaimResponse_ErrorBox');
	claimResponse_ErrorBox.add(newClaimResponse_Error);
	return newClaimResponse_Error;
}
  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int itemSequence;
  Element elementItemSequence;
  int detailSequence;
  Element elementDetailSequence;
  int subDetailSequence;
  Element elementSubDetailSequence;
  CodeableConcept code;

ClaimResponse_Error(
  {this.id,
    this.extension,
    this.modifierExtension,
    this.itemSequence,
    this.elementItemSequence,
    this.detailSequence,
    this.elementDetailSequence,
    this.subDetailSequence,
    this.elementSubDetailSequence,
    @required this.code
    });

  factory ClaimResponse_Error.fromJson(Map<String, dynamic> json) => _$ClaimResponse_ErrorFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_ErrorToJson(this);
}


// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ClaimResponseAdapter extends TypeAdapter<ClaimResponse> {
  @override
  final typeId = 75;

  @override
  ClaimResponse read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClaimResponse(
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
      subType: fields[15] as CodeableConcept,
      use: fields[16] as String,
      elementUse: fields[17] as Element,
      patient: fields[18] as Reference,
      created: fields[19] as DateTime,
      elementCreated: fields[20] as Element,
      insurer: fields[21] as Reference,
      requestor: fields[22] as Reference,
      request: fields[23] as Reference,
      outcome: fields[24] as String,
      elementOutcome: fields[25] as Element,
      disposition: fields[26] as String,
      elementDisposition: fields[27] as Element,
      preAuthRef: fields[28] as String,
      elementPreAuthRef: fields[29] as Element,
      preAuthPeriod: fields[30] as Period,
      payeeType: fields[31] as CodeableConcept,
      item: (fields[32] as List)?.cast<ClaimResponse_Item>(),
      addItem: (fields[33] as List)?.cast<ClaimResponse_AddItem>(),
      adjudication: (fields[34] as List)?.cast<ClaimResponse_Adjudication>(),
      total: (fields[35] as List)?.cast<ClaimResponse_Total>(),
      payment: fields[36] as ClaimResponse_Payment,
      fundsReserve: fields[37] as CodeableConcept,
      formCode: fields[38] as CodeableConcept,
      form: fields[39] as Attachment,
      processNote: (fields[40] as List)?.cast<ClaimResponse_ProcessNote>(),
      communicationRequest: (fields[41] as List)?.cast<Reference>(),
      insurance: (fields[42] as List)?.cast<ClaimResponse_Insurance>(),
      error: (fields[43] as List)?.cast<ClaimResponse_Error>(),
    );
  }

  @override
  void write(BinaryWriter writer, ClaimResponse obj) {
    writer
      ..writeByte(44)
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
      ..write(obj.subType)
      ..writeByte(16)
      ..write(obj.use)
      ..writeByte(17)
      ..write(obj.elementUse)
      ..writeByte(18)
      ..write(obj.patient)
      ..writeByte(19)
      ..write(obj.created)
      ..writeByte(20)
      ..write(obj.elementCreated)
      ..writeByte(21)
      ..write(obj.insurer)
      ..writeByte(22)
      ..write(obj.requestor)
      ..writeByte(23)
      ..write(obj.request)
      ..writeByte(24)
      ..write(obj.outcome)
      ..writeByte(25)
      ..write(obj.elementOutcome)
      ..writeByte(26)
      ..write(obj.disposition)
      ..writeByte(27)
      ..write(obj.elementDisposition)
      ..writeByte(28)
      ..write(obj.preAuthRef)
      ..writeByte(29)
      ..write(obj.elementPreAuthRef)
      ..writeByte(30)
      ..write(obj.preAuthPeriod)
      ..writeByte(31)
      ..write(obj.payeeType)
      ..writeByte(32)
      ..write(obj.item)
      ..writeByte(33)
      ..write(obj.addItem)
      ..writeByte(34)
      ..write(obj.adjudication)
      ..writeByte(35)
      ..write(obj.total)
      ..writeByte(36)
      ..write(obj.payment)
      ..writeByte(37)
      ..write(obj.fundsReserve)
      ..writeByte(38)
      ..write(obj.formCode)
      ..writeByte(39)
      ..write(obj.form)
      ..writeByte(40)
      ..write(obj.processNote)
      ..writeByte(41)
      ..write(obj.communicationRequest)
      ..writeByte(42)
      ..write(obj.insurance)
      ..writeByte(43)
      ..write(obj.error);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClaimResponse _$ClaimResponseFromJson(Map<String, dynamic> json) {
  return ClaimResponse(
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
    subType: json['subType'] == null
        ? null
        : CodeableConcept.fromJson(json['subType'] as Map<String, dynamic>),
    use: json['use'] as String,
    elementUse: json['elementUse'] == null
        ? null
        : Element.fromJson(json['elementUse'] as Map<String, dynamic>),
    patient: json['patient'] == null
        ? null
        : Reference.fromJson(json['patient'] as Map<String, dynamic>),
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    elementCreated: json['elementCreated'] == null
        ? null
        : Element.fromJson(json['elementCreated'] as Map<String, dynamic>),
    insurer: json['insurer'] == null
        ? null
        : Reference.fromJson(json['insurer'] as Map<String, dynamic>),
    requestor: json['requestor'] == null
        ? null
        : Reference.fromJson(json['requestor'] as Map<String, dynamic>),
    request: json['request'] == null
        ? null
        : Reference.fromJson(json['request'] as Map<String, dynamic>),
    outcome: json['outcome'] as String,
    elementOutcome: json['elementOutcome'] == null
        ? null
        : Element.fromJson(json['elementOutcome'] as Map<String, dynamic>),
    disposition: json['disposition'] as String,
    elementDisposition: json['elementDisposition'] == null
        ? null
        : Element.fromJson(json['elementDisposition'] as Map<String, dynamic>),
    preAuthRef: json['preAuthRef'] as String,
    elementPreAuthRef: json['elementPreAuthRef'] == null
        ? null
        : Element.fromJson(json['elementPreAuthRef'] as Map<String, dynamic>),
    preAuthPeriod: json['preAuthPeriod'] == null
        ? null
        : Period.fromJson(json['preAuthPeriod'] as Map<String, dynamic>),
    payeeType: json['payeeType'] == null
        ? null
        : CodeableConcept.fromJson(json['payeeType'] as Map<String, dynamic>),
    item: (json['item'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_Item.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    addItem: (json['addItem'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_AddItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    adjudication: (json['adjudication'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_Adjudication.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    total: (json['total'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_Total.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    payment: json['payment'] == null
        ? null
        : ClaimResponse_Payment.fromJson(
            json['payment'] as Map<String, dynamic>),
    fundsReserve: json['fundsReserve'] == null
        ? null
        : CodeableConcept.fromJson(
            json['fundsReserve'] as Map<String, dynamic>),
    formCode: json['formCode'] == null
        ? null
        : CodeableConcept.fromJson(json['formCode'] as Map<String, dynamic>),
    form: json['form'] == null
        ? null
        : Attachment.fromJson(json['form'] as Map<String, dynamic>),
    processNote: (json['processNote'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_ProcessNote.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    communicationRequest: (json['communicationRequest'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    insurance: (json['insurance'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_Insurance.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    error: (json['error'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_Error.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ClaimResponseToJson(ClaimResponse instance) =>
    <String, dynamic>{
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
      'subType': instance.subType?.toJson(),
      'use': instance.use,
      'elementUse': instance.elementUse?.toJson(),
      'patient': instance.patient?.toJson(),
      'created': instance.created?.toIso8601String(),
      'elementCreated': instance.elementCreated?.toJson(),
      'insurer': instance.insurer?.toJson(),
      'requestor': instance.requestor?.toJson(),
      'request': instance.request?.toJson(),
      'outcome': instance.outcome,
      'elementOutcome': instance.elementOutcome?.toJson(),
      'disposition': instance.disposition,
      'elementDisposition': instance.elementDisposition?.toJson(),
      'preAuthRef': instance.preAuthRef,
      'elementPreAuthRef': instance.elementPreAuthRef?.toJson(),
      'preAuthPeriod': instance.preAuthPeriod?.toJson(),
      'payeeType': instance.payeeType?.toJson(),
      'item': instance.item?.map((e) => e?.toJson())?.toList(),
      'addItem': instance.addItem?.map((e) => e?.toJson())?.toList(),
      'adjudication': instance.adjudication?.map((e) => e?.toJson())?.toList(),
      'total': instance.total?.map((e) => e?.toJson())?.toList(),
      'payment': instance.payment?.toJson(),
      'fundsReserve': instance.fundsReserve?.toJson(),
      'formCode': instance.formCode?.toJson(),
      'form': instance.form?.toJson(),
      'processNote': instance.processNote?.map((e) => e?.toJson())?.toList(),
      'communicationRequest':
          instance.communicationRequest?.map((e) => e?.toJson())?.toList(),
      'insurance': instance.insurance?.map((e) => e?.toJson())?.toList(),
      'error': instance.error?.map((e) => e?.toJson())?.toList(),
    };

ClaimResponse_Item _$ClaimResponse_ItemFromJson(Map<String, dynamic> json) {
  return ClaimResponse_Item(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    itemSequence: json['itemSequence'] as int,
    elementItemSequence: json['elementItemSequence'] == null
        ? null
        : Element.fromJson(json['elementItemSequence'] as Map<String, dynamic>),
    noteNumber: (json['noteNumber'] as List)?.map((e) => e as int)?.toList(),
    elementNoteNumber: (json['elementNoteNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    adjudication: (json['adjudication'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_Adjudication.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    detail: (json['detail'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_Detail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ClaimResponse_ItemToJson(ClaimResponse_Item instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'itemSequence': instance.itemSequence,
      'elementItemSequence': instance.elementItemSequence?.toJson(),
      'noteNumber': instance.noteNumber,
      'elementNoteNumber':
          instance.elementNoteNumber?.map((e) => e?.toJson())?.toList(),
      'adjudication': instance.adjudication?.map((e) => e?.toJson())?.toList(),
      'detail': instance.detail?.map((e) => e?.toJson())?.toList(),
    };

ClaimResponse_Adjudication _$ClaimResponse_AdjudicationFromJson(
    Map<String, dynamic> json) {
  return ClaimResponse_Adjudication(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    category: json['category'] == null
        ? null
        : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
    reason: json['reason'] == null
        ? null
        : CodeableConcept.fromJson(json['reason'] as Map<String, dynamic>),
    amount: json['amount'] == null
        ? null
        : Money.fromJson(json['amount'] as Map<String, dynamic>),
    value: (json['value'] as num)?.toDouble(),
    elementValue: json['elementValue'] == null
        ? null
        : Element.fromJson(json['elementValue'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ClaimResponse_AdjudicationToJson(
        ClaimResponse_Adjudication instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'category': instance.category?.toJson(),
      'reason': instance.reason?.toJson(),
      'amount': instance.amount?.toJson(),
      'value': instance.value,
      'elementValue': instance.elementValue?.toJson(),
    };

ClaimResponse_Detail _$ClaimResponse_DetailFromJson(Map<String, dynamic> json) {
  return ClaimResponse_Detail(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    detailSequence: json['detailSequence'] as int,
    elementDetailSequence: json['elementDetailSequence'] == null
        ? null
        : Element.fromJson(
            json['elementDetailSequence'] as Map<String, dynamic>),
    noteNumber: (json['noteNumber'] as List)?.map((e) => e as int)?.toList(),
    elementNoteNumber: (json['elementNoteNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    adjudication: (json['adjudication'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_Adjudication.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subDetail: (json['subDetail'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_SubDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ClaimResponse_DetailToJson(
        ClaimResponse_Detail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'detailSequence': instance.detailSequence,
      'elementDetailSequence': instance.elementDetailSequence?.toJson(),
      'noteNumber': instance.noteNumber,
      'elementNoteNumber':
          instance.elementNoteNumber?.map((e) => e?.toJson())?.toList(),
      'adjudication': instance.adjudication?.map((e) => e?.toJson())?.toList(),
      'subDetail': instance.subDetail?.map((e) => e?.toJson())?.toList(),
    };

ClaimResponse_SubDetail _$ClaimResponse_SubDetailFromJson(
    Map<String, dynamic> json) {
  return ClaimResponse_SubDetail(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subDetailSequence: json['subDetailSequence'] as int,
    elementSubDetailSequence: json['elementSubDetailSequence'] == null
        ? null
        : Element.fromJson(
            json['elementSubDetailSequence'] as Map<String, dynamic>),
    noteNumber: (json['noteNumber'] as List)?.map((e) => e as int)?.toList(),
    elementNoteNumber: (json['elementNoteNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    adjudication: (json['adjudication'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_Adjudication.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ClaimResponse_SubDetailToJson(
        ClaimResponse_SubDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'subDetailSequence': instance.subDetailSequence,
      'elementSubDetailSequence': instance.elementSubDetailSequence?.toJson(),
      'noteNumber': instance.noteNumber,
      'elementNoteNumber':
          instance.elementNoteNumber?.map((e) => e?.toJson())?.toList(),
      'adjudication': instance.adjudication?.map((e) => e?.toJson())?.toList(),
    };

ClaimResponse_AddItem _$ClaimResponse_AddItemFromJson(
    Map<String, dynamic> json) {
  return ClaimResponse_AddItem(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    itemSequence:
        (json['itemSequence'] as List)?.map((e) => e as int)?.toList(),
    elementItemSequence: (json['elementItemSequence'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    detailSequence:
        (json['detailSequence'] as List)?.map((e) => e as int)?.toList(),
    elementDetailSequence: (json['elementDetailSequence'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subdetailSequence:
        (json['subdetailSequence'] as List)?.map((e) => e as int)?.toList(),
    elementSubdetailSequence: (json['elementSubdetailSequence'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    provider: (json['provider'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    productOrService: json['productOrService'] == null
        ? null
        : CodeableConcept.fromJson(
            json['productOrService'] as Map<String, dynamic>),
    modifier: (json['modifier'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    programCode: (json['programCode'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    servicedDate: json['servicedDate'] as String,
    elementServicedDate: json['elementServicedDate'] == null
        ? null
        : Element.fromJson(json['elementServicedDate'] as Map<String, dynamic>),
    servicedPeriod: json['servicedPeriod'] == null
        ? null
        : Period.fromJson(json['servicedPeriod'] as Map<String, dynamic>),
    locationCodeableConcept: json['locationCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['locationCodeableConcept'] as Map<String, dynamic>),
    locationAddress: json['locationAddress'] == null
        ? null
        : Address.fromJson(json['locationAddress'] as Map<String, dynamic>),
    locationReference: json['locationReference'] == null
        ? null
        : Reference.fromJson(json['locationReference'] as Map<String, dynamic>),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    unitPrice: json['unitPrice'] == null
        ? null
        : Money.fromJson(json['unitPrice'] as Map<String, dynamic>),
    factor: (json['factor'] as num)?.toDouble(),
    elementFactor: json['elementFactor'] == null
        ? null
        : Element.fromJson(json['elementFactor'] as Map<String, dynamic>),
    net: json['net'] == null
        ? null
        : Money.fromJson(json['net'] as Map<String, dynamic>),
    bodySite: json['bodySite'] == null
        ? null
        : CodeableConcept.fromJson(json['bodySite'] as Map<String, dynamic>),
    subSite: (json['subSite'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    noteNumber: (json['noteNumber'] as List)?.map((e) => e as int)?.toList(),
    elementNoteNumber: (json['elementNoteNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    adjudication: (json['adjudication'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_Adjudication.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    detail: (json['detail'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_Detail1.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ClaimResponse_AddItemToJson(
        ClaimResponse_AddItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'itemSequence': instance.itemSequence,
      'elementItemSequence':
          instance.elementItemSequence?.map((e) => e?.toJson())?.toList(),
      'detailSequence': instance.detailSequence,
      'elementDetailSequence':
          instance.elementDetailSequence?.map((e) => e?.toJson())?.toList(),
      'subdetailSequence': instance.subdetailSequence,
      'elementSubdetailSequence':
          instance.elementSubdetailSequence?.map((e) => e?.toJson())?.toList(),
      'provider': instance.provider?.map((e) => e?.toJson())?.toList(),
      'productOrService': instance.productOrService?.toJson(),
      'modifier': instance.modifier?.map((e) => e?.toJson())?.toList(),
      'programCode': instance.programCode?.map((e) => e?.toJson())?.toList(),
      'servicedDate': instance.servicedDate,
      'elementServicedDate': instance.elementServicedDate?.toJson(),
      'servicedPeriod': instance.servicedPeriod?.toJson(),
      'locationCodeableConcept': instance.locationCodeableConcept?.toJson(),
      'locationAddress': instance.locationAddress?.toJson(),
      'locationReference': instance.locationReference?.toJson(),
      'quantity': instance.quantity?.toJson(),
      'unitPrice': instance.unitPrice?.toJson(),
      'factor': instance.factor,
      'elementFactor': instance.elementFactor?.toJson(),
      'net': instance.net?.toJson(),
      'bodySite': instance.bodySite?.toJson(),
      'subSite': instance.subSite?.map((e) => e?.toJson())?.toList(),
      'noteNumber': instance.noteNumber,
      'elementNoteNumber':
          instance.elementNoteNumber?.map((e) => e?.toJson())?.toList(),
      'adjudication': instance.adjudication?.map((e) => e?.toJson())?.toList(),
      'detail': instance.detail?.map((e) => e?.toJson())?.toList(),
    };

ClaimResponse_Detail1 _$ClaimResponse_Detail1FromJson(
    Map<String, dynamic> json) {
  return ClaimResponse_Detail1(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    productOrService: json['productOrService'] == null
        ? null
        : CodeableConcept.fromJson(
            json['productOrService'] as Map<String, dynamic>),
    modifier: (json['modifier'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    unitPrice: json['unitPrice'] == null
        ? null
        : Money.fromJson(json['unitPrice'] as Map<String, dynamic>),
    factor: (json['factor'] as num)?.toDouble(),
    elementFactor: json['elementFactor'] == null
        ? null
        : Element.fromJson(json['elementFactor'] as Map<String, dynamic>),
    net: json['net'] == null
        ? null
        : Money.fromJson(json['net'] as Map<String, dynamic>),
    noteNumber: (json['noteNumber'] as List)?.map((e) => e as int)?.toList(),
    elementNoteNumber: (json['elementNoteNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    adjudication: (json['adjudication'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_Adjudication.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subDetail: (json['subDetail'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_SubDetail1.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ClaimResponse_Detail1ToJson(
        ClaimResponse_Detail1 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'productOrService': instance.productOrService?.toJson(),
      'modifier': instance.modifier?.map((e) => e?.toJson())?.toList(),
      'quantity': instance.quantity?.toJson(),
      'unitPrice': instance.unitPrice?.toJson(),
      'factor': instance.factor,
      'elementFactor': instance.elementFactor?.toJson(),
      'net': instance.net?.toJson(),
      'noteNumber': instance.noteNumber,
      'elementNoteNumber':
          instance.elementNoteNumber?.map((e) => e?.toJson())?.toList(),
      'adjudication': instance.adjudication?.map((e) => e?.toJson())?.toList(),
      'subDetail': instance.subDetail?.map((e) => e?.toJson())?.toList(),
    };

ClaimResponse_SubDetail1 _$ClaimResponse_SubDetail1FromJson(
    Map<String, dynamic> json) {
  return ClaimResponse_SubDetail1(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    productOrService: json['productOrService'] == null
        ? null
        : CodeableConcept.fromJson(
            json['productOrService'] as Map<String, dynamic>),
    modifier: (json['modifier'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    quantity: json['quantity'] == null
        ? null
        : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
    unitPrice: json['unitPrice'] == null
        ? null
        : Money.fromJson(json['unitPrice'] as Map<String, dynamic>),
    factor: (json['factor'] as num)?.toDouble(),
    elementFactor: json['elementFactor'] == null
        ? null
        : Element.fromJson(json['elementFactor'] as Map<String, dynamic>),
    net: json['net'] == null
        ? null
        : Money.fromJson(json['net'] as Map<String, dynamic>),
    noteNumber: (json['noteNumber'] as List)?.map((e) => e as int)?.toList(),
    elementNoteNumber: (json['elementNoteNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    adjudication: (json['adjudication'] as List)
        ?.map((e) => e == null
            ? null
            : ClaimResponse_Adjudication.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ClaimResponse_SubDetail1ToJson(
        ClaimResponse_SubDetail1 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'productOrService': instance.productOrService?.toJson(),
      'modifier': instance.modifier?.map((e) => e?.toJson())?.toList(),
      'quantity': instance.quantity?.toJson(),
      'unitPrice': instance.unitPrice?.toJson(),
      'factor': instance.factor,
      'elementFactor': instance.elementFactor?.toJson(),
      'net': instance.net?.toJson(),
      'noteNumber': instance.noteNumber,
      'elementNoteNumber':
          instance.elementNoteNumber?.map((e) => e?.toJson())?.toList(),
      'adjudication': instance.adjudication?.map((e) => e?.toJson())?.toList(),
    };

ClaimResponse_Total _$ClaimResponse_TotalFromJson(Map<String, dynamic> json) {
  return ClaimResponse_Total(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    category: json['category'] == null
        ? null
        : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
    amount: json['amount'] == null
        ? null
        : Money.fromJson(json['amount'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ClaimResponse_TotalToJson(
        ClaimResponse_Total instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'category': instance.category?.toJson(),
      'amount': instance.amount?.toJson(),
    };

ClaimResponse_Payment _$ClaimResponse_PaymentFromJson(
    Map<String, dynamic> json) {
  return ClaimResponse_Payment(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    adjustment: json['adjustment'] == null
        ? null
        : Money.fromJson(json['adjustment'] as Map<String, dynamic>),
    adjustmentReason: json['adjustmentReason'] == null
        ? null
        : CodeableConcept.fromJson(
            json['adjustmentReason'] as Map<String, dynamic>),
    date: json['date'] as String,
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    amount: json['amount'] == null
        ? null
        : Money.fromJson(json['amount'] as Map<String, dynamic>),
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ClaimResponse_PaymentToJson(
        ClaimResponse_Payment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'adjustment': instance.adjustment?.toJson(),
      'adjustmentReason': instance.adjustmentReason?.toJson(),
      'date': instance.date,
      'elementDate': instance.elementDate?.toJson(),
      'amount': instance.amount?.toJson(),
      'identifier': instance.identifier?.toJson(),
    };

ClaimResponse_ProcessNote _$ClaimResponse_ProcessNoteFromJson(
    Map<String, dynamic> json) {
  return ClaimResponse_ProcessNote(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    number: json['number'] as int,
    elementNumber: json['elementNumber'] == null
        ? null
        : Element.fromJson(json['elementNumber'] as Map<String, dynamic>),
    type: json['type'] as String,
    elementType: json['elementType'] == null
        ? null
        : Element.fromJson(json['elementType'] as Map<String, dynamic>),
    text: json['text'] as String,
    elementText: json['elementText'] == null
        ? null
        : Element.fromJson(json['elementText'] as Map<String, dynamic>),
    language: json['language'] == null
        ? null
        : CodeableConcept.fromJson(json['language'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ClaimResponse_ProcessNoteToJson(
        ClaimResponse_ProcessNote instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'number': instance.number,
      'elementNumber': instance.elementNumber?.toJson(),
      'type': instance.type,
      'elementType': instance.elementType?.toJson(),
      'text': instance.text,
      'elementText': instance.elementText?.toJson(),
      'language': instance.language?.toJson(),
    };

ClaimResponse_Insurance _$ClaimResponse_InsuranceFromJson(
    Map<String, dynamic> json) {
  return ClaimResponse_Insurance(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    sequence: json['sequence'] as int,
    elementSequence: json['elementSequence'] == null
        ? null
        : Element.fromJson(json['elementSequence'] as Map<String, dynamic>),
    focal: json['focal'] as bool,
    elementFocal: json['elementFocal'] == null
        ? null
        : Element.fromJson(json['elementFocal'] as Map<String, dynamic>),
    coverage: json['coverage'] == null
        ? null
        : Reference.fromJson(json['coverage'] as Map<String, dynamic>),
    businessArrangement: json['businessArrangement'] as String,
    elementBusinessArrangement: json['elementBusinessArrangement'] == null
        ? null
        : Element.fromJson(
            json['elementBusinessArrangement'] as Map<String, dynamic>),
    claimResponse: json['claimResponse'] == null
        ? null
        : Reference.fromJson(json['claimResponse'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ClaimResponse_InsuranceToJson(
        ClaimResponse_Insurance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'sequence': instance.sequence,
      'elementSequence': instance.elementSequence?.toJson(),
      'focal': instance.focal,
      'elementFocal': instance.elementFocal?.toJson(),
      'coverage': instance.coverage?.toJson(),
      'businessArrangement': instance.businessArrangement,
      'elementBusinessArrangement':
          instance.elementBusinessArrangement?.toJson(),
      'claimResponse': instance.claimResponse?.toJson(),
    };

ClaimResponse_Error _$ClaimResponse_ErrorFromJson(Map<String, dynamic> json) {
  return ClaimResponse_Error(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    itemSequence: json['itemSequence'] as int,
    elementItemSequence: json['elementItemSequence'] == null
        ? null
        : Element.fromJson(json['elementItemSequence'] as Map<String, dynamic>),
    detailSequence: json['detailSequence'] as int,
    elementDetailSequence: json['elementDetailSequence'] == null
        ? null
        : Element.fromJson(
            json['elementDetailSequence'] as Map<String, dynamic>),
    subDetailSequence: json['subDetailSequence'] as int,
    elementSubDetailSequence: json['elementSubDetailSequence'] == null
        ? null
        : Element.fromJson(
            json['elementSubDetailSequence'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ClaimResponse_ErrorToJson(
        ClaimResponse_Error instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'itemSequence': instance.itemSequence,
      'elementItemSequence': instance.elementItemSequence?.toJson(),
      'detailSequence': instance.detailSequence,
      'elementDetailSequence': instance.elementDetailSequence?.toJson(),
      'subDetailSequence': instance.subDetailSequence,
      'elementSubDetailSequence': instance.elementSubDetailSequence?.toJson(),
      'code': instance.code?.toJson(),
    };
