import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/address.dart';
import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

class ClaimResponse {
  static Future<ClaimResponse> newInstance({
    String resourceType,
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
    List<ClaimResponse_Error> error,
  }) async {
    var fhirDb = new DatabaseHelper();
    ClaimResponse newClaimResponse = new ClaimResponse(
      resourceType: 'ClaimResponse',
      id: id ?? await fhirDb.newResourceId('ClaimResponse'),
      meta: meta ?? await Meta.newInstance(),
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
      error: error,
    );
    newClaimResponse.meta.createdAt = DateTime.now();
    newClaimResponse.meta.lastUpdated = newClaimResponse.meta.createdAt;
    int saved = await fhirDb.saveResource(newClaimResponse);
    return newClaimResponse;
  }

  save() async {
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  @HiveField(0)
  String resourceType = 'ClaimResponse';
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

  ClaimResponse({
    @required this.resourceType,
    this.id,
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
    this.error,
  });

  factory ClaimResponse.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponseToJson(this);
}

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
    List<ClaimResponse_Detail> detail,
  }) async {
    var fhirDb = new DatabaseHelper();
    ClaimResponse_Item newClaimResponse_Item = new ClaimResponse_Item(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      itemSequence: itemSequence,
      elementItemSequence: elementItemSequence,
      noteNumber: noteNumber,
      elementNoteNumber: elementNoteNumber,
      adjudication: adjudication,
      detail: detail,
    );
    return newClaimResponse_Item;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  int itemSequence;
  @HiveField(4)
  Element elementItemSequence;
  @HiveField(5)
  List<int> noteNumber;
  @HiveField(6)
  List<Element> elementNoteNumber;
  @HiveField(7)
  List<ClaimResponse_Adjudication> adjudication;
  @HiveField(8)
  List<ClaimResponse_Detail> detail;

  ClaimResponse_Item({
    this.id,
    this.extension,
    this.modifierExtension,
    this.itemSequence,
    this.elementItemSequence,
    this.noteNumber,
    this.elementNoteNumber,
    @required this.adjudication,
    this.detail,
  });

  factory ClaimResponse_Item.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponse_ItemFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_ItemToJson(this);
}

class ClaimResponse_Adjudication {
  static Future<ClaimResponse_Adjudication> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept category,
    CodeableConcept reason,
    Money amount,
    double value,
    Element elementValue,
  }) async {
    var fhirDb = new DatabaseHelper();
    ClaimResponse_Adjudication newClaimResponse_Adjudication =
        new ClaimResponse_Adjudication(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      category: category,
      reason: reason,
      amount: amount,
      value: value,
      elementValue: elementValue,
    );
    return newClaimResponse_Adjudication;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept category;
  @HiveField(4)
  CodeableConcept reason;
  @HiveField(5)
  Money amount;
  @HiveField(6)
  double value;
  @HiveField(7)
  Element elementValue;

  ClaimResponse_Adjudication({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.category,
    this.reason,
    this.amount,
    this.value,
    this.elementValue,
  });

  factory ClaimResponse_Adjudication.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponse_AdjudicationFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_AdjudicationToJson(this);
}

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
    List<ClaimResponse_SubDetail> subDetail,
  }) async {
    var fhirDb = new DatabaseHelper();
    ClaimResponse_Detail newClaimResponse_Detail = new ClaimResponse_Detail(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      detailSequence: detailSequence,
      elementDetailSequence: elementDetailSequence,
      noteNumber: noteNumber,
      elementNoteNumber: elementNoteNumber,
      adjudication: adjudication,
      subDetail: subDetail,
    );
    return newClaimResponse_Detail;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  int detailSequence;
  @HiveField(4)
  Element elementDetailSequence;
  @HiveField(5)
  List<int> noteNumber;
  @HiveField(6)
  List<Element> elementNoteNumber;
  @HiveField(7)
  List<ClaimResponse_Adjudication> adjudication;
  @HiveField(8)
  List<ClaimResponse_SubDetail> subDetail;

  ClaimResponse_Detail({
    this.id,
    this.extension,
    this.modifierExtension,
    this.detailSequence,
    this.elementDetailSequence,
    this.noteNumber,
    this.elementNoteNumber,
    @required this.adjudication,
    this.subDetail,
  });

  factory ClaimResponse_Detail.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponse_DetailFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_DetailToJson(this);
}

