import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_fhir/fhirClasses/address.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/util/resourceList.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';

@JsonSerializable(explicitToJson: true)
class Claim {
  static Future<Claim> newInstance({
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
    Period billablePeriod,
    DateTime created,
    Element elementCreated,
    Reference enterer,
    Reference insurer,
    Reference provider,
    CodeableConcept priority,
    CodeableConcept fundsReserve,
    List<Claim_Related> related,
    Reference prescription,
    Reference originalPrescription,
    Claim_Payee payee,
    Reference referral,
    Reference facility,
    List<Claim_CareTeam> careTeam,
    List<Claim_SupportingInfo> supportingInfo,
    List<Claim_Diagnosis> diagnosis,
    List<Claim_Procedure> procedure,
    List<Claim_Insurance> insurance,
    Claim_Accident accident,
    List<Claim_Item> item,
    Money total,
  }) async {
    var fhirDb = new DatabaseHelper();
    Claim newClaim = new Claim(
      resourceType: 'Claim',
      id: id ?? await fhirDb.newResourceId('Claim'),
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
      billablePeriod: billablePeriod,
      created: created,
      elementCreated: elementCreated,
      enterer: enterer,
      insurer: insurer,
      provider: provider,
      priority: priority,
      fundsReserve: fundsReserve,
      related: related,
      prescription: prescription,
      originalPrescription: originalPrescription,
      payee: payee,
      referral: referral,
      facility: facility,
      careTeam: careTeam,
      supportingInfo: supportingInfo,
      diagnosis: diagnosis,
      procedure: procedure,
      insurance: insurance,
      accident: accident,
      item: item,
      total: total,
    );
    newClaim.meta.createdAt = DateTime.now();
    newClaim.meta.lastUpdated = newClaim.meta.createdAt;
    int saved = await fhirDb.saveResource(newClaim);
    return newClaim;
  }

  save() async {
    this.meta.lastUpdated = DateTime.now();
    var fhirDb = new DatabaseHelper();
    int saveed = await fhirDb.saveResource(this);
  }

  String resourceType = 'Claim';
  String id;
  Meta meta;
  String implicitRules;
  Element elementImplicitRules;
  String language;
  Element elementLanguage;
  Narrative text;
  List<dynamic> contained;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<Identifier> identifier;
  String status;
  Element elementStatus;
  CodeableConcept type;
  CodeableConcept subType;
  String use;
  Element elementUse;
  Reference patient;
  Period billablePeriod;
  DateTime created;
  Element elementCreated;
  Reference enterer;
  Reference insurer;
  Reference provider;
  CodeableConcept priority;
  CodeableConcept fundsReserve;
  List<Claim_Related> related;
  Reference prescription;
  Reference originalPrescription;
  Claim_Payee payee;
  Reference referral;
  Reference facility;
  List<Claim_CareTeam> careTeam;
  List<Claim_SupportingInfo> supportingInfo;
  List<Claim_Diagnosis> diagnosis;
  List<Claim_Procedure> procedure;
  List<Claim_Insurance> insurance;
  Claim_Accident accident;
  List<Claim_Item> item;
  Money total;

  Claim({
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
    this.billablePeriod,
    this.created,
    this.elementCreated,
    this.enterer,
    this.insurer,
    @required this.provider,
    @required this.priority,
    this.fundsReserve,
    this.related,
    this.prescription,
    this.originalPrescription,
    this.payee,
    this.referral,
    this.facility,
    this.careTeam,
    this.supportingInfo,
    this.diagnosis,
    this.procedure,
    @required this.insurance,
    this.accident,
    this.item,
    this.total,
  });

