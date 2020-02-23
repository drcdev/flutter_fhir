import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
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
    var fhirDb = new DatabaseHelper();
    int saved = await fhirDb.saveResource(this);
  }

  update() async {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  @HiveField(0)
  String resourceType = 'Claim';
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
  Period billablePeriod;
  @HiveField(20)
  DateTime created;
  @HiveField(21)
  Element elementCreated;
  @HiveField(22)
  Reference enterer;
  @HiveField(23)
  Reference insurer;
  @HiveField(24)
  Reference provider;
  @HiveField(25)
  CodeableConcept priority;
  @HiveField(26)
  CodeableConcept fundsReserve;
  @HiveField(27)
  List<Claim_Related> related;
  @HiveField(28)
  Reference prescription;
  @HiveField(29)
  Reference originalPrescription;
  @HiveField(30)
  Claim_Payee payee;
  @HiveField(31)
  Reference referral;
  @HiveField(32)
  Reference facility;
  @HiveField(33)
  List<Claim_CareTeam> careTeam;
  @HiveField(34)
  List<Claim_SupportingInfo> supportingInfo;
  @HiveField(35)
  List<Claim_Diagnosis> diagnosis;
  @HiveField(36)
  List<Claim_Procedure> procedure;
  @HiveField(37)
  List<Claim_Insurance> insurance;
  @HiveField(38)
  Claim_Accident accident;
  @HiveField(39)
  List<Claim_Item> item;
  @HiveField(40)
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
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      claim: claim,
      relationship: relationship,
      reference: reference,
    );
    return newClaim_Related;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  Reference claim;
  @HiveField(4)
  CodeableConcept relationship;
  @HiveField(5)
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
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      party: party,
    );
    return newClaim_Payee;
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
      id: id,
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
  Reference provider;
  @HiveField(6)
  bool responsible;
  @HiveField(7)
  Element elementResponsible;
  @HiveField(8)
  CodeableConcept role;
  @HiveField(9)
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
      id: id,
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
  CodeableConcept category;
  @HiveField(6)
  CodeableConcept code;
  @HiveField(7)
  String timingDate;
  @HiveField(8)
  Element elementTimingDate;
  @HiveField(9)
  Period timingPeriod;
  @HiveField(10)
  bool valueBoolean;
  @HiveField(11)
  Element elementValueBoolean;
  @HiveField(12)
  String valueString;
  @HiveField(13)
  Element elementValueString;
  @HiveField(14)
  Quantity valueQuantity;
  @HiveField(15)
  Attachment valueAttachment;
  @HiveField(16)
  Reference valueReference;
  @HiveField(17)
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
      id: id,
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
  CodeableConcept diagnosisCodeableConcept;
  @HiveField(6)
  Reference diagnosisReference;
  @HiveField(7)
  List<CodeableConcept> type;
  @HiveField(8)
  CodeableConcept onAdmission;
  @HiveField(9)
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
      id: id,
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
  List<CodeableConcept> type;
  @HiveField(6)
  DateTime date;
  @HiveField(7)
  Element elementDate;
  @HiveField(8)
  CodeableConcept procedureCodeableConcept;
  @HiveField(9)
  Reference procedureReference;
  @HiveField(10)
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
      id: id,
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
  Identifier identifier;
  @HiveField(8)
  Reference coverage;
  @HiveField(9)
  String businessArrangement;
  @HiveField(10)
  Element elementBusinessArrangement;
  @HiveField(11)
  List<String> preAuthRef;
  @HiveField(12)
  List<Element> elementPreAuthRef;
  @HiveField(13)
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
      id: id,
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

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  String date;
  @HiveField(4)
  Element elementDate;
  @HiveField(5)
  CodeableConcept type;
  @HiveField(6)
  Address locationAddress;
  @HiveField(7)
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
      id: id,
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
  List<int> careTeamSequence;
  @HiveField(6)
  List<Element> elementCareTeamSequence;
  @HiveField(7)
  List<int> diagnosisSequence;
  @HiveField(8)
  List<Element> elementDiagnosisSequence;
  @HiveField(9)
  List<int> procedureSequence;
  @HiveField(10)
  List<Element> elementProcedureSequence;
  @HiveField(11)
  List<int> informationSequence;
  @HiveField(12)
  List<Element> elementInformationSequence;
  @HiveField(13)
  CodeableConcept revenue;
  @HiveField(14)
  CodeableConcept category;
  @HiveField(15)
  CodeableConcept productOrService;
  @HiveField(16)
  List<CodeableConcept> modifier;
  @HiveField(17)
  List<CodeableConcept> programCode;
  @HiveField(18)
  String servicedDate;
  @HiveField(19)
  Element elementServicedDate;
  @HiveField(20)
  Period servicedPeriod;
  @HiveField(21)
  CodeableConcept locationCodeableConcept;
  @HiveField(22)
  Address locationAddress;
  @HiveField(23)
  Reference locationReference;
  @HiveField(24)
  Quantity quantity;
  @HiveField(25)
  Money unitPrice;
  @HiveField(26)
  double factor;
  @HiveField(27)
  Element elementFactor;
  @HiveField(28)
  Money net;
  @HiveField(29)
  List<Reference> udi;
  @HiveField(30)
  CodeableConcept bodySite;
  @HiveField(31)
  List<CodeableConcept> subSite;
  @HiveField(32)
  List<Reference> encounter;
  @HiveField(33)
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
      id: id,
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
  CodeableConcept revenue;
  @HiveField(6)
  CodeableConcept category;
  @HiveField(7)
  CodeableConcept productOrService;
  @HiveField(8)
  List<CodeableConcept> modifier;
  @HiveField(9)
  List<CodeableConcept> programCode;
  @HiveField(10)
  Quantity quantity;
  @HiveField(11)
  Money unitPrice;
  @HiveField(12)
  double factor;
  @HiveField(13)
  Element elementFactor;
  @HiveField(14)
  Money net;
  @HiveField(15)
  List<Reference> udi;
  @HiveField(16)
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
      id: id,
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
  CodeableConcept revenue;
  @HiveField(6)
  CodeableConcept category;
  @HiveField(7)
  CodeableConcept productOrService;
  @HiveField(8)
  List<CodeableConcept> modifier;
  @HiveField(9)
  List<CodeableConcept> programCode;
  @HiveField(10)
  Quantity quantity;
  @HiveField(11)
  Money unitPrice;
  @HiveField(12)
  double factor;
  @HiveField(13)
  Element elementFactor;
  @HiveField(14)
  Money net;
  @HiveField(15)
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