class ClaimResponse_SubDetail {
  static Future<ClaimResponse_SubDetail> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    int subDetailSequence,
    Element elementSubDetailSequence,
    List<int> noteNumber,
    List<Element> elementNoteNumber,
    List<ClaimResponse_Adjudication> adjudication,
  }) async {
    var fhirDb = new DatabaseHelper();
    ClaimResponse_SubDetail newClaimResponse_SubDetail =
        new ClaimResponse_SubDetail(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      subDetailSequence: subDetailSequence,
      elementSubDetailSequence: elementSubDetailSequence,
      noteNumber: noteNumber,
      elementNoteNumber: elementNoteNumber,
      adjudication: adjudication,
    );
    return newClaimResponse_SubDetail;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  int subDetailSequence;
  @HiveField(4)
  Element elementSubDetailSequence;
  @HiveField(5)
  List<int> noteNumber;
  @HiveField(6)
  List<Element> elementNoteNumber;
  @HiveField(7)
  List<ClaimResponse_Adjudication> adjudication;

  ClaimResponse_SubDetail({
    this.id,
    this.extension,
    this.modifierExtension,
    this.subDetailSequence,
    this.elementSubDetailSequence,
    this.noteNumber,
    this.elementNoteNumber,
    this.adjudication,
  });

  factory ClaimResponse_SubDetail.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponse_SubDetailFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_SubDetailToJson(this);
}

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
    List<ClaimResponse_Detail1> detail,
  }) async {
    var fhirDb = new DatabaseHelper();
    ClaimResponse_AddItem newClaimResponse_AddItem = new ClaimResponse_AddItem(
      id: id,
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
      detail: detail,
    );
    return newClaimResponse_AddItem;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  List<int> itemSequence;
  @HiveField(4)
  List<Element> elementItemSequence;
  @HiveField(5)
  List<int> detailSequence;
  @HiveField(6)
  List<Element> elementDetailSequence;
  @HiveField(7)
  List<int> subdetailSequence;
  @HiveField(8)
  List<Element> elementSubdetailSequence;
  @HiveField(9)
  List<Reference> provider;
  @HiveField(10)
  CodeableConcept productOrService;
  @HiveField(11)
  List<CodeableConcept> modifier;
  @HiveField(12)
  List<CodeableConcept> programCode;
  @HiveField(13)
  String servicedDate;
  @HiveField(14)
  Element elementServicedDate;
  @HiveField(15)
  Period servicedPeriod;
  @HiveField(16)
  CodeableConcept locationCodeableConcept;
  @HiveField(17)
  Address locationAddress;
  @HiveField(18)
  Reference locationReference;
  @HiveField(19)
  Quantity quantity;
  @HiveField(20)
  Money unitPrice;
  @HiveField(21)
  double factor;
  @HiveField(22)
  Element elementFactor;
  @HiveField(23)
  Money net;
  @HiveField(24)
  CodeableConcept bodySite;
  @HiveField(25)
  List<CodeableConcept> subSite;
  @HiveField(26)
  List<int> noteNumber;
  @HiveField(27)
  List<Element> elementNoteNumber;
  @HiveField(28)
  List<ClaimResponse_Adjudication> adjudication;
  @HiveField(29)
  List<ClaimResponse_Detail1> detail;

  ClaimResponse_AddItem({
    this.id,
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
    this.detail,
  });

  factory ClaimResponse_AddItem.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponse_AddItemFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_AddItemToJson(this);
}

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
    List<ClaimResponse_SubDetail1> subDetail,
  }) async {
    var fhirDb = new DatabaseHelper();
    ClaimResponse_Detail1 newClaimResponse_Detail1 = new ClaimResponse_Detail1(
      id: id,
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
      subDetail: subDetail,
    );
    return newClaimResponse_Detail1;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept productOrService;
  @HiveField(4)
  List<CodeableConcept> modifier;
  @HiveField(5)
  Quantity quantity;
  @HiveField(6)
  Money unitPrice;
  @HiveField(7)
  double factor;
  @HiveField(8)
  Element elementFactor;
  @HiveField(9)
  Money net;
  @HiveField(10)
  List<int> noteNumber;
  @HiveField(11)
  List<Element> elementNoteNumber;
  @HiveField(12)
  List<ClaimResponse_Adjudication> adjudication;
  @HiveField(13)
  List<ClaimResponse_SubDetail1> subDetail;

  ClaimResponse_Detail1({
    this.id,
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
    this.subDetail,
  });

  factory ClaimResponse_Detail1.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponse_Detail1FromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_Detail1ToJson(this);
}

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
    List<ClaimResponse_Adjudication> adjudication,
  }) async {
    var fhirDb = new DatabaseHelper();
    ClaimResponse_SubDetail1 newClaimResponse_SubDetail1 =
        new ClaimResponse_SubDetail1(
      id: id,
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
    );
    return newClaimResponse_SubDetail1;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept productOrService;
  @HiveField(4)
  List<CodeableConcept> modifier;
  @HiveField(5)
  Quantity quantity;
  @HiveField(6)
  Money unitPrice;
  @HiveField(7)
  double factor;
  @HiveField(8)
  Element elementFactor;
  @HiveField(9)
  Money net;
  @HiveField(10)
  List<int> noteNumber;
  @HiveField(11)
  List<Element> elementNoteNumber;
  @HiveField(12)
  List<ClaimResponse_Adjudication> adjudication;

  ClaimResponse_SubDetail1({
    this.id,
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
  });

  factory ClaimResponse_SubDetail1.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponse_SubDetail1FromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_SubDetail1ToJson(this);
}