  factory Claim.fromJson(Map<String, dynamic> json) => _$ClaimFromJson(json);
  Map<String, dynamic> toJson() => _$ClaimToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Related {
  static Future<Claim_Related> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Reference claim,
    CodeableConcept relationship,
    Identifier reference,
  }) async {
    var fhirDb = new DatabaseHelper();
    Claim_Related newClaim_Related = new Claim_Related(
      id: id ?? await fhirDb.newResourceId('Claim_Related'),
      extension: extension,
      modifierExtension: modifierExtension,
      claim: claim,
      relationship: relationship,
      reference: reference,
    );
    return newClaim_Related;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference claim;
  CodeableConcept relationship;
  Identifier reference;

  Claim_Related({
    this.id,
    this.extension,
    this.modifierExtension,
    this.claim,
    this.relationship,
    this.reference,
  });

  factory Claim_Related.fromJson(Map<String, dynamic> json) =>
      _$Claim_RelatedFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_RelatedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Payee {
  static Future<Claim_Payee> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept type,
    Reference party,
  }) async {
    var fhirDb = new DatabaseHelper();
    Claim_Payee newClaim_Payee = new Claim_Payee(
      id: id ?? await fhirDb.newResourceId('Claim_Payee'),
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      party: party,
    );
    return newClaim_Payee;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  Reference party;

  Claim_Payee({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    this.party,
  });

  factory Claim_Payee.fromJson(Map<String, dynamic> json) =>
      _$Claim_PayeeFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_PayeeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_CareTeam {
  static Future<Claim_CareTeam> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    int sequence,
    Element elementSequence,
    Reference provider,
    bool responsible,
    Element elementResponsible,
    CodeableConcept role,
    CodeableConcept qualification,
  }) async {
    var fhirDb = new DatabaseHelper();
    Claim_CareTeam newClaim_CareTeam = new Claim_CareTeam(
      id: id ?? await fhirDb.newResourceId('Claim_CareTeam'),
      extension: extension,
      modifierExtension: modifierExtension,
      sequence: sequence,
      elementSequence: elementSequence,
      provider: provider,
      responsible: responsible,
      elementResponsible: elementResponsible,
      role: role,
      qualification: qualification,
    );
    return newClaim_CareTeam;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int sequence;
  Element elementSequence;
  Reference provider;
  bool responsible;
  Element elementResponsible;
  CodeableConcept role;
  CodeableConcept qualification;

  Claim_CareTeam({
    this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.elementSequence,
    @required this.provider,
    this.responsible,
    this.elementResponsible,
    this.role,
    this.qualification,
  });

  factory Claim_CareTeam.fromJson(Map<String, dynamic> json) =>
      _$Claim_CareTeamFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_CareTeamToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_SupportingInfo {
  static Future<Claim_SupportingInfo> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    int sequence,
    Element elementSequence,
    CodeableConcept category,
    CodeableConcept code,
    String timingDate,
    Element elementTimingDate,
    Period timingPeriod,
    bool valueBoolean,
    Element elementValueBoolean,
    String valueString,
    Element elementValueString,
    Quantity valueQuantity,
    Attachment valueAttachment,
    Reference valueReference,
    CodeableConcept reason,
  }) async {
    var fhirDb = new DatabaseHelper();
    Claim_SupportingInfo newClaim_SupportingInfo = new Claim_SupportingInfo(
      id: id ?? await fhirDb.newResourceId('Claim_SupportingInfo'),
      extension: extension,
      modifierExtension: modifierExtension,
      sequence: sequence,
      elementSequence: elementSequence,
      category: category,
      code: code,
      timingDate: timingDate,
      elementTimingDate: elementTimingDate,
      timingPeriod: timingPeriod,
      valueBoolean: valueBoolean,
      elementValueBoolean: elementValueBoolean,
      valueString: valueString,
      elementValueString: elementValueString,
      valueQuantity: valueQuantity,
      valueAttachment: valueAttachment,
      valueReference: valueReference,
      reason: reason,
    );
    return newClaim_SupportingInfo;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int sequence;
  Element elementSequence;
  CodeableConcept category;
  CodeableConcept code;
  String timingDate;
  Element elementTimingDate;
  Period timingPeriod;
  bool valueBoolean;
  Element elementValueBoolean;
  String valueString;
  Element elementValueString;
  Quantity valueQuantity;
  Attachment valueAttachment;
  Reference valueReference;
  CodeableConcept reason;

  Claim_SupportingInfo({
    this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.elementSequence,
    @required this.category,
    this.code,
    this.timingDate,
    this.elementTimingDate,
    this.timingPeriod,
    this.valueBoolean,
    this.elementValueBoolean,
    this.valueString,
    this.elementValueString,
    this.valueQuantity,
    this.valueAttachment,
    this.valueReference,
    this.reason,
  });

  factory Claim_SupportingInfo.fromJson(Map<String, dynamic> json) =>
      _$Claim_SupportingInfoFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_SupportingInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Diagnosis {
  static Future<Claim_Diagnosis> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    int sequence,
    Element elementSequence,
    CodeableConcept diagnosisCodeableConcept,
    Reference diagnosisReference,
    List<CodeableConcept> type,
    CodeableConcept onAdmission,
    CodeableConcept packageCode,
  }) async {
    var fhirDb = new DatabaseHelper();
    Claim_Diagnosis newClaim_Diagnosis = new Claim_Diagnosis(
      id: id ?? await fhirDb.newResourceId('Claim_Diagnosis'),
      extension: extension,
      modifierExtension: modifierExtension,
      sequence: sequence,
      elementSequence: elementSequence,
      diagnosisCodeableConcept: diagnosisCodeableConcept,
      diagnosisReference: diagnosisReference,
      type: type,
      onAdmission: onAdmission,
      packageCode: packageCode,
    );
    return newClaim_Diagnosis;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int sequence;
  Element elementSequence;
  CodeableConcept diagnosisCodeableConcept;
  Reference diagnosisReference;
  List<CodeableConcept> type;
  CodeableConcept onAdmission;
  CodeableConcept packageCode;

  Claim_Diagnosis({
    this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.elementSequence,
    this.diagnosisCodeableConcept,
    this.diagnosisReference,
    this.type,
    this.onAdmission,
    this.packageCode,
  });

  factory Claim_Diagnosis.fromJson(Map<String, dynamic> json) =>
      _$Claim_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_DiagnosisToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Procedure {
  static Future<Claim_Procedure> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    int sequence,
    Element elementSequence,
    List<CodeableConcept> type,
    DateTime date,
    Element elementDate,
    CodeableConcept procedureCodeableConcept,
    Reference procedureReference,
    List<Reference> udi,
  }) async {
    var fhirDb = new DatabaseHelper();
    Claim_Procedure newClaim_Procedure = new Claim_Procedure(
      id: id ?? await fhirDb.newResourceId('Claim_Procedure'),
      extension: extension,
      modifierExtension: modifierExtension,
      sequence: sequence,
      elementSequence: elementSequence,
      type: type,
      date: date,
      elementDate: elementDate,
      procedureCodeableConcept: procedureCodeableConcept,
      procedureReference: procedureReference,
      udi: udi,
    );
    return newClaim_Procedure;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int sequence;
  Element elementSequence;
  List<CodeableConcept> type;
  DateTime date;
  Element elementDate;
  CodeableConcept procedureCodeableConcept;
  Reference procedureReference;
  List<Reference> udi;

  Claim_Procedure({
    this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.elementSequence,
    this.type,
    this.date,
    this.elementDate,
    this.procedureCodeableConcept,
    this.procedureReference,
    this.udi,
  });

  factory Claim_Procedure.fromJson(Map<String, dynamic> json) =>
      _$Claim_ProcedureFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_ProcedureToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Insurance {
  static Future<Claim_Insurance> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    int sequence,
    Element elementSequence,
    bool focal,
    Element elementFocal,
    Identifier identifier,
    Reference coverage,
    String businessArrangement,
    Element elementBusinessArrangement,
    List<String> preAuthRef,
    List<Element> elementPreAuthRef,
    Reference claimResponse,
  }) async {
    var fhirDb = new DatabaseHelper();
    Claim_Insurance newClaim_Insurance = new Claim_Insurance(
      id: id ?? await fhirDb.newResourceId('Claim_Insurance'),
      extension: extension,
      modifierExtension: modifierExtension,
      sequence: sequence,
      elementSequence: elementSequence,
      focal: focal,
      elementFocal: elementFocal,
      identifier: identifier,
      coverage: coverage,
      businessArrangement: businessArrangement,
      elementBusinessArrangement: elementBusinessArrangement,
      preAuthRef: preAuthRef,
      elementPreAuthRef: elementPreAuthRef,
      claimResponse: claimResponse,
    );
    return newClaim_Insurance;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int sequence;
  Element elementSequence;
  bool focal;
  Element elementFocal;
  Identifier identifier;
  Reference coverage;
  String businessArrangement;
  Element elementBusinessArrangement;
  List<String> preAuthRef;
  List<Element> elementPreAuthRef;
  Reference claimResponse;

  Claim_Insurance({
    this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.elementSequence,
    this.focal,
    this.elementFocal,
    this.identifier,
    @required this.coverage,
    this.businessArrangement,
    this.elementBusinessArrangement,
    this.preAuthRef,
    this.elementPreAuthRef,
    this.claimResponse,
  });

  factory Claim_Insurance.fromJson(Map<String, dynamic> json) =>
      _$Claim_InsuranceFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_InsuranceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Accident {
  static Future<Claim_Accident> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    String date,
    Element elementDate,
    CodeableConcept type,
    Address locationAddress,
    Reference locationReference,
  }) async {
    var fhirDb = new DatabaseHelper();
    Claim_Accident newClaim_Accident = new Claim_Accident(
      id: id ?? await fhirDb.newResourceId('Claim_Accident'),
      extension: extension,
      modifierExtension: modifierExtension,
      date: date,
      elementDate: elementDate,
      type: type,
      locationAddress: locationAddress,
      locationReference: locationReference,
    );
    return newClaim_Accident;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String date;
  Element elementDate;
  CodeableConcept type;
  Address locationAddress;
  Reference locationReference;

  Claim_Accident({
    this.id,
    this.extension,
    this.modifierExtension,
    this.date,
    this.elementDate,
    this.type,
    this.locationAddress,
    this.locationReference,
  });

  factory Claim_Accident.fromJson(Map<String, dynamic> json) =>
      _$Claim_AccidentFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_AccidentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Item {
  static Future<Claim_Item> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    int sequence,
    Element elementSequence,
    List<int> careTeamSequence,
    List<Element> elementCareTeamSequence,
    List<int> diagnosisSequence,
    List<Element> elementDiagnosisSequence,
    List<int> procedureSequence,
    List<Element> elementProcedureSequence,
    List<int> informationSequence,
    List<Element> elementInformationSequence,
    CodeableConcept revenue,
    CodeableConcept category,
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
    List<Reference> udi,
    CodeableConcept bodySite,
    List<CodeableConcept> subSite,
    List<Reference> encounter,
    List<Claim_Detail> detail,
  }) async {
    var fhirDb = new DatabaseHelper();
    Claim_Item newClaim_Item = new Claim_Item(
      id: id ?? await fhirDb.newResourceId('Claim_Item'),
      extension: extension,
      modifierExtension: modifierExtension,
      sequence: sequence,
      elementSequence: elementSequence,
      careTeamSequence: careTeamSequence,
      elementCareTeamSequence: elementCareTeamSequence,
      diagnosisSequence: diagnosisSequence,
      elementDiagnosisSequence: elementDiagnosisSequence,
      procedureSequence: procedureSequence,
      elementProcedureSequence: elementProcedureSequence,
      informationSequence: informationSequence,
      elementInformationSequence: elementInformationSequence,
      revenue: revenue,
      category: category,
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
      udi: udi,
      bodySite: bodySite,
      subSite: subSite,
      encounter: encounter,
      detail: detail,
    );
    return newClaim_Item;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int sequence;
  Element elementSequence;
  List<int> careTeamSequence;
  List<Element> elementCareTeamSequence;
  List<int> diagnosisSequence;
  List<Element> elementDiagnosisSequence;
  List<int> procedureSequence;
  List<Element> elementProcedureSequence;
  List<int> informationSequence;
  List<Element> elementInformationSequence;
  CodeableConcept revenue;
  CodeableConcept category;
  CodeableConcept productOrService;
  List<CodeableConcept> modifier;
  List<CodeableConcept> programCode;
  String servicedDate;
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
  List<Reference> udi;
  CodeableConcept bodySite;
  List<CodeableConcept> subSite;
  List<Reference> encounter;
  List<Claim_Detail> detail;

  Claim_Item({
    this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.elementSequence,
    this.careTeamSequence,
    this.elementCareTeamSequence,
    this.diagnosisSequence,
    this.elementDiagnosisSequence,
    this.procedureSequence,
    this.elementProcedureSequence,
    this.informationSequence,
    this.elementInformationSequence,
    this.revenue,
    this.category,
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
    this.udi,
    this.bodySite,
    this.subSite,
    this.encounter,
    this.detail,
  });

  factory Claim_Item.fromJson(Map<String, dynamic> json) =>
      _$Claim_ItemFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_ItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_Detail {
  static Future<Claim_Detail> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    int sequence,
    Element elementSequence,
    CodeableConcept revenue,
    CodeableConcept category,
    CodeableConcept productOrService,
    List<CodeableConcept> modifier,
    List<CodeableConcept> programCode,
    Quantity quantity,
    Money unitPrice,
    double factor,
    Element elementFactor,
    Money net,
    List<Reference> udi,
    List<Claim_SubDetail> subDetail,
  }) async {
    var fhirDb = new DatabaseHelper();
    Claim_Detail newClaim_Detail = new Claim_Detail(
      id: id ?? await fhirDb.newResourceId('Claim_Detail'),
      extension: extension,
      modifierExtension: modifierExtension,
      sequence: sequence,
      elementSequence: elementSequence,
      revenue: revenue,
      category: category,
      productOrService: productOrService,
      modifier: modifier,
      programCode: programCode,
      quantity: quantity,
      unitPrice: unitPrice,
      factor: factor,
      elementFactor: elementFactor,
      net: net,
      udi: udi,
      subDetail: subDetail,
    );
    return newClaim_Detail;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int sequence;
  Element elementSequence;
  CodeableConcept revenue;
  CodeableConcept category;
  CodeableConcept productOrService;
  List<CodeableConcept> modifier;
  List<CodeableConcept> programCode;
  Quantity quantity;
  Money unitPrice;
  double factor;
  Element elementFactor;
  Money net;
  List<Reference> udi;
  List<Claim_SubDetail> subDetail;

  Claim_Detail({
    this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.elementSequence,
    this.revenue,
    this.category,
    @required this.productOrService,
    this.modifier,
    this.programCode,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.elementFactor,
    this.net,
    this.udi,
    this.subDetail,
  });

  factory Claim_Detail.fromJson(Map<String, dynamic> json) =>
      _$Claim_DetailFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_DetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Claim_SubDetail {
  static Future<Claim_SubDetail> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    int sequence,
    Element elementSequence,
    CodeableConcept revenue,
    CodeableConcept category,
    CodeableConcept productOrService,
    List<CodeableConcept> modifier,
    List<CodeableConcept> programCode,
    Quantity quantity,
    Money unitPrice,
    double factor,
    Element elementFactor,
    Money net,
    List<Reference> udi,
  }) async {
    var fhirDb = new DatabaseHelper();
    Claim_SubDetail newClaim_SubDetail = new Claim_SubDetail(
      id: id ?? await fhirDb.newResourceId('Claim_SubDetail'),
      extension: extension,
      modifierExtension: modifierExtension,
      sequence: sequence,
      elementSequence: elementSequence,
      revenue: revenue,
      category: category,
      productOrService: productOrService,
      modifier: modifier,
      programCode: programCode,
      quantity: quantity,
      unitPrice: unitPrice,
      factor: factor,
      elementFactor: elementFactor,
      net: net,
      udi: udi,
    );
    return newClaim_SubDetail;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int sequence;
  Element elementSequence;
  CodeableConcept revenue;
  CodeableConcept category;
  CodeableConcept productOrService;
  List<CodeableConcept> modifier;
  List<CodeableConcept> programCode;
  Quantity quantity;
  Money unitPrice;
  double factor;
  Element elementFactor;
  Money net;
  List<Reference> udi;

  Claim_SubDetail({
    this.id,
    this.extension,
    this.modifierExtension,
    this.sequence,
    this.elementSequence,
    this.revenue,
    this.category,
    @required this.productOrService,
    this.modifier,
    this.programCode,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.elementFactor,
    this.net,
    this.udi,
  });

  factory Claim_SubDetail.fromJson(Map<String, dynamic> json) =>
      _$Claim_SubDetailFromJson(json);
  Map<String, dynamic> toJson() => _$Claim_SubDetailToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Claim _$ClaimFromJson(Map<String, dynamic> json) {
  return Claim(
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
    billablePeriod: json['billablePeriod'] == null
        ? null
        : Period.fromJson(json['billablePeriod'] as Map<String, dynamic>),
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    elementCreated: json['elementCreated'] == null
        ? null
        : Element.fromJson(json['elementCreated'] as Map<String, dynamic>),
    enterer: json['enterer'] == null
        ? null
        : Reference.fromJson(json['enterer'] as Map<String, dynamic>),
    insurer: json['insurer'] == null
        ? null
        : Reference.fromJson(json['insurer'] as Map<String, dynamic>),
    provider: json['provider'] == null
        ? null
        : Reference.fromJson(json['provider'] as Map<String, dynamic>),
    priority: json['priority'] == null
        ? null
        : CodeableConcept.fromJson(json['priority'] as Map<String, dynamic>),
    fundsReserve: json['fundsReserve'] == null
        ? null
        : CodeableConcept.fromJson(
            json['fundsReserve'] as Map<String, dynamic>),
    related: (json['related'] as List)
        ?.map((e) => e == null
            ? null
            : Claim_Related.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    prescription: json['prescription'] == null
        ? null
        : Reference.fromJson(json['prescription'] as Map<String, dynamic>),
    originalPrescription: json['originalPrescription'] == null
        ? null
        : Reference.fromJson(
            json['originalPrescription'] as Map<String, dynamic>),
    payee: json['payee'] == null
        ? null
        : Claim_Payee.fromJson(json['payee'] as Map<String, dynamic>),
    referral: json['referral'] == null
        ? null
        : Reference.fromJson(json['referral'] as Map<String, dynamic>),
    facility: json['facility'] == null
        ? null
        : Reference.fromJson(json['facility'] as Map<String, dynamic>),
    careTeam: (json['careTeam'] as List)
        ?.map((e) => e == null
            ? null
            : Claim_CareTeam.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    supportingInfo: (json['supportingInfo'] as List)
        ?.map((e) => e == null
            ? null
            : Claim_SupportingInfo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    diagnosis: (json['diagnosis'] as List)
        ?.map((e) => e == null
            ? null
            : Claim_Diagnosis.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    procedure: (json['procedure'] as List)
        ?.map((e) => e == null
            ? null
            : Claim_Procedure.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    insurance: (json['insurance'] as List)
        ?.map((e) => e == null
            ? null
            : Claim_Insurance.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    accident: json['accident'] == null
        ? null
        : Claim_Accident.fromJson(json['accident'] as Map<String, dynamic>),
    item: (json['item'] as List)
        ?.map((e) =>
            e == null ? null : Claim_Item.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    total: json['total'] == null
        ? null
        : Money.fromJson(json['total'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ClaimToJson(Claim instance) => <String, dynamic>{
      'resourceType': instance.resourceType,
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
      'billablePeriod': instance.billablePeriod?.toJson(),
      'created': instance.created?.toIso8601String(),
      'elementCreated': instance.elementCreated?.toJson(),
      'enterer': instance.enterer?.toJson(),
      'insurer': instance.insurer?.toJson(),
      'provider': instance.provider?.toJson(),
      'priority': instance.priority?.toJson(),
      'fundsReserve': instance.fundsReserve?.toJson(),
      'related': instance.related?.map((e) => e?.toJson())?.toList(),
      'prescription': instance.prescription?.toJson(),
      'originalPrescription': instance.originalPrescription?.toJson(),
      'payee': instance.payee?.toJson(),
      'referral': instance.referral?.toJson(),
      'facility': instance.facility?.toJson(),
      'careTeam': instance.careTeam?.map((e) => e?.toJson())?.toList(),
      'supportingInfo':
          instance.supportingInfo?.map((e) => e?.toJson())?.toList(),
      'diagnosis': instance.diagnosis?.map((e) => e?.toJson())?.toList(),
      'procedure': instance.procedure?.map((e) => e?.toJson())?.toList(),
      'insurance': instance.insurance?.map((e) => e?.toJson())?.toList(),
      'accident': instance.accident?.toJson(),
      'item': instance.item?.map((e) => e?.toJson())?.toList(),
      'total': instance.total?.toJson(),
    };

Claim_Related _$Claim_RelatedFromJson(Map<String, dynamic> json) {
  return Claim_Related(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    claim: json['claim'] == null
        ? null
        : Reference.fromJson(json['claim'] as Map<String, dynamic>),
    relationship: json['relationship'] == null
        ? null
        : CodeableConcept.fromJson(
            json['relationship'] as Map<String, dynamic>),
    reference: json['reference'] == null
        ? null
        : Identifier.fromJson(json['reference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Claim_RelatedToJson(Claim_Related instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'claim': instance.claim?.toJson(),
      'relationship': instance.relationship?.toJson(),
      'reference': instance.reference?.toJson(),
    };

Claim_Payee _$Claim_PayeeFromJson(Map<String, dynamic> json) {
  return Claim_Payee(
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
    party: json['party'] == null
        ? null
        : Reference.fromJson(json['party'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Claim_PayeeToJson(Claim_Payee instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'type': instance.type?.toJson(),
      'party': instance.party?.toJson(),
    };

Claim_CareTeam _$Claim_CareTeamFromJson(Map<String, dynamic> json) {
  return Claim_CareTeam(
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
    provider: json['provider'] == null
        ? null
        : Reference.fromJson(json['provider'] as Map<String, dynamic>),
    responsible: json['responsible'] as bool,
    elementResponsible: json['elementResponsible'] == null
        ? null
        : Element.fromJson(json['elementResponsible'] as Map<String, dynamic>),
    role: json['role'] == null
        ? null
        : CodeableConcept.fromJson(json['role'] as Map<String, dynamic>),
    qualification: json['qualification'] == null
        ? null
        : CodeableConcept.fromJson(
            json['qualification'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Claim_CareTeamToJson(Claim_CareTeam instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'sequence': instance.sequence,
      'elementSequence': instance.elementSequence?.toJson(),
      'provider': instance.provider?.toJson(),
      'responsible': instance.responsible,
      'elementResponsible': instance.elementResponsible?.toJson(),
      'role': instance.role?.toJson(),
      'qualification': instance.qualification?.toJson(),
    };

Claim_SupportingInfo _$Claim_SupportingInfoFromJson(Map<String, dynamic> json) {
  return Claim_SupportingInfo(
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
    category: json['category'] == null
        ? null
        : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
    code: json['code'] == null
        ? null
        : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    timingDate: json['timingDate'] as String,
    elementTimingDate: json['elementTimingDate'] == null
        ? null
        : Element.fromJson(json['elementTimingDate'] as Map<String, dynamic>),
    timingPeriod: json['timingPeriod'] == null
        ? null
        : Period.fromJson(json['timingPeriod'] as Map<String, dynamic>),
    valueBoolean: json['valueBoolean'] as bool,
    elementValueBoolean: json['elementValueBoolean'] == null
        ? null
        : Element.fromJson(json['elementValueBoolean'] as Map<String, dynamic>),
    valueString: json['valueString'] as String,
    elementValueString: json['elementValueString'] == null
        ? null
        : Element.fromJson(json['elementValueString'] as Map<String, dynamic>),
    valueQuantity: json['valueQuantity'] == null
        ? null
        : Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
    valueAttachment: json['valueAttachment'] == null
        ? null
        : Attachment.fromJson(json['valueAttachment'] as Map<String, dynamic>),
    valueReference: json['valueReference'] == null
        ? null
        : Reference.fromJson(json['valueReference'] as Map<String, dynamic>),
    reason: json['reason'] == null
        ? null
        : CodeableConcept.fromJson(json['reason'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Claim_SupportingInfoToJson(
        Claim_SupportingInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'sequence': instance.sequence,
      'elementSequence': instance.elementSequence?.toJson(),
      'category': instance.category?.toJson(),
      'code': instance.code?.toJson(),
      'timingDate': instance.timingDate,
      'elementTimingDate': instance.elementTimingDate?.toJson(),
      'timingPeriod': instance.timingPeriod?.toJson(),
      'valueBoolean': instance.valueBoolean,
      'elementValueBoolean': instance.elementValueBoolean?.toJson(),
      'valueString': instance.valueString,
      'elementValueString': instance.elementValueString?.toJson(),
      'valueQuantity': instance.valueQuantity?.toJson(),
      'valueAttachment': instance.valueAttachment?.toJson(),
      'valueReference': instance.valueReference?.toJson(),
      'reason': instance.reason?.toJson(),
    };

Claim_Diagnosis _$Claim_DiagnosisFromJson(Map<String, dynamic> json) {
  return Claim_Diagnosis(
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
    diagnosisCodeableConcept: json['diagnosisCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['diagnosisCodeableConcept'] as Map<String, dynamic>),
    diagnosisReference: json['diagnosisReference'] == null
        ? null
        : Reference.fromJson(
            json['diagnosisReference'] as Map<String, dynamic>),
    type: (json['type'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    onAdmission: json['onAdmission'] == null
        ? null
        : CodeableConcept.fromJson(json['onAdmission'] as Map<String, dynamic>),
    packageCode: json['packageCode'] == null
        ? null
        : CodeableConcept.fromJson(json['packageCode'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Claim_DiagnosisToJson(Claim_Diagnosis instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'sequence': instance.sequence,
      'elementSequence': instance.elementSequence?.toJson(),
      'diagnosisCodeableConcept': instance.diagnosisCodeableConcept?.toJson(),
      'diagnosisReference': instance.diagnosisReference?.toJson(),
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'onAdmission': instance.onAdmission?.toJson(),
      'packageCode': instance.packageCode?.toJson(),
    };

Claim_Procedure _$Claim_ProcedureFromJson(Map<String, dynamic> json) {
  return Claim_Procedure(
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
    type: (json['type'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    procedureCodeableConcept: json['procedureCodeableConcept'] == null
        ? null
        : CodeableConcept.fromJson(
            json['procedureCodeableConcept'] as Map<String, dynamic>),
    procedureReference: json['procedureReference'] == null
        ? null
        : Reference.fromJson(
            json['procedureReference'] as Map<String, dynamic>),
    udi: (json['udi'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Claim_ProcedureToJson(Claim_Procedure instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'sequence': instance.sequence,
      'elementSequence': instance.elementSequence?.toJson(),
      'type': instance.type?.map((e) => e?.toJson())?.toList(),
      'date': instance.date?.toIso8601String(),
      'elementDate': instance.elementDate?.toJson(),
      'procedureCodeableConcept': instance.procedureCodeableConcept?.toJson(),
      'procedureReference': instance.procedureReference?.toJson(),
      'udi': instance.udi?.map((e) => e?.toJson())?.toList(),
    };

Claim_Insurance _$Claim_InsuranceFromJson(Map<String, dynamic> json) {
  return Claim_Insurance(
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
    identifier: json['identifier'] == null
        ? null
        : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
    coverage: json['coverage'] == null
        ? null
        : Reference.fromJson(json['coverage'] as Map<String, dynamic>),
    businessArrangement: json['businessArrangement'] as String,
    elementBusinessArrangement: json['elementBusinessArrangement'] == null
        ? null
        : Element.fromJson(
            json['elementBusinessArrangement'] as Map<String, dynamic>),
    preAuthRef: (json['preAuthRef'] as List)?.map((e) => e as String)?.toList(),
    elementPreAuthRef: (json['elementPreAuthRef'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    claimResponse: json['claimResponse'] == null
        ? null
        : Reference.fromJson(json['claimResponse'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Claim_InsuranceToJson(Claim_Insurance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'sequence': instance.sequence,
      'elementSequence': instance.elementSequence?.toJson(),
      'focal': instance.focal,
      'elementFocal': instance.elementFocal?.toJson(),
      'identifier': instance.identifier?.toJson(),
      'coverage': instance.coverage?.toJson(),
      'businessArrangement': instance.businessArrangement,
      'elementBusinessArrangement':
          instance.elementBusinessArrangement?.toJson(),
      'preAuthRef': instance.preAuthRef,
      'elementPreAuthRef':
          instance.elementPreAuthRef?.map((e) => e?.toJson())?.toList(),
      'claimResponse': instance.claimResponse?.toJson(),
    };

Claim_Accident _$Claim_AccidentFromJson(Map<String, dynamic> json) {
  return Claim_Accident(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    date: json['date'] as String,
    elementDate: json['elementDate'] == null
        ? null
        : Element.fromJson(json['elementDate'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    locationAddress: json['locationAddress'] == null
        ? null
        : Address.fromJson(json['locationAddress'] as Map<String, dynamic>),
    locationReference: json['locationReference'] == null
        ? null
        : Reference.fromJson(json['locationReference'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Claim_AccidentToJson(Claim_Accident instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'date': instance.date,
      'elementDate': instance.elementDate?.toJson(),
      'type': instance.type?.toJson(),
      'locationAddress': instance.locationAddress?.toJson(),
      'locationReference': instance.locationReference?.toJson(),
    };

Claim_Item _$Claim_ItemFromJson(Map<String, dynamic> json) {
  return Claim_Item(
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
    careTeamSequence:
        (json['careTeamSequence'] as List)?.map((e) => e as int)?.toList(),
    elementCareTeamSequence: (json['elementCareTeamSequence'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    diagnosisSequence:
        (json['diagnosisSequence'] as List)?.map((e) => e as int)?.toList(),
    elementDiagnosisSequence: (json['elementDiagnosisSequence'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    procedureSequence:
        (json['procedureSequence'] as List)?.map((e) => e as int)?.toList(),
    elementProcedureSequence: (json['elementProcedureSequence'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    informationSequence:
        (json['informationSequence'] as List)?.map((e) => e as int)?.toList(),
    elementInformationSequence: (json['elementInformationSequence'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    revenue: json['revenue'] == null
        ? null
        : CodeableConcept.fromJson(json['revenue'] as Map<String, dynamic>),
    category: json['category'] == null
        ? null
        : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
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
    udi: (json['udi'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    bodySite: json['bodySite'] == null
        ? null
        : CodeableConcept.fromJson(json['bodySite'] as Map<String, dynamic>),
    subSite: (json['subSite'] as List)
        ?.map((e) => e == null
            ? null
            : CodeableConcept.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    encounter: (json['encounter'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    detail: (json['detail'] as List)
        ?.map((e) =>
            e == null ? null : Claim_Detail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Claim_ItemToJson(Claim_Item instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'sequence': instance.sequence,
      'elementSequence': instance.elementSequence?.toJson(),
      'careTeamSequence': instance.careTeamSequence,
      'elementCareTeamSequence':
          instance.elementCareTeamSequence?.map((e) => e?.toJson())?.toList(),
      'diagnosisSequence': instance.diagnosisSequence,
      'elementDiagnosisSequence':
          instance.elementDiagnosisSequence?.map((e) => e?.toJson())?.toList(),
      'procedureSequence': instance.procedureSequence,
      'elementProcedureSequence':
          instance.elementProcedureSequence?.map((e) => e?.toJson())?.toList(),
      'informationSequence': instance.informationSequence,
      'elementInformationSequence': instance.elementInformationSequence
          ?.map((e) => e?.toJson())
          ?.toList(),
      'revenue': instance.revenue?.toJson(),
      'category': instance.category?.toJson(),
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
      'udi': instance.udi?.map((e) => e?.toJson())?.toList(),
      'bodySite': instance.bodySite?.toJson(),
      'subSite': instance.subSite?.map((e) => e?.toJson())?.toList(),
      'encounter': instance.encounter?.map((e) => e?.toJson())?.toList(),
      'detail': instance.detail?.map((e) => e?.toJson())?.toList(),
    };

Claim_Detail _$Claim_DetailFromJson(Map<String, dynamic> json) {
  return Claim_Detail(
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
    revenue: json['revenue'] == null
        ? null
        : CodeableConcept.fromJson(json['revenue'] as Map<String, dynamic>),
    category: json['category'] == null
        ? null
        : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
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
    udi: (json['udi'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    subDetail: (json['subDetail'] as List)
        ?.map((e) => e == null
            ? null
            : Claim_SubDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Claim_DetailToJson(Claim_Detail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'sequence': instance.sequence,
      'elementSequence': instance.elementSequence?.toJson(),
      'revenue': instance.revenue?.toJson(),
      'category': instance.category?.toJson(),
      'productOrService': instance.productOrService?.toJson(),
      'modifier': instance.modifier?.map((e) => e?.toJson())?.toList(),
      'programCode': instance.programCode?.map((e) => e?.toJson())?.toList(),
      'quantity': instance.quantity?.toJson(),
      'unitPrice': instance.unitPrice?.toJson(),
      'factor': instance.factor,
      'elementFactor': instance.elementFactor?.toJson(),
      'net': instance.net?.toJson(),
      'udi': instance.udi?.map((e) => e?.toJson())?.toList(),
      'subDetail': instance.subDetail?.map((e) => e?.toJson())?.toList(),
    };

Claim_SubDetail _$Claim_SubDetailFromJson(Map<String, dynamic> json) {
  return Claim_SubDetail(
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
    revenue: json['revenue'] == null
        ? null
        : CodeableConcept.fromJson(json['revenue'] as Map<String, dynamic>),
    category: json['category'] == null
        ? null
        : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
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
    udi: (json['udi'] as List)
        ?.map((e) =>
            e == null ? null : Reference.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$Claim_SubDetailToJson(Claim_SubDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extension': instance.extension?.map((e) => e?.toJson())?.toList(),
      'modifierExtension':
          instance.modifierExtension?.map((e) => e?.toJson())?.toList(),
      'sequence': instance.sequence,
      'elementSequence': instance.elementSequence?.toJson(),
      'revenue': instance.revenue?.toJson(),
      'category': instance.category?.toJson(),
      'productOrService': instance.productOrService?.toJson(),
      'modifier': instance.modifier?.map((e) => e?.toJson())?.toList(),
      'programCode': instance.programCode?.map((e) => e?.toJson())?.toList(),
      'quantity': instance.quantity?.toJson(),
      'unitPrice': instance.unitPrice?.toJson(),
      'factor': instance.factor,
      'elementFactor': instance.elementFactor?.toJson(),
      'net': instance.net?.toJson(),
      'udi': instance.udi?.map((e) => e?.toJson())?.toList(),
    };