Map<String, dynamic> _$ClaimToJson(Claim instance) {
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
  writeNotNull('billablePeriod', instance.billablePeriod?.toJson());
  writeNotNull('created', instance.created?.toIso8601String());
  writeNotNull('elementCreated', instance.elementCreated?.toJson());
  writeNotNull('enterer', instance.enterer?.toJson());
  writeNotNull('insurer', instance.insurer?.toJson());
  writeNotNull('provider', instance.provider?.toJson());
  writeNotNull('priority', instance.priority?.toJson());
  writeNotNull('fundsReserve', instance.fundsReserve?.toJson());
  writeNotNull('related', instance.related?.map((e) => e?.toJson())?.toList());
  writeNotNull('prescription', instance.prescription?.toJson());
  writeNotNull('originalPrescription', instance.originalPrescription?.toJson());
  writeNotNull('payee', instance.payee?.toJson());
  writeNotNull('referral', instance.referral?.toJson());
  writeNotNull('facility', instance.facility?.toJson());
  writeNotNull(
      'careTeam', instance.careTeam?.map((e) => e?.toJson())?.toList());
  writeNotNull('supportingInfo',
      instance.supportingInfo?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'diagnosis', instance.diagnosis?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'procedure', instance.procedure?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'insurance', instance.insurance?.map((e) => e?.toJson())?.toList());
  writeNotNull('accident', instance.accident?.toJson());
  writeNotNull('item', instance.item?.map((e) => e?.toJson())?.toList());
  writeNotNull('total', instance.total?.toJson());
  return val;
}

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