class ClaimResponse_Total {
  static Future<ClaimResponse_Total> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept category,
    Money amount,
  }) async {
    var fhirDb = new DatabaseHelper();
    ClaimResponse_Total newClaimResponse_Total = new ClaimResponse_Total(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      category: category,
      amount: amount,
    );
    return newClaimResponse_Total;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept category;
  @HiveField(4)
  Money amount;

  ClaimResponse_Total({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.category,
    @required this.amount,
  });

  factory ClaimResponse_Total.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponse_TotalFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_TotalToJson(this);
}

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
    Identifier identifier,
  }) async {
    var fhirDb = new DatabaseHelper();
    ClaimResponse_Payment newClaimResponse_Payment = new ClaimResponse_Payment(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      adjustment: adjustment,
      adjustmentReason: adjustmentReason,
      date: date,
      elementDate: elementDate,
      amount: amount,
      identifier: identifier,
    );
    return newClaimResponse_Payment;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  CodeableConcept type;
  @HiveField(4)
  Money adjustment;
  @HiveField(5)
  CodeableConcept adjustmentReason;
  @HiveField(6)
  String date;
  @HiveField(7)
  Element elementDate;
  @HiveField(8)
  Money amount;
  @HiveField(9)
  Identifier identifier;

  ClaimResponse_Payment({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    this.adjustment,
    this.adjustmentReason,
    this.date,
    this.elementDate,
    @required this.amount,
    this.identifier,
  });

  factory ClaimResponse_Payment.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponse_PaymentFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_PaymentToJson(this);
}

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
    CodeableConcept language,
  }) async {
    var fhirDb = new DatabaseHelper();
    ClaimResponse_ProcessNote newClaimResponse_ProcessNote =
        new ClaimResponse_ProcessNote(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      number: number,
      elementNumber: elementNumber,
      type: type,
      elementType: elementType,
      text: text,
      elementText: elementText,
      language: language,
    );
    return newClaimResponse_ProcessNote;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  int number;
  @HiveField(4)
  Element elementNumber;
  @HiveField(5)
  String type;
  @HiveField(6)
  Element elementType;
  @HiveField(7)
  String text;
  @HiveField(8)
  Element elementText;
  @HiveField(9)
  CodeableConcept language;

  ClaimResponse_ProcessNote({
    this.id,
    this.extension,
    this.modifierExtension,
    this.number,
    this.elementNumber,
    this.type,
    this.elementType,
    this.text,
    this.elementText,
    this.language,
  });

  factory ClaimResponse_ProcessNote.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponse_ProcessNoteFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_ProcessNoteToJson(this);
}

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
    Reference claimResponse,
  }) async {
    var fhirDb = new DatabaseHelper();
    ClaimResponse_Insurance newClaimResponse_Insurance =
        new ClaimResponse_Insurance(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      sequence: sequence,
      elementSequence: elementSequence,
      focal: focal,
      elementFocal: elementFocal,
      coverage: coverage,
      businessArrangement: businessArrangement,
      elementBusinessArrangement: elementBusinessArrangement,
      claimResponse: claimResponse,
    );
    return newClaimResponse_Insurance;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  int sequence;
  @HiveField(4)
  Element elementSequence;
  @HiveField(5)
  bool focal;
  @HiveField(6)
  Element elementFocal;
  @HiveField(7)
  Reference coverage;
  @HiveField(8)
  String businessArrangement;
  @HiveField(9)
  Element elementBusinessArrangement;
  @HiveField(10)
  Reference claimResponse;

  ClaimResponse_Insurance({
    this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.elementSequence,
    this.focal,
    this.elementFocal,
    @required this.coverage,
    this.businessArrangement,
    this.elementBusinessArrangement,
    this.claimResponse,
  });

  factory ClaimResponse_Insurance.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponse_InsuranceFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_InsuranceToJson(this);
}

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
    CodeableConcept code,
  }) async {
    var fhirDb = new DatabaseHelper();
    ClaimResponse_Error newClaimResponse_Error = new ClaimResponse_Error(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      itemSequence: itemSequence,
      elementItemSequence: elementItemSequence,
      detailSequence: detailSequence,
      elementDetailSequence: elementDetailSequence,
      subDetailSequence: subDetailSequence,
      elementSubDetailSequence: elementSubDetailSequence,
      code: code,
    );
    return newClaimResponse_Error;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  int itemSequence;
  @HiveField(4)
  Element elementItemSequence;
  @HiveField(5)
  int detailSequence;
  @HiveField(6)
  Element elementDetailSequence;
  @HiveField(7)
  int subDetailSequence;
  @HiveField(8)
  Element elementSubDetailSequence;
  @HiveField(9)
  CodeableConcept code;

  ClaimResponse_Error({
    this.id,
    this.extension,
    this.modifierExtension,
    this.itemSequence,
    this.elementItemSequence,
    this.detailSequence,
    this.elementDetailSequence,
    this.subDetailSequence,
    this.elementSubDetailSequence,
    @required this.code,
  });

  factory ClaimResponse_Error.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponse_ErrorFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimResponse_ErrorToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClaimResponse _$ClaimResponseFromJson(Map<String, dynamic> json) {
  return ClaimResponse(
    resourceType: json['resourceType'] as String,
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
        ?.map((e) => e == null
            ? null
            : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
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

Map<String, dynamic> _$ClaimResponseToJson(ClaimResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resourceType', instance.resourceType);
  writeNotNull('id', instance.id);
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('implicitRules', instance.implicitRules);
  writeNotNull('elementImplicitRules', instance.elementImplicitRules?.toJson());
  writeNotNull('language', instance.language);
  writeNotNull('elementLanguage', instance.elementLanguage?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('contained', instance.contained);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('status', instance.status);
  writeNotNull('elementStatus', instance.elementStatus?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('subType', instance.subType?.toJson());
  writeNotNull('use', instance.use);
  writeNotNull('elementUse', instance.elementUse?.toJson());
  writeNotNull('patient', instance.patient?.toJson());
  writeNotNull('created', instance.created?.toIso8601String());
  writeNotNull('elementCreated', instance.elementCreated?.toJson());
  writeNotNull('insurer', instance.insurer?.toJson());
  writeNotNull('requestor', instance.requestor?.toJson());
  writeNotNull('request', instance.request?.toJson());
  writeNotNull('outcome', instance.outcome);
  writeNotNull('elementOutcome', instance.elementOutcome?.toJson());
  writeNotNull('disposition', instance.disposition);
  writeNotNull('elementDisposition', instance.elementDisposition?.toJson());
  writeNotNull('preAuthRef', instance.preAuthRef);
  writeNotNull('elementPreAuthRef', instance.elementPreAuthRef?.toJson());
  writeNotNull('preAuthPeriod', instance.preAuthPeriod?.toJson());
  writeNotNull('payeeType', instance.payeeType?.toJson());
  writeNotNull('item', instance.item?.map((e) => e?.toJson())?.toList());
  writeNotNull('addItem', instance.addItem?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'adjudication', instance.adjudication?.map((e) => e?.toJson())?.toList());
  writeNotNull('total', instance.total?.map((e) => e?.toJson())?.toList());
  writeNotNull('payment', instance.payment?.toJson());
  writeNotNull('fundsReserve', instance.fundsReserve?.toJson());
  writeNotNull('formCode', instance.formCode?.toJson());
  writeNotNull('form', instance.form?.toJson());
  writeNotNull(
      'processNote', instance.processNote?.map((e) => e?.toJson())?.toList());
  writeNotNull('communicationRequest',
      instance.communicationRequest?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'insurance', instance.insurance?.map((e) => e?.toJson())?.toList());
  writeNotNull('error', instance.error?.map((e) => e?.toJson())?.toList());
  return val;
}

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

Map<String, dynamic> _$ClaimResponse_ItemToJson(ClaimResponse_Item instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('itemSequence', instance.itemSequence);
  writeNotNull('elementItemSequence', instance.elementItemSequence?.toJson());
  writeNotNull('noteNumber', instance.noteNumber);
  writeNotNull('elementNoteNumber',
      instance.elementNoteNumber?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'adjudication', instance.adjudication?.map((e) => e?.toJson())?.toList());
  writeNotNull('detail', instance.detail?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    ClaimResponse_Adjudication instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('category', instance.category?.toJson());
  writeNotNull('reason', instance.reason?.toJson());
  writeNotNull('amount', instance.amount?.toJson());
  writeNotNull('value', instance.value);
  writeNotNull('elementValue', instance.elementValue?.toJson());
  return val;
}

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
    ClaimResponse_Detail instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('detailSequence', instance.detailSequence);
  writeNotNull(
      'elementDetailSequence', instance.elementDetailSequence?.toJson());
  writeNotNull('noteNumber', instance.noteNumber);
  writeNotNull('elementNoteNumber',
      instance.elementNoteNumber?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'adjudication', instance.adjudication?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'subDetail', instance.subDetail?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    ClaimResponse_SubDetail instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('subDetailSequence', instance.subDetailSequence);
  writeNotNull(
      'elementSubDetailSequence', instance.elementSubDetailSequence?.toJson());
  writeNotNull('noteNumber', instance.noteNumber);
  writeNotNull('elementNoteNumber',
      instance.elementNoteNumber?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'adjudication', instance.adjudication?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    ClaimResponse_AddItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('itemSequence', instance.itemSequence);
  writeNotNull('elementItemSequence',
      instance.elementItemSequence?.map((e) => e?.toJson())?.toList());
  writeNotNull('detailSequence', instance.detailSequence);
  writeNotNull('elementDetailSequence',
      instance.elementDetailSequence?.map((e) => e?.toJson())?.toList());
  writeNotNull('subdetailSequence', instance.subdetailSequence);
  writeNotNull('elementSubdetailSequence',
      instance.elementSubdetailSequence?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'provider', instance.provider?.map((e) => e?.toJson())?.toList());
  writeNotNull('productOrService', instance.productOrService?.toJson());
  writeNotNull(
      'modifier', instance.modifier?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'programCode', instance.programCode?.map((e) => e?.toJson())?.toList());
  writeNotNull('servicedDate', instance.servicedDate);
  writeNotNull('elementServicedDate', instance.elementServicedDate?.toJson());
  writeNotNull('servicedPeriod', instance.servicedPeriod?.toJson());
  writeNotNull(
      'locationCodeableConcept', instance.locationCodeableConcept?.toJson());
  writeNotNull('locationAddress', instance.locationAddress?.toJson());
  writeNotNull('locationReference', instance.locationReference?.toJson());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('unitPrice', instance.unitPrice?.toJson());
  writeNotNull('factor', instance.factor);
  writeNotNull('elementFactor', instance.elementFactor?.toJson());
  writeNotNull('net', instance.net?.toJson());
  writeNotNull('bodySite', instance.bodySite?.toJson());
  writeNotNull('subSite', instance.subSite?.map((e) => e?.toJson())?.toList());
  writeNotNull('noteNumber', instance.noteNumber);
  writeNotNull('elementNoteNumber',
      instance.elementNoteNumber?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'adjudication', instance.adjudication?.map((e) => e?.toJson())?.toList());
  writeNotNull('detail', instance.detail?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    ClaimResponse_Detail1 instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('productOrService', instance.productOrService?.toJson());
  writeNotNull(
      'modifier', instance.modifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('unitPrice', instance.unitPrice?.toJson());
  writeNotNull('factor', instance.factor);
  writeNotNull('elementFactor', instance.elementFactor?.toJson());
  writeNotNull('net', instance.net?.toJson());
  writeNotNull('noteNumber', instance.noteNumber);
  writeNotNull('elementNoteNumber',
      instance.elementNoteNumber?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'adjudication', instance.adjudication?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'subDetail', instance.subDetail?.map((e) => e?.toJson())?.toList());
  return val;
}

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
    ClaimResponse_SubDetail1 instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('productOrService', instance.productOrService?.toJson());
  writeNotNull(
      'modifier', instance.modifier?.map((e) => e?.toJson())?.toList());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('unitPrice', instance.unitPrice?.toJson());
  writeNotNull('factor', instance.factor);
  writeNotNull('elementFactor', instance.elementFactor?.toJson());
  writeNotNull('net', instance.net?.toJson());
  writeNotNull('noteNumber', instance.noteNumber);
  writeNotNull('elementNoteNumber',
      instance.elementNoteNumber?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'adjudication', instance.adjudication?.map((e) => e?.toJson())?.toList());
  return val;
}

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

Map<String, dynamic> _$ClaimResponse_TotalToJson(ClaimResponse_Total instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('category', instance.category?.toJson());
  writeNotNull('amount', instance.amount?.toJson());
  return val;
}

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
    ClaimResponse_Payment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('adjustment', instance.adjustment?.toJson());
  writeNotNull('adjustmentReason', instance.adjustmentReason?.toJson());
  writeNotNull('date', instance.date);
  writeNotNull('elementDate', instance.elementDate?.toJson());
  writeNotNull('amount', instance.amount?.toJson());
  writeNotNull('identifier', instance.identifier?.toJson());
  return val;
}

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
    ClaimResponse_ProcessNote instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('number', instance.number);
  writeNotNull('elementNumber', instance.elementNumber?.toJson());
  writeNotNull('type', instance.type);
  writeNotNull('elementType', instance.elementType?.toJson());
  writeNotNull('text', instance.text);
  writeNotNull('elementText', instance.elementText?.toJson());
  writeNotNull('language', instance.language?.toJson());
  return val;
}

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
    ClaimResponse_Insurance instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('sequence', instance.sequence);
  writeNotNull('elementSequence', instance.elementSequence?.toJson());
  writeNotNull('focal', instance.focal);
  writeNotNull('elementFocal', instance.elementFocal?.toJson());
  writeNotNull('coverage', instance.coverage?.toJson());
  writeNotNull('businessArrangement', instance.businessArrangement);
  writeNotNull('elementBusinessArrangement',
      instance.elementBusinessArrangement?.toJson());
  writeNotNull('claimResponse', instance.claimResponse?.toJson());
  return val;
}

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

Map<String, dynamic> _$ClaimResponse_ErrorToJson(ClaimResponse_Error instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'extension', instance.extension?.map((e) => e?.toJson())?.toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e?.toJson())?.toList());
  writeNotNull('itemSequence', instance.itemSequence);
  writeNotNull('elementItemSequence', instance.elementItemSequence?.toJson());
  writeNotNull('detailSequence', instance.detailSequence);
  writeNotNull(
      'elementDetailSequence', instance.elementDetailSequence?.toJson());
  writeNotNull('subDetailSequence', instance.subDetailSequence);
  writeNotNull(
      'elementSubDetailSequence', instance.elementSubDetailSequence?.toJson());
  writeNotNull('code', instance.code?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ClaimResponseAdapter extends TypeAdapter<ClaimResponse> {
  @override
  ClaimResponse read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClaimResponse(
      resourceType: fields[0] as String,
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

class ClaimResponse_ItemAdapter extends TypeAdapter<ClaimResponse_Item> {
  @override
  ClaimResponse_Item read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClaimResponse_Item(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      itemSequence: fields[3] as int,
      elementItemSequence: fields[4] as Element,
      noteNumber: (fields[5] as List)?.cast<int>(),
      elementNoteNumber: (fields[6] as List)?.cast<Element>(),
      adjudication: (fields[7] as List)?.cast<ClaimResponse_Adjudication>(),
      detail: (fields[8] as List)?.cast<ClaimResponse_Detail>(),
    );
  }

  @override
  void write(BinaryWriter writer, ClaimResponse_Item obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.itemSequence)
      ..writeByte(4)
      ..write(obj.elementItemSequence)
      ..writeByte(5)
      ..write(obj.noteNumber)
      ..writeByte(6)
      ..write(obj.elementNoteNumber)
      ..writeByte(7)
      ..write(obj.adjudication)
      ..writeByte(8)
      ..write(obj.detail);
  }
}

class ClaimResponse_AdjudicationAdapter
    extends TypeAdapter<ClaimResponse_Adjudication> {
  @override
  ClaimResponse_Adjudication read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClaimResponse_Adjudication(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      category: fields[3] as CodeableConcept,
      reason: fields[4] as CodeableConcept,
      amount: fields[5] as Money,
      value: fields[6] as double,
      elementValue: fields[7] as Element,
    );
  }

  @override
  void write(BinaryWriter writer, ClaimResponse_Adjudication obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.category)
      ..writeByte(4)
      ..write(obj.reason)
      ..writeByte(5)
      ..write(obj.amount)
      ..writeByte(6)
      ..write(obj.value)
      ..writeByte(7)
      ..write(obj.elementValue);
  }
}

class ClaimResponse_DetailAdapter extends TypeAdapter<ClaimResponse_Detail> {
  @override
  ClaimResponse_Detail read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClaimResponse_Detail(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      detailSequence: fields[3] as int,
      elementDetailSequence: fields[4] as Element,
      noteNumber: (fields[5] as List)?.cast<int>(),
      elementNoteNumber: (fields[6] as List)?.cast<Element>(),
      adjudication: (fields[7] as List)?.cast<ClaimResponse_Adjudication>(),
      subDetail: (fields[8] as List)?.cast<ClaimResponse_SubDetail>(),
    );
  }

  @override
  void write(BinaryWriter writer, ClaimResponse_Detail obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.detailSequence)
      ..writeByte(4)
      ..write(obj.elementDetailSequence)
      ..writeByte(5)
      ..write(obj.noteNumber)
      ..writeByte(6)
      ..write(obj.elementNoteNumber)
      ..writeByte(7)
      ..write(obj.adjudication)
      ..writeByte(8)
      ..write(obj.subDetail);
  }
}

class ClaimResponse_SubDetailAdapter
    extends TypeAdapter<ClaimResponse_SubDetail> {
  @override
  ClaimResponse_SubDetail read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClaimResponse_SubDetail(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      subDetailSequence: fields[3] as int,
      elementSubDetailSequence: fields[4] as Element,
      noteNumber: (fields[5] as List)?.cast<int>(),
      elementNoteNumber: (fields[6] as List)?.cast<Element>(),
      adjudication: (fields[7] as List)?.cast<ClaimResponse_Adjudication>(),
    );
  }

  @override
  void write(BinaryWriter writer, ClaimResponse_SubDetail obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.subDetailSequence)
      ..writeByte(4)
      ..write(obj.elementSubDetailSequence)
      ..writeByte(5)
      ..write(obj.noteNumber)
      ..writeByte(6)
      ..write(obj.elementNoteNumber)
      ..writeByte(7)
      ..write(obj.adjudication);
  }
}

