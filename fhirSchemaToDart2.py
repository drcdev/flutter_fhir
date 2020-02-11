#!/usr/bin/env python3

import os

fhirDir = './lib/fhirClasses/'
        
for filename in os.listdir(fhirDir):
    if('.g.dart' not in filename and 'resourceList' not in filename):
        with open(fhirDir + filename) as file1:
            code1 = file1.read()
            code1 = code1.replace("\n\npart '" + filename.replace('.dart', '.g.dart') + "';","")
            code1 = code1.replace('ResourceList resource', 'dynamic resource')
            code1 = code1.replace('ResourceList outcome', 'dynamic outcome')
            code1 = code1.replace('<ResourceList>', '<dynamic>')
        with open(fhirDir + filename.replace('.dart', '.g.dart'), encoding='utf8') as file2:
            code2 = file2.read() 
            code2 = code2.replace("\n\npart of '" + filename + "';\n", '')
            code2 = code2.replace('''contained: json['contained'] as List''',
                                  '''contained: (json['contained'] as List)
        ?.map((e) =>
            e == null ? null : ResourceTypes(e['resourceType'], e as Map<String, dynamic>))
        ?.toList()''')
            code2 = code2.replace('''resource: json['resource'],''',
                                  '''    resource: json['resource'] == null
        ? null
        : ResourceTypes(json['resource']['resourceType'], json['resource'] as Map<String, dynamic>),''')
            code2 = code2.replace('''outcome: json['outcome'],''',
                                  '''    outcome: json['outcome'] == null
        ? null
        : ResourceTypes(json['outcome']['resourceType'], json['outcome'] as Map<String, dynamic>),''')

        with open(fhirDir + filename, "w", encoding="utf-8") as f:
            f.write(code1 + '\n' + code2)
        os.remove(fhirDir + filename.replace('.dart', '.g.dart'))
f.close()