Map<String, dynamic> _$Claim_RelatedToJson(Claim_Related instance) {
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
  writeNotNull('claim', instance.claim?.toJson());
  writeNotNull('relationship', instance.relationship?.toJson());
  writeNotNull('reference', instance.reference?.toJson());
  return val;
}

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

Map<String, dynamic> _$Claim_PayeeToJson(Claim_Payee instance) {
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
  writeNotNull('party', instance.party?.toJson());
  return val;
}

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

Map<String, dynamic> _$Claim_CareTeamToJson(Claim_CareTeam instance) {
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
  writeNotNull('provider', instance.provider?.toJson());
  writeNotNull('responsible', instance.responsible);
  writeNotNull('elementResponsible', instance.elementResponsible?.toJson());
  writeNotNull('role', instance.role?.toJson());
  writeNotNull('qualification', instance.qualification?.toJson());
  return val;
}

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
    Claim_SupportingInfo instance) {
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
  writeNotNull('category', instance.category?.toJson());
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('timingDate', instance.timingDate);
  writeNotNull('elementTimingDate', instance.elementTimingDate?.toJson());
  writeNotNull('timingPeriod', instance.timingPeriod?.toJson());
  writeNotNull('valueBoolean', instance.valueBoolean);
  writeNotNull('elementValueBoolean', instance.elementValueBoolean?.toJson());
  writeNotNull('valueString', instance.valueString);
  writeNotNull('elementValueString', instance.elementValueString?.toJson());
  writeNotNull('valueQuantity', instance.valueQuantity?.toJson());
  writeNotNull('valueAttachment', instance.valueAttachment?.toJson());
  writeNotNull('valueReference', instance.valueReference?.toJson());
  writeNotNull('reason', instance.reason?.toJson());
  return val;
}

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

Map<String, dynamic> _$Claim_DiagnosisToJson(Claim_Diagnosis instance) {
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
  writeNotNull(
      'diagnosisCodeableConcept', instance.diagnosisCodeableConcept?.toJson());
  writeNotNull('diagnosisReference', instance.diagnosisReference?.toJson());
  writeNotNull('type', instance.type?.map((e) => e?.toJson())?.toList());
  writeNotNull('onAdmission', instance.onAdmission?.toJson());
  writeNotNull('packageCode', instance.packageCode?.toJson());
  return val;
}

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

Map<String, dynamic> _$Claim_ProcedureToJson(Claim_Procedure instance) {
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
  writeNotNull('type', instance.type?.map((e) => e?.toJson())?.toList());
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('elementDate', instance.elementDate?.toJson());
  writeNotNull(
      'procedureCodeableConcept', instance.procedureCodeableConcept?.toJson());
  writeNotNull('procedureReference', instance.procedureReference?.toJson());
  writeNotNull('udi', instance.udi?.map((e) => e?.toJson())?.toList());
  return val;
}

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

Map<String, dynamic> _$Claim_InsuranceToJson(Claim_Insurance instance) {
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
  writeNotNull('identifier', instance.identifier?.toJson());
  writeNotNull('coverage', instance.coverage?.toJson());
  writeNotNull('businessArrangement', instance.businessArrangement);
  writeNotNull('elementBusinessArrangement',
      instance.elementBusinessArrangement?.toJson());
  writeNotNull('preAuthRef', instance.preAuthRef);
  writeNotNull('elementPreAuthRef',
      instance.elementPreAuthRef?.map((e) => e?.toJson())?.toList());
  writeNotNull('claimResponse', instance.claimResponse?.toJson());
  return val;
}

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