class ClaimResponse_AddItemAdapter extends TypeAdapter<ClaimResponse_AddItem> {
  @override
  ClaimResponse_AddItem read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClaimResponse_AddItem(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      itemSequence: (fields[3] as List)?.cast<int>(),
      elementItemSequence: (fields[4] as List)?.cast<Element>(),
      detailSequence: (fields[5] as List)?.cast<int>(),
      elementDetailSequence: (fields[6] as List)?.cast<Element>(),
      subdetailSequence: (fields[7] as List)?.cast<int>(),
      elementSubdetailSequence: (fields[8] as List)?.cast<Element>(),
      provider: (fields[9] as List)?.cast<Reference>(),
      productOrService: fields[10] as CodeableConcept,
      modifier: (fields[11] as List)?.cast<CodeableConcept>(),
      programCode: (fields[12] as List)?.cast<CodeableConcept>(),
      servicedDate: fields[13] as String,
      elementServicedDate: fields[14] as Element,
      servicedPeriod: fields[15] as Period,
      locationCodeableConcept: fields[16] as CodeableConcept,
      locationAddress: fields[17] as Address,
      locationReference: fields[18] as Reference,
      quantity: fields[19] as Quantity,
      unitPrice: fields[20] as Money,
      factor: fields[21] as double,
      elementFactor: fields[22] as Element,
      net: fields[23] as Money,
      bodySite: fields[24] as CodeableConcept,
      subSite: (fields[25] as List)?.cast<CodeableConcept>(),
      noteNumber: (fields[26] as List)?.cast<int>(),
      elementNoteNumber: (fields[27] as List)?.cast<Element>(),
      adjudication: (fields[28] as List)?.cast<ClaimResponse_Adjudication>(),
      detail: (fields[29] as List)?.cast<ClaimResponse_Detail1>(),
    );
  }

  @override
  void write(BinaryWriter writer, ClaimResponse_AddItem obj) {
    writer
      ..writeByte(30)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.itemSequence)
      ..writeByte(4)
      ..write(obj.elementItemSequence)
      ..writeByte(5)
      ..write(obj.detailSequence)
      ..writeByte(6)
      ..write(obj.elementDetailSequence)
      ..writeByte(7)
      ..write(obj.subdetailSequence)
      ..writeByte(8)
      ..write(obj.elementSubdetailSequence)
      ..writeByte(9)
      ..write(obj.provider)
      ..writeByte(10)
      ..write(obj.productOrService)
      ..writeByte(11)
      ..write(obj.modifier)
      ..writeByte(12)
      ..write(obj.programCode)
      ..writeByte(13)
      ..write(obj.servicedDate)
      ..writeByte(14)
      ..write(obj.elementServicedDate)
      ..writeByte(15)
      ..write(obj.servicedPeriod)
      ..writeByte(16)
      ..write(obj.locationCodeableConcept)
      ..writeByte(17)
      ..write(obj.locationAddress)
      ..writeByte(18)
      ..write(obj.locationReference)
      ..writeByte(19)
      ..write(obj.quantity)
      ..writeByte(20)
      ..write(obj.unitPrice)
      ..writeByte(21)
      ..write(obj.factor)
      ..writeByte(22)
      ..write(obj.elementFactor)
      ..writeByte(23)
      ..write(obj.net)
      ..writeByte(24)
      ..write(obj.bodySite)
      ..writeByte(25)
      ..write(obj.subSite)
      ..writeByte(26)
      ..write(obj.noteNumber)
      ..writeByte(27)
      ..write(obj.elementNoteNumber)
      ..writeByte(28)
      ..write(obj.adjudication)
      ..writeByte(29)
      ..write(obj.detail);
  }
}