resourceList = '''import 'package:flutter_fhir/fhirClasses/element.dart';
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

dynamic ResourceTypes(String type, Map<String, dynamic> json) {
  if(type == 'Element') return (new Element.fromJson(json));
  if(type == 'Extension') return (new Extension.fromJson(json));
  if(type == 'Narrative') return (new Narrative.fromJson(json));
  if(type == 'Annotation') return (new Annotation.fromJson(json));
  if(type == 'Attachment') return (new Attachment.fromJson(json));
  if(type == 'Identifier') return (new Identifier.fromJson(json));
  if(type == 'CodeableConcept') return (new CodeableConcept.fromJson(json));
  if(type == 'Coding') return (new Coding.fromJson(json));
  if(type == 'Quantity') return (new Quantity.fromJson(json));
  if(type == 'Duration') return (new Duration.fromJson(json));
  if(type == 'Distance') return (new Distance.fromJson(json));
  if(type == 'Count') return (new Count.fromJson(json));
  if(type == 'Money') return (new Money.fromJson(json));
  if(type == 'Age') return (new Age.fromJson(json));
  if(type == 'Range') return (new Range.fromJson(json));
  if(type == 'Period') return (new Period.fromJson(json));
  if(type == 'Ratio') return (new Ratio.fromJson(json));
  if(type == 'Reference') return (new Reference.fromJson(json));
  if(type == 'SampledData') return (new SampledData.fromJson(json));
  if(type == 'Signature') return (new Signature.fromJson(json));
  if(type == 'HumanName') return (new HumanName.fromJson(json));
  if(type == 'Address') return (new Address.fromJson(json));
  if(type == 'ContactPoint') return (new ContactPoint.fromJson(json));
  if(type == 'Timing') return (new Timing.fromJson(json));
  if(type == 'Meta') return (new Meta.fromJson(json));
  if(type == 'ContactDetail') return (new ContactDetail.fromJson(json));
  if(type == 'Contributor') return (new Contributor.fromJson(json));
  if(type == 'DataRequirement') return (new DataRequirement.fromJson(json));
  if(type == 'ParameterDefinition') return (new ParameterDefinition.fromJson(json));
  if(type == 'RelatedArtifact') return (new RelatedArtifact.fromJson(json));
  if(type == 'TriggerDefinition') return (new TriggerDefinition.fromJson(json));
  if(type == 'UsageContext') return (new UsageContext.fromJson(json));
  if(type == 'Dosage') return (new Dosage.fromJson(json));
  if(type == 'Population') return (new Population.fromJson(json));
  if(type == 'ProductShelfLife') return (new ProductShelfLife.fromJson(json));
  if(type == 'ProdCharacteristic') return (new ProdCharacteristic.fromJson(json));
  if(type == 'MarketingStatus') return (new MarketingStatus.fromJson(json));
  if(type == 'SubstanceAmount') return (new SubstanceAmount.fromJson(json));
  if(type == 'Expression') return (new Expression.fromJson(json));
  if(type == 'ElementDefinition') return (new ElementDefinition.fromJson(json));
  if(type == 'Account') return (new Account.fromJson(json));
  if(type == 'ActivityDefinition') return (new ActivityDefinition.fromJson(json));
  if(type == 'AdverseEvent') return (new AdverseEvent.fromJson(json));
  if(type == 'AllergyIntolerance') return (new AllergyIntolerance.fromJson(json));
  if(type == 'Appointment') return (new Appointment.fromJson(json));
  if(type == 'AppointmentResponse') return (new AppointmentResponse.fromJson(json));
  if(type == 'AuditEvent') return (new AuditEvent.fromJson(json));
  if(type == 'Basic') return (new Basic.fromJson(json));
  if(type == 'Binary') return (new Binary.fromJson(json));
  if(type == 'BiologicallyDerivedProduct') return (new BiologicallyDerivedProduct.fromJson(json));
  if(type == 'BodyStructure') return (new BodyStructure.fromJson(json));
  if(type == 'Bundle') return (new Bundle.fromJson(json));
  if(type == 'CapabilityStatement') return (new CapabilityStatement.fromJson(json));
  if(type == 'CarePlan') return (new CarePlan.fromJson(json));
  if(type == 'CareTeam') return (new CareTeam.fromJson(json));
  if(type == 'CatalogEntry') return (new CatalogEntry.fromJson(json));
  if(type == 'ChargeItem') return (new ChargeItem.fromJson(json));
  if(type == 'ChargeItemDefinition') return (new ChargeItemDefinition.fromJson(json));
  if(type == 'Claim') return (new Claim.fromJson(json));
  if(type == 'ClaimResponse') return (new ClaimResponse.fromJson(json));
  if(type == 'ClinicalImpression') return (new ClinicalImpression.fromJson(json));
  if(type == 'CodeSystem') return (new CodeSystem.fromJson(json));
  if(type == 'Communication') return (new Communication.fromJson(json));
  if(type == 'CommunicationRequest') return (new CommunicationRequest.fromJson(json));
  if(type == 'CompartmentDefinition') return (new CompartmentDefinition.fromJson(json));
  if(type == 'Composition') return (new Composition.fromJson(json));
  if(type == 'ConceptMap') return (new ConceptMap.fromJson(json));
  if(type == 'Condition') return (new Condition.fromJson(json));
  if(type == 'Consent') return (new Consent.fromJson(json));
  if(type == 'Contract') return (new Contract.fromJson(json));
  if(type == 'Coverage') return (new Coverage.fromJson(json));
  if(type == 'CoverageEligibilityRequest') return (new CoverageEligibilityRequest.fromJson(json));
  if(type == 'CoverageEligibilityResponse') return (new CoverageEligibilityResponse.fromJson(json));
  if(type == 'DetectedIssue') return (new DetectedIssue.fromJson(json));
  if(type == 'Device') return (new Device.fromJson(json));
  if(type == 'DeviceDefinition') return (new DeviceDefinition.fromJson(json));
  if(type == 'DeviceMetric') return (new DeviceMetric.fromJson(json));
  if(type == 'DeviceRequest') return (new DeviceRequest.fromJson(json));
  if(type == 'DeviceUseStatement') return (new DeviceUseStatement.fromJson(json));
  if(type == 'DiagnosticReport') return (new DiagnosticReport.fromJson(json));
  if(type == 'DocumentManifest') return (new DocumentManifest.fromJson(json));
  if(type == 'DocumentReference') return (new DocumentReference.fromJson(json));
  if(type == 'EffectEvidenceSynthesis') return (new EffectEvidenceSynthesis.fromJson(json));
  if(type == 'Encounter') return (new Encounter.fromJson(json));
  if(type == 'Endpoint') return (new Endpoint.fromJson(json));
  if(type == 'EnrollmentRequest') return (new EnrollmentRequest.fromJson(json));
  if(type == 'EnrollmentResponse') return (new EnrollmentResponse.fromJson(json));
  if(type == 'EpisodeOfCare') return (new EpisodeOfCare.fromJson(json));
  if(type == 'EventDefinition') return (new EventDefinition.fromJson(json));
  if(type == 'Evidence') return (new Evidence.fromJson(json));
  if(type == 'EvidenceVariable') return (new EvidenceVariable.fromJson(json));
  if(type == 'ExampleScenario') return (new ExampleScenario.fromJson(json));
  if(type == 'ExplanationOfBenefit') return (new ExplanationOfBenefit.fromJson(json));
  if(type == 'FamilyMemberHistory') return (new FamilyMemberHistory.fromJson(json));
  if(type == 'Flag') return (new Flag.fromJson(json));
  if(type == 'Goal') return (new Goal.fromJson(json));
  if(type == 'GraphDefinition') return (new GraphDefinition.fromJson(json));
  if(type == 'Group') return (new Group.fromJson(json));
  if(type == 'GuidanceResponse') return (new GuidanceResponse.fromJson(json));
  if(type == 'HealthcareService') return (new HealthcareService.fromJson(json));
  if(type == 'ImagingStudy') return (new ImagingStudy.fromJson(json));
  if(type == 'Immunization') return (new Immunization.fromJson(json));
  if(type == 'ImmunizationEvaluation') return (new ImmunizationEvaluation.fromJson(json));
  if(type == 'ImmunizationRecommendation') return (new ImmunizationRecommendation.fromJson(json));
  if(type == 'ImplementationGuide') return (new ImplementationGuide.fromJson(json));
  if(type == 'InsurancePlan') return (new InsurancePlan.fromJson(json));
  if(type == 'Invoice') return (new Invoice.fromJson(json));
  if(type == 'Library') return (new Library.fromJson(json));
  if(type == 'Linkage') return (new Linkage.fromJson(json));
  if(type == 'Lists') return (new Lists.fromJson(json));
  if(type == 'Location') return (new Location.fromJson(json));
  if(type == 'Measure') return (new Measure.fromJson(json));
  if(type == 'MeasureReport') return (new MeasureReport.fromJson(json));
  if(type == 'Media') return (new Media.fromJson(json));
  if(type == 'Medication') return (new Medication.fromJson(json));
  if(type == 'MedicationAdministration') return (new MedicationAdministration.fromJson(json));
  if(type == 'MedicationDispense') return (new MedicationDispense.fromJson(json));
  if(type == 'MedicationKnowledge') return (new MedicationKnowledge.fromJson(json));
  if(type == 'MedicationRequest') return (new MedicationRequest.fromJson(json));
  if(type == 'MedicationStatement') return (new MedicationStatement.fromJson(json));
  if(type == 'MedicinalProduct') return (new MedicinalProduct.fromJson(json));
  if(type == 'MedicinalProductAuthorization') return (new MedicinalProductAuthorization.fromJson(json));
  if(type == 'MedicinalProductContraindication') return (new MedicinalProductContraindication.fromJson(json));
  if(type == 'MedicinalProductIndication') return (new MedicinalProductIndication.fromJson(json));
  if(type == 'MedicinalProductIngredient') return (new MedicinalProductIngredient.fromJson(json));
  if(type == 'MedicinalProductInteraction') return (new MedicinalProductInteraction.fromJson(json));
  if(type == 'MedicinalProductManufactured') return (new MedicinalProductManufactured.fromJson(json));
  if(type == 'MedicinalProductPackaged') return (new MedicinalProductPackaged.fromJson(json));
  if(type == 'MedicinalProductPharmaceutical') return (new MedicinalProductPharmaceutical.fromJson(json));
  if(type == 'MedicinalProductUndesirableEffect') return (new MedicinalProductUndesirableEffect.fromJson(json));
  if(type == 'MessageDefinition') return (new MessageDefinition.fromJson(json));
  if(type == 'MessageHeader') return (new MessageHeader.fromJson(json));
  if(type == 'MolecularSequence') return (new MolecularSequence.fromJson(json));
  if(type == 'NamingSystem') return (new NamingSystem.fromJson(json));
  if(type == 'NutritionOrder') return (new NutritionOrder.fromJson(json));
  if(type == 'Observation') return (new Observation.fromJson(json));
  if(type == 'ObservationDefinition') return (new ObservationDefinition.fromJson(json));
  if(type == 'OperationDefinition') return (new OperationDefinition.fromJson(json));
  if(type == 'OperationOutcome') return (new OperationOutcome.fromJson(json));
  if(type == 'Organization') return (new Organization.fromJson(json));
  if(type == 'OrganizationAffiliation') return (new OrganizationAffiliation.fromJson(json));
  if(type == 'Parameters') return (new Parameters.fromJson(json));
  if(type == 'Patient') return (new Patient.fromJson(json));
  if(type == 'PaymentNotice') return (new PaymentNotice.fromJson(json));
  if(type == 'PaymentReconciliation') return (new PaymentReconciliation.fromJson(json));
  if(type == 'Person') return (new Person.fromJson(json));
  if(type == 'PlanDefinition') return (new PlanDefinition.fromJson(json));
  if(type == 'Practitioner') return (new Practitioner.fromJson(json));
  if(type == 'PractitionerRole') return (new PractitionerRole.fromJson(json));
  if(type == 'Procedure') return (new Procedure.fromJson(json));
  if(type == 'Provenance') return (new Provenance.fromJson(json));
  if(type == 'Questionnaire') return (new Questionnaire.fromJson(json));
  if(type == 'QuestionnaireResponse') return (new QuestionnaireResponse.fromJson(json));
  if(type == 'RelatedPerson') return (new RelatedPerson.fromJson(json));
  if(type == 'RequestGroup') return (new RequestGroup.fromJson(json));
  if(type == 'ResearchDefinition') return (new ResearchDefinition.fromJson(json));
  if(type == 'ResearchElementDefinition') return (new ResearchElementDefinition.fromJson(json));
  if(type == 'ResearchStudy') return (new ResearchStudy.fromJson(json));
  if(type == 'ResearchSubject') return (new ResearchSubject.fromJson(json));
  if(type == 'RiskAssessment') return (new RiskAssessment.fromJson(json));
  if(type == 'RiskEvidenceSynthesis') return (new RiskEvidenceSynthesis.fromJson(json));
  if(type == 'Schedule') return (new Schedule.fromJson(json));
  if(type == 'SearchParameter') return (new SearchParameter.fromJson(json));
  if(type == 'ServiceRequest') return (new ServiceRequest.fromJson(json));
  if(type == 'Slot') return (new Slot.fromJson(json));
  if(type == 'Specimen') return (new Specimen.fromJson(json));
  if(type == 'SpecimenDefinition') return (new SpecimenDefinition.fromJson(json));
  if(type == 'StructureDefinition') return (new StructureDefinition.fromJson(json));
  if(type == 'StructureMap') return (new StructureMap.fromJson(json));
  if(type == 'Subscription') return (new Subscription.fromJson(json));
  if(type == 'Substance') return (new Substance.fromJson(json));
  if(type == 'SubstanceNucleicAcid') return (new SubstanceNucleicAcid.fromJson(json));
  if(type == 'SubstancePolymer') return (new SubstancePolymer.fromJson(json));
  if(type == 'SubstanceProtein') return (new SubstanceProtein.fromJson(json));
  if(type == 'SubstanceReferenceInformation') return (new SubstanceReferenceInformation.fromJson(json));
  if(type == 'SubstanceSourceMaterial') return (new SubstanceSourceMaterial.fromJson(json));
  if(type == 'SubstanceSpecification') return (new SubstanceSpecification.fromJson(json));
  if(type == 'SupplyDelivery') return (new SupplyDelivery.fromJson(json));
  if(type == 'SupplyRequest') return (new SupplyRequest.fromJson(json));
  if(type == 'Task') return (new Task.fromJson(json));
  if(type == 'TerminologyCapabilities') return (new TerminologyCapabilities.fromJson(json));
  if(type == 'TestReport') return (new TestReport.fromJson(json));
  if(type == 'TestScript') return (new TestScript.fromJson(json));
  if(type == 'ValueSet') return (new ValueSet.fromJson(json));
  if(type == 'VerificationResult') return (new VerificationResult.fromJson(json));
  if(type == 'VisionPrescription') return (new VisionPrescription.fromJson(json));
}
'''
with open(fhirDir + 'resourceList.dart', "w", encoding="utf-8") as f:
    f.write(resourceList)
f.close()