Map<String, dynamic> _$Claim_AccidentToJson(Claim_Accident instance) {
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
  writeNotNull('date', instance.date);
  writeNotNull('elementDate', instance.elementDate?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('locationAddress', instance.locationAddress?.toJson());
  writeNotNull('locationReference', instance.locationReference?.toJson());
  return val;
}

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

Map<String, dynamic> _$Claim_ItemToJson(Claim_Item instance) {
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
  writeNotNull('careTeamSequence', instance.careTeamSequence);
  writeNotNull('elementCareTeamSequence',
      instance.elementCareTeamSequence?.map((e) => e?.toJson())?.toList());
  writeNotNull('diagnosisSequence', instance.diagnosisSequence);
  writeNotNull('elementDiagnosisSequence',
      instance.elementDiagnosisSequence?.map((e) => e?.toJson())?.toList());
  writeNotNull('procedureSequence', instance.procedureSequence);
  writeNotNull('elementProcedureSequence',
      instance.elementProcedureSequence?.map((e) => e?.toJson())?.toList());
  writeNotNull('informationSequence', instance.informationSequence);
  writeNotNull('elementInformationSequence',
      instance.elementInformationSequence?.map((e) => e?.toJson())?.toList());
  writeNotNull('revenue', instance.revenue?.toJson());
  writeNotNull('category', instance.category?.toJson());
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
  writeNotNull('udi', instance.udi?.map((e) => e?.toJson())?.toList());
  writeNotNull('bodySite', instance.bodySite?.toJson());
  writeNotNull('subSite', instance.subSite?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'encounter', instance.encounter?.map((e) => e?.toJson())?.toList());
  writeNotNull('detail', instance.detail?.map((e) => e?.toJson())?.toList());
  return val;
}

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

Map<String, dynamic> _$Claim_DetailToJson(Claim_Detail instance) {
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
  writeNotNull('revenue', instance.revenue?.toJson());
  writeNotNull('category', instance.category?.toJson());
  writeNotNull('productOrService', instance.productOrService?.toJson());
  writeNotNull(
      'modifier', instance.modifier?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'programCode', instance.programCode?.map((e) => e?.toJson())?.toList());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('unitPrice', instance.unitPrice?.toJson());
  writeNotNull('factor', instance.factor);
  writeNotNull('elementFactor', instance.elementFactor?.toJson());
  writeNotNull('net', instance.net?.toJson());
  writeNotNull('udi', instance.udi?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'subDetail', instance.subDetail?.map((e) => e?.toJson())?.toList());
  return val;
}

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

Map<String, dynamic> _$Claim_SubDetailToJson(Claim_SubDetail instance) {
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
  writeNotNull('revenue', instance.revenue?.toJson());
  writeNotNull('category', instance.category?.toJson());
  writeNotNull('productOrService', instance.productOrService?.toJson());
  writeNotNull(
      'modifier', instance.modifier?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'programCode', instance.programCode?.map((e) => e?.toJson())?.toList());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('unitPrice', instance.unitPrice?.toJson());
  writeNotNull('factor', instance.factor);
  writeNotNull('elementFactor', instance.elementFactor?.toJson());
  writeNotNull('net', instance.net?.toJson());
  writeNotNull('udi', instance.udi?.map((e) => e?.toJson())?.toList());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ClaimAdapter extends TypeAdapter<Claim> {
  @override
  Claim read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Claim(
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
      billablePeriod: fields[19] as Period,
      created: fields[20] as DateTime,
      elementCreated: fields[21] as Element,
      enterer: fields[22] as Reference,
      insurer: fields[23] as Reference,
      provider: fields[24] as Reference,
      priority: fields[25] as CodeableConcept,
      fundsReserve: fields[26] as CodeableConcept,
      related: (fields[27] as List)?.cast<Claim_Related>(),
      prescription: fields[28] as Reference,
      originalPrescription: fields[29] as Reference,
      payee: fields[30] as Claim_Payee,
      referral: fields[31] as Reference,
      facility: fields[32] as Reference,
      careTeam: (fields[33] as List)?.cast<Claim_CareTeam>(),
      supportingInfo: (fields[34] as List)?.cast<Claim_SupportingInfo>(),
      diagnosis: (fields[35] as List)?.cast<Claim_Diagnosis>(),
      procedure: (fields[36] as List)?.cast<Claim_Procedure>(),
      insurance: (fields[37] as List)?.cast<Claim_Insurance>(),
      accident: fields[38] as Claim_Accident,
      item: (fields[39] as List)?.cast<Claim_Item>(),
      total: fields[40] as Money,
    );
  }

  @override
  void write(BinaryWriter writer, Claim obj) {
    writer
      ..writeByte(41)
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
      ..write(obj.billablePeriod)
      ..writeByte(20)
      ..write(obj.created)
      ..writeByte(21)
      ..write(obj.elementCreated)
      ..writeByte(22)
      ..write(obj.enterer)
      ..writeByte(23)
      ..write(obj.insurer)
      ..writeByte(24)
      ..write(obj.provider)
      ..writeByte(25)
      ..write(obj.priority)
      ..writeByte(26)
      ..write(obj.fundsReserve)
      ..writeByte(27)
      ..write(obj.related)
      ..writeByte(28)
      ..write(obj.prescription)
      ..writeByte(29)
      ..write(obj.originalPrescription)
      ..writeByte(30)
      ..write(obj.payee)
      ..writeByte(31)
      ..write(obj.referral)
      ..writeByte(32)
      ..write(obj.facility)
      ..writeByte(33)
      ..write(obj.careTeam)
      ..writeByte(34)
      ..write(obj.supportingInfo)
      ..writeByte(35)
      ..write(obj.diagnosis)
      ..writeByte(36)
      ..write(obj.procedure)
      ..writeByte(37)
      ..write(obj.insurance)
      ..writeByte(38)
      ..write(obj.accident)
      ..writeByte(39)
      ..write(obj.item)
      ..writeByte(40)
      ..write(obj.total);
  }
}

class Claim_RelatedAdapter extends TypeAdapter<Claim_Related> {
  @override
  Claim_Related read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Claim_Related(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      claim: fields[3] as Reference,
      relationship: fields[4] as CodeableConcept,
      reference: fields[5] as Identifier,
    );
  }

  @override
  void write(BinaryWriter writer, Claim_Related obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.claim)
      ..writeByte(4)
      ..write(obj.relationship)
      ..writeByte(5)
      ..write(obj.reference);
  }
}