class ClaimResponse_Detail1Adapter extends TypeAdapter<ClaimResponse_Detail1> {
  @override
  ClaimResponse_Detail1 read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClaimResponse_Detail1(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      productOrService: fields[3] as CodeableConcept,
      modifier: (fields[4] as List)?.cast<CodeableConcept>(),
      quantity: fields[5] as Quantity,
      unitPrice: fields[6] as Money,
      factor: fields[7] as double,
      elementFactor: fields[8] as Element,
      net: fields[9] as Money,
      noteNumber: (fields[10] as List)?.cast<int>(),
      elementNoteNumber: (fields[11] as List)?.cast<Element>(),
      adjudication: (fields[12] as List)?.cast<ClaimResponse_Adjudication>(),
      subDetail: (fields[13] as List)?.cast<ClaimResponse_SubDetail1>(),
    );
  }

  @override
  void write(BinaryWriter writer, ClaimResponse_Detail1 obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.productOrService)
      ..writeByte(4)
      ..write(obj.modifier)
      ..writeByte(5)
      ..write(obj.quantity)
      ..writeByte(6)
      ..write(obj.unitPrice)
      ..writeByte(7)
      ..write(obj.factor)
      ..writeByte(8)
      ..write(obj.elementFactor)
      ..writeByte(9)
      ..write(obj.net)
      ..writeByte(10)
      ..write(obj.noteNumber)
      ..writeByte(11)
      ..write(obj.elementNoteNumber)
      ..writeByte(12)
      ..write(obj.adjudication)
      ..writeByte(13)
      ..write(obj.subDetail);
  }
}

