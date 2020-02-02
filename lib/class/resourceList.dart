import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_fhir/class/activityDefinition.dart';
import 'package:flutter_fhir/class/adverseEvent.dart';
import 'package:flutter_fhir/class/allergyIntolerance.dart';
import 'package:flutter_fhir/class/appointment.dart';
import 'package:flutter_fhir/class/appointmentResponse.dart';
import 'package:flutter_fhir/class/auditEvent.dart';
import 'package:flutter_fhir/class/basic.dart';
import 'package:flutter_fhir/class/binary.dart';
import 'package:flutter_fhir/class/biologicallyDerivedProduct.dart';
import 'package:flutter_fhir/class/bodyStructure.dart';
import 'package:flutter_fhir/class/bundle.dart';
import 'package:flutter_fhir/class/capabilityStatement.dart';
import 'package:flutter_fhir/class/carePlan.dart';
import 'package:flutter_fhir/class/careTeam.dart';
import 'package:flutter_fhir/class/catalogEntry.dart';
import 'package:flutter_fhir/class/chargeItem.dart';
import 'package:flutter_fhir/class/chargeItemDefinition.dart';
import 'package:flutter_fhir/class/claim.dart';
import 'package:flutter_fhir/class/claimResponse.dart';
import 'package:flutter_fhir/class/clinicalImpression.dart';
import 'package:flutter_fhir/class/codeSystem.dart';
import 'package:flutter_fhir/class/communication.dart';
import 'package:flutter_fhir/class/communicationRequest.dart';
import 'package:flutter_fhir/class/compartmentDefinition.dart';
import 'package:flutter_fhir/class/composition.dart';
import 'package:flutter_fhir/class/conceptMap.dart';
import 'package:flutter_fhir/class/condition.dart';
import 'package:flutter_fhir/class/consent.dart';
import 'package:flutter_fhir/class/contract.dart';
import 'package:flutter_fhir/class/coverage.dart';
import 'package:flutter_fhir/class/coverageEligibilityRequest.dart';
import 'package:flutter_fhir/class/coverageEligibilityResponse.dart';
import 'package:flutter_fhir/class/detectedIssue.dart';
import 'package:flutter_fhir/class/device.dart';
import 'package:flutter_fhir/class/deviceDefinition.dart';
import 'package:flutter_fhir/class/deviceMetric.dart';
import 'package:flutter_fhir/class/deviceRequest.dart';
import 'package:flutter_fhir/class/deviceUseStatement.dart';
import 'package:flutter_fhir/class/diagnosticReport.dart';
import 'package:flutter_fhir/class/documentManifest.dart';
import 'package:flutter_fhir/class/documentReference.dart';
import 'package:flutter_fhir/class/effectEvidenceSynthesis.dart';
import 'package:flutter_fhir/class/encounter.dart';
import 'package:flutter_fhir/class/endpoint.dart';
import 'package:flutter_fhir/class/enrollmentRequest.dart';
import 'package:flutter_fhir/class/enrollmentResponse.dart';
import 'package:flutter_fhir/class/episodeOfCare.dart';
import 'package:flutter_fhir/class/eventDefinition.dart';
import 'package:flutter_fhir/class/evidence.dart';
import 'package:flutter_fhir/class/evidenceVariable.dart';
import 'package:flutter_fhir/class/exampleScenario.dart';
import 'package:flutter_fhir/class/explanationOfBenefit.dart';
import 'package:flutter_fhir/class/familyMemberHistory.dart';
import 'package:flutter_fhir/class/flag.dart';
import 'package:flutter_fhir/class/goal.dart';
import 'package:flutter_fhir/class/graphDefinition.dart';
import 'package:flutter_fhir/class/group.dart';
import 'package:flutter_fhir/class/guidanceResponse.dart';
import 'package:flutter_fhir/class/healthcareService.dart';
import 'package:flutter_fhir/class/imagingStudy.dart';
import 'package:flutter_fhir/class/immunization.dart';
import 'package:flutter_fhir/class/immunizationEvaluation.dart';
import 'package:flutter_fhir/class/immunizationRecommendation.dart';
import 'package:flutter_fhir/class/implementationGuide.dart';
import 'package:flutter_fhir/class/insurancePlan.dart';
import 'package:flutter_fhir/class/invoice.dart';
import 'package:flutter_fhir/class/library.dart';
import 'package:flutter_fhir/class/linkage.dart';
import 'package:flutter_fhir/class/lists.dart';
import 'package:flutter_fhir/class/location.dart';
import 'package:flutter_fhir/class/measure.dart';
import 'package:flutter_fhir/class/measureReport.dart';
import 'package:flutter_fhir/class/media.dart';
import 'package:flutter_fhir/class/medication.dart';
import 'package:flutter_fhir/class/medicationAdministration.dart';
import 'package:flutter_fhir/class/medicationDispense.dart';
import 'package:flutter_fhir/class/medicationKnowledge.dart';
import 'package:flutter_fhir/class/medicationRequest.dart';
import 'package:flutter_fhir/class/medicationStatement.dart';
import 'package:flutter_fhir/class/medicinalProduct.dart';
import 'package:flutter_fhir/class/medicinalProductAuthorization.dart';
import 'package:flutter_fhir/class/medicinalProductContraindication.dart';
import 'package:flutter_fhir/class/medicinalProductIndication.dart';
import 'package:flutter_fhir/class/medicinalProductIngredient.dart';
import 'package:flutter_fhir/class/medicinalProductInteraction.dart';
import 'package:flutter_fhir/class/medicinalProductManufactured.dart';
import 'package:flutter_fhir/class/medicinalProductPackaged.dart';
import 'package:flutter_fhir/class/medicinalProductPharmaceutical.dart';
import 'package:flutter_fhir/class/medicinalProductUndesirableEffect.dart';
import 'package:flutter_fhir/class/messageDefinition.dart';
import 'package:flutter_fhir/class/messageHeader.dart';
import 'package:flutter_fhir/class/molecularSequence.dart';
import 'package:flutter_fhir/class/namingSystem.dart';
import 'package:flutter_fhir/class/nutritionOrder.dart';
import 'package:flutter_fhir/class/observation.dart';
import 'package:flutter_fhir/class/observationDefinition.dart';
import 'package:flutter_fhir/class/operationDefinition.dart';
import 'package:flutter_fhir/class/operationOutcome.dart';
import 'package:flutter_fhir/class/organization.dart';
import 'package:flutter_fhir/class/organizationAffiliation.dart';
import 'package:flutter_fhir/class/parameters.dart';
import 'package:flutter_fhir/class/patient.dart';
import 'package:flutter_fhir/class/paymentNotice.dart';
import 'package:flutter_fhir/class/paymentReconciliation.dart';
import 'package:flutter_fhir/class/person.dart';
import 'package:flutter_fhir/class/planDefinition.dart';
import 'package:flutter_fhir/class/practitioner.dart';
import 'package:flutter_fhir/class/practitionerRole.dart';
import 'package:flutter_fhir/class/procedure.dart';
import 'package:flutter_fhir/class/provenance.dart';
import 'package:flutter_fhir/class/questionnaire.dart';
import 'package:flutter_fhir/class/questionnaireResponse.dart';
import 'package:flutter_fhir/class/relatedPerson.dart';
import 'package:flutter_fhir/class/requestGroup.dart';
import 'package:flutter_fhir/class/researchDefinition.dart';
import 'package:flutter_fhir/class/researchElementDefinition.dart';
import 'package:flutter_fhir/class/researchStudy.dart';
import 'package:flutter_fhir/class/researchSubject.dart';
import 'package:flutter_fhir/class/riskAssessment.dart';
import 'package:flutter_fhir/class/riskEvidenceSynthesis.dart';
import 'package:flutter_fhir/class/schedule.dart';
import 'package:flutter_fhir/class/searchParameter.dart';
import 'package:flutter_fhir/class/serviceRequest.dart';
import 'package:flutter_fhir/class/slot.dart';
import 'package:flutter_fhir/class/specimen.dart';
import 'package:flutter_fhir/class/specimenDefinition.dart';
import 'package:flutter_fhir/class/structureDefinition.dart';
import 'package:flutter_fhir/class/structureMap.dart';
import 'package:flutter_fhir/class/subscription.dart';
import 'package:flutter_fhir/class/substance.dart';
import 'package:flutter_fhir/class/substanceNucleicAcid.dart';
import 'package:flutter_fhir/class/substancePolymer.dart';
import 'package:flutter_fhir/class/substanceProtein.dart';
import 'package:flutter_fhir/class/substanceReferenceInformation.dart';
import 'package:flutter_fhir/class/substanceSourceMaterial.dart';
import 'package:flutter_fhir/class/substanceSpecification.dart';
import 'package:flutter_fhir/class/supplyDelivery.dart';
import 'package:flutter_fhir/class/supplyRequest.dart';
import 'package:flutter_fhir/class/task.dart';
import 'package:flutter_fhir/class/terminologyCapabilities.dart';
import 'package:flutter_fhir/class/testReport.dart';
import 'package:flutter_fhir/class/testScript.dart';
import 'package:flutter_fhir/class/valueSet.dart';
import 'package:flutter_fhir/class/verificationResult.dart';
import 'package:flutter_fhir/class/visionPrescription.dart';