class Claim_PayeeAdapter extends TypeAdapter<Claim_Payee> {
  @override
  Claim_Payee read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Claim_Payee(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as CodeableConcept,
      party: fields[4] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, Claim_Payee obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.party);
  }
}

class Claim_CareTeamAdapter extends TypeAdapter<Claim_CareTeam> {
  @override
  Claim_CareTeam read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Claim_CareTeam(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      sequence: fields[3] as int,
      elementSequence: fields[4] as Element,
      provider: fields[5] as Reference,
      responsible: fields[6] as bool,
      elementResponsible: fields[7] as Element,
      role: fields[8] as CodeableConcept,
      qualification: fields[9] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, Claim_CareTeam obj) {
    writer
      ..writeByte(10)
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
      ..write(obj.provider)
      ..writeByte(6)
      ..write(obj.responsible)
      ..writeByte(7)
      ..write(obj.elementResponsible)
      ..writeByte(8)
      ..write(obj.role)
      ..writeByte(9)
      ..write(obj.qualification);
  }
}

class Claim_SupportingInfoAdapter extends TypeAdapter<Claim_SupportingInfo> {
  @override
  Claim_SupportingInfo read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Claim_SupportingInfo(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      sequence: fields[3] as int,
      elementSequence: fields[4] as Element,
      category: fields[5] as CodeableConcept,
      code: fields[6] as CodeableConcept,
      timingDate: fields[7] as String,
      elementTimingDate: fields[8] as Element,
      timingPeriod: fields[9] as Period,
      valueBoolean: fields[10] as bool,
      elementValueBoolean: fields[11] as Element,
      valueString: fields[12] as String,
      elementValueString: fields[13] as Element,
      valueQuantity: fields[14] as Quantity,
      valueAttachment: fields[15] as Attachment,
      valueReference: fields[16] as Reference,
      reason: fields[17] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, Claim_SupportingInfo obj) {
    writer
      ..writeByte(18)
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
      ..write(obj.category)
      ..writeByte(6)
      ..write(obj.code)
      ..writeByte(7)
      ..write(obj.timingDate)
      ..writeByte(8)
      ..write(obj.elementTimingDate)
      ..writeByte(9)
      ..write(obj.timingPeriod)
      ..writeByte(10)
      ..write(obj.valueBoolean)
      ..writeByte(11)
      ..write(obj.elementValueBoolean)
      ..writeByte(12)
      ..write(obj.valueString)
      ..writeByte(13)
      ..write(obj.elementValueString)
      ..writeByte(14)
      ..write(obj.valueQuantity)
      ..writeByte(15)
      ..write(obj.valueAttachment)
      ..writeByte(16)
      ..write(obj.valueReference)
      ..writeByte(17)
      ..write(obj.reason);
  }
}