class ClaimResponse_SubDetail1Adapter
    extends TypeAdapter<ClaimResponse_SubDetail1> {
  @override
  ClaimResponse_SubDetail1 read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClaimResponse_SubDetail1(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      productOrService: fields[3] as CodeableConcept,
      modifier: (fields[4] as List)?.cast<CodeableConcept>(),
      quantity: fields[5] as Quantity,
      unitPrice: fields[6] as Money,
      factor: fields[7] as double,
      elementFactor: fields[8] as Element,
      net: fields[9] as Money,
      noteNumber: (fields[10] as List)?.cast<int>(),
      elementNoteNumber: (fields[11] as List)?.cast<Element>(),
      adjudication: (fields[12] as List)?.cast<ClaimResponse_Adjudication>(),
    );
  }

  @override
  void write(BinaryWriter writer, ClaimResponse_SubDetail1 obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.productOrService)
      ..writeByte(4)
      ..write(obj.modifier)
      ..writeByte(5)
      ..write(obj.quantity)
      ..writeByte(6)
      ..write(obj.unitPrice)
      ..writeByte(7)
      ..write(obj.factor)
      ..writeByte(8)
      ..write(obj.elementFactor)
      ..writeByte(9)
      ..write(obj.net)
      ..writeByte(10)
      ..write(obj.noteNumber)
      ..writeByte(11)
      ..write(obj.elementNoteNumber)
      ..writeByte(12)
      ..write(obj.adjudication);
  }
}

