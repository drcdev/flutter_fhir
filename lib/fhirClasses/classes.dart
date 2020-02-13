import 'dart:core';

import 'package:device_info/device_info.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_fhir/fhirClasses/element.dart';
import 'package:flutter_fhir/fhirClasses/extension.dart';
import 'package:flutter_fhir/fhirClasses/narrative.dart';
import 'package:flutter_fhir/fhirClasses/annotation.dart';
import 'package:flutter_fhir/fhirClasses/attachment.dart';
import 'package:flutter_fhir/fhirClasses/identifier.dart';
import 'package:flutter_fhir/fhirClasses/codeableConcept.dart';
import 'package:flutter_fhir/fhirClasses/coding.dart';
import 'package:flutter_fhir/fhirClasses/quantity.dart';
import 'package:flutter_fhir/fhirClasses/duration.dart';
import 'package:flutter_fhir/fhirClasses/distance.dart';
import 'package:flutter_fhir/fhirClasses/count.dart';
import 'package:flutter_fhir/fhirClasses/money.dart';
import 'package:flutter_fhir/fhirClasses/age.dart';
import 'package:flutter_fhir/fhirClasses/range.dart';
import 'package:flutter_fhir/fhirClasses/period.dart';
import 'package:flutter_fhir/fhirClasses/ratio.dart';
import 'package:flutter_fhir/fhirClasses/reference.dart';
import 'package:flutter_fhir/fhirClasses/sampledData.dart';
import 'package:flutter_fhir/fhirClasses/signature.dart';
import 'package:flutter_fhir/fhirClasses/humanName.dart';
import 'package:flutter_fhir/fhirClasses/address.dart';
import 'package:flutter_fhir/fhirClasses/contactPoint.dart';
import 'package:flutter_fhir/fhirClasses/timing.dart';
import 'package:flutter_fhir/fhirClasses/meta.dart';
import 'package:flutter_fhir/fhirClasses/contactDetail.dart';
import 'package:flutter_fhir/fhirClasses/contributor.dart';
import 'package:flutter_fhir/fhirClasses/dataRequirement.dart';
import 'package:flutter_fhir/fhirClasses/parameterDefinition.dart';
import 'package:flutter_fhir/fhirClasses/relatedArtifact.dart';
import 'package:flutter_fhir/fhirClasses/triggerDefinition.dart';
import 'package:flutter_fhir/fhirClasses/usageContext.dart';
import 'package:flutter_fhir/fhirClasses/dosage.dart';
import 'package:flutter_fhir/fhirClasses/population.dart';
import 'package:flutter_fhir/fhirClasses/productShelfLife.dart';
import 'package:flutter_fhir/fhirClasses/prodCharacteristic.dart';
import 'package:flutter_fhir/fhirClasses/marketingStatus.dart';
import 'package:flutter_fhir/fhirClasses/substanceAmount.dart';
import 'package:flutter_fhir/fhirClasses/expression.dart';
import 'package:flutter_fhir/fhirClasses/elementDefinition.dart';
import 'package:flutter_fhir/fhirClasses/account.dart';
import 'package:flutter_fhir/fhirClasses/activityDefinition.dart';
import 'package:flutter_fhir/fhirClasses/adverseEvent.dart';
import 'package:flutter_fhir/fhirClasses/allergyIntolerance.dart';
import 'package:flutter_fhir/fhirClasses/appointment.dart';
import 'package:flutter_fhir/fhirClasses/appointmentResponse.dart';
import 'package:flutter_fhir/fhirClasses/auditEvent.dart';
import 'package:flutter_fhir/fhirClasses/basic.dart';
import 'package:flutter_fhir/fhirClasses/binary.dart';
import 'package:flutter_fhir/fhirClasses/biologicallyDerivedProduct.dart';
import 'package:flutter_fhir/fhirClasses/bodyStructure.dart';
import 'package:flutter_fhir/fhirClasses/bundle.dart';
import 'package:flutter_fhir/fhirClasses/capabilityStatement.dart';
import 'package:flutter_fhir/fhirClasses/carePlan.dart';
import 'package:flutter_fhir/fhirClasses/careTeam.dart';
import 'package:flutter_fhir/fhirClasses/catalogEntry.dart';
import 'package:flutter_fhir/fhirClasses/chargeItem.dart';
import 'package:flutter_fhir/fhirClasses/chargeItemDefinition.dart';
import 'package:flutter_fhir/fhirClasses/claim.dart';
import 'package:flutter_fhir/fhirClasses/claimResponse.dart';
import 'package:flutter_fhir/fhirClasses/clinicalImpression.dart';
import 'package:flutter_fhir/fhirClasses/codeSystem.dart';
import 'package:flutter_fhir/fhirClasses/communication.dart';
import 'package:flutter_fhir/fhirClasses/communicationRequest.dart';
import 'package:flutter_fhir/fhirClasses/compartmentDefinition.dart';
import 'package:flutter_fhir/fhirClasses/composition.dart';
import 'package:flutter_fhir/fhirClasses/conceptMap.dart';
import 'package:flutter_fhir/fhirClasses/condition.dart';
import 'package:flutter_fhir/fhirClasses/consent.dart';
import 'package:flutter_fhir/fhirClasses/contract.dart';
import 'package:flutter_fhir/fhirClasses/coverage.dart';
import 'package:flutter_fhir/fhirClasses/coverageEligibilityRequest.dart';
import 'package:flutter_fhir/fhirClasses/coverageEligibilityResponse.dart';
import 'package:flutter_fhir/fhirClasses/detectedIssue.dart';
import 'package:flutter_fhir/fhirClasses/device.dart';
import 'package:flutter_fhir/fhirClasses/deviceDefinition.dart';
import 'package:flutter_fhir/fhirClasses/deviceMetric.dart';
import 'package:flutter_fhir/fhirClasses/deviceRequest.dart';
import 'package:flutter_fhir/fhirClasses/deviceUseStatement.dart';
import 'package:flutter_fhir/fhirClasses/diagnosticReport.dart';
import 'package:flutter_fhir/fhirClasses/documentManifest.dart';
import 'package:flutter_fhir/fhirClasses/documentReference.dart';
import 'package:flutter_fhir/fhirClasses/effectEvidenceSynthesis.dart';
import 'package:flutter_fhir/fhirClasses/encounter.dart';
import 'package:flutter_fhir/fhirClasses/endpoint.dart';
import 'package:flutter_fhir/fhirClasses/enrollmentRequest.dart';
import 'package:flutter_fhir/fhirClasses/enrollmentResponse.dart';
import 'package:flutter_fhir/fhirClasses/episodeOfCare.dart';
import 'package:flutter_fhir/fhirClasses/eventDefinition.dart';
import 'package:flutter_fhir/fhirClasses/evidence.dart';
import 'package:flutter_fhir/fhirClasses/evidenceVariable.dart';
import 'package:flutter_fhir/fhirClasses/exampleScenario.dart';
import 'package:flutter_fhir/fhirClasses/explanationOfBenefit.dart';
import 'package:flutter_fhir/fhirClasses/familyMemberHistory.dart';
import 'package:flutter_fhir/fhirClasses/flag.dart';
import 'package:flutter_fhir/fhirClasses/goal.dart';
import 'package:flutter_fhir/fhirClasses/graphDefinition.dart';
import 'package:flutter_fhir/fhirClasses/group.dart';
import 'package:flutter_fhir/fhirClasses/guidanceResponse.dart';
import 'package:flutter_fhir/fhirClasses/healthcareService.dart';
import 'package:flutter_fhir/fhirClasses/imagingStudy.dart';
import 'package:flutter_fhir/fhirClasses/immunization.dart';
import 'package:flutter_fhir/fhirClasses/immunizationEvaluation.dart';
import 'package:flutter_fhir/fhirClasses/immunizationRecommendation.dart';
import 'package:flutter_fhir/fhirClasses/implementationGuide.dart';
import 'package:flutter_fhir/fhirClasses/insurancePlan.dart';
import 'package:flutter_fhir/fhirClasses/invoice.dart';
import 'package:flutter_fhir/fhirClasses/library.dart';
import 'package:flutter_fhir/fhirClasses/linkage.dart';
import 'package:flutter_fhir/fhirClasses/lists.dart';
import 'package:flutter_fhir/fhirClasses/location.dart';
import 'package:flutter_fhir/fhirClasses/measure.dart';
import 'package:flutter_fhir/fhirClasses/measureReport.dart';
import 'package:flutter_fhir/fhirClasses/media.dart';
import 'package:flutter_fhir/fhirClasses/medication.dart';
import 'package:flutter_fhir/fhirClasses/medicationAdministration.dart';
import 'package:flutter_fhir/fhirClasses/medicationDispense.dart';
import 'package:flutter_fhir/fhirClasses/medicationKnowledge.dart';
import 'package:flutter_fhir/fhirClasses/medicationRequest.dart';
import 'package:flutter_fhir/fhirClasses/medicationStatement.dart';
import 'package:flutter_fhir/fhirClasses/medicinalProduct.dart';
import 'package:flutter_fhir/fhirClasses/medicinalProductAuthorization.dart';
import 'package:flutter_fhir/fhirClasses/medicinalProductContraindication.dart';
import 'package:flutter_fhir/fhirClasses/medicinalProductIndication.dart';
import 'package:flutter_fhir/fhirClasses/medicinalProductIngredient.dart';
import 'package:flutter_fhir/fhirClasses/medicinalProductInteraction.dart';
import 'package:flutter_fhir/fhirClasses/medicinalProductManufactured.dart';
import 'package:flutter_fhir/fhirClasses/medicinalProductPackaged.dart';
import 'package:flutter_fhir/fhirClasses/medicinalProductPharmaceutical.dart';
import 'package:flutter_fhir/fhirClasses/medicinalProductUndesirableEffect.dart';
import 'package:flutter_fhir/fhirClasses/messageDefinition.dart';
import 'package:flutter_fhir/fhirClasses/messageHeader.dart';
import 'package:flutter_fhir/fhirClasses/molecularSequence.dart';
import 'package:flutter_fhir/fhirClasses/namingSystem.dart';
import 'package:flutter_fhir/fhirClasses/nutritionOrder.dart';
import 'package:flutter_fhir/fhirClasses/observation.dart';
import 'package:flutter_fhir/fhirClasses/observationDefinition.dart';
import 'package:flutter_fhir/fhirClasses/operationDefinition.dart';
import 'package:flutter_fhir/fhirClasses/operationOutcome.dart';
import 'package:flutter_fhir/fhirClasses/organization.dart';
import 'package:flutter_fhir/fhirClasses/organizationAffiliation.dart';
import 'package:flutter_fhir/fhirClasses/parameters.dart';
import 'package:flutter_fhir/fhirClasses/patient.dart';
import 'package:flutter_fhir/fhirClasses/paymentNotice.dart';
import 'package:flutter_fhir/fhirClasses/paymentReconciliation.dart';
import 'package:flutter_fhir/fhirClasses/person.dart';
import 'package:flutter_fhir/fhirClasses/planDefinition.dart';
import 'package:flutter_fhir/fhirClasses/practitioner.dart';
import 'package:flutter_fhir/fhirClasses/practitionerRole.dart';
import 'package:flutter_fhir/fhirClasses/procedure.dart';
import 'package:flutter_fhir/fhirClasses/provenance.dart';
import 'package:flutter_fhir/fhirClasses/questionnaire.dart';
import 'package:flutter_fhir/fhirClasses/questionnaireResponse.dart';
import 'package:flutter_fhir/fhirClasses/relatedPerson.dart';
import 'package:flutter_fhir/fhirClasses/requestGroup.dart';
import 'package:flutter_fhir/fhirClasses/researchDefinition.dart';
import 'package:flutter_fhir/fhirClasses/researchElementDefinition.dart';
import 'package:flutter_fhir/fhirClasses/researchStudy.dart';
import 'package:flutter_fhir/fhirClasses/researchSubject.dart';
import 'package:flutter_fhir/fhirClasses/riskAssessment.dart';
import 'package:flutter_fhir/fhirClasses/riskEvidenceSynthesis.dart';
import 'package:flutter_fhir/fhirClasses/schedule.dart';
import 'package:flutter_fhir/fhirClasses/searchParameter.dart';
import 'package:flutter_fhir/fhirClasses/serviceRequest.dart';
import 'package:flutter_fhir/fhirClasses/slot.dart';
import 'package:flutter_fhir/fhirClasses/specimen.dart';
import 'package:flutter_fhir/fhirClasses/specimenDefinition.dart';
import 'package:flutter_fhir/fhirClasses/structureDefinition.dart';
import 'package:flutter_fhir/fhirClasses/structureMap.dart';
import 'package:flutter_fhir/fhirClasses/subscription.dart';
import 'package:flutter_fhir/fhirClasses/substance.dart';
import 'package:flutter_fhir/fhirClasses/substanceNucleicAcid.dart';
import 'package:flutter_fhir/fhirClasses/substancePolymer.dart';
import 'package:flutter_fhir/fhirClasses/substanceProtein.dart';
import 'package:flutter_fhir/fhirClasses/substanceReferenceInformation.dart';
import 'package:flutter_fhir/fhirClasses/substanceSourceMaterial.dart';
import 'package:flutter_fhir/fhirClasses/substanceSpecification.dart';
import 'package:flutter_fhir/fhirClasses/supplyDelivery.dart';
import 'package:flutter_fhir/fhirClasses/supplyRequest.dart';
import 'package:flutter_fhir/fhirClasses/task.dart';
import 'package:flutter_fhir/fhirClasses/terminologyCapabilities.dart';
import 'package:flutter_fhir/fhirClasses/testReport.dart';
import 'package:flutter_fhir/fhirClasses/testScript.dart';
import 'package:flutter_fhir/fhirClasses/valueSet.dart';
import 'package:flutter_fhir/fhirClasses/verificationResult.dart';
import 'package:flutter_fhir/fhirClasses/visionPrescription.dart';