part 'resourceList.g.dart';

@JsonSerializable(explicitToJson: true)
class ResourceList {

    ActivityDefinition activityDefinition;
    AdverseEvent adverseEvent;
    AllergyIntolerance allergyIntolerance;
    Appointment appointment;
    AppointmentResponse appointmentResponse;
    AuditEvent auditEvent;
    Basic basic;
    Binary binary;
    BiologicallyDerivedProduct biologicallyDerivedProduct;
    BodyStructure bodyStructure;
    Bundle bundle;
    CapabilityStatement capabilityStatement;
    CarePlan carePlan;
    CareTeam careTeam;
    CatalogEntry catalogEntry;
    ChargeItem chargeItem;
    ChargeItemDefinition chargeItemDefinition;
    Claim claim;
    ClaimResponse claimResponse;
    ClinicalImpression clinicalImpression;
    CodeSystem codeSystem;
    Communication communication;
    CommunicationRequest communicationRequest;
    CompartmentDefinition compartmentDefinition;
    Composition composition;
    ConceptMap conceptMap;
    Condition condition;
    Consent consent;
    Contract contract;
    Coverage coverage;
    CoverageEligibilityRequest coverageEligibilityRequest;
    CoverageEligibilityResponse coverageEligibilityResponse;
    DetectedIssue detectedIssue;
    Device device;
    DeviceDefinition deviceDefinition;
    DeviceMetric deviceMetric;
    DeviceRequest deviceRequest;
    DeviceUseStatement deviceUseStatement;
    DiagnosticReport diagnosticReport;
    DocumentManifest documentManifest;
    DocumentReference documentReference;
    EffectEvidenceSynthesis effectEvidenceSynthesis;
    Encounter encounter;
    Endpoint endpoint;
    EnrollmentRequest enrollmentRequest;
    EnrollmentResponse enrollmentResponse;
    EpisodeOfCare episodeOfCare;
    EventDefinition eventDefinition;
    Evidence evidence;
    EvidenceVariable evidenceVariable;
    ExampleScenario exampleScenario;
    ExplanationOfBenefit explanationOfBenefit;
    FamilyMemberHistory familyMemberHistory;
    Flag flag;
    Goal goal;
    GraphDefinition graphDefinition;
    Group group;
    GuidanceResponse guidanceResponse;
    HealthcareService healthcareService;
    ImagingStudy imagingStudy;
    Immunization immunization;
    ImmunizationEvaluation immunizationEvaluation;
    ImmunizationRecommendation immunizationRecommendation;
    ImplementationGuide implementationGuide;
    InsurancePlan insurancePlan;
    Invoice invoice;
    Library library;
    Linkage linkage;
    List list;
    Location location;
    Measure measure;
    MeasureReport measureReport;
    Media media;
    Medication medication;
    MedicationAdministration medicationAdministration;
    MedicationDispense medicationDispense;
    MedicationKnowledge medicationKnowledge;
    MedicationRequest medicationRequest;
    MedicationStatement medicationStatement;
    MedicinalProduct medicinalProduct;
    MedicinalProductAuthorization medicinalProductAuthorization;
    MedicinalProductContraindication medicinalProductContraindication;
    MedicinalProductIndication medicinalProductIndication;
    MedicinalProductIngredient medicinalProductIngredient;
    MedicinalProductInteraction medicinalProductInteraction;
    MedicinalProductManufactured medicinalProductManufactured;
    MedicinalProductPackaged medicinalProductPackaged;
    MedicinalProductPharmaceutical medicinalProductPharmaceutical;
    MedicinalProductUndesirableEffect medicinalProductUndesirableEffect;
    MessageDefinition messageDefinition;
    MessageHeader messageHeader;
    MolecularSequence molecularSequence;
    NamingSystem namingSystem;
    NutritionOrder nutritionOrder;
    Observation observation;
    ObservationDefinition observationDefinition;
    OperationDefinition operationDefinition;
    OperationOutcome operationOutcome;
    Organization organization;
    OrganizationAffiliation organizationAffiliation;
    Parameters parameters;
    Patient patient;
    PaymentNotice paymentNotice;
    PaymentReconciliation paymentReconciliation;
    Person person;
    PlanDefinition planDefinition;
    Practitioner practitioner;
    PractitionerRole practitionerRole;
    Procedure procedure;
    Provenance provenance;
    Questionnaire questionnaire;
    QuestionnaireResponse questionnaireResponse;
    RelatedPerson relatedPerson;
    RequestGroup requestGroup;
    ResearchDefinition researchDefinition;
    ResearchElementDefinition researchElementDefinition;
    ResearchStudy researchStudy;
    ResearchSubject researchSubject;
    RiskAssessment riskAssessment;
    RiskEvidenceSynthesis riskEvidenceSynthesis;
    Schedule schedule;
    SearchParameter searchParameter;
    ServiceRequest serviceRequest;
    Slot slot;
    Specimen specimen;
    SpecimenDefinition specimenDefinition;
    StructureDefinition structureDefinition;
    StructureMap structureMap;
    Subscription subscription;
    Substance substance;
    SubstanceNucleicAcid substanceNucleicAcid;
    SubstancePolymer substancePolymer;
    SubstanceProtein substanceProtein;
    SubstanceReferenceInformation substanceReferenceInformation;
    SubstanceSourceMaterial substanceSourceMaterial;
    SubstanceSpecification substanceSpecification;
    SupplyDelivery supplyDelivery;
    SupplyRequest supplyRequest;
    Task task;
    TerminologyCapabilities terminologyCapabilities;
    TestReport testReport;
    TestScript testScript;
    ValueSet valueSet;
    VerificationResult verificationResult;
    VisionPrescription visionPrescription;

ResourceList(
    {this.activityDefinition,
    this.adverseEvent,
    this.allergyIntolerance,
    this.appointment,
    this.appointmentResponse,
    this.auditEvent,
    this.basic,
    this.binary,
    this.biologicallyDerivedProduct,
    this.bodyStructure,
    this.bundle,
    this.capabilityStatement,
    this.carePlan,
    this.careTeam,
    this.catalogEntry,
    this.chargeItem,
    this.chargeItemDefinition,
    this.claim,
    this.claimResponse,
    this.clinicalImpression,
    this.codeSystem,
    this.communication,
    this.communicationRequest,
    this.compartmentDefinition,
    this.composition,
    this.conceptMap,
    this.condition,
    this.consent,
    this.contract,
    this.coverage,
    this.coverageEligibilityRequest,
    this.coverageEligibilityResponse,
    this.detectedIssue,
    this.device,
    this.deviceDefinition,
    this.deviceMetric,
    this.deviceRequest,
    this.deviceUseStatement,
    this.diagnosticReport,
    this.documentManifest,
    this.documentReference,
    this.effectEvidenceSynthesis,
    this.encounter,
    this.endpoint,
    this.enrollmentRequest,
    this.enrollmentResponse,
    this.episodeOfCare,
    this.eventDefinition,
    this.evidence,
    this.evidenceVariable,
    this.exampleScenario,
    this.explanationOfBenefit,
    this.familyMemberHistory,
    this.flag,
    this.goal,
    this.graphDefinition,
    this.group,
    this.guidanceResponse,
    this.healthcareService,
    this.imagingStudy,
    this.immunization,
    this.immunizationEvaluation,
    this.immunizationRecommendation,
    this.implementationGuide,
    this.insurancePlan,
    this.invoice,
    this.library,
    this.linkage,
    this.list,
    this.location,
    this.measure,
    this.measureReport,
    this.media,
    this.medication,
    this.medicationAdministration,
    this.medicationDispense,
    this.medicationKnowledge,
    this.medicationRequest,
    this.medicationStatement,
    this.medicinalProduct,
    this.medicinalProductAuthorization,
    this.medicinalProductContraindication,
    this.medicinalProductIndication,
    this.medicinalProductIngredient,
    this.medicinalProductInteraction,
    this.medicinalProductManufactured,
    this.medicinalProductPackaged,
    this.medicinalProductPharmaceutical,
    this.medicinalProductUndesirableEffect,
    this.messageDefinition,
    this.messageHeader,
    this.molecularSequence,
    this.namingSystem,
    this.nutritionOrder,
    this.observation,
    this.observationDefinition,
    this.operationDefinition,
    this.operationOutcome,
    this.organization,
    this.organizationAffiliation,
    this.parameters,
    this.patient,
    this.paymentNotice,
    this.paymentReconciliation,
    this.person,
    this.planDefinition,
    this.practitioner,
    this.practitionerRole,
    this.procedure,
    this.provenance,
    this.questionnaire,
    this.questionnaireResponse,
    this.relatedPerson,
    this.requestGroup,
    this.researchDefinition,
    this.researchElementDefinition,
    this.researchStudy,
    this.researchSubject,
    this.riskAssessment,
    this.riskEvidenceSynthesis,
    this.schedule,
    this.searchParameter,
    this.serviceRequest,
    this.slot,
    this.specimen,
    this.specimenDefinition,
    this.structureDefinition,
    this.structureMap,
    this.subscription,
    this.substance,
    this.substanceNucleicAcid,
    this.substancePolymer,
    this.substanceProtein,
    this.substanceReferenceInformation,
    this.substanceSourceMaterial,
    this.substanceSpecification,
    this.supplyDelivery,
    this.supplyRequest,
    this.task,
    this.terminologyCapabilities,
    this.testReport,
    this.testScript,
    this.valueSet,
    this.verificationResult,
    this.visionPrescription
    });

factory ResourceList.fromJson(Map<String, dynamic> json) => _$ResourceListFromJson(json);
Map<String, dynamic> toJson() => _$ResourceListToJson(this);
}