class ClaimResponse_TotalAdapter extends TypeAdapter<ClaimResponse_Total> {
  @override
  ClaimResponse_Total read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClaimResponse_Total(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      category: fields[3] as CodeableConcept,
      amount: fields[4] as Money,
    );
  }

  @override
  void write(BinaryWriter writer, ClaimResponse_Total obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.category)
      ..writeByte(4)
      ..write(obj.amount);
  }
}

class ClaimResponse_PaymentAdapter extends TypeAdapter<ClaimResponse_Payment> {
  @override
  ClaimResponse_Payment read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClaimResponse_Payment(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as CodeableConcept,
      adjustment: fields[4] as Money,
      adjustmentReason: fields[5] as CodeableConcept,
      date: fields[6] as String,
      elementDate: fields[7] as Element,
      amount: fields[8] as Money,
      identifier: fields[9] as Identifier,
    );
  }

  @override
  void write(BinaryWriter writer, ClaimResponse_Payment obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.adjustment)
      ..writeByte(5)
      ..write(obj.adjustmentReason)
      ..writeByte(6)
      ..write(obj.date)
      ..writeByte(7)
      ..write(obj.elementDate)
      ..writeByte(8)
      ..write(obj.amount)
      ..writeByte(9)
      ..write(obj.identifier);
  }
}