class Claim_DiagnosisAdapter extends TypeAdapter<Claim_Diagnosis> {
  @override
  Claim_Diagnosis read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Claim_Diagnosis(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      sequence: fields[3] as int,
      elementSequence: fields[4] as Element,
      diagnosisCodeableConcept: fields[5] as CodeableConcept,
      diagnosisReference: fields[6] as Reference,
      type: (fields[7] as List)?.cast<CodeableConcept>(),
      onAdmission: fields[8] as CodeableConcept,
      packageCode: fields[9] as CodeableConcept,
    );
  }

  @override
  void write(BinaryWriter writer, Claim_Diagnosis obj) {
    writer
      ..writeByte(10)
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
      ..write(obj.diagnosisCodeableConcept)
      ..writeByte(6)
      ..write(obj.diagnosisReference)
      ..writeByte(7)
      ..write(obj.type)
      ..writeByte(8)
      ..write(obj.onAdmission)
      ..writeByte(9)
      ..write(obj.packageCode);
  }
}

class Claim_ProcedureAdapter extends TypeAdapter<Claim_Procedure> {
  @override
  Claim_Procedure read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Claim_Procedure(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      sequence: fields[3] as int,
      elementSequence: fields[4] as Element,
      type: (fields[5] as List)?.cast<CodeableConcept>(),
      date: fields[6] as DateTime,
      elementDate: fields[7] as Element,
      procedureCodeableConcept: fields[8] as CodeableConcept,
      procedureReference: fields[9] as Reference,
      udi: (fields[10] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, Claim_Procedure obj) {
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
      ..write(obj.type)
      ..writeByte(6)
      ..write(obj.date)
      ..writeByte(7)
      ..write(obj.elementDate)
      ..writeByte(8)
      ..write(obj.procedureCodeableConcept)
      ..writeByte(9)
      ..write(obj.procedureReference)
      ..writeByte(10)
      ..write(obj.udi);
  }
}

class Claim_InsuranceAdapter extends TypeAdapter<Claim_Insurance> {
  @override
  Claim_Insurance read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Claim_Insurance(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      sequence: fields[3] as int,
      elementSequence: fields[4] as Element,
      focal: fields[5] as bool,
      elementFocal: fields[6] as Element,
      identifier: fields[7] as Identifier,
      coverage: fields[8] as Reference,
      businessArrangement: fields[9] as String,
      elementBusinessArrangement: fields[10] as Element,
      preAuthRef: (fields[11] as List)?.cast<String>(),
      elementPreAuthRef: (fields[12] as List)?.cast<Element>(),
      claimResponse: fields[13] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, Claim_Insurance obj) {
    writer
      ..writeByte(14)
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
      ..write(obj.identifier)
      ..writeByte(8)
      ..write(obj.coverage)
      ..writeByte(9)
      ..write(obj.businessArrangement)
      ..writeByte(10)
      ..write(obj.elementBusinessArrangement)
      ..writeByte(11)
      ..write(obj.preAuthRef)
      ..writeByte(12)
      ..write(obj.elementPreAuthRef)
      ..writeByte(13)
      ..write(obj.claimResponse);
  }
}

class Claim_AccidentAdapter extends TypeAdapter<Claim_Accident> {
  @override
  Claim_Accident read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Claim_Accident(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      date: fields[3] as String,
      elementDate: fields[4] as Element,
      type: fields[5] as CodeableConcept,
      locationAddress: fields[6] as Address,
      locationReference: fields[7] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, Claim_Accident obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.date)
      ..writeByte(4)
      ..write(obj.elementDate)
      ..writeByte(5)
      ..write(obj.type)
      ..writeByte(6)
      ..write(obj.locationAddress)
      ..writeByte(7)
      ..write(obj.locationReference);
  }
}

