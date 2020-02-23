import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/address.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
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

class ExplanationOfBenefit {
  static Future<ExplanationOfBenefit> newInstance({
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
    CodeableConcept fundsReserveRequested,
    CodeableConcept fundsReserve,
    List<ExplanationOfBenefit_Related> related,
    Reference prescription,
    Reference originalPrescription,
    ExplanationOfBenefit_Payee payee,
    Reference referral,
    Reference facility,
    Reference claim,
    Reference claimResponse,
    String outcome,
    Element elementOutcome,
    String disposition,
    Element elementDisposition,
    List<String> preAuthRef,
    List<Element> elementPreAuthRef,
    List<Period> preAuthRefPeriod,
    List<ExplanationOfBenefit_CareTeam> careTeam,
    List<ExplanationOfBenefit_SupportingInfo> supportingInfo,
    List<ExplanationOfBenefit_Diagnosis> diagnosis,
    List<ExplanationOfBenefit_Procedure> procedure,
    int precedence,
    Element elementPrecedence,
    List<ExplanationOfBenefit_Insurance> insurance,
    ExplanationOfBenefit_Accident accident,
    List<ExplanationOfBenefit_Item> item,
    List<ExplanationOfBenefit_AddItem> addItem,
    List<ExplanationOfBenefit_Adjudication> adjudication,
    List<ExplanationOfBenefit_Total> total,
    ExplanationOfBenefit_Payment payment,
    CodeableConcept formCode,
    Attachment form,
    List<ExplanationOfBenefit_ProcessNote> processNote,
    Period benefitPeriod,
    List<ExplanationOfBenefit_BenefitBalance> benefitBalance,
  }) async {
    var fhirDb = new DatabaseHelper();
    ExplanationOfBenefit newExplanationOfBenefit = new ExplanationOfBenefit(
      resourceType: 'ExplanationOfBenefit',
      id: id ?? await fhirDb.newResourceId('ExplanationOfBenefit'),
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
      fundsReserveRequested: fundsReserveRequested,
      fundsReserve: fundsReserve,
      related: related,
      prescription: prescription,
      originalPrescription: originalPrescription,
      payee: payee,
      referral: referral,
      facility: facility,
      claim: claim,
      claimResponse: claimResponse,
      outcome: outcome,
      elementOutcome: elementOutcome,
      disposition: disposition,
      elementDisposition: elementDisposition,
      preAuthRef: preAuthRef,
      elementPreAuthRef: elementPreAuthRef,
      preAuthRefPeriod: preAuthRefPeriod,
      careTeam: careTeam,
      supportingInfo: supportingInfo,
      diagnosis: diagnosis,
      procedure: procedure,
      precedence: precedence,
      elementPrecedence: elementPrecedence,
      insurance: insurance,
      accident: accident,
      item: item,
      addItem: addItem,
      adjudication: adjudication,
      total: total,
      payment: payment,
      formCode: formCode,
      form: form,
      processNote: processNote,
      benefitPeriod: benefitPeriod,
      benefitBalance: benefitBalance,
    );
    newExplanationOfBenefit.meta.createdAt = DateTime.now();
    newExplanationOfBenefit.meta.lastUpdated =
        newExplanationOfBenefit.meta.createdAt;
    int saved = await fhirDb.saveResource(newExplanationOfBenefit);
    return newExplanationOfBenefit;
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
  String resourceType = 'ExplanationOfBenefit';
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
  CodeableConcept fundsReserveRequested;
  @HiveField(27)
  CodeableConcept fundsReserve;
  @HiveField(28)
  List<ExplanationOfBenefit_Related> related;
  @HiveField(29)
  Reference prescription;
  @HiveField(30)
  Reference originalPrescription;
  @HiveField(31)
  ExplanationOfBenefit_Payee payee;
  @HiveField(32)
  Reference referral;
  @HiveField(33)
  Reference facility;
  @HiveField(34)
  Reference claim;
  @HiveField(35)
  Reference claimResponse;
  @HiveField(36)
  String outcome;
  @HiveField(37)
  Element elementOutcome;
  @HiveField(38)
  String disposition;
  @HiveField(39)
  Element elementDisposition;
  @HiveField(40)
  List<String> preAuthRef;
  @HiveField(41)
  List<Element> elementPreAuthRef;
  @HiveField(42)
  List<Period> preAuthRefPeriod;
  @HiveField(43)
  List<ExplanationOfBenefit_CareTeam> careTeam;
  @HiveField(44)
  List<ExplanationOfBenefit_SupportingInfo> supportingInfo;
  @HiveField(45)
  List<ExplanationOfBenefit_Diagnosis> diagnosis;
  @HiveField(46)
  List<ExplanationOfBenefit_Procedure> procedure;
  @HiveField(47)
  int precedence;
  @HiveField(48)
  Element elementPrecedence;
  @HiveField(49)
  List<ExplanationOfBenefit_Insurance> insurance;
  @HiveField(50)
  ExplanationOfBenefit_Accident accident;
  @HiveField(51)
  List<ExplanationOfBenefit_Item> item;
  @HiveField(52)
  List<ExplanationOfBenefit_AddItem> addItem;
  @HiveField(53)
  List<ExplanationOfBenefit_Adjudication> adjudication;
  @HiveField(54)
  List<ExplanationOfBenefit_Total> total;
  @HiveField(55)
  ExplanationOfBenefit_Payment payment;
  @HiveField(56)
  CodeableConcept formCode;
  @HiveField(57)
  Attachment form;
  @HiveField(58)
  List<ExplanationOfBenefit_ProcessNote> processNote;
  @HiveField(59)
  Period benefitPeriod;
  @HiveField(60)
  List<ExplanationOfBenefit_BenefitBalance> benefitBalance;

  ExplanationOfBenefit({
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
    @required this.insurer,
    @required this.provider,
    this.priority,
    this.fundsReserveRequested,
    this.fundsReserve,
    this.related,
    this.prescription,
    this.originalPrescription,
    this.payee,
    this.referral,
    this.facility,
    this.claim,
    this.claimResponse,
    this.outcome,
    this.elementOutcome,
    this.disposition,
    this.elementDisposition,
    this.preAuthRef,
    this.elementPreAuthRef,
    this.preAuthRefPeriod,
    this.careTeam,
    this.supportingInfo,
    this.diagnosis,
    this.procedure,
    this.precedence,
    this.elementPrecedence,
    @required this.insurance,
    this.accident,
    this.item,
    this.addItem,
    this.adjudication,
    this.total,
    this.payment,
    this.formCode,
    this.form,
    this.processNote,
    this.benefitPeriod,
    this.benefitBalance,
  });

  factory ExplanationOfBenefit.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefitFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefitToJson(this);
}

class ExplanationOfBenefit_Related {
  static Future<ExplanationOfBenefit_Related> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    Reference claim,
    CodeableConcept relationship,
    Identifier reference,
  }) async {
    var fhirDb = new DatabaseHelper();
    ExplanationOfBenefit_Related newExplanationOfBenefit_Related =
        new ExplanationOfBenefit_Related(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      claim: claim,
      relationship: relationship,
      reference: reference,
    );
    return newExplanationOfBenefit_Related;
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

  ExplanationOfBenefit_Related({
    this.id,
    this.extension,
    this.modifierExtension,
    this.claim,
    this.relationship,
    this.reference,
  });

  factory ExplanationOfBenefit_Related.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefit_RelatedFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_RelatedToJson(this);
}