classesSetup() async {
  List<String> types = [
	'Element',
	'Extension',
	'Narrative',
	'Annotation',
	'Attachment',
	'Identifier',
	'CodeableConcept',
	'Coding',
	'Quantity',
	'Duration',
	'Distance',
	'Count',
	'Money',
	'Age',
	'Range',
	'Period',
	'Ratio',
	'Reference',
	'SampledData',
	'Signature',
	'HumanName',
	'Address',
	'ContactPoint',
	'Timing',
	'Timing_Repeat',
	'Meta',
	'ContactDetail',
	'Contributor',
	'DataRequirement',
	'DataRequirement_CodeFilter',
	'DataRequirement_DateFilter',
	'DataRequirement_Sort',
	'ParameterDefinition',
	'RelatedArtifact',
	'TriggerDefinition',
	'UsageContext',
	'Dosage',
	'Dosage_DoseAndRate',
	'Population',
	'ProductShelfLife',
	'ProdCharacteristic',
	'MarketingStatus',
	'SubstanceAmount',
	'SubstanceAmount_ReferenceRange',
	'Expression',
	'ElementDefinition',
	'ElementDefinition_Slicing',
	'ElementDefinition_Discriminator',
	'ElementDefinition_Base',
	'ElementDefinition_Type',
	'ElementDefinition_Example',
	'ElementDefinition_Constraint',
	'ElementDefinition_Binding',
	'ElementDefinition_Mapping',
	'Account',
	'Account_Coverage',
	'Account_Guarantor',
	'ActivityDefinition',
	'ActivityDefinition_Participant',
	'ActivityDefinition_DynamicValue',
	'AdverseEvent',
	'AdverseEvent_SuspectEntity',
	'AdverseEvent_Causality',
	'AllergyIntolerance',
	'AllergyIntolerance_Reaction',
	'Appointment',
	'Appointment_Participant',
	'AppointmentResponse',
	'AuditEvent',
	'AuditEvent_Agent',
	'AuditEvent_Network',
	'AuditEvent_Source',
	'AuditEvent_Entity',
	'AuditEvent_Detail',
	'Basic',
	'Binary',
	'BiologicallyDerivedProduct',
	'BiologicallyDerivedProduct_Collection',
	'BiologicallyDerivedProduct_Processing',
	'BiologicallyDerivedProduct_Manipulation',
	'BiologicallyDerivedProduct_Storage',
	'BodyStructure',
	'Bundle',
	'Bundle_Link',
	'Bundle_Entry',
	'Bundle_Search',
	'Bundle_Request',
	'Bundle_Response',
	'CapabilityStatement',
	'CapabilityStatement_Software',
	'CapabilityStatement_Implementation',
	'CapabilityStatement_Rest',
	'CapabilityStatement_Security',
	'CapabilityStatement_Resource',
	'CapabilityStatement_Interaction',
	'CapabilityStatement_SearchParam',
	'CapabilityStatement_Operation',
	'CapabilityStatement_Interaction1',
	'CapabilityStatement_Messaging',
	'CapabilityStatement_Endpoint',
	'CapabilityStatement_SupportedMessage',
	'CapabilityStatement_Document',
	'CarePlan',
	'CarePlan_Activity',
	'CarePlan_Detail',
	'CareTeam',
	'CareTeam_Participant',
	'CatalogEntry',
	'CatalogEntry_RelatedEntry',
	'ChargeItem',
	'ChargeItem_Performer',
	'ChargeItemDefinition',
	'ChargeItemDefinition_Applicability',
	'ChargeItemDefinition_PropertyGroup',
	'ChargeItemDefinition_PriceComponent',
	'Claim',
	'Claim_Related',
	'Claim_Payee',
	'Claim_CareTeam',
	'Claim_SupportingInfo',
	'Claim_Diagnosis',
	'Claim_Procedure',
	'Claim_Insurance',
	'Claim_Accident',
	'Claim_Item',
	'Claim_Detail',
	'Claim_SubDetail',
	'ClaimResponse',
	'ClaimResponse_Item',
	'ClaimResponse_Adjudication',
	'ClaimResponse_Detail',
	'ClaimResponse_SubDetail',
	'ClaimResponse_AddItem',
	'ClaimResponse_Detail1',
	'ClaimResponse_SubDetail1',
	'ClaimResponse_Total',
	'ClaimResponse_Payment',
	'ClaimResponse_ProcessNote',
	'ClaimResponse_Insurance',
	'ClaimResponse_Error',
	'ClinicalImpression',
	'ClinicalImpression_Investigation',
	'ClinicalImpression_Finding',
	'CodeSystem',
	'CodeSystem_Filter',
	'CodeSystem_Property',
	'CodeSystem_Concept',
	'CodeSystem_Designation',
	'CodeSystem_Property1',
	'Communication',
	'Communication_Payload',
	'CommunicationRequest',
	'CommunicationRequest_Payload',
	'CompartmentDefinition',
	'CompartmentDefinition_Resource',
	'Composition',
	'Composition_Attester',
	'Composition_RelatesTo',
	'Composition_Event',
	'Composition_Section',
	'ConceptMap',
	'ConceptMap_Group',
	'ConceptMap_Element',
	'ConceptMap_Target',
	'ConceptMap_DependsOn',
	'ConceptMap_Unmapped',
	'Condition',
	'Condition_Stage',
	'Condition_Evidence',
	'Consent',
	'Consent_Policy',
	'Consent_Verification',
	'Consent_Provision',
	'Consent_Actor',
	'Consent_Data',
	'Contract',
	'Contract_ContentDefinition',
	'Contract_Term',
	'Contract_SecurityLabel',
	'Contract_Offer',
	'Contract_Party',
	'Contract_Answer',
	'Contract_Asset',
	'Contract_Context',
	'Contract_ValuedItem',
	'Contract_Action',
	'Contract_Subject',
	'Contract_Signer',
	'Contract_Friendly',
	'Contract_Legal',
	'Contract_Rule',
	'Coverage',
	'Coverage_Class',
	'Coverage_CostToBeneficiary',
	'Coverage_Exception',
	'CoverageEligibilityRequest',
	'CoverageEligibilityRequest_SupportingInfo',
	'CoverageEligibilityRequest_Insurance',
	'CoverageEligibilityRequest_Item',
	'CoverageEligibilityRequest_Diagnosis',
	'CoverageEligibilityResponse',
	'CoverageEligibilityResponse_Insurance',
	'CoverageEligibilityResponse_Item',
	'CoverageEligibilityResponse_Benefit',
	'CoverageEligibilityResponse_Error',
	'DetectedIssue',
	'DetectedIssue_Evidence',
	'DetectedIssue_Mitigation',
	'Device',
	'Device_UdiCarrier',
	'Device_DeviceName',
	'Device_Specialization',
	'Device_Version',
	'Device_Property',
	'DeviceDefinition',
	'DeviceDefinition_UdiDeviceIdentifier',
	'DeviceDefinition_DeviceName',
	'DeviceDefinition_Specialization',
	'DeviceDefinition_Capability',
	'DeviceDefinition_Property',
	'DeviceDefinition_Material',
	'DeviceMetric',
	'DeviceMetric_Calibration',
	'DeviceRequest',
	'DeviceRequest_Parameter',
	'DeviceUseStatement',
	'DiagnosticReport',
	'DiagnosticReport_Media',
	'DocumentManifest',
	'DocumentManifest_Related',
	'DocumentReference',
	'DocumentReference_RelatesTo',
	'DocumentReference_Content',
	'DocumentReference_Context',
	'EffectEvidenceSynthesis',
	'EffectEvidenceSynthesis_SampleSize',
	'EffectEvidenceSynthesis_ResultsByExposure',
	'EffectEvidenceSynthesis_EffectEstimate',
	'EffectEvidenceSynthesis_PrecisionEstimate',
	'EffectEvidenceSynthesis_Certainty',
	'EffectEvidenceSynthesis_CertaintySubcomponent',
	'Encounter',
	'Encounter_StatusHistory',
	'Encounter_ClassHistory',
	'Encounter_Participant',
	'Encounter_Diagnosis',
	'Encounter_Hospitalization',
	'Encounter_Location',
	'Endpoint',
	'EnrollmentRequest',
	'EnrollmentResponse',
	'EpisodeOfCare',
	'EpisodeOfCare_StatusHistory',
	'EpisodeOfCare_Diagnosis',
	'EventDefinition',
	'Evidence',
	'EvidenceVariable',
	'EvidenceVariable_Characteristic',
	'ExampleScenario',
	'ExampleScenario_Actor',
	'ExampleScenario_Instance',
	'ExampleScenario_Version',
	'ExampleScenario_ContainedInstance',
	'ExampleScenario_Process',
	'ExampleScenario_Step',
	'ExampleScenario_Operation',
	'ExampleScenario_Alternative',
	'ExplanationOfBenefit',
	'ExplanationOfBenefit_Related',
	'ExplanationOfBenefit_Payee',
	'ExplanationOfBenefit_CareTeam',
	'ExplanationOfBenefit_SupportingInfo',
	'ExplanationOfBenefit_Diagnosis',
	'ExplanationOfBenefit_Procedure',
	'ExplanationOfBenefit_Insurance',
	'ExplanationOfBenefit_Accident',
	'ExplanationOfBenefit_Item',
	'ExplanationOfBenefit_Adjudication',
	'ExplanationOfBenefit_Detail',
	'ExplanationOfBenefit_SubDetail',
	'ExplanationOfBenefit_AddItem',
	'ExplanationOfBenefit_Detail1',
	'ExplanationOfBenefit_SubDetail1',
	'ExplanationOfBenefit_Total',
	'ExplanationOfBenefit_Payment',
	'ExplanationOfBenefit_ProcessNote',
	'ExplanationOfBenefit_BenefitBalance',
	'ExplanationOfBenefit_Financial',
	'FamilyMemberHistory',
	'FamilyMemberHistory_Condition',
	'Flag',
	'Goal',
	'Goal_Target',
	'GraphDefinition',
	'GraphDefinition_Link',
	'GraphDefinition_Target',
	'GraphDefinition_Compartment',
	'Group',
	'Group_Characteristic',
	'Group_Member',
	'GuidanceResponse',
	'HealthcareService',
	'HealthcareService_Eligibility',
	'HealthcareService_AvailableTime',
	'HealthcareService_NotAvailable',
	'ImagingStudy',
	'ImagingStudy_Series',
	'ImagingStudy_Performer',
	'ImagingStudy_Instance',
	'Immunization',
	'Immunization_Performer',
	'Immunization_Education',
	'Immunization_Reaction',
	'Immunization_ProtocolApplied',
	'ImmunizationEvaluation',
	'ImmunizationRecommendation',
	'ImmunizationRecommendation_Recommendation',
	'ImmunizationRecommendation_DateCriterion',
	'ImplementationGuide',
	'ImplementationGuide_DependsOn',
	'ImplementationGuide_Global',
	'ImplementationGuide_Definition',
	'ImplementationGuide_Grouping',
	'ImplementationGuide_Resource',
	'ImplementationGuide_Page',
	'ImplementationGuide_Parameter',
	'ImplementationGuide_Template',
	'ImplementationGuide_Manifest',
	'ImplementationGuide_Resource1',
	'ImplementationGuide_Page1',
	'InsurancePlan',
	'InsurancePlan_Contact',
	'InsurancePlan_Coverage',
	'InsurancePlan_Benefit',
	'InsurancePlan_Limit',
	'InsurancePlan_Plan',
	'InsurancePlan_GeneralCost',
	'InsurancePlan_SpecificCost',
	'InsurancePlan_Benefit1',
	'InsurancePlan_Cost',
	'Invoice',
	'Invoice_Participant',
	'Invoice_LineItem',
	'Invoice_PriceComponent',
	'Library',
	'Linkage',
	'Linkage_Item',
	'Lists',
	'List_Entry',
	'Location',
	'Location_Position',
	'Location_HoursOfOperation',
	'Measure',
	'Measure_Group',
	'Measure_Population',
	'Measure_Stratifier',
	'Measure_Component',
	'Measure_SupplementalData',
	'MeasureReport',
	'MeasureReport_Group',
	'MeasureReport_Population',
	'MeasureReport_Stratifier',
	'MeasureReport_Stratum',
	'MeasureReport_Component',
	'MeasureReport_Population1',
	'Media',
	'Medication',
	'Medication_Ingredient',
	'Medication_Batch',
	'MedicationAdministration',
	'MedicationAdministration_Performer',
	'MedicationAdministration_Dosage',
	'MedicationDispense',
	'MedicationDispense_Performer',
	'MedicationDispense_Substitution',
	'MedicationKnowledge',
	'MedicationKnowledge_RelatedMedicationKnowledge',
	'MedicationKnowledge_Monograph',
	'MedicationKnowledge_Ingredient',
	'MedicationKnowledge_Cost',
	'MedicationKnowledge_MonitoringProgram',
	'MedicationKnowledge_AdministrationGuidelines',
	'MedicationKnowledge_Dosage',
	'MedicationKnowledge_PatientCharacteristics',
	'MedicationKnowledge_MedicineClassification',
	'MedicationKnowledge_Packaging',
	'MedicationKnowledge_DrugCharacteristic',
	'MedicationKnowledge_Regulatory',
	'MedicationKnowledge_Substitution',
	'MedicationKnowledge_Schedule',
	'MedicationKnowledge_MaxDispense',
	'MedicationKnowledge_Kinetics',
	'MedicationRequest',
	'MedicationRequest_DispenseRequest',
	'MedicationRequest_InitialFill',
	'MedicationRequest_Substitution',
	'MedicationStatement',
	'MedicinalProduct',
	'MedicinalProduct_Name',
	'MedicinalProduct_NamePart',
	'MedicinalProduct_CountryLanguage',
	'MedicinalProduct_ManufacturingBusinessOperation',
	'MedicinalProduct_SpecialDesignation',
	'MedicinalProductAuthorization',
	'MedicinalProductAuthorization_JurisdictionalAuthorization',
	'MedicinalProductAuthorization_Procedure',
	'MedicinalProductContraindication',
	'MedicinalProductContraindication_OtherTherapy',
	'MedicinalProductIndication',
	'MedicinalProductIndication_OtherTherapy',
	'MedicinalProductIngredient',
	'MedicinalProductIngredient_SpecifiedSubstance',
	'MedicinalProductIngredient_Strength',
	'MedicinalProductIngredient_ReferenceStrength',
	'MedicinalProductIngredient_Substance',
	'MedicinalProductInteraction',
	'MedicinalProductInteraction_Interactant',
	'MedicinalProductManufactured',
	'MedicinalProductPackaged',
	'MedicinalProductPackaged_BatchIdentifier',
	'MedicinalProductPackaged_PackageItem',
	'MedicinalProductPharmaceutical',
	'MedicinalProductPharmaceutical_Characteristics',
	'MedicinalProductPharmaceutical_RouteOfAdministration',
	'MedicinalProductPharmaceutical_TargetSpecies',
	'MedicinalProductPharmaceutical_WithdrawalPeriod',
	'MedicinalProductUndesirableEffect',
	'MessageDefinition',
	'MessageDefinition_Focus',
	'MessageDefinition_AllowedResponse',
	'MessageHeader',
	'MessageHeader_Destination',
	'MessageHeader_Source',
	'MessageHeader_Response',
	'MolecularSequence',
	'MolecularSequence_ReferenceSeq',
	'MolecularSequence_Variant',
	'MolecularSequence_Quality',
	'MolecularSequence_Roc',
	'MolecularSequence_Repository',
	'MolecularSequence_StructureVariant',
	'MolecularSequence_Outer',
	'MolecularSequence_Inner',
	'NamingSystem',
	'NamingSystem_UniqueId',
	'NutritionOrder',
	'NutritionOrder_OralDiet',
	'NutritionOrder_Nutrient',
	'NutritionOrder_Texture',
	'NutritionOrder_Supplement',
	'NutritionOrder_EnteralFormula',
	'NutritionOrder_Administration',
	'Observation',
	'Observation_ReferenceRange',
	'Observation_Component',
	'ObservationDefinition',
	'ObservationDefinition_QuantitativeDetails',
	'ObservationDefinition_QualifiedInterval',
	'OperationDefinition',
	'OperationDefinition_Parameter',
	'OperationDefinition_Binding',
	'OperationDefinition_ReferencedFrom',
	'OperationDefinition_Overload',
	'OperationOutcome',
	'OperationOutcome_Issue',
	'Organization',
	'Organization_Contact',
	'OrganizationAffiliation',
	'Parameters',
	'Parameters_Parameter',
	'Patient',
	'Patient_Contact',
	'Patient_Communication',
	'Patient_Link',
	'PaymentNotice',
	'PaymentReconciliation',
	'PaymentReconciliation_Detail',
	'PaymentReconciliation_ProcessNote',
	'Person',
	'Person_Link',
	'PlanDefinition',
	'PlanDefinition_Goal',
	'PlanDefinition_Target',
	'PlanDefinition_Action',
	'PlanDefinition_Condition',
	'PlanDefinition_RelatedAction',
	'PlanDefinition_Participant',
	'PlanDefinition_DynamicValue',
	'Practitioner',
	'Practitioner_Qualification',
	'PractitionerRole',
	'PractitionerRole_AvailableTime',
	'PractitionerRole_NotAvailable',
	'Procedure',
	'Procedure_Performer',
	'Procedure_FocalDevice',
	'Provenance',
	'Provenance_Agent',
	'Provenance_Entity',
	'Questionnaire',
	'Questionnaire_Item',
	'Questionnaire_EnableWhen',
	'Questionnaire_AnswerOption',
	'Questionnaire_Initial',
	'QuestionnaireResponse',
	'QuestionnaireResponse_Item',
	'QuestionnaireResponse_Answer',
	'RelatedPerson',
	'RelatedPerson_Communication',
	'RequestGroup',
	'RequestGroup_Action',
	'RequestGroup_Condition',
	'RequestGroup_RelatedAction',
	'ResearchDefinition',
	'ResearchElementDefinition',
	'ResearchElementDefinition_Characteristic',
	'ResearchStudy',
	'ResearchStudy_Arm',
	'ResearchStudy_Objective',
	'ResearchSubject',
	'RiskAssessment',
	'RiskAssessment_Prediction',
	'RiskEvidenceSynthesis',
	'RiskEvidenceSynthesis_SampleSize',
	'RiskEvidenceSynthesis_RiskEstimate',
	'RiskEvidenceSynthesis_PrecisionEstimate',
	'RiskEvidenceSynthesis_Certainty',
	'RiskEvidenceSynthesis_CertaintySubcomponent',
	'Schedule',
	'SearchParameter',
	'SearchParameter_Component',
	'ServiceRequest',
	'Slot',
	'Specimen',
	'Specimen_Collection',
	'Specimen_Processing',
	'Specimen_Container',
	'SpecimenDefinition',
	'SpecimenDefinition_TypeTested',
	'SpecimenDefinition_Container',
	'SpecimenDefinition_Additive',
	'SpecimenDefinition_Handling',
	'StructureDefinition',
	'StructureDefinition_Mapping',
	'StructureDefinition_Context',
	'StructureDefinition_Snapshot',
	'StructureDefinition_Differential',
	'StructureMap',
	'StructureMap_Structure',
	'StructureMap_Group',
	'StructureMap_Input',
	'StructureMap_Rule',
	'StructureMap_Source',
	'StructureMap_Target',
	'StructureMap_Parameter',
	'StructureMap_Dependent',
	'Subscription',
	'Subscription_Channel',
	'Substance',
	'Substance_Instance',
	'Substance_Ingredient',
	'SubstanceNucleicAcid',
	'SubstanceNucleicAcid_Subunit',
	'SubstanceNucleicAcid_Linkage',
	'SubstanceNucleicAcid_Sugar',
	'SubstancePolymer',
	'SubstancePolymer_MonomerSet',
	'SubstancePolymer_StartingMaterial',
	'SubstancePolymer_Repeat',
	'SubstancePolymer_RepeatUnit',
	'SubstancePolymer_DegreeOfPolymerisation',
	'SubstancePolymer_StructuralRepresentation',
	'SubstanceProtein',
	'SubstanceProtein_Subunit',
	'SubstanceReferenceInformation',
	'SubstanceReferenceInformation_Gene',
	'SubstanceReferenceInformation_GeneElement',
	'SubstanceReferenceInformation_Classification',
	'SubstanceReferenceInformation_Target',
	'SubstanceSourceMaterial',
	'SubstanceSourceMaterial_FractionDescription',
	'SubstanceSourceMaterial_Organism',
	'SubstanceSourceMaterial_Author',
	'SubstanceSourceMaterial_Hybrid',
	'SubstanceSourceMaterial_OrganismGeneral',
	'SubstanceSourceMaterial_PartDescription',
	'SubstanceSpecification',
	'SubstanceSpecification_Moiety',
	'SubstanceSpecification_Property',
	'SubstanceSpecification_Structure',
	'SubstanceSpecification_Isotope',
	'SubstanceSpecification_MolecularWeight',
	'SubstanceSpecification_Representation',
	'SubstanceSpecification_Code',
	'SubstanceSpecification_Name',
	'SubstanceSpecification_Official',
	'SubstanceSpecification_Relationship',
	'SupplyDelivery',
	'SupplyDelivery_SuppliedItem',
	'SupplyRequest',
	'SupplyRequest_Parameter',
	'Task',
	'Task_Restriction',
	'Task_Input',
	'Task_Output',
	'TerminologyCapabilities',
	'TerminologyCapabilities_Software',
	'TerminologyCapabilities_Implementation',
	'TerminologyCapabilities_CodeSystem',
	'TerminologyCapabilities_Version',
	'TerminologyCapabilities_Filter',
	'TerminologyCapabilities_Expansion',
	'TerminologyCapabilities_Parameter',
	'TerminologyCapabilities_ValidateCode',
	'TerminologyCapabilities_Translation',
	'TerminologyCapabilities_Closure',
	'TestReport',
	'TestReport_Participant',
	'TestReport_Setup',
	'TestReport_Action',
	'TestReport_Operation',
	'TestReport_Assert',
	'TestReport_Test',
	'TestReport_Action1',
	'TestReport_Teardown',
	'TestReport_Action2',
	'TestScript',
	'TestScript_Origin',
	'TestScript_Destination',
	'TestScript_Metadata',
	'TestScript_Link',
	'TestScript_Capability',
	'TestScript_Fixture',
	'TestScript_Variable',
	'TestScript_Setup',
	'TestScript_Action',
	'TestScript_Operation',
	'TestScript_RequestHeader',
	'TestScript_Assert',
	'TestScript_Test',
	'TestScript_Action1',
	'TestScript_Teardown',
	'TestScript_Action2',
	'ValueSet',
	'ValueSet_Compose',
	'ValueSet_Include',
	'ValueSet_Concept',
	'ValueSet_Designation',
	'ValueSet_Filter',
	'ValueSet_Expansion',
	'ValueSet_Parameter',
	'ValueSet_Contains',
	'VerificationResult',
	'VerificationResult_PrimarySource',
	'VerificationResult_Attestation',
	'VerificationResult_Validator',
	'VisionPrescription',
	'VisionPrescription_LensSpecification',
	'VisionPrescription_Prism'];
}

Future<String> newId(String resource) async {
  return '001';
}

@JsonSerializable(explicitToJson: true)
class Classes {

  String resourceType;


  String id;


  String deviceId;


  String lastId;

  Classes(this.resourceType, this.id, this.deviceId, this.lastId);

  factory Classes.fromJson(Map<String, dynamic> json) =>
      _$ClassesFromJson(json);
  Map<String, dynamic> toJson() => _$ClassesToJson(this);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Classes _$ClassesFromJson(Map<String, dynamic> json) {
  return Classes(
    json['resourceType'] as String,
    json['id'] as String,
    json['deviceId'] as String,
    json['lastId'] as String,
  );
}

Map<String, dynamic> _$ClassesToJson(Classes instance) => <String, dynamic>{
      'resourceType': instance.resourceType,
      'id': instance.id,
      'deviceId': instance.deviceId,
      'lastId': instance.lastId,
    };