class Claim_ItemAdapter extends TypeAdapter<Claim_Item> {
  @override
  Claim_Item read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Claim_Item(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      sequence: fields[3] as int,
      elementSequence: fields[4] as Element,
      careTeamSequence: (fields[5] as List)?.cast<int>(),
      elementCareTeamSequence: (fields[6] as List)?.cast<Element>(),
      diagnosisSequence: (fields[7] as List)?.cast<int>(),
      elementDiagnosisSequence: (fields[8] as List)?.cast<Element>(),
      procedureSequence: (fields[9] as List)?.cast<int>(),
      elementProcedureSequence: (fields[10] as List)?.cast<Element>(),
      informationSequence: (fields[11] as List)?.cast<int>(),
      elementInformationSequence: (fields[12] as List)?.cast<Element>(),
      revenue: fields[13] as CodeableConcept,
      category: fields[14] as CodeableConcept,
      productOrService: fields[15] as CodeableConcept,
      modifier: (fields[16] as List)?.cast<CodeableConcept>(),
      programCode: (fields[17] as List)?.cast<CodeableConcept>(),
      servicedDate: fields[18] as String,
      elementServicedDate: fields[19] as Element,
      servicedPeriod: fields[20] as Period,
      locationCodeableConcept: fields[21] as CodeableConcept,
      locationAddress: fields[22] as Address,
      locationReference: fields[23] as Reference,
      quantity: fields[24] as Quantity,
      unitPrice: fields[25] as Money,
      factor: fields[26] as double,
      elementFactor: fields[27] as Element,
      net: fields[28] as Money,
      udi: (fields[29] as List)?.cast<Reference>(),
      bodySite: fields[30] as CodeableConcept,
      subSite: (fields[31] as List)?.cast<CodeableConcept>(),
      encounter: (fields[32] as List)?.cast<Reference>(),
      detail: (fields[33] as List)?.cast<Claim_Detail>(),
    );
  }

  @override
  void write(BinaryWriter writer, Claim_Item obj) {
    writer
      ..writeByte(34)
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
      ..write(obj.careTeamSequence)
      ..writeByte(6)
      ..write(obj.elementCareTeamSequence)
      ..writeByte(7)
      ..write(obj.diagnosisSequence)
      ..writeByte(8)
      ..write(obj.elementDiagnosisSequence)
      ..writeByte(9)
      ..write(obj.procedureSequence)
      ..writeByte(10)
      ..write(obj.elementProcedureSequence)
      ..writeByte(11)
      ..write(obj.informationSequence)
      ..writeByte(12)
      ..write(obj.elementInformationSequence)
      ..writeByte(13)
      ..write(obj.revenue)
      ..writeByte(14)
      ..write(obj.category)
      ..writeByte(15)
      ..write(obj.productOrService)
      ..writeByte(16)
      ..write(obj.modifier)
      ..writeByte(17)
      ..write(obj.programCode)
      ..writeByte(18)
      ..write(obj.servicedDate)
      ..writeByte(19)
      ..write(obj.elementServicedDate)
      ..writeByte(20)
      ..write(obj.servicedPeriod)
      ..writeByte(21)
      ..write(obj.locationCodeableConcept)
      ..writeByte(22)
      ..write(obj.locationAddress)
      ..writeByte(23)
      ..write(obj.locationReference)
      ..writeByte(24)
      ..write(obj.quantity)
      ..writeByte(25)
      ..write(obj.unitPrice)
      ..writeByte(26)
      ..write(obj.factor)
      ..writeByte(27)
      ..write(obj.elementFactor)
      ..writeByte(28)
      ..write(obj.net)
      ..writeByte(29)
      ..write(obj.udi)
      ..writeByte(30)
      ..write(obj.bodySite)
      ..writeByte(31)
      ..write(obj.subSite)
      ..writeByte(32)
      ..write(obj.encounter)
      ..writeByte(33)
      ..write(obj.detail);
  }
}