class ExplanationOfBenefit_Payee {
  static Future<ExplanationOfBenefit_Payee> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept type,
    Reference party,
  }) async {
    var fhirDb = new DatabaseHelper();
    ExplanationOfBenefit_Payee newExplanationOfBenefit_Payee =
        new ExplanationOfBenefit_Payee(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      party: party,
    );
    return newExplanationOfBenefit_Payee;
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

  ExplanationOfBenefit_Payee({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.party,
  });

  factory ExplanationOfBenefit_Payee.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefit_PayeeFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_PayeeToJson(this);
}

class ExplanationOfBenefit_CareTeam {
  static Future<ExplanationOfBenefit_CareTeam> newInstance({
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
    ExplanationOfBenefit_CareTeam newExplanationOfBenefit_CareTeam =
        new ExplanationOfBenefit_CareTeam(
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
    return newExplanationOfBenefit_CareTeam;
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

  ExplanationOfBenefit_CareTeam({
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

  factory ExplanationOfBenefit_CareTeam.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefit_CareTeamFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_CareTeamToJson(this);
}

class ExplanationOfBenefit_SupportingInfo {
  static Future<ExplanationOfBenefit_SupportingInfo> newInstance({
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
    Coding reason,
  }) async {
    var fhirDb = new DatabaseHelper();
    ExplanationOfBenefit_SupportingInfo newExplanationOfBenefit_SupportingInfo =
        new ExplanationOfBenefit_SupportingInfo(
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
    return newExplanationOfBenefit_SupportingInfo;
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
  Coding reason;

  ExplanationOfBenefit_SupportingInfo({
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

  factory ExplanationOfBenefit_SupportingInfo.fromJson(
          Map<String, dynamic> json) =>
      _$ExplanationOfBenefit_SupportingInfoFromJson(json);
  Map<String, dynamic> toJson() =>
      _$ExplanationOfBenefit_SupportingInfoToJson(this);
}

class ExplanationOfBenefit_Diagnosis {
  static Future<ExplanationOfBenefit_Diagnosis> newInstance({
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
    ExplanationOfBenefit_Diagnosis newExplanationOfBenefit_Diagnosis =
        new ExplanationOfBenefit_Diagnosis(
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
    return newExplanationOfBenefit_Diagnosis;
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

  ExplanationOfBenefit_Diagnosis({
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

  factory ExplanationOfBenefit_Diagnosis.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefit_DiagnosisFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_DiagnosisToJson(this);
}

class ExplanationOfBenefit_Procedure {
  static Future<ExplanationOfBenefit_Procedure> newInstance({
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
    ExplanationOfBenefit_Procedure newExplanationOfBenefit_Procedure =
        new ExplanationOfBenefit_Procedure(
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
    return newExplanationOfBenefit_Procedure;
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

  ExplanationOfBenefit_Procedure({
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

  factory ExplanationOfBenefit_Procedure.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefit_ProcedureFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_ProcedureToJson(this);
}

class ExplanationOfBenefit_Insurance {
  static Future<ExplanationOfBenefit_Insurance> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    bool focal,
    Element elementFocal,
    Reference coverage,
    List<String> preAuthRef,
    List<Element> elementPreAuthRef,
  }) async {
    var fhirDb = new DatabaseHelper();
    ExplanationOfBenefit_Insurance newExplanationOfBenefit_Insurance =
        new ExplanationOfBenefit_Insurance(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      focal: focal,
      elementFocal: elementFocal,
      coverage: coverage,
      preAuthRef: preAuthRef,
      elementPreAuthRef: elementPreAuthRef,
    );
    return newExplanationOfBenefit_Insurance;
  }

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Extension> extension;
  @HiveField(2)
  List<Extension> modifierExtension;
  @HiveField(3)
  bool focal;
  @HiveField(4)
  Element elementFocal;
  @HiveField(5)
  Reference coverage;
  @HiveField(6)
  List<String> preAuthRef;
  @HiveField(7)
  List<Element> elementPreAuthRef;

  ExplanationOfBenefit_Insurance({
    this.id,
    this.extension,
    this.modifierExtension,
    this.focal,
    this.elementFocal,
    @required this.coverage,
    this.preAuthRef,
    this.elementPreAuthRef,
  });

  factory ExplanationOfBenefit_Insurance.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefit_InsuranceFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_InsuranceToJson(this);
}

class ExplanationOfBenefit_Accident {
  static Future<ExplanationOfBenefit_Accident> newInstance({
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
    ExplanationOfBenefit_Accident newExplanationOfBenefit_Accident =
        new ExplanationOfBenefit_Accident(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      date: date,
      elementDate: elementDate,
      type: type,
      locationAddress: locationAddress,
      locationReference: locationReference,
    );
    return newExplanationOfBenefit_Accident;
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

  ExplanationOfBenefit_Accident({
    this.id,
    this.extension,
    this.modifierExtension,
    this.date,
    this.elementDate,
    this.type,
    this.locationAddress,
    this.locationReference,
  });

  factory ExplanationOfBenefit_Accident.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefit_AccidentFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_AccidentToJson(this);
}

class ExplanationOfBenefit_Item {
  static Future<ExplanationOfBenefit_Item> newInstance({
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
    List<int> noteNumber,
    List<Element> elementNoteNumber,
    List<ExplanationOfBenefit_Adjudication> adjudication,
    List<ExplanationOfBenefit_Detail> detail,
  }) async {
    var fhirDb = new DatabaseHelper();
    ExplanationOfBenefit_Item newExplanationOfBenefit_Item =
        new ExplanationOfBenefit_Item(
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
      noteNumber: noteNumber,
      elementNoteNumber: elementNoteNumber,
      adjudication: adjudication,
      detail: detail,
    );
    return newExplanationOfBenefit_Item;
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
  List<int> noteNumber;
  @HiveField(34)
  List<Element> elementNoteNumber;
  @HiveField(35)
  List<ExplanationOfBenefit_Adjudication> adjudication;
  @HiveField(36)
  List<ExplanationOfBenefit_Detail> detail;

  ExplanationOfBenefit_Item({
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
    this.noteNumber,
    this.elementNoteNumber,
    this.adjudication,
    this.detail,
  });

  factory ExplanationOfBenefit_Item.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefit_ItemFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_ItemToJson(this);
}

class ExplanationOfBenefit_Adjudication {
  static Future<ExplanationOfBenefit_Adjudication> newInstance({
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
    ExplanationOfBenefit_Adjudication newExplanationOfBenefit_Adjudication =
        new ExplanationOfBenefit_Adjudication(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      category: category,
      reason: reason,
      amount: amount,
      value: value,
      elementValue: elementValue,
    );
    return newExplanationOfBenefit_Adjudication;
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

  ExplanationOfBenefit_Adjudication({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.category,
    this.reason,
    this.amount,
    this.value,
    this.elementValue,
  });

  factory ExplanationOfBenefit_Adjudication.fromJson(
          Map<String, dynamic> json) =>
      _$ExplanationOfBenefit_AdjudicationFromJson(json);
  Map<String, dynamic> toJson() =>
      _$ExplanationOfBenefit_AdjudicationToJson(this);
}

class ExplanationOfBenefit_Detail {
  static Future<ExplanationOfBenefit_Detail> newInstance({
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
    List<int> noteNumber,
    List<Element> elementNoteNumber,
    List<ExplanationOfBenefit_Adjudication> adjudication,
    List<ExplanationOfBenefit_SubDetail> subDetail,
  }) async {
    var fhirDb = new DatabaseHelper();
    ExplanationOfBenefit_Detail newExplanationOfBenefit_Detail =
        new ExplanationOfBenefit_Detail(
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
      noteNumber: noteNumber,
      elementNoteNumber: elementNoteNumber,
      adjudication: adjudication,
      subDetail: subDetail,
    );
    return newExplanationOfBenefit_Detail;
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
  List<int> noteNumber;
  @HiveField(17)
  List<Element> elementNoteNumber;
  @HiveField(18)
  List<ExplanationOfBenefit_Adjudication> adjudication;
  @HiveField(19)
  List<ExplanationOfBenefit_SubDetail> subDetail;

  ExplanationOfBenefit_Detail({
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
    this.noteNumber,
    this.elementNoteNumber,
    this.adjudication,
    this.subDetail,
  });

  factory ExplanationOfBenefit_Detail.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefit_DetailFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_DetailToJson(this);
}

class ExplanationOfBenefit_SubDetail {
  static Future<ExplanationOfBenefit_SubDetail> newInstance({
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
    List<int> noteNumber,
    List<Element> elementNoteNumber,
    List<ExplanationOfBenefit_Adjudication> adjudication,
  }) async {
    var fhirDb = new DatabaseHelper();
    ExplanationOfBenefit_SubDetail newExplanationOfBenefit_SubDetail =
        new ExplanationOfBenefit_SubDetail(
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
      noteNumber: noteNumber,
      elementNoteNumber: elementNoteNumber,
      adjudication: adjudication,
    );
    return newExplanationOfBenefit_SubDetail;
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
  List<int> noteNumber;
  @HiveField(17)
  List<Element> elementNoteNumber;
  @HiveField(18)
  List<ExplanationOfBenefit_Adjudication> adjudication;

  ExplanationOfBenefit_SubDetail({
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
    this.noteNumber,
    this.elementNoteNumber,
    this.adjudication,
  });

  factory ExplanationOfBenefit_SubDetail.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefit_SubDetailFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_SubDetailToJson(this);
}

class ExplanationOfBenefit_AddItem {
  static Future<ExplanationOfBenefit_AddItem> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    List<int> itemSequence,
    List<Element> elementItemSequence,
    List<int> detailSequence,
    List<Element> elementDetailSequence,
    List<int> subDetailSequence,
    List<Element> elementSubDetailSequence,
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
    List<ExplanationOfBenefit_Adjudication> adjudication,
    List<ExplanationOfBenefit_Detail1> detail,
  }) async {
    var fhirDb = new DatabaseHelper();
    ExplanationOfBenefit_AddItem newExplanationOfBenefit_AddItem =
        new ExplanationOfBenefit_AddItem(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      itemSequence: itemSequence,
      elementItemSequence: elementItemSequence,
      detailSequence: detailSequence,
      elementDetailSequence: elementDetailSequence,
      subDetailSequence: subDetailSequence,
      elementSubDetailSequence: elementSubDetailSequence,
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
    return newExplanationOfBenefit_AddItem;
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
  List<int> subDetailSequence;
  @HiveField(8)
  List<Element> elementSubDetailSequence;
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
  List<ExplanationOfBenefit_Adjudication> adjudication;
  @HiveField(29)
  List<ExplanationOfBenefit_Detail1> detail;

  ExplanationOfBenefit_AddItem({
    this.id,
    this.extension,
    this.modifierExtension,
    this.itemSequence,
    this.elementItemSequence,
    this.detailSequence,
    this.elementDetailSequence,
    this.subDetailSequence,
    this.elementSubDetailSequence,
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
    this.adjudication,
    this.detail,
  });

  factory ExplanationOfBenefit_AddItem.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefit_AddItemFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_AddItemToJson(this);
}

class ExplanationOfBenefit_Detail1 {
  static Future<ExplanationOfBenefit_Detail1> newInstance({
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
    List<ExplanationOfBenefit_Adjudication> adjudication,
    List<ExplanationOfBenefit_SubDetail1> subDetail,
  }) async {
    var fhirDb = new DatabaseHelper();
    ExplanationOfBenefit_Detail1 newExplanationOfBenefit_Detail1 =
        new ExplanationOfBenefit_Detail1(
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
    return newExplanationOfBenefit_Detail1;
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
  List<ExplanationOfBenefit_Adjudication> adjudication;
  @HiveField(13)
  List<ExplanationOfBenefit_SubDetail1> subDetail;

  ExplanationOfBenefit_Detail1({
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
    this.adjudication,
    this.subDetail,
  });

  factory ExplanationOfBenefit_Detail1.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefit_Detail1FromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_Detail1ToJson(this);
}

class ExplanationOfBenefit_SubDetail1 {
  static Future<ExplanationOfBenefit_SubDetail1> newInstance({
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
    List<ExplanationOfBenefit_Adjudication> adjudication,
  }) async {
    var fhirDb = new DatabaseHelper();
    ExplanationOfBenefit_SubDetail1 newExplanationOfBenefit_SubDetail1 =
        new ExplanationOfBenefit_SubDetail1(
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
    return newExplanationOfBenefit_SubDetail1;
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
  List<ExplanationOfBenefit_Adjudication> adjudication;

  ExplanationOfBenefit_SubDetail1({
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
    this.adjudication,
  });

  factory ExplanationOfBenefit_SubDetail1.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefit_SubDetail1FromJson(json);
  Map<String, dynamic> toJson() =>
      _$ExplanationOfBenefit_SubDetail1ToJson(this);
}

class ExplanationOfBenefit_Total {
  static Future<ExplanationOfBenefit_Total> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept category,
    Money amount,
  }) async {
    var fhirDb = new DatabaseHelper();
    ExplanationOfBenefit_Total newExplanationOfBenefit_Total =
        new ExplanationOfBenefit_Total(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      category: category,
      amount: amount,
    );
    return newExplanationOfBenefit_Total;
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

  ExplanationOfBenefit_Total({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.category,
    @required this.amount,
  });

  factory ExplanationOfBenefit_Total.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefit_TotalFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_TotalToJson(this);
}

class ExplanationOfBenefit_Payment {
  static Future<ExplanationOfBenefit_Payment> newInstance({
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
    ExplanationOfBenefit_Payment newExplanationOfBenefit_Payment =
        new ExplanationOfBenefit_Payment(
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
    return newExplanationOfBenefit_Payment;
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

  ExplanationOfBenefit_Payment({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.adjustment,
    this.adjustmentReason,
    this.date,
    this.elementDate,
    this.amount,
    this.identifier,
  });

  factory ExplanationOfBenefit_Payment.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefit_PaymentFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_PaymentToJson(this);
}

class ExplanationOfBenefit_ProcessNote {
  static Future<ExplanationOfBenefit_ProcessNote> newInstance({
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
    ExplanationOfBenefit_ProcessNote newExplanationOfBenefit_ProcessNote =
        new ExplanationOfBenefit_ProcessNote(
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
    return newExplanationOfBenefit_ProcessNote;
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

  ExplanationOfBenefit_ProcessNote({
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

  factory ExplanationOfBenefit_ProcessNote.fromJson(
          Map<String, dynamic> json) =>
      _$ExplanationOfBenefit_ProcessNoteFromJson(json);
  Map<String, dynamic> toJson() =>
      _$ExplanationOfBenefit_ProcessNoteToJson(this);
}

class ExplanationOfBenefit_BenefitBalance {
  static Future<ExplanationOfBenefit_BenefitBalance> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept category,
    bool excluded,
    Element elementExcluded,
    String name,
    Element elementName,
    String description,
    Element elementDescription,
    CodeableConcept network,
    CodeableConcept unit,
    CodeableConcept term,
    List<ExplanationOfBenefit_Financial> financial,
  }) async {
    var fhirDb = new DatabaseHelper();
    ExplanationOfBenefit_BenefitBalance newExplanationOfBenefit_BenefitBalance =
        new ExplanationOfBenefit_BenefitBalance(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      category: category,
      excluded: excluded,
      elementExcluded: elementExcluded,
      name: name,
      elementName: elementName,
      description: description,
      elementDescription: elementDescription,
      network: network,
      unit: unit,
      term: term,
      financial: financial,
    );
    return newExplanationOfBenefit_BenefitBalance;
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
  bool excluded;
  @HiveField(5)
  Element elementExcluded;
  @HiveField(6)
  String name;
  @HiveField(7)
  Element elementName;
  @HiveField(8)
  String description;
  @HiveField(9)
  Element elementDescription;
  @HiveField(10)
  CodeableConcept network;
  @HiveField(11)
  CodeableConcept unit;
  @HiveField(12)
  CodeableConcept term;
  @HiveField(13)
  List<ExplanationOfBenefit_Financial> financial;

  ExplanationOfBenefit_BenefitBalance({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.category,
    this.excluded,
    this.elementExcluded,
    this.name,
    this.elementName,
    this.description,
    this.elementDescription,
    this.network,
    this.unit,
    this.term,
    this.financial,
  });

  factory ExplanationOfBenefit_BenefitBalance.fromJson(
          Map<String, dynamic> json) =>
      _$ExplanationOfBenefit_BenefitBalanceFromJson(json);
  Map<String, dynamic> toJson() =>
      _$ExplanationOfBenefit_BenefitBalanceToJson(this);
}

class ExplanationOfBenefit_Financial {
  static Future<ExplanationOfBenefit_Financial> newInstance({
    String id,
    List<Extension> extension,
    List<Extension> modifierExtension,
    CodeableConcept type,
    int allowedUnsignedInt,
    Element elementAllowedUnsignedInt,
    String allowedString,
    Element elementAllowedString,
    Money allowedMoney,
    int usedUnsignedInt,
    Element elementUsedUnsignedInt,
    Money usedMoney,
  }) async {
    var fhirDb = new DatabaseHelper();
    ExplanationOfBenefit_Financial newExplanationOfBenefit_Financial =
        new ExplanationOfBenefit_Financial(
      id: id,
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      allowedUnsignedInt: allowedUnsignedInt,
      elementAllowedUnsignedInt: elementAllowedUnsignedInt,
      allowedString: allowedString,
      elementAllowedString: elementAllowedString,
      allowedMoney: allowedMoney,
      usedUnsignedInt: usedUnsignedInt,
      elementUsedUnsignedInt: elementUsedUnsignedInt,
      usedMoney: usedMoney,
    );
    return newExplanationOfBenefit_Financial;
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
  int allowedUnsignedInt;
  @HiveField(5)
  Element elementAllowedUnsignedInt;
  @HiveField(6)
  String allowedString;
  @HiveField(7)
  Element elementAllowedString;
  @HiveField(8)
  Money allowedMoney;
  @HiveField(9)
  int usedUnsignedInt;
  @HiveField(10)
  Element elementUsedUnsignedInt;
  @HiveField(11)
  Money usedMoney;

  ExplanationOfBenefit_Financial({
    this.id,
    this.extension,
    this.modifierExtension,
    @required this.type,
    this.allowedUnsignedInt,
    this.elementAllowedUnsignedInt,
    this.allowedString,
    this.elementAllowedString,
    this.allowedMoney,
    this.usedUnsignedInt,
    this.elementUsedUnsignedInt,
    this.usedMoney,
  });

  factory ExplanationOfBenefit_Financial.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefit_FinancialFromJson(json);
  Map<String, dynamic> toJson() => _$ExplanationOfBenefit_FinancialToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExplanationOfBenefit _$ExplanationOfBenefitFromJson(Map<String, dynamic> json) {
  return ExplanationOfBenefit(
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
    fundsReserveRequested: json['fundsReserveRequested'] == null
        ? null
        : CodeableConcept.fromJson(
            json['fundsReserveRequested'] as Map<String, dynamic>),
    fundsReserve: json['fundsReserve'] == null
        ? null
        : CodeableConcept.fromJson(
            json['fundsReserve'] as Map<String, dynamic>),
    related: (json['related'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_Related.fromJson(e as Map<String, dynamic>))
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
        : ExplanationOfBenefit_Payee.fromJson(
            json['payee'] as Map<String, dynamic>),
    referral: json['referral'] == null
        ? null
        : Reference.fromJson(json['referral'] as Map<String, dynamic>),
    facility: json['facility'] == null
        ? null
        : Reference.fromJson(json['facility'] as Map<String, dynamic>),
    claim: json['claim'] == null
        ? null
        : Reference.fromJson(json['claim'] as Map<String, dynamic>),
    claimResponse: json['claimResponse'] == null
        ? null
        : Reference.fromJson(json['claimResponse'] as Map<String, dynamic>),
    outcome: json['outcome'] as String,
    elementOutcome: json['elementOutcome'] == null
        ? null
        : Element.fromJson(json['elementOutcome'] as Map<String, dynamic>),
    disposition: json['disposition'] as String,
    elementDisposition: json['elementDisposition'] == null
        ? null
        : Element.fromJson(json['elementDisposition'] as Map<String, dynamic>),
    preAuthRef: (json['preAuthRef'] as List)?.map((e) => e as String)?.toList(),
    elementPreAuthRef: (json['elementPreAuthRef'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    preAuthRefPeriod: (json['preAuthRefPeriod'] as List)
        ?.map((e) =>
            e == null ? null : Period.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    careTeam: (json['careTeam'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_CareTeam.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    supportingInfo: (json['supportingInfo'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_SupportingInfo.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    diagnosis: (json['diagnosis'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_Diagnosis.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    procedure: (json['procedure'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_Procedure.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    precedence: json['precedence'] as int,
    elementPrecedence: json['elementPrecedence'] == null
        ? null
        : Element.fromJson(json['elementPrecedence'] as Map<String, dynamic>),
    insurance: (json['insurance'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_Insurance.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    accident: json['accident'] == null
        ? null
        : ExplanationOfBenefit_Accident.fromJson(
            json['accident'] as Map<String, dynamic>),
    item: (json['item'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_Item.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    addItem: (json['addItem'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_AddItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    adjudication: (json['adjudication'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_Adjudication.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    total: (json['total'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_Total.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    payment: json['payment'] == null
        ? null
        : ExplanationOfBenefit_Payment.fromJson(
            json['payment'] as Map<String, dynamic>),
    formCode: json['formCode'] == null
        ? null
        : CodeableConcept.fromJson(json['formCode'] as Map<String, dynamic>),
    form: json['form'] == null
        ? null
        : Attachment.fromJson(json['form'] as Map<String, dynamic>),
    processNote: (json['processNote'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_ProcessNote.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    benefitPeriod: json['benefitPeriod'] == null
        ? null
        : Period.fromJson(json['benefitPeriod'] as Map<String, dynamic>),
    benefitBalance: (json['benefitBalance'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_BenefitBalance.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ExplanationOfBenefitToJson(
    ExplanationOfBenefit instance) {
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
  writeNotNull(
      'fundsReserveRequested', instance.fundsReserveRequested?.toJson());
  writeNotNull('fundsReserve', instance.fundsReserve?.toJson());
  writeNotNull('related', instance.related?.map((e) => e?.toJson())?.toList());
  writeNotNull('prescription', instance.prescription?.toJson());
  writeNotNull('originalPrescription', instance.originalPrescription?.toJson());
  writeNotNull('payee', instance.payee?.toJson());
  writeNotNull('referral', instance.referral?.toJson());
  writeNotNull('facility', instance.facility?.toJson());
  writeNotNull('claim', instance.claim?.toJson());
  writeNotNull('claimResponse', instance.claimResponse?.toJson());
  writeNotNull('outcome', instance.outcome);
  writeNotNull('elementOutcome', instance.elementOutcome?.toJson());
  writeNotNull('disposition', instance.disposition);
  writeNotNull('elementDisposition', instance.elementDisposition?.toJson());
  writeNotNull('preAuthRef', instance.preAuthRef);
  writeNotNull('elementPreAuthRef',
      instance.elementPreAuthRef?.map((e) => e?.toJson())?.toList());
  writeNotNull('preAuthRefPeriod',
      instance.preAuthRefPeriod?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'careTeam', instance.careTeam?.map((e) => e?.toJson())?.toList());
  writeNotNull('supportingInfo',
      instance.supportingInfo?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'diagnosis', instance.diagnosis?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'procedure', instance.procedure?.map((e) => e?.toJson())?.toList());
  writeNotNull('precedence', instance.precedence);
  writeNotNull('elementPrecedence', instance.elementPrecedence?.toJson());
  writeNotNull(
      'insurance', instance.insurance?.map((e) => e?.toJson())?.toList());
  writeNotNull('accident', instance.accident?.toJson());
  writeNotNull('item', instance.item?.map((e) => e?.toJson())?.toList());
  writeNotNull('addItem', instance.addItem?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'adjudication', instance.adjudication?.map((e) => e?.toJson())?.toList());
  writeNotNull('total', instance.total?.map((e) => e?.toJson())?.toList());
  writeNotNull('payment', instance.payment?.toJson());
  writeNotNull('formCode', instance.formCode?.toJson());
  writeNotNull('form', instance.form?.toJson());
  writeNotNull(
      'processNote', instance.processNote?.map((e) => e?.toJson())?.toList());
  writeNotNull('benefitPeriod', instance.benefitPeriod?.toJson());
  writeNotNull('benefitBalance',
      instance.benefitBalance?.map((e) => e?.toJson())?.toList());
  return val;
}

ExplanationOfBenefit_Related _$ExplanationOfBenefit_RelatedFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_Related(
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

Map<String, dynamic> _$ExplanationOfBenefit_RelatedToJson(
    ExplanationOfBenefit_Related instance) {
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

ExplanationOfBenefit_Payee _$ExplanationOfBenefit_PayeeFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_Payee(
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

Map<String, dynamic> _$ExplanationOfBenefit_PayeeToJson(
    ExplanationOfBenefit_Payee instance) {
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

ExplanationOfBenefit_CareTeam _$ExplanationOfBenefit_CareTeamFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_CareTeam(
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

Map<String, dynamic> _$ExplanationOfBenefit_CareTeamToJson(
    ExplanationOfBenefit_CareTeam instance) {
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

ExplanationOfBenefit_SupportingInfo
    _$ExplanationOfBenefit_SupportingInfoFromJson(Map<String, dynamic> json) {
  return ExplanationOfBenefit_SupportingInfo(
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
        : Coding.fromJson(json['reason'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExplanationOfBenefit_SupportingInfoToJson(
    ExplanationOfBenefit_SupportingInfo instance) {
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

ExplanationOfBenefit_Diagnosis _$ExplanationOfBenefit_DiagnosisFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_Diagnosis(
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

Map<String, dynamic> _$ExplanationOfBenefit_DiagnosisToJson(
    ExplanationOfBenefit_Diagnosis instance) {
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

ExplanationOfBenefit_Procedure _$ExplanationOfBenefit_ProcedureFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_Procedure(
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

Map<String, dynamic> _$ExplanationOfBenefit_ProcedureToJson(
    ExplanationOfBenefit_Procedure instance) {
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

ExplanationOfBenefit_Insurance _$ExplanationOfBenefit_InsuranceFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_Insurance(
    id: json['id'] as String,
    extension: (json['extension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    modifierExtension: (json['modifierExtension'] as List)
        ?.map((e) =>
            e == null ? null : Extension.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    focal: json['focal'] as bool,
    elementFocal: json['elementFocal'] == null
        ? null
        : Element.fromJson(json['elementFocal'] as Map<String, dynamic>),
    coverage: json['coverage'] == null
        ? null
        : Reference.fromJson(json['coverage'] as Map<String, dynamic>),
    preAuthRef: (json['preAuthRef'] as List)?.map((e) => e as String)?.toList(),
    elementPreAuthRef: (json['elementPreAuthRef'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ExplanationOfBenefit_InsuranceToJson(
    ExplanationOfBenefit_Insurance instance) {
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
  writeNotNull('focal', instance.focal);
  writeNotNull('elementFocal', instance.elementFocal?.toJson());
  writeNotNull('coverage', instance.coverage?.toJson());
  writeNotNull('preAuthRef', instance.preAuthRef);
  writeNotNull('elementPreAuthRef',
      instance.elementPreAuthRef?.map((e) => e?.toJson())?.toList());
  return val;
}

ExplanationOfBenefit_Accident _$ExplanationOfBenefit_AccidentFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_Accident(
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

Map<String, dynamic> _$ExplanationOfBenefit_AccidentToJson(
    ExplanationOfBenefit_Accident instance) {
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

ExplanationOfBenefit_Item _$ExplanationOfBenefit_ItemFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_Item(
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
    noteNumber: (json['noteNumber'] as List)?.map((e) => e as int)?.toList(),
    elementNoteNumber: (json['elementNoteNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    adjudication: (json['adjudication'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_Adjudication.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    detail: (json['detail'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_Detail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ExplanationOfBenefit_ItemToJson(
    ExplanationOfBenefit_Item instance) {
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
  writeNotNull('noteNumber', instance.noteNumber);
  writeNotNull('elementNoteNumber',
      instance.elementNoteNumber?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'adjudication', instance.adjudication?.map((e) => e?.toJson())?.toList());
  writeNotNull('detail', instance.detail?.map((e) => e?.toJson())?.toList());
  return val;
}

ExplanationOfBenefit_Adjudication _$ExplanationOfBenefit_AdjudicationFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_Adjudication(
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

Map<String, dynamic> _$ExplanationOfBenefit_AdjudicationToJson(
    ExplanationOfBenefit_Adjudication instance) {
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

ExplanationOfBenefit_Detail _$ExplanationOfBenefit_DetailFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_Detail(
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
    noteNumber: (json['noteNumber'] as List)?.map((e) => e as int)?.toList(),
    elementNoteNumber: (json['elementNoteNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    adjudication: (json['adjudication'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_Adjudication.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    subDetail: (json['subDetail'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_SubDetail.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ExplanationOfBenefit_DetailToJson(
    ExplanationOfBenefit_Detail instance) {
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
  writeNotNull('noteNumber', instance.noteNumber);
  writeNotNull('elementNoteNumber',
      instance.elementNoteNumber?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'adjudication', instance.adjudication?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'subDetail', instance.subDetail?.map((e) => e?.toJson())?.toList());
  return val;
}

ExplanationOfBenefit_SubDetail _$ExplanationOfBenefit_SubDetailFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_SubDetail(
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
    noteNumber: (json['noteNumber'] as List)?.map((e) => e as int)?.toList(),
    elementNoteNumber: (json['elementNoteNumber'] as List)
        ?.map((e) =>
            e == null ? null : Element.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    adjudication: (json['adjudication'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_Adjudication.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ExplanationOfBenefit_SubDetailToJson(
    ExplanationOfBenefit_SubDetail instance) {
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
  writeNotNull('noteNumber', instance.noteNumber);
  writeNotNull('elementNoteNumber',
      instance.elementNoteNumber?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'adjudication', instance.adjudication?.map((e) => e?.toJson())?.toList());
  return val;
}

ExplanationOfBenefit_AddItem _$ExplanationOfBenefit_AddItemFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_AddItem(
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
    subDetailSequence:
        (json['subDetailSequence'] as List)?.map((e) => e as int)?.toList(),
    elementSubDetailSequence: (json['elementSubDetailSequence'] as List)
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
            : ExplanationOfBenefit_Adjudication.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    detail: (json['detail'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_Detail1.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ExplanationOfBenefit_AddItemToJson(
    ExplanationOfBenefit_AddItem instance) {
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
  writeNotNull('subDetailSequence', instance.subDetailSequence);
  writeNotNull('elementSubDetailSequence',
      instance.elementSubDetailSequence?.map((e) => e?.toJson())?.toList());
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

ExplanationOfBenefit_Detail1 _$ExplanationOfBenefit_Detail1FromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_Detail1(
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
            : ExplanationOfBenefit_Adjudication.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    subDetail: (json['subDetail'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_SubDetail1.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ExplanationOfBenefit_Detail1ToJson(
    ExplanationOfBenefit_Detail1 instance) {
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

ExplanationOfBenefit_SubDetail1 _$ExplanationOfBenefit_SubDetail1FromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_SubDetail1(
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
            : ExplanationOfBenefit_Adjudication.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ExplanationOfBenefit_SubDetail1ToJson(
    ExplanationOfBenefit_SubDetail1 instance) {
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

ExplanationOfBenefit_Total _$ExplanationOfBenefit_TotalFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_Total(
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

Map<String, dynamic> _$ExplanationOfBenefit_TotalToJson(
    ExplanationOfBenefit_Total instance) {
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

ExplanationOfBenefit_Payment _$ExplanationOfBenefit_PaymentFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_Payment(
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

Map<String, dynamic> _$ExplanationOfBenefit_PaymentToJson(
    ExplanationOfBenefit_Payment instance) {
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

ExplanationOfBenefit_ProcessNote _$ExplanationOfBenefit_ProcessNoteFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_ProcessNote(
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

Map<String, dynamic> _$ExplanationOfBenefit_ProcessNoteToJson(
    ExplanationOfBenefit_ProcessNote instance) {
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

ExplanationOfBenefit_BenefitBalance
    _$ExplanationOfBenefit_BenefitBalanceFromJson(Map<String, dynamic> json) {
  return ExplanationOfBenefit_BenefitBalance(
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
    excluded: json['excluded'] as bool,
    elementExcluded: json['elementExcluded'] == null
        ? null
        : Element.fromJson(json['elementExcluded'] as Map<String, dynamic>),
    name: json['name'] as String,
    elementName: json['elementName'] == null
        ? null
        : Element.fromJson(json['elementName'] as Map<String, dynamic>),
    description: json['description'] as String,
    elementDescription: json['elementDescription'] == null
        ? null
        : Element.fromJson(json['elementDescription'] as Map<String, dynamic>),
    network: json['network'] == null
        ? null
        : CodeableConcept.fromJson(json['network'] as Map<String, dynamic>),
    unit: json['unit'] == null
        ? null
        : CodeableConcept.fromJson(json['unit'] as Map<String, dynamic>),
    term: json['term'] == null
        ? null
        : CodeableConcept.fromJson(json['term'] as Map<String, dynamic>),
    financial: (json['financial'] as List)
        ?.map((e) => e == null
            ? null
            : ExplanationOfBenefit_Financial.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ExplanationOfBenefit_BenefitBalanceToJson(
    ExplanationOfBenefit_BenefitBalance instance) {
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
  writeNotNull('excluded', instance.excluded);
  writeNotNull('elementExcluded', instance.elementExcluded?.toJson());
  writeNotNull('name', instance.name);
  writeNotNull('elementName', instance.elementName?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('elementDescription', instance.elementDescription?.toJson());
  writeNotNull('network', instance.network?.toJson());
  writeNotNull('unit', instance.unit?.toJson());
  writeNotNull('term', instance.term?.toJson());
  writeNotNull(
      'financial', instance.financial?.map((e) => e?.toJson())?.toList());
  return val;
}

ExplanationOfBenefit_Financial _$ExplanationOfBenefit_FinancialFromJson(
    Map<String, dynamic> json) {
  return ExplanationOfBenefit_Financial(
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
    allowedUnsignedInt: json['allowedUnsignedInt'] as int,
    elementAllowedUnsignedInt: json['elementAllowedUnsignedInt'] == null
        ? null
        : Element.fromJson(
            json['elementAllowedUnsignedInt'] as Map<String, dynamic>),
    allowedString: json['allowedString'] as String,
    elementAllowedString: json['elementAllowedString'] == null
        ? null
        : Element.fromJson(
            json['elementAllowedString'] as Map<String, dynamic>),
    allowedMoney: json['allowedMoney'] == null
        ? null
        : Money.fromJson(json['allowedMoney'] as Map<String, dynamic>),
    usedUnsignedInt: json['usedUnsignedInt'] as int,
    elementUsedUnsignedInt: json['elementUsedUnsignedInt'] == null
        ? null
        : Element.fromJson(
            json['elementUsedUnsignedInt'] as Map<String, dynamic>),
    usedMoney: json['usedMoney'] == null
        ? null
        : Money.fromJson(json['usedMoney'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ExplanationOfBenefit_FinancialToJson(
    ExplanationOfBenefit_Financial instance) {
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
  writeNotNull('allowedUnsignedInt', instance.allowedUnsignedInt);
  writeNotNull('elementAllowedUnsignedInt',
      instance.elementAllowedUnsignedInt?.toJson());
  writeNotNull('allowedString', instance.allowedString);
  writeNotNull('elementAllowedString', instance.elementAllowedString?.toJson());
  writeNotNull('allowedMoney', instance.allowedMoney?.toJson());
  writeNotNull('usedUnsignedInt', instance.usedUnsignedInt);
  writeNotNull(
      'elementUsedUnsignedInt', instance.elementUsedUnsignedInt?.toJson());
  writeNotNull('usedMoney', instance.usedMoney?.toJson());
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExplanationOfBenefitAdapter extends TypeAdapter<ExplanationOfBenefit> {
  @override
  ExplanationOfBenefit read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit(
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
      fundsReserveRequested: fields[26] as CodeableConcept,
      fundsReserve: fields[27] as CodeableConcept,
      related: (fields[28] as List)?.cast<ExplanationOfBenefit_Related>(),
      prescription: fields[29] as Reference,
      originalPrescription: fields[30] as Reference,
      payee: fields[31] as ExplanationOfBenefit_Payee,
      referral: fields[32] as Reference,
      facility: fields[33] as Reference,
      claim: fields[34] as Reference,
      claimResponse: fields[35] as Reference,
      outcome: fields[36] as String,
      elementOutcome: fields[37] as Element,
      disposition: fields[38] as String,
      elementDisposition: fields[39] as Element,
      preAuthRef: (fields[40] as List)?.cast<String>(),
      elementPreAuthRef: (fields[41] as List)?.cast<Element>(),
      preAuthRefPeriod: (fields[42] as List)?.cast<Period>(),
      careTeam: (fields[43] as List)?.cast<ExplanationOfBenefit_CareTeam>(),
      supportingInfo:
          (fields[44] as List)?.cast<ExplanationOfBenefit_SupportingInfo>(),
      diagnosis: (fields[45] as List)?.cast<ExplanationOfBenefit_Diagnosis>(),
      procedure: (fields[46] as List)?.cast<ExplanationOfBenefit_Procedure>(),
      precedence: fields[47] as int,
      elementPrecedence: fields[48] as Element,
      insurance: (fields[49] as List)?.cast<ExplanationOfBenefit_Insurance>(),
      accident: fields[50] as ExplanationOfBenefit_Accident,
      item: (fields[51] as List)?.cast<ExplanationOfBenefit_Item>(),
      addItem: (fields[52] as List)?.cast<ExplanationOfBenefit_AddItem>(),
      adjudication:
          (fields[53] as List)?.cast<ExplanationOfBenefit_Adjudication>(),
      total: (fields[54] as List)?.cast<ExplanationOfBenefit_Total>(),
      payment: fields[55] as ExplanationOfBenefit_Payment,
      formCode: fields[56] as CodeableConcept,
      form: fields[57] as Attachment,
      processNote:
          (fields[58] as List)?.cast<ExplanationOfBenefit_ProcessNote>(),
      benefitPeriod: fields[59] as Period,
      benefitBalance:
          (fields[60] as List)?.cast<ExplanationOfBenefit_BenefitBalance>(),
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit obj) {
    writer
      ..writeByte(61)
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
      ..write(obj.fundsReserveRequested)
      ..writeByte(27)
      ..write(obj.fundsReserve)
      ..writeByte(28)
      ..write(obj.related)
      ..writeByte(29)
      ..write(obj.prescription)
      ..writeByte(30)
      ..write(obj.originalPrescription)
      ..writeByte(31)
      ..write(obj.payee)
      ..writeByte(32)
      ..write(obj.referral)
      ..writeByte(33)
      ..write(obj.facility)
      ..writeByte(34)
      ..write(obj.claim)
      ..writeByte(35)
      ..write(obj.claimResponse)
      ..writeByte(36)
      ..write(obj.outcome)
      ..writeByte(37)
      ..write(obj.elementOutcome)
      ..writeByte(38)
      ..write(obj.disposition)
      ..writeByte(39)
      ..write(obj.elementDisposition)
      ..writeByte(40)
      ..write(obj.preAuthRef)
      ..writeByte(41)
      ..write(obj.elementPreAuthRef)
      ..writeByte(42)
      ..write(obj.preAuthRefPeriod)
      ..writeByte(43)
      ..write(obj.careTeam)
      ..writeByte(44)
      ..write(obj.supportingInfo)
      ..writeByte(45)
      ..write(obj.diagnosis)
      ..writeByte(46)
      ..write(obj.procedure)
      ..writeByte(47)
      ..write(obj.precedence)
      ..writeByte(48)
      ..write(obj.elementPrecedence)
      ..writeByte(49)
      ..write(obj.insurance)
      ..writeByte(50)
      ..write(obj.accident)
      ..writeByte(51)
      ..write(obj.item)
      ..writeByte(52)
      ..write(obj.addItem)
      ..writeByte(53)
      ..write(obj.adjudication)
      ..writeByte(54)
      ..write(obj.total)
      ..writeByte(55)
      ..write(obj.payment)
      ..writeByte(56)
      ..write(obj.formCode)
      ..writeByte(57)
      ..write(obj.form)
      ..writeByte(58)
      ..write(obj.processNote)
      ..writeByte(59)
      ..write(obj.benefitPeriod)
      ..writeByte(60)
      ..write(obj.benefitBalance);
  }
}

class ExplanationOfBenefit_RelatedAdapter
    extends TypeAdapter<ExplanationOfBenefit_Related> {
  @override
  ExplanationOfBenefit_Related read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_Related(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      claim: fields[3] as Reference,
      relationship: fields[4] as CodeableConcept,
      reference: fields[5] as Identifier,
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_Related obj) {
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

class ExplanationOfBenefit_PayeeAdapter
    extends TypeAdapter<ExplanationOfBenefit_Payee> {
  @override
  ExplanationOfBenefit_Payee read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_Payee(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as CodeableConcept,
      party: fields[4] as Reference,
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_Payee obj) {
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

class ExplanationOfBenefit_CareTeamAdapter
    extends TypeAdapter<ExplanationOfBenefit_CareTeam> {
  @override
  ExplanationOfBenefit_CareTeam read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_CareTeam(
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
  void write(BinaryWriter writer, ExplanationOfBenefit_CareTeam obj) {
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

class ExplanationOfBenefit_SupportingInfoAdapter
    extends TypeAdapter<ExplanationOfBenefit_SupportingInfo> {
  @override
  ExplanationOfBenefit_SupportingInfo read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_SupportingInfo(
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
      reason: fields[17] as Coding,
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_SupportingInfo obj) {
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

class ExplanationOfBenefit_DiagnosisAdapter
    extends TypeAdapter<ExplanationOfBenefit_Diagnosis> {
  @override
  ExplanationOfBenefit_Diagnosis read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_Diagnosis(
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
  void write(BinaryWriter writer, ExplanationOfBenefit_Diagnosis obj) {
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

class ExplanationOfBenefit_ProcedureAdapter
    extends TypeAdapter<ExplanationOfBenefit_Procedure> {
  @override
  ExplanationOfBenefit_Procedure read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_Procedure(
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
  void write(BinaryWriter writer, ExplanationOfBenefit_Procedure obj) {
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

class ExplanationOfBenefit_InsuranceAdapter
    extends TypeAdapter<ExplanationOfBenefit_Insurance> {
  @override
  ExplanationOfBenefit_Insurance read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_Insurance(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      focal: fields[3] as bool,
      elementFocal: fields[4] as Element,
      coverage: fields[5] as Reference,
      preAuthRef: (fields[6] as List)?.cast<String>(),
      elementPreAuthRef: (fields[7] as List)?.cast<Element>(),
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_Insurance obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.focal)
      ..writeByte(4)
      ..write(obj.elementFocal)
      ..writeByte(5)
      ..write(obj.coverage)
      ..writeByte(6)
      ..write(obj.preAuthRef)
      ..writeByte(7)
      ..write(obj.elementPreAuthRef);
  }
}

class ExplanationOfBenefit_AccidentAdapter
    extends TypeAdapter<ExplanationOfBenefit_Accident> {
  @override
  ExplanationOfBenefit_Accident read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_Accident(
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
  void write(BinaryWriter writer, ExplanationOfBenefit_Accident obj) {
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

class ExplanationOfBenefit_ItemAdapter
    extends TypeAdapter<ExplanationOfBenefit_Item> {
  @override
  ExplanationOfBenefit_Item read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_Item(
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
      noteNumber: (fields[33] as List)?.cast<int>(),
      elementNoteNumber: (fields[34] as List)?.cast<Element>(),
      adjudication:
          (fields[35] as List)?.cast<ExplanationOfBenefit_Adjudication>(),
      detail: (fields[36] as List)?.cast<ExplanationOfBenefit_Detail>(),
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_Item obj) {
    writer
      ..writeByte(37)
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
      ..write(obj.noteNumber)
      ..writeByte(34)
      ..write(obj.elementNoteNumber)
      ..writeByte(35)
      ..write(obj.adjudication)
      ..writeByte(36)
      ..write(obj.detail);
  }
}

class ExplanationOfBenefit_AdjudicationAdapter
    extends TypeAdapter<ExplanationOfBenefit_Adjudication> {
  @override
  ExplanationOfBenefit_Adjudication read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_Adjudication(
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
  void write(BinaryWriter writer, ExplanationOfBenefit_Adjudication obj) {
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

class ExplanationOfBenefit_DetailAdapter
    extends TypeAdapter<ExplanationOfBenefit_Detail> {
  @override
  ExplanationOfBenefit_Detail read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_Detail(
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
      noteNumber: (fields[16] as List)?.cast<int>(),
      elementNoteNumber: (fields[17] as List)?.cast<Element>(),
      adjudication:
          (fields[18] as List)?.cast<ExplanationOfBenefit_Adjudication>(),
      subDetail: (fields[19] as List)?.cast<ExplanationOfBenefit_SubDetail>(),
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_Detail obj) {
    writer
      ..writeByte(20)
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
      ..write(obj.noteNumber)
      ..writeByte(17)
      ..write(obj.elementNoteNumber)
      ..writeByte(18)
      ..write(obj.adjudication)
      ..writeByte(19)
      ..write(obj.subDetail);
  }
}

class ExplanationOfBenefit_SubDetailAdapter
    extends TypeAdapter<ExplanationOfBenefit_SubDetail> {
  @override
  ExplanationOfBenefit_SubDetail read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_SubDetail(
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
      noteNumber: (fields[16] as List)?.cast<int>(),
      elementNoteNumber: (fields[17] as List)?.cast<Element>(),
      adjudication:
          (fields[18] as List)?.cast<ExplanationOfBenefit_Adjudication>(),
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_SubDetail obj) {
    writer
      ..writeByte(19)
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
      ..write(obj.noteNumber)
      ..writeByte(17)
      ..write(obj.elementNoteNumber)
      ..writeByte(18)
      ..write(obj.adjudication);
  }
}

class ExplanationOfBenefit_AddItemAdapter
    extends TypeAdapter<ExplanationOfBenefit_AddItem> {
  @override
  ExplanationOfBenefit_AddItem read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_AddItem(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      itemSequence: (fields[3] as List)?.cast<int>(),
      elementItemSequence: (fields[4] as List)?.cast<Element>(),
      detailSequence: (fields[5] as List)?.cast<int>(),
      elementDetailSequence: (fields[6] as List)?.cast<Element>(),
      subDetailSequence: (fields[7] as List)?.cast<int>(),
      elementSubDetailSequence: (fields[8] as List)?.cast<Element>(),
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
      adjudication:
          (fields[28] as List)?.cast<ExplanationOfBenefit_Adjudication>(),
      detail: (fields[29] as List)?.cast<ExplanationOfBenefit_Detail1>(),
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_AddItem obj) {
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
      ..write(obj.subDetailSequence)
      ..writeByte(8)
      ..write(obj.elementSubDetailSequence)
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

class ExplanationOfBenefit_Detail1Adapter
    extends TypeAdapter<ExplanationOfBenefit_Detail1> {
  @override
  ExplanationOfBenefit_Detail1 read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_Detail1(
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
      adjudication:
          (fields[12] as List)?.cast<ExplanationOfBenefit_Adjudication>(),
      subDetail: (fields[13] as List)?.cast<ExplanationOfBenefit_SubDetail1>(),
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_Detail1 obj) {
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

class ExplanationOfBenefit_SubDetail1Adapter
    extends TypeAdapter<ExplanationOfBenefit_SubDetail1> {
  @override
  ExplanationOfBenefit_SubDetail1 read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_SubDetail1(
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
      adjudication:
          (fields[12] as List)?.cast<ExplanationOfBenefit_Adjudication>(),
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_SubDetail1 obj) {
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

class ExplanationOfBenefit_TotalAdapter
    extends TypeAdapter<ExplanationOfBenefit_Total> {
  @override
  ExplanationOfBenefit_Total read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_Total(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      category: fields[3] as CodeableConcept,
      amount: fields[4] as Money,
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_Total obj) {
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

class ExplanationOfBenefit_PaymentAdapter
    extends TypeAdapter<ExplanationOfBenefit_Payment> {
  @override
  ExplanationOfBenefit_Payment read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_Payment(
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
  void write(BinaryWriter writer, ExplanationOfBenefit_Payment obj) {
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

class ExplanationOfBenefit_ProcessNoteAdapter
    extends TypeAdapter<ExplanationOfBenefit_ProcessNote> {
  @override
  ExplanationOfBenefit_ProcessNote read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_ProcessNote(
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
  void write(BinaryWriter writer, ExplanationOfBenefit_ProcessNote obj) {
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

class ExplanationOfBenefit_BenefitBalanceAdapter
    extends TypeAdapter<ExplanationOfBenefit_BenefitBalance> {
  @override
  ExplanationOfBenefit_BenefitBalance read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_BenefitBalance(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      category: fields[3] as CodeableConcept,
      excluded: fields[4] as bool,
      elementExcluded: fields[5] as Element,
      name: fields[6] as String,
      elementName: fields[7] as Element,
      description: fields[8] as String,
      elementDescription: fields[9] as Element,
      network: fields[10] as CodeableConcept,
      unit: fields[11] as CodeableConcept,
      term: fields[12] as CodeableConcept,
      financial: (fields[13] as List)?.cast<ExplanationOfBenefit_Financial>(),
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_BenefitBalance obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.category)
      ..writeByte(4)
      ..write(obj.excluded)
      ..writeByte(5)
      ..write(obj.elementExcluded)
      ..writeByte(6)
      ..write(obj.name)
      ..writeByte(7)
      ..write(obj.elementName)
      ..writeByte(8)
      ..write(obj.description)
      ..writeByte(9)
      ..write(obj.elementDescription)
      ..writeByte(10)
      ..write(obj.network)
      ..writeByte(11)
      ..write(obj.unit)
      ..writeByte(12)
      ..write(obj.term)
      ..writeByte(13)
      ..write(obj.financial);
  }
}

class ExplanationOfBenefit_FinancialAdapter
    extends TypeAdapter<ExplanationOfBenefit_Financial> {
  @override
  ExplanationOfBenefit_Financial read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExplanationOfBenefit_Financial(
      id: fields[0] as String,
      extension: (fields[1] as List)?.cast<Extension>(),
      modifierExtension: (fields[2] as List)?.cast<Extension>(),
      type: fields[3] as CodeableConcept,
      allowedUnsignedInt: fields[4] as int,
      elementAllowedUnsignedInt: fields[5] as Element,
      allowedString: fields[6] as String,
      elementAllowedString: fields[7] as Element,
      allowedMoney: fields[8] as Money,
      usedUnsignedInt: fields[9] as int,
      elementUsedUnsignedInt: fields[10] as Element,
      usedMoney: fields[11] as Money,
    );
  }

  @override
  void write(BinaryWriter writer, ExplanationOfBenefit_Financial obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.extension)
      ..writeByte(2)
      ..write(obj.modifierExtension)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.allowedUnsignedInt)
      ..writeByte(5)
      ..write(obj.elementAllowedUnsignedInt)
      ..writeByte(6)
      ..write(obj.allowedString)
      ..writeByte(7)
      ..write(obj.elementAllowedString)
      ..writeByte(8)
      ..write(obj.allowedMoney)
      ..writeByte(9)
      ..write(obj.usedUnsignedInt)
      ..writeByte(10)
      ..write(obj.elementUsedUnsignedInt)
      ..writeByte(11)
      ..write(obj.usedMoney);
  }
}