class ClaimResponse_ProcessNoteAdapter
    extends TypeAdapter<ClaimResponse_ProcessNote> {
  @override
  ClaimResponse_ProcessNote read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClaimResponse_ProcessNote(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      number: fields[3] as int,
      elementNumber: fields[4] as Element,
      type: fields[5] as String,
      elementType: fields[6] as Element,
      text: fields[7] as String,
      elementText: fields[8] as Element,
      language: fields[9] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, ClaimResponse_ProcessNote obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.number)
      ..writeByte(4)
      ..write(obj.elementNumber)
      ..writeByte(5)
      ..write(obj.type)
      ..writeByte(6)
      ..write(obj.elementType)
      ..writeByte(7)
      ..write(obj.text)
      ..writeByte(8)
      ..write(obj.elementText)
      ..writeByte(9)
      ..write(obj.language);
  }
}

class ClaimResponse_InsuranceAdapter
    extends TypeAdapter<ClaimResponse_Insurance> {
  @override
  ClaimResponse_Insurance read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClaimResponse_Insurance(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      sequence: fields[3] as int,
      elementSequence: fields[4] as Element,
      focal: fields[5] as bool,
      elementFocal: fields[6] as Element,
      coverage: fields[7] as Reference,
      businessArrangement: fields[8] as String,
      elementBusinessArrangement: fields[9] as Element,
      claimResponse: fields[10] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, ClaimResponse_Insurance obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.sequence)
      ..writeByte(4)
      ..write(obj.elementSequence)
      ..writeByte(5)
      ..write(obj.focal)
      ..writeByte(6)
      ..write(obj.elementFocal)
      ..writeByte(7)
      ..write(obj.coverage)
      ..writeByte(8)
      ..write(obj.businessArrangement)
      ..writeByte(9)
      ..write(obj.elementBusinessArrangement)
      ..writeByte(10)
      ..write(obj.claimResponse);
  }
}

class ClaimResponse_ErrorAdapter extends TypeAdapter<ClaimResponse_Error> {
  @override
  ClaimResponse_Error read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClaimResponse_Error(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      itemSequence: fields[3] as int,
      elementItemSequence: fields[4] as Element,
      detailSequence: fields[5] as int,
      elementDetailSequence: fields[6] as Element,
      subDetailSequence: fields[7] as int,
      elementSubDetailSequence: fields[8] as Element,
      code: fields[9] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, ClaimResponse_Error obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.itemSequence)
      ..writeByte(4)
      ..write(obj.elementItemSequence)
      ..writeByte(5)
      ..write(obj.detailSequence)
      ..writeByte(6)
      ..write(obj.elementDetailSequence)
      ..writeByte(7)
      ..write(obj.subDetailSequence)
      ..writeByte(8)
      ..write(obj.elementSubDetailSequence)
      ..writeByte(9)
      ..write(obj.code);
  }
}
