import 'package:flutter_fhir/util/db.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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

  update() {
    this.meta.lastUpdated = DateTime.now();
    this.save();
  }

  String resourceType = 'ExplanationOfBenefit';
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
  CodeableConcept fundsReserveRequested;
  CodeableConcept fundsReserve;
  List<ExplanationOfBenefit_Related> related;
  Reference prescription;
  Reference originalPrescription;
  ExplanationOfBenefit_Payee payee;
  Reference referral;
  Reference facility;
  Reference claim;
  Reference claimResponse;
  String outcome;
  Element elementOutcome;
  String disposition;
  Element elementDisposition;
  List<String> preAuthRef;
  List<Element> elementPreAuthRef;
  List<Period> preAuthRefPeriod;
  List<ExplanationOfBenefit_CareTeam> careTeam;
  List<ExplanationOfBenefit_SupportingInfo> supportingInfo;
  List<ExplanationOfBenefit_Diagnosis> diagnosis;
  List<ExplanationOfBenefit_Procedure> procedure;
  int precedence;
  Element elementPrecedence;
  List<ExplanationOfBenefit_Insurance> insurance;
  ExplanationOfBenefit_Accident accident;
  List<ExplanationOfBenefit_Item> item;
  List<ExplanationOfBenefit_AddItem> addItem;
  List<ExplanationOfBenefit_Adjudication> adjudication;
  List<ExplanationOfBenefit_Total> total;
  ExplanationOfBenefit_Payment payment;
  CodeableConcept formCode;
  Attachment form;
  List<ExplanationOfBenefit_ProcessNote> processNote;
  Period benefitPeriod;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('ExplanationOfBenefit_Related'),
      extension: extension,
      modifierExtension: modifierExtension,
      claim: claim,
      relationship: relationship,
      reference: reference,
    );
    return newExplanationOfBenefit_Related;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  Reference claim;
  CodeableConcept relationship;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('ExplanationOfBenefit_Payee'),
      extension: extension,
      modifierExtension: modifierExtension,
      type: type,
      party: party,
    );
    return newExplanationOfBenefit_Payee;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('ExplanationOfBenefit_CareTeam'),
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ??
          await fhirDb.newResourceId('ExplanationOfBenefit_SupportingInfo'),
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('ExplanationOfBenefit_Diagnosis'),
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('ExplanationOfBenefit_Procedure'),
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('ExplanationOfBenefit_Insurance'),
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  bool focal;
  Element elementFocal;
  Reference coverage;
  List<String> preAuthRef;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('ExplanationOfBenefit_Accident'),
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  String date;
  Element elementDate;
  CodeableConcept type;
  Address locationAddress;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('ExplanationOfBenefit_Item'),
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
  List<int> noteNumber;
  List<Element> elementNoteNumber;
  List<ExplanationOfBenefit_Adjudication> adjudication;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('ExplanationOfBenefit_Adjudication'),
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept category;
  CodeableConcept reason;
  Money amount;
  double value;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('ExplanationOfBenefit_Detail'),
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
  List<int> noteNumber;
  List<Element> elementNoteNumber;
  List<ExplanationOfBenefit_Adjudication> adjudication;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('ExplanationOfBenefit_SubDetail'),
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
  List<int> noteNumber;
  List<Element> elementNoteNumber;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('ExplanationOfBenefit_AddItem'),
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  List<int> itemSequence;
  List<Element> elementItemSequence;
  List<int> detailSequence;
  List<Element> elementDetailSequence;
  List<int> subDetailSequence;
  List<Element> elementSubDetailSequence;
  List<Reference> provider;
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
  CodeableConcept bodySite;
  List<CodeableConcept> subSite;
  List<int> noteNumber;
  List<Element> elementNoteNumber;
  List<ExplanationOfBenefit_Adjudication> adjudication;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('ExplanationOfBenefit_Detail1'),
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
  List<ExplanationOfBenefit_Adjudication> adjudication;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('ExplanationOfBenefit_SubDetail1'),
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('ExplanationOfBenefit_Total'),
      extension: extension,
      modifierExtension: modifierExtension,
      category: category,
      amount: amount,
    );
    return newExplanationOfBenefit_Total;
  }

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept category;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('ExplanationOfBenefit_Payment'),
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('ExplanationOfBenefit_ProcessNote'),
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  int number;
  Element elementNumber;
  String type;
  Element elementType;
  String text;
  Element elementText;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ??
          await fhirDb.newResourceId('ExplanationOfBenefit_BenefitBalance'),
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept category;
  bool excluded;
  Element elementExcluded;
  String name;
  Element elementName;
  String description;
  Element elementDescription;
  CodeableConcept network;
  CodeableConcept unit;
  CodeableConcept term;
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
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
      id: id ?? await fhirDb.newResourceId('ExplanationOfBenefit_Financial'),
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

  String id;
  List<Extension> extension;
  List<Extension> modifierExtension;
  CodeableConcept type;
  int allowedUnsignedInt;
  Element elementAllowedUnsignedInt;
  String allowedString;
  Element elementAllowedString;
  Money allowedMoney;
  int usedUnsignedInt;
  Element elementUsedUnsignedInt;
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
