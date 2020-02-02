// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resourceList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResourceList _$ResourceListFromJson(Map<String, dynamic> json) {
  return ResourceList(
    activityDefinition: json['activityDefinition'] == null
        ? null
        : ActivityDefinition.fromJson(
            json['activityDefinition'] as Map<String, dynamic>),
    adverseEvent: json['adverseEvent'] == null
        ? null
        : AdverseEvent.fromJson(json['adverseEvent'] as Map<String, dynamic>),
    allergyIntolerance: json['allergyIntolerance'] == null
        ? null
        : AllergyIntolerance.fromJson(
            json['allergyIntolerance'] as Map<String, dynamic>),
    appointment: json['appointment'] == null
        ? null
        : Appointment.fromJson(json['appointment'] as Map<String, dynamic>),
    appointmentResponse: json['appointmentResponse'] == null
        ? null
        : AppointmentResponse.fromJson(
            json['appointmentResponse'] as Map<String, dynamic>),
    auditEvent: json['auditEvent'] == null
        ? null
        : AuditEvent.fromJson(json['auditEvent'] as Map<String, dynamic>),
    basic: json['basic'] == null
        ? null
        : Basic.fromJson(json['basic'] as Map<String, dynamic>),
    binary: json['binary'] == null
        ? null
        : Binary.fromJson(json['binary'] as Map<String, dynamic>),
    biologicallyDerivedProduct: json['biologicallyDerivedProduct'] == null
        ? null
        : BiologicallyDerivedProduct.fromJson(
            json['biologicallyDerivedProduct'] as Map<String, dynamic>),
    bodyStructure: json['bodyStructure'] == null
        ? null
        : BodyStructure.fromJson(json['bodyStructure'] as Map<String, dynamic>),
    bundle: json['bundle'] == null
        ? null
        : Bundle.fromJson(json['bundle'] as Map<String, dynamic>),
    capabilityStatement: json['capabilityStatement'] == null
        ? null
        : CapabilityStatement.fromJson(
            json['capabilityStatement'] as Map<String, dynamic>),
    carePlan: json['carePlan'] == null
        ? null
        : CarePlan.fromJson(json['carePlan'] as Map<String, dynamic>),
    careTeam: json['careTeam'] == null
        ? null
        : CareTeam.fromJson(json['careTeam'] as Map<String, dynamic>),
    catalogEntry: json['catalogEntry'] == null
        ? null
        : CatalogEntry.fromJson(json['catalogEntry'] as Map<String, dynamic>),
    chargeItem: json['chargeItem'] == null
        ? null
        : ChargeItem.fromJson(json['chargeItem'] as Map<String, dynamic>),
    chargeItemDefinition: json['chargeItemDefinition'] == null
        ? null
        : ChargeItemDefinition.fromJson(
            json['chargeItemDefinition'] as Map<String, dynamic>),
    claim: json['claim'] == null
        ? null
        : Claim.fromJson(json['claim'] as Map<String, dynamic>),
    claimResponse: json['claimResponse'] == null
        ? null
        : ClaimResponse.fromJson(json['claimResponse'] as Map<String, dynamic>),
    clinicalImpression: json['clinicalImpression'] == null
        ? null
        : ClinicalImpression.fromJson(
            json['clinicalImpression'] as Map<String, dynamic>),
    codeSystem: json['codeSystem'] == null
        ? null
        : CodeSystem.fromJson(json['codeSystem'] as Map<String, dynamic>),
    communication: json['communication'] == null
        ? null
        : Communication.fromJson(json['communication'] as Map<String, dynamic>),
    communicationRequest: json['communicationRequest'] == null
        ? null
        : CommunicationRequest.fromJson(
            json['communicationRequest'] as Map<String, dynamic>),
    compartmentDefinition: json['compartmentDefinition'] == null
        ? null
        : CompartmentDefinition.fromJson(
            json['compartmentDefinition'] as Map<String, dynamic>),
    composition: json['composition'] == null
        ? null
        : Composition.fromJson(json['composition'] as Map<String, dynamic>),
    conceptMap: json['conceptMap'] == null
        ? null
        : ConceptMap.fromJson(json['conceptMap'] as Map<String, dynamic>),
    condition: json['condition'] == null
        ? null
        : Condition.fromJson(json['condition'] as Map<String, dynamic>),
    consent: json['consent'] == null
        ? null
        : Consent.fromJson(json['consent'] as Map<String, dynamic>),
    contract: json['contract'] == null
        ? null
        : Contract.fromJson(json['contract'] as Map<String, dynamic>),
    coverage: json['coverage'] == null
        ? null
        : Coverage.fromJson(json['coverage'] as Map<String, dynamic>),
    coverageEligibilityRequest: json['coverageEligibilityRequest'] == null
        ? null
        : CoverageEligibilityRequest.fromJson(
            json['coverageEligibilityRequest'] as Map<String, dynamic>),
    coverageEligibilityResponse: json['coverageEligibilityResponse'] == null
        ? null
        : CoverageEligibilityResponse.fromJson(
            json['coverageEligibilityResponse'] as Map<String, dynamic>),
    detectedIssue: json['detectedIssue'] == null
        ? null
        : DetectedIssue.fromJson(json['detectedIssue'] as Map<String, dynamic>),
    device: json['device'] == null
        ? null
        : Device.fromJson(json['device'] as Map<String, dynamic>),
    deviceDefinition: json['deviceDefinition'] == null
        ? null
        : DeviceDefinition.fromJson(
            json['deviceDefinition'] as Map<String, dynamic>),
    deviceMetric: json['deviceMetric'] == null
        ? null
        : DeviceMetric.fromJson(json['deviceMetric'] as Map<String, dynamic>),
    deviceRequest: json['deviceRequest'] == null
        ? null
        : DeviceRequest.fromJson(json['deviceRequest'] as Map<String, dynamic>),
    deviceUseStatement: json['deviceUseStatement'] == null
        ? null
        : DeviceUseStatement.fromJson(
            json['deviceUseStatement'] as Map<String, dynamic>),
    diagnosticReport: json['diagnosticReport'] == null
        ? null
        : DiagnosticReport.fromJson(
            json['diagnosticReport'] as Map<String, dynamic>),
    documentManifest: json['documentManifest'] == null
        ? null
        : DocumentManifest.fromJson(
            json['documentManifest'] as Map<String, dynamic>),
    documentReference: json['documentReference'] == null
        ? null
        : DocumentReference.fromJson(
            json['documentReference'] as Map<String, dynamic>),
    effectEvidenceSynthesis: json['effectEvidenceSynthesis'] == null
        ? null
        : EffectEvidenceSynthesis.fromJson(
            json['effectEvidenceSynthesis'] as Map<String, dynamic>),
    encounter: json['encounter'] == null
        ? null
        : Encounter.fromJson(json['encounter'] as Map<String, dynamic>),
    endpoint: json['endpoint'] == null
        ? null
        : Endpoint.fromJson(json['endpoint'] as Map<String, dynamic>),
    enrollmentRequest: json['enrollmentRequest'] == null
        ? null
        : EnrollmentRequest.fromJson(
            json['enrollmentRequest'] as Map<String, dynamic>),
    enrollmentResponse: json['enrollmentResponse'] == null
        ? null
        : EnrollmentResponse.fromJson(
            json['enrollmentResponse'] as Map<String, dynamic>),
    episodeOfCare: json['episodeOfCare'] == null
        ? null
        : EpisodeOfCare.fromJson(json['episodeOfCare'] as Map<String, dynamic>),
    eventDefinition: json['eventDefinition'] == null
        ? null
        : EventDefinition.fromJson(
            json['eventDefinition'] as Map<String, dynamic>),
    evidence: json['evidence'] == null
        ? null
        : Evidence.fromJson(json['evidence'] as Map<String, dynamic>),
    evidenceVariable: json['evidenceVariable'] == null
        ? null
        : EvidenceVariable.fromJson(
            json['evidenceVariable'] as Map<String, dynamic>),
    exampleScenario: json['exampleScenario'] == null
        ? null
        : ExampleScenario.fromJson(
            json['exampleScenario'] as Map<String, dynamic>),
    explanationOfBenefit: json['explanationOfBenefit'] == null
        ? null
        : ExplanationOfBenefit.fromJson(
            json['explanationOfBenefit'] as Map<String, dynamic>),
    familyMemberHistory: json['familyMemberHistory'] == null
        ? null
        : FamilyMemberHistory.fromJson(
            json['familyMemberHistory'] as Map<String, dynamic>),
    flag: json['flag'] == null
        ? null
        : Flag.fromJson(json['flag'] as Map<String, dynamic>),
    goal: json['goal'] == null
        ? null
        : Goal.fromJson(json['goal'] as Map<String, dynamic>),
    graphDefinition: json['graphDefinition'] == null
        ? null
        : GraphDefinition.fromJson(
            json['graphDefinition'] as Map<String, dynamic>),
    group: json['group'] == null
        ? null
        : Group.fromJson(json['group'] as Map<String, dynamic>),
    guidanceResponse: json['guidanceResponse'] == null
        ? null
        : GuidanceResponse.fromJson(
            json['guidanceResponse'] as Map<String, dynamic>),
    healthcareService: json['healthcareService'] == null
        ? null
        : HealthcareService.fromJson(
            json['healthcareService'] as Map<String, dynamic>),
    imagingStudy: json['imagingStudy'] == null
        ? null
        : ImagingStudy.fromJson(json['imagingStudy'] as Map<String, dynamic>),
    immunization: json['immunization'] == null
        ? null
        : Immunization.fromJson(json['immunization'] as Map<String, dynamic>),
    immunizationEvaluation: json['immunizationEvaluation'] == null
        ? null
        : ImmunizationEvaluation.fromJson(
            json['immunizationEvaluation'] as Map<String, dynamic>),
    immunizationRecommendation: json['immunizationRecommendation'] == null
        ? null
        : ImmunizationRecommendation.fromJson(
            json['immunizationRecommendation'] as Map<String, dynamic>),
    implementationGuide: json['implementationGuide'] == null
        ? null
        : ImplementationGuide.fromJson(
            json['implementationGuide'] as Map<String, dynamic>),
    insurancePlan: json['insurancePlan'] == null
        ? null
        : InsurancePlan.fromJson(json['insurancePlan'] as Map<String, dynamic>),
    invoice: json['invoice'] == null
        ? null
        : Invoice.fromJson(json['invoice'] as Map<String, dynamic>),
    library: json['library'] == null
        ? null
        : Library.fromJson(json['library'] as Map<String, dynamic>),
    linkage: json['linkage'] == null
        ? null
        : Linkage.fromJson(json['linkage'] as Map<String, dynamic>),
    list: json['list'] as List,
    location: json['location'] == null
        ? null
        : Location.fromJson(json['location'] as Map<String, dynamic>),
    measure: json['measure'] == null
        ? null
        : Measure.fromJson(json['measure'] as Map<String, dynamic>),
    measureReport: json['measureReport'] == null
        ? null
        : MeasureReport.fromJson(json['measureReport'] as Map<String, dynamic>),
    media: json['media'] == null
        ? null
        : Media.fromJson(json['media'] as Map<String, dynamic>),
    medication: json['medication'] == null
        ? null
        : Medication.fromJson(json['medication'] as Map<String, dynamic>),
    medicationAdministration: json['medicationAdministration'] == null
        ? null
        : MedicationAdministration.fromJson(
            json['medicationAdministration'] as Map<String, dynamic>),
    medicationDispense: json['medicationDispense'] == null
        ? null
        : MedicationDispense.fromJson(
            json['medicationDispense'] as Map<String, dynamic>),
    medicationKnowledge: json['medicationKnowledge'] == null
        ? null
        : MedicationKnowledge.fromJson(
            json['medicationKnowledge'] as Map<String, dynamic>),
    medicationRequest: json['medicationRequest'] == null
        ? null
        : MedicationRequest.fromJson(
            json['medicationRequest'] as Map<String, dynamic>),
    medicationStatement: json['medicationStatement'] == null
        ? null
        : MedicationStatement.fromJson(
            json['medicationStatement'] as Map<String, dynamic>),
    medicinalProduct: json['medicinalProduct'] == null
        ? null
        : MedicinalProduct.fromJson(
            json['medicinalProduct'] as Map<String, dynamic>),
    medicinalProductAuthorization: json['medicinalProductAuthorization'] == null
        ? null
        : MedicinalProductAuthorization.fromJson(
            json['medicinalProductAuthorization'] as Map<String, dynamic>),
    medicinalProductContraindication:
        json['medicinalProductContraindication'] == null
            ? null
            : MedicinalProductContraindication.fromJson(
                json['medicinalProductContraindication']
                    as Map<String, dynamic>),
    medicinalProductIndication: json['medicinalProductIndication'] == null
        ? null
        : MedicinalProductIndication.fromJson(
            json['medicinalProductIndication'] as Map<String, dynamic>),
    medicinalProductIngredient: json['medicinalProductIngredient'] == null
        ? null
        : MedicinalProductIngredient.fromJson(
            json['medicinalProductIngredient'] as Map<String, dynamic>),
    medicinalProductInteraction: json['medicinalProductInteraction'] == null
        ? null
        : MedicinalProductInteraction.fromJson(
            json['medicinalProductInteraction'] as Map<String, dynamic>),
    medicinalProductManufactured: json['medicinalProductManufactured'] == null
        ? null
        : MedicinalProductManufactured.fromJson(
            json['medicinalProductManufactured'] as Map<String, dynamic>),
    medicinalProductPackaged: json['medicinalProductPackaged'] == null
        ? null
        : MedicinalProductPackaged.fromJson(
            json['medicinalProductPackaged'] as Map<String, dynamic>),
    medicinalProductPharmaceutical:
        json['medicinalProductPharmaceutical'] == null
            ? null
            : MedicinalProductPharmaceutical.fromJson(
                json['medicinalProductPharmaceutical'] as Map<String, dynamic>),
    medicinalProductUndesirableEffect:
        json['medicinalProductUndesirableEffect'] == null
            ? null
            : MedicinalProductUndesirableEffect.fromJson(
                json['medicinalProductUndesirableEffect']
                    as Map<String, dynamic>),
    messageDefinition: json['messageDefinition'] == null
        ? null
        : MessageDefinition.fromJson(
            json['messageDefinition'] as Map<String, dynamic>),
    messageHeader: json['messageHeader'] == null
        ? null
        : MessageHeader.fromJson(json['messageHeader'] as Map<String, dynamic>),
    molecularSequence: json['molecularSequence'] == null
        ? null
        : MolecularSequence.fromJson(
            json['molecularSequence'] as Map<String, dynamic>),
    namingSystem: json['namingSystem'] == null
        ? null
        : NamingSystem.fromJson(json['namingSystem'] as Map<String, dynamic>),
    nutritionOrder: json['nutritionOrder'] == null
        ? null
        : NutritionOrder.fromJson(
            json['nutritionOrder'] as Map<String, dynamic>),
    observation: json['observation'] == null
        ? null
        : Observation.fromJson(json['observation'] as Map<String, dynamic>),
    observationDefinition: json['observationDefinition'] == null
        ? null
        : ObservationDefinition.fromJson(
            json['observationDefinition'] as Map<String, dynamic>),
    operationDefinition: json['operationDefinition'] == null
        ? null
        : OperationDefinition.fromJson(
            json['operationDefinition'] as Map<String, dynamic>),
    operationOutcome: json['operationOutcome'] == null
        ? null
        : OperationOutcome.fromJson(
            json['operationOutcome'] as Map<String, dynamic>),
    organization: json['organization'] == null
        ? null
        : Organization.fromJson(json['organization'] as Map<String, dynamic>),
    organizationAffiliation: json['organizationAffiliation'] == null
        ? null
        : OrganizationAffiliation.fromJson(
            json['organizationAffiliation'] as Map<String, dynamic>),
    parameters: json['parameters'] == null
        ? null
        : Parameters.fromJson(json['parameters'] as Map<String, dynamic>),
    patient: json['patient'] == null
        ? null
        : Patient.fromJson(json['patient'] as Map<String, dynamic>),
    paymentNotice: json['paymentNotice'] == null
        ? null
        : PaymentNotice.fromJson(json['paymentNotice'] as Map<String, dynamic>),
    paymentReconciliation: json['paymentReconciliation'] == null
        ? null
        : PaymentReconciliation.fromJson(
            json['paymentReconciliation'] as Map<String, dynamic>),
    person: json['person'] == null
        ? null
        : Person.fromJson(json['person'] as Map<String, dynamic>),
    planDefinition: json['planDefinition'] == null
        ? null
        : PlanDefinition.fromJson(
            json['planDefinition'] as Map<String, dynamic>),
    practitioner: json['practitioner'] == null
        ? null
        : Practitioner.fromJson(json['practitioner'] as Map<String, dynamic>),
    practitionerRole: json['practitionerRole'] == null
        ? null
        : PractitionerRole.fromJson(
            json['practitionerRole'] as Map<String, dynamic>),
    procedure: json['procedure'] == null
        ? null
        : Procedure.fromJson(json['procedure'] as Map<String, dynamic>),
    provenance: json['provenance'] == null
        ? null
        : Provenance.fromJson(json['provenance'] as Map<String, dynamic>),
    questionnaire: json['questionnaire'] == null
        ? null
        : Questionnaire.fromJson(json['questionnaire'] as Map<String, dynamic>),
    questionnaireResponse: json['questionnaireResponse'] == null
        ? null
        : QuestionnaireResponse.fromJson(
            json['questionnaireResponse'] as Map<String, dynamic>),
    relatedPerson: json['relatedPerson'] == null
        ? null
        : RelatedPerson.fromJson(json['relatedPerson'] as Map<String, dynamic>),
    requestGroup: json['requestGroup'] == null
        ? null
        : RequestGroup.fromJson(json['requestGroup'] as Map<String, dynamic>),
    researchDefinition: json['researchDefinition'] == null
        ? null
        : ResearchDefinition.fromJson(
            json['researchDefinition'] as Map<String, dynamic>),
    researchElementDefinition: json['researchElementDefinition'] == null
        ? null
        : ResearchElementDefinition.fromJson(
            json['researchElementDefinition'] as Map<String, dynamic>),
    researchStudy: json['researchStudy'] == null
        ? null
        : ResearchStudy.fromJson(json['researchStudy'] as Map<String, dynamic>),
    researchSubject: json['researchSubject'] == null
        ? null
        : ResearchSubject.fromJson(
            json['researchSubject'] as Map<String, dynamic>),
    riskAssessment: json['riskAssessment'] == null
        ? null
        : RiskAssessment.fromJson(
            json['riskAssessment'] as Map<String, dynamic>),
    riskEvidenceSynthesis: json['riskEvidenceSynthesis'] == null
        ? null
        : RiskEvidenceSynthesis.fromJson(
            json['riskEvidenceSynthesis'] as Map<String, dynamic>),
    schedule: json['schedule'] == null
        ? null
        : Schedule.fromJson(json['schedule'] as Map<String, dynamic>),
    searchParameter: json['searchParameter'] == null
        ? null
        : SearchParameter.fromJson(
            json['searchParameter'] as Map<String, dynamic>),
    serviceRequest: json['serviceRequest'] == null
        ? null
        : ServiceRequest.fromJson(
            json['serviceRequest'] as Map<String, dynamic>),
    slot: json['slot'] == null
        ? null
        : Slot.fromJson(json['slot'] as Map<String, dynamic>),
    specimen: json['specimen'] == null
        ? null
        : Specimen.fromJson(json['specimen'] as Map<String, dynamic>),
    specimenDefinition: json['specimenDefinition'] == null
        ? null
        : SpecimenDefinition.fromJson(
            json['specimenDefinition'] as Map<String, dynamic>),
    structureDefinition: json['structureDefinition'] == null
        ? null
        : StructureDefinition.fromJson(
            json['structureDefinition'] as Map<String, dynamic>),
    structureMap: json['structureMap'] == null
        ? null
        : StructureMap.fromJson(json['structureMap'] as Map<String, dynamic>),
    subscription: json['subscription'] == null
        ? null
        : Subscription.fromJson(json['subscription'] as Map<String, dynamic>),
    substance: json['substance'] == null
        ? null
        : Substance.fromJson(json['substance'] as Map<String, dynamic>),
    substanceNucleicAcid: json['substanceNucleicAcid'] == null
        ? null
        : SubstanceNucleicAcid.fromJson(
            json['substanceNucleicAcid'] as Map<String, dynamic>),
    substancePolymer: json['substancePolymer'] == null
        ? null
        : SubstancePolymer.fromJson(
            json['substancePolymer'] as Map<String, dynamic>),
    substanceProtein: json['substanceProtein'] == null
        ? null
        : SubstanceProtein.fromJson(
            json['substanceProtein'] as Map<String, dynamic>),
    substanceReferenceInformation: json['substanceReferenceInformation'] == null
        ? null
        : SubstanceReferenceInformation.fromJson(
            json['substanceReferenceInformation'] as Map<String, dynamic>),
    substanceSourceMaterial: json['substanceSourceMaterial'] == null
        ? null
        : SubstanceSourceMaterial.fromJson(
            json['substanceSourceMaterial'] as Map<String, dynamic>),
    substanceSpecification: json['substanceSpecification'] == null
        ? null
        : SubstanceSpecification.fromJson(
            json['substanceSpecification'] as Map<String, dynamic>),
    supplyDelivery: json['supplyDelivery'] == null
        ? null
        : SupplyDelivery.fromJson(
            json['supplyDelivery'] as Map<String, dynamic>),
    supplyRequest: json['supplyRequest'] == null
        ? null
        : SupplyRequest.fromJson(json['supplyRequest'] as Map<String, dynamic>),
    task: json['task'] == null
        ? null
        : Task.fromJson(json['task'] as Map<String, dynamic>),
    terminologyCapabilities: json['terminologyCapabilities'] == null
        ? null
        : TerminologyCapabilities.fromJson(
            json['terminologyCapabilities'] as Map<String, dynamic>),
    testReport: json['testReport'] == null
        ? null
        : TestReport.fromJson(json['testReport'] as Map<String, dynamic>),
    testScript: json['testScript'] == null
        ? null
        : TestScript.fromJson(json['testScript'] as Map<String, dynamic>),
    valueSet: json['valueSet'] == null
        ? null
        : ValueSet.fromJson(json['valueSet'] as Map<String, dynamic>),
    verificationResult: json['verificationResult'] == null
        ? null
        : VerificationResult.fromJson(
            json['verificationResult'] as Map<String, dynamic>),
    visionPrescription: json['visionPrescription'] == null
        ? null
        : VisionPrescription.fromJson(
            json['visionPrescription'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ResourceListToJson(ResourceList instance) =>
    <String, dynamic>{
      'activityDefinition': instance.activityDefinition?.toJson(),
      'adverseEvent': instance.adverseEvent?.toJson(),
      'allergyIntolerance': instance.allergyIntolerance?.toJson(),
      'appointment': instance.appointment?.toJson(),
      'appointmentResponse': instance.appointmentResponse?.toJson(),
      'auditEvent': instance.auditEvent?.toJson(),
      'basic': instance.basic?.toJson(),
      'binary': instance.binary?.toJson(),
      'biologicallyDerivedProduct':
          instance.biologicallyDerivedProduct?.toJson(),
      'bodyStructure': instance.bodyStructure?.toJson(),
      'bundle': instance.bundle?.toJson(),
      'capabilityStatement': instance.capabilityStatement?.toJson(),
      'carePlan': instance.carePlan?.toJson(),
      'careTeam': instance.careTeam?.toJson(),
      'catalogEntry': instance.catalogEntry?.toJson(),
      'chargeItem': instance.chargeItem?.toJson(),
      'chargeItemDefinition': instance.chargeItemDefinition?.toJson(),
      'claim': instance.claim?.toJson(),
      'claimResponse': instance.claimResponse?.toJson(),
      'clinicalImpression': instance.clinicalImpression?.toJson(),
      'codeSystem': instance.codeSystem?.toJson(),
      'communication': instance.communication?.toJson(),
      'communicationRequest': instance.communicationRequest?.toJson(),
      'compartmentDefinition': instance.compartmentDefinition?.toJson(),
      'composition': instance.composition?.toJson(),
      'conceptMap': instance.conceptMap?.toJson(),
      'condition': instance.condition?.toJson(),
      'consent': instance.consent?.toJson(),
      'contract': instance.contract?.toJson(),
      'coverage': instance.coverage?.toJson(),
      'coverageEligibilityRequest':
          instance.coverageEligibilityRequest?.toJson(),
      'coverageEligibilityResponse':
          instance.coverageEligibilityResponse?.toJson(),
      'detectedIssue': instance.detectedIssue?.toJson(),
      'device': instance.device?.toJson(),
      'deviceDefinition': instance.deviceDefinition?.toJson(),
      'deviceMetric': instance.deviceMetric?.toJson(),
      'deviceRequest': instance.deviceRequest?.toJson(),
      'deviceUseStatement': instance.deviceUseStatement?.toJson(),
      'diagnosticReport': instance.diagnosticReport?.toJson(),
      'documentManifest': instance.documentManifest?.toJson(),
      'documentReference': instance.documentReference?.toJson(),
      'effectEvidenceSynthesis': instance.effectEvidenceSynthesis?.toJson(),
      'encounter': instance.encounter?.toJson(),
      'endpoint': instance.endpoint?.toJson(),
      'enrollmentRequest': instance.enrollmentRequest?.toJson(),
      'enrollmentResponse': instance.enrollmentResponse?.toJson(),
      'episodeOfCare': instance.episodeOfCare?.toJson(),
      'eventDefinition': instance.eventDefinition?.toJson(),
      'evidence': instance.evidence?.toJson(),
      'evidenceVariable': instance.evidenceVariable?.toJson(),
      'exampleScenario': instance.exampleScenario?.toJson(),
      'explanationOfBenefit': instance.explanationOfBenefit?.toJson(),
      'familyMemberHistory': instance.familyMemberHistory?.toJson(),
      'flag': instance.flag?.toJson(),
      'goal': instance.goal?.toJson(),
      'graphDefinition': instance.graphDefinition?.toJson(),
      'group': instance.group?.toJson(),
      'guidanceResponse': instance.guidanceResponse?.toJson(),
      'healthcareService': instance.healthcareService?.toJson(),
      'imagingStudy': instance.imagingStudy?.toJson(),
      'immunization': instance.immunization?.toJson(),
      'immunizationEvaluation': instance.immunizationEvaluation?.toJson(),
      'immunizationRecommendation':
          instance.immunizationRecommendation?.toJson(),
      'implementationGuide': instance.implementationGuide?.toJson(),
      'insurancePlan': instance.insurancePlan?.toJson(),
      'invoice': instance.invoice?.toJson(),
      'library': instance.library?.toJson(),
      'linkage': instance.linkage?.toJson(),
      'list': instance.list,
      'location': instance.location?.toJson(),
      'measure': instance.measure?.toJson(),
      'measureReport': instance.measureReport?.toJson(),
      'media': instance.media?.toJson(),
      'medication': instance.medication?.toJson(),
      'medicationAdministration': instance.medicationAdministration?.toJson(),
      'medicationDispense': instance.medicationDispense?.toJson(),
      'medicationKnowledge': instance.medicationKnowledge?.toJson(),
      'medicationRequest': instance.medicationRequest?.toJson(),
      'medicationStatement': instance.medicationStatement?.toJson(),
      'medicinalProduct': instance.medicinalProduct?.toJson(),
      'medicinalProductAuthorization':
          instance.medicinalProductAuthorization?.toJson(),
      'medicinalProductContraindication':
          instance.medicinalProductContraindication?.toJson(),
      'medicinalProductIndication':
          instance.medicinalProductIndication?.toJson(),
      'medicinalProductIngredient':
          instance.medicinalProductIngredient?.toJson(),
      'medicinalProductInteraction':
          instance.medicinalProductInteraction?.toJson(),
      'medicinalProductManufactured':
          instance.medicinalProductManufactured?.toJson(),
      'medicinalProductPackaged': instance.medicinalProductPackaged?.toJson(),
      'medicinalProductPharmaceutical':
          instance.medicinalProductPharmaceutical?.toJson(),
      'medicinalProductUndesirableEffect':
          instance.medicinalProductUndesirableEffect?.toJson(),
      'messageDefinition': instance.messageDefinition?.toJson(),
      'messageHeader': instance.messageHeader?.toJson(),
      'molecularSequence': instance.molecularSequence?.toJson(),
      'namingSystem': instance.namingSystem?.toJson(),
      'nutritionOrder': instance.nutritionOrder?.toJson(),
      'observation': instance.observation?.toJson(),
      'observationDefinition': instance.observationDefinition?.toJson(),
      'operationDefinition': instance.operationDefinition?.toJson(),
      'operationOutcome': instance.operationOutcome?.toJson(),
      'organization': instance.organization?.toJson(),
      'organizationAffiliation': instance.organizationAffiliation?.toJson(),
      'parameters': instance.parameters?.toJson(),
      'patient': instance.patient?.toJson(),
      'paymentNotice': instance.paymentNotice?.toJson(),
      'paymentReconciliation': instance.paymentReconciliation?.toJson(),
      'person': instance.person?.toJson(),
      'planDefinition': instance.planDefinition?.toJson(),
      'practitioner': instance.practitioner?.toJson(),
      'practitionerRole': instance.practitionerRole?.toJson(),
      'procedure': instance.procedure?.toJson(),
      'provenance': instance.provenance?.toJson(),
      'questionnaire': instance.questionnaire?.toJson(),
      'questionnaireResponse': instance.questionnaireResponse?.toJson(),
      'relatedPerson': instance.relatedPerson?.toJson(),
      'requestGroup': instance.requestGroup?.toJson(),
      'researchDefinition': instance.researchDefinition?.toJson(),
      'researchElementDefinition': instance.researchElementDefinition?.toJson(),
      'researchStudy': instance.researchStudy?.toJson(),
      'researchSubject': instance.researchSubject?.toJson(),
      'riskAssessment': instance.riskAssessment?.toJson(),
      'riskEvidenceSynthesis': instance.riskEvidenceSynthesis?.toJson(),
      'schedule': instance.schedule?.toJson(),
      'searchParameter': instance.searchParameter?.toJson(),
      'serviceRequest': instance.serviceRequest?.toJson(),
      'slot': instance.slot?.toJson(),
      'specimen': instance.specimen?.toJson(),
      'specimenDefinition': instance.specimenDefinition?.toJson(),
      'structureDefinition': instance.structureDefinition?.toJson(),
      'structureMap': instance.structureMap?.toJson(),
      'subscription': instance.subscription?.toJson(),
      'substance': instance.substance?.toJson(),
      'substanceNucleicAcid': instance.substanceNucleicAcid?.toJson(),
      'substancePolymer': instance.substancePolymer?.toJson(),
      'substanceProtein': instance.substanceProtein?.toJson(),
      'substanceReferenceInformation':
          instance.substanceReferenceInformation?.toJson(),
      'substanceSourceMaterial': instance.substanceSourceMaterial?.toJson(),
      'substanceSpecification': instance.substanceSpecification?.toJson(),
      'supplyDelivery': instance.supplyDelivery?.toJson(),
      'supplyRequest': instance.supplyRequest?.toJson(),
      'task': instance.task?.toJson(),
      'terminologyCapabilities': instance.terminologyCapabilities?.toJson(),
      'testReport': instance.testReport?.toJson(),
      'testScript': instance.testScript?.toJson(),
      'valueSet': instance.valueSet?.toJson(),
      'verificationResult': instance.verificationResult?.toJson(),
      'visionPrescription': instance.visionPrescription?.toJson(),
    };