class Claim_DetailAdapter extends TypeAdapter<Claim_Detail> {
  @override
  Claim_Detail read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Claim_Detail(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      sequence: fields[3] as int,
      elementSequence: fields[4] as Element,
      revenue: fields[5] as CodeableConcept,
      category: fields[6] as CodeableConcept,
      productOrService: fields[7] as CodeableConcept,
      modifier: (fields[8] as List)?.cast<CodeableConcept>(),
      programCode: (fields[9] as List)?.cast<CodeableConcept>(),
      quantity: fields[10] as Quantity,
      unitPrice: fields[11] as Money,
      factor: fields[12] as double,
      elementFactor: fields[13] as Element,
      net: fields[14] as Money,
      udi: (fields[15] as List)?.cast<Reference>(),
      subDetail: (fields[16] as List)?.cast<Claim_SubDetail>(),
    );
  }

  @override
  void write(BinaryWriter writer, Claim_Detail obj) {
    writer
      ..writeByte(17)
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
      ..write(obj.revenue)
      ..writeByte(6)
      ..write(obj.category)
      ..writeByte(7)
      ..write(obj.productOrService)
      ..writeByte(8)
      ..write(obj.modifier)
      ..writeByte(9)
      ..write(obj.programCode)
      ..writeByte(10)
      ..write(obj.quantity)
      ..writeByte(11)
      ..write(obj.unitPrice)
      ..writeByte(12)
      ..write(obj.factor)
      ..writeByte(13)
      ..write(obj.elementFactor)
      ..writeByte(14)
      ..write(obj.net)
      ..writeByte(15)
      ..write(obj.udi)
      ..writeByte(16)
      ..write(obj.subDetail);
  }
}

class Claim_SubDetailAdapter extends TypeAdapter<Claim_SubDetail> {
  @override
  Claim_SubDetail read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Claim_SubDetail(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      sequence: fields[3] as int,
      elementSequence: fields[4] as Element,
      revenue: fields[5] as CodeableConcept,
      category: fields[6] as CodeableConcept,
      productOrService: fields[7] as CodeableConcept,
      modifier: (fields[8] as List)?.cast<CodeableConcept>(),
      programCode: (fields[9] as List)?.cast<CodeableConcept>(),
      quantity: fields[10] as Quantity,
      unitPrice: fields[11] as Money,
      factor: fields[12] as double,
      elementFactor: fields[13] as Element,
      net: fields[14] as Money,
      udi: (fields[15] as List)?.cast<Reference>(),
    );
  }

  @override
  void write(BinaryWriter writer, Claim_SubDetail obj) {
    writer
      ..writeByte(16)
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
      ..write(obj.revenue)
      ..writeByte(6)
      ..write(obj.category)
      ..writeByte(7)
      ..write(obj.productOrService)
      ..writeByte(8)
      ..write(obj.modifier)
      ..writeByte(9)
      ..write(obj.programCode)
      ..writeByte(10)
      ..write(obj.quantity)
      ..writeByte(11)
      ..write(obj.unitPrice)
      ..writeByte(12)
      ..write(obj.factor)
      ..writeByte(13)
      ..write(obj.elementFactor)
      ..writeByte(14)
      ..write(obj.net)
      ..writeByte(15)
      ..write(obj.udi);
  }
}
