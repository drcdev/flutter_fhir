#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Feb 12 10:06:20 2020

@author: grey
"""

#makes first letter of word lowercase
def lowcc(string):
    return string[0].lower()+string[1:len(string)]

#makes first letter of word lowercase
def lowccList(thisList):
    newList = []
    for i in thisList:
        newList.append(lowcc(i))
    return newList

#makes first letter of word lowercase
def upcc(string):
    return string[0].upper()+string[1:len(string)]

#returns the item if it's a primitive, otherwise returns type of primitive
def primitiveDart(string):
    primitivesDart = {'base64Binary': 'String', 'boolean': 'bool', 
        'canonical': 'String', 'code': 'String', 'date': 'String', 
        'dateTime': 'DateTime', 'decimal': 'double', 'id': 'String', 
        'instant': 'DateTime', 'integer': 'int', 'markdown': 'String', 
        'oid': 'String', 'positiveInt': 'int', 'string': 'String', 
        'time': 'String', 'unsignedInt': 'int', 'uri': 'String', 
        'url': 'String', 'uuid': 'String', 'xhtml': 'String'}
    if(string in primitivesDart):
        return(primitivesDart[string])
    else:
        return(string)

#checks if it's a primitive type
def isPrimitive(string):
    if('"' in string):
        string = string[1:len(string)-1]
    return(string in ['base64Binary', 'boolean', 'canonical', 'code', 'date',
                      'dateTime', 'decimal', 'id', 'instant', 'integer', 
                      'markdown', 'oid', 'positiveInt', 'string', 'time',
                      'unsignedInt', 'uri', 'url', 'uuid', 'number'])
    
#returns comments in multiple lines, all <= 70 characters
def less70(string):   
    new = ''
    line = ''
    strings = string.split(' ')
    for i in strings:
        if((len(line) + len(i)) > 70):
            new += '\n  // ' + line
            line = i
        else:
            line += ' ' + i
    new += '\n  // ' + line
    return new  

def rem_(string):
    if(string[0] == '_'):
        return('element' + upcc(string[1:len(string)]))
    if(string == 'class'):
        return('classs')
    if(string == 'extends'):
        return('extend')
    if(string == 'for'):
        return('fore')
    if(string == 'assert'):
        return('asserts')
    else:
        return(string)    

#turns word list into lists to avoid using reserved term
def lists(string):
    return('Lists' if string == 'List' else string)   

#only defines Hivefield for primary object in dart file
def HiveField(HiveField, objects):
    return ('  @HiveField(' + str(HiveField) + ')\n') if '_' not in objects else ''

def hiveProperties(ref, space, field):
    return ''.join([primitiveDart(ref), 
                    space, 
                    rem_(field), 
                    ',\n'])

def refProperties(ref, space, field):
    return ''.join([primitiveDart(ref), 
                    space, 
                    rem_(field), 
                    ';\n'])

#returns HiveCode
def HiveCode(properties, objects):
    hiveCode = ''.join(['\tstatic Future<',
                        lists(objects),
                        '> newInstance({\n'])
    
    for field in properties:
        
        #if items is NOT included it means that the item is NOT an array/list
        if('items' not in properties[field]):
                
            #if  there's a $ref in it, print out that value
            if('$ref' in properties[field]):
                hiveCode = ''.join([hiveCode, '\t\t',
                                    hiveProperties((properties[field]['$ref']).split('/definitions/')[1],
                                                  ' ', field)])
                    
            #if  there's a const in it, print out that value
            elif('const' in properties[field]):  
                                
                value = properties[field]['const']
                #don't print resourceType as HiveCode since it's constant
                if(field != 'resourceType'):
                    hiveCode = ''.join([hiveCode, '\t\t',
                                    hiveProperties((properties[field]['$ref']).split('/definitions/')[1],
                                                  ' ', field)])
                else:
                    hiveCode = ''.join([hiveCode, '\t\t',
                                        hiveProperties('String ',
                                                       ' ', field)])
                
            elif('pattern' in properties[field]):  
                value = properties[field]
                
                #if the type is a number, declare it an int or a double
                if('number' == value['type']):
                        hiveCode = ''.join([hiveCode, 
                                            hiveProperties('\t\tdouble' if ('decimal' or 'Decimal') in field else '\t\tint',
                                                          ' ', field)])
                else:
                    hiveCode = ''.join([hiveCode,
                                        '\t\t',
                                        hiveProperties(primitiveDart(value['type']),
                                                      ' ', field)])
                    
            elif('enum' in properties[field]):
                hiveCode = ''.join([hiveCode, '\t\t', 
                                    hiveProperties('String', ' ', field)])

        #if it does include items, it is an array/list
        elif('$ref' in properties[field]['items']):      
            value = properties[field]['items']['$ref'].split('/definitions/')[1]
            
            #make the item a list since it's an array in json
            hiveCode = ''.join([hiveCode,  
                                '\t\t',
                                'List<',
                                hiveProperties(primitiveDart(value), '> ', field)])
            
        #if it does include items, it is an array/list
        elif('enum' in properties[field]['items']):
            
            #make the item a list since it's an array in json
            hiveCode = ''.join([hiveCode, 
                                '\t\t',
                                hiveProperties('List<String>', ' ', field)])

    hiveCode = ''.join([hiveCode, 
                        '}) async {\n\t',
                        'var fhirDb = new DatabaseHelper();\n\t',
                        lists(objects),
                        ' new',
                        lists(objects),
                        ' = new ',
                        lists(objects),
                        '(\n'])

    for field in properties:
        if(field == 'id'):
            hiveCode = ''.join([hiveCode, 
                                "\t\t\tid: await fhirDb.newResourceId('", 
                                objects,
                                "'),\n"])
        elif(field == 'resourceType'):
            hiveCode = ''.join([hiveCode, "\t\t\tresourceType: '", objects, "',\n"])
        else:
            hiveCode = ''.join([hiveCode, '\t\t\t', rem_(field), ': ', rem_(field), ',\n'])
    if('_' not in objects):
        hiveCode = ''.join([hiveCode, 
                            ');\n\tint saved = await fhirDb.newResource(new',
                            lists(objects),
                            ');\n\treturn new', 
                            lists(objects), 
                            ';\n}\n\n',
                            'save () async {\n\tvar fhirDb = new DatabaseHelper();\n',
                            '\tint saved = await fhirDb.saveResource(this);\n}'])
    else:
        hiveCode = ''.join([hiveCode, ');\n\treturn new', lists(objects), ';\n}'])    
    hiveCode = hiveCode.replace(',\n}) ', '}) ')
    hiveCode = hiveCode.replace('final String', 'String')
    hiveCode = hiveCode.replace(',\n);\n\tvar', ');\n\tvar')
    return(hiveCode)

patientFunc1 = '''  factory Patient.fromJson(Map<String, dynamic> json) => _$PatientFromJson(json);
  Map<String, dynamic> toJson() => _$PatientToJson(this);
}'''
patientFunc2 = '''  String printName() {
    return ('${(this.name?.first?.family?.toString() ?? '')}'
        ', '
        '${(this.name?.first?.given?.first?.toString() ?? '')}');
  }

  factory Patient.fromJson(Map<String, dynamic> json) =>
      _$PatientFromJson(json);
  Map<String, dynamic> toJson() => _$PatientToJson(this);
}

Future<Patient> readPatient(String id) async {
  final directory =
      await getApplicationDocumentsDirectory(); //get current directory
  Patient pt = Patient.fromJson(jsonDecode(
      await File('${directory.path}/' + id + '.txt')
          .readAsString())); //read patient from file
  return (pt);
}

Future<List<Patient>> readPtList() async {
  final directory =
      await getApplicationDocumentsDirectory(); //get current directory
  List<String> ptNumbers =
      (await File('${directory.path}/fhir/patient.txt').readAsString())
          .split('\\n');
  var ptList = new List<Patient>();
  for (var i = 0; i < ptNumbers.length; i++) {
    final pt = File('${directory.path}/fhir/patient/' + ptNumbers[i] + '.txt');
    var newpt = Patient.fromJson(json.decode(await pt.readAsString()));
    ptList.add(newpt);
  }
  return ptList;
}'''
    
patientReplace1 ='''import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';'''

patientReplace2 = '''import 'dart:io';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:json_annotation/json_annotation.dart';
'''

resources = [
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
  'Meta',
  'ContactDetail',
  'Contributor',
  'DataRequirement',
  'ParameterDefinition',
  'RelatedArtifact',
  'TriggerDefinition',
  'UsageContext',
  'Dosage',
  'Population',
  'ProductShelfLife',
  'ProdCharacteristic',
  'MarketingStatus',
  'SubstanceAmount',
  'Expression',
  'ElementDefinition',
  'Account',
  'ActivityDefinition',
  'AdverseEvent',
  'AllergyIntolerance',
  'Appointment',
  'AppointmentResponse',
  'AuditEvent',
  'Basic',
  'Binary',
  'BiologicallyDerivedProduct',
  'BodyStructure',
  'Bundle',
  'CapabilityStatement',
  'CarePlan',
  'CareTeam',
  'CatalogEntry',
  'ChargeItem',
  'ChargeItemDefinition',
  'Claim',
  'ClaimResponse',
  'ClinicalImpression',
  'CodeSystem',
  'Communication',
  'CommunicationRequest',
  'CompartmentDefinition',
  'Composition',
  'ConceptMap',
  'Condition',
  'Consent',
  'Contract',
  'Coverage',
  'CoverageEligibilityRequest',
  'CoverageEligibilityResponse',
  'DetectedIssue',
  'Device',
  'DeviceDefinition',
  'DeviceMetric',
  'DeviceRequest',
  'DeviceUseStatement',
  'DiagnosticReport',
  'DocumentManifest',
  'DocumentReference',
  'EffectEvidenceSynthesis',
  'Encounter',
  'Endpoint',
  'EnrollmentRequest',
  'EnrollmentResponse',
  'EpisodeOfCare',
  'EventDefinition',
  'Evidence',
  'EvidenceVariable',
  'ExampleScenario',
  'ExplanationOfBenefit',
  'FamilyMemberHistory',
  'Flag',
  'Goal',
  'GraphDefinition',
  'Group',
  'GuidanceResponse',
  'HealthcareService',
  'ImagingStudy',
  'Immunization',
  'ImmunizationEvaluation',
  'ImmunizationRecommendation',
  'ImplementationGuide',
  'InsurancePlan',
  'Invoice',
  'Library',
  'Linkage',
  'Lists',
  'Location',
  'Measure',
  'MeasureReport',
  'Media',
  'Medication',
  'MedicationAdministration',
  'MedicationDispense',
  'MedicationKnowledge',
  'MedicationRequest',
  'MedicationStatement',
  'MedicinalProduct',
  'MedicinalProductAuthorization',
  'MedicinalProductContraindication',
  'MedicinalProductIndication',
  'MedicinalProductIngredient',
  'MedicinalProductInteraction',
  'MedicinalProductManufactured',
  'MedicinalProductPackaged',
  'MedicinalProductPharmaceutical',
  'MedicinalProductUndesirableEffect',
  'MessageDefinition',
  'MessageHeader',
  'MolecularSequence',
  'NamingSystem',
  'NutritionOrder',
  'Observation',
  'ObservationDefinition',
  'OperationDefinition',
  'OperationOutcome',
  'Organization',
  'OrganizationAffiliation',
  'Parameters',
  'Patient',
  'PaymentNotice',
  'PaymentReconciliation',
  'Person',
  'PlanDefinition',
  'Practitioner',
  'PractitionerRole',
  'Procedure',
  'Provenance',
  'Questionnaire',
  'QuestionnaireResponse',
  'RelatedPerson',
  'RequestGroup',
  'ResearchDefinition',
  'ResearchElementDefinition',
  'ResearchStudy',
  'ResearchSubject',
  'RiskAssessment',
  'RiskEvidenceSynthesis',
  'Schedule',
  'SearchParameter',
  'ServiceRequest',
  'Slot',
  'Specimen',
  'SpecimenDefinition',
  'StructureDefinition',
  'StructureMap',
  'Subscription',
  'Substance',
  'SubstanceNucleicAcid',
  'SubstancePolymer',
  'SubstanceProtein',
  'SubstanceReferenceInformation',
  'SubstanceSourceMaterial',
  'SubstanceSpecification',
  'SupplyDelivery',
  'SupplyRequest',
  'Task',
  'TerminologyCapabilities',
  'TestReport',
  'TestScript',
  'ValueSet',
  'VerificationResult',
  'VisionPrescription'
]
    
resourceList1 = ''.join(["import 'package:flutter_fhir/fhirClasses/",
                        ".dart';\nimport 'package:flutter_fhir/fhirClasses/".join(lowccList(resources)),
                        ".dart';\n"])

resourceList2 = ''.join([resourceList1, 
                         '\ndynamic ResourceTypes(String type, Map<String, dynamic> json) {\n'])

resource3 = resourceList2
for res in resources:
     resource3 = ''.join([resource3, 
                        "\tif(type == '",
                        res,
                        "') return (new ",
                        res,
                        ".fromJson(json));\n"])

resourceList = ''.join([resource3, '}'])

lister = ["Element'",
   "Extension'",
   "Narrative'",
   "Annotation'",
   "Attachment'",
   "Identifier'",
   "CodeableConcept'",
   "Coding'",
   "Quantity'",
   "Duration'",
   "Distance'",
   "Count'",
   "Money'",
   "Age'",
    "Range'",
    "Period'",
    "Ratio'",
    "Reference'",
    "SampledData'",
    "Signature'",
    "HumanName'",
    "Address'",
    "ContactPoint'",
    "Timing'",
    "Timing_Repeat'",
    "Meta'",
    "ContactDetail'",
    "Contributor'",
    "DataRequirement'",
    "DataRequirement_CodeFilter'",
    "DataRequirement_DateFilter'",
    "DataRequirement_Sort'",
    "ParameterDefinition'",
    "RelatedArtifact'",
    "TriggerDefinition'",
    "UsageContext'",
    "Dosage'",
    "Dosage_DoseAndRate'",
    "Population'",
    "ProductShelfLife'",
    "ProdCharacteristic'",
    "MarketingStatus'",
    "SubstanceAmount'",
    "SubstanceAmount_ReferenceRange'",
    "Expression'",
    "ElementDefinition'",
    "ElementDefinition_Slicing'",
    "ElementDefinition_Discriminator'",
    "ElementDefinition_Base'",
    "ElementDefinition_Type'",
    "ElementDefinition_Example'",
    "ElementDefinition_Constraint'",
    "ElementDefinition_Binding'",
    "ElementDefinition_Mapping'",
    "Account'",
    "Account_Coverage'",
    "Account_Guarantor'",
    "ActivityDefinition'",
    "ActivityDefinition_Participant'",
    "ActivityDefinition_DynamicValue'",
    "AdverseEvent'",
    "AdverseEvent_SuspectEntity'",
    "AdverseEvent_Causality'",
    "AllergyIntolerance'",
    "AllergyIntolerance_Reaction'",
    "Appointment'",
    "Appointment_Participant'",
    "AppointmentResponse'",
    "AuditEvent'",
    "AuditEvent_Agent'",
    "AuditEvent_Network'",
    "AuditEvent_Source'",
    "AuditEvent_Entity'",
    "AuditEvent_Detail'",
    "Basic'",
    "Binary'",
    "BiologicallyDerivedProduct'",
    "BiologicallyDerivedProduct_Collection'",
    "BiologicallyDerivedProduct_Processing'",
    "BiologicallyDerivedProduct_Manipulation'",
    "BiologicallyDerivedProduct_Storage'",
    "BodyStructure'",
    "Bundle'",
    "Bundle_Link'",
    "Bundle_Entry'",
    "Bundle_Search'",
    "Bundle_Request'",
    "Bundle_Response'",
    "CapabilityStatement'",
    "CapabilityStatement_Software'",
    "CapabilityStatement_Implementation'",
    "CapabilityStatement_Rest'",
    "CapabilityStatement_Security'",
    "CapabilityStatement_Resource'",
    "CapabilityStatement_Interaction'",
    "CapabilityStatement_SearchParam'",
    "CapabilityStatement_Operation'",
    "CapabilityStatement_Interaction1'",
    "CapabilityStatement_Messaging'",
    "CapabilityStatement_Endpoint'",
    "CapabilityStatement_SupportedMessage'",
    "CapabilityStatement_Document'",
    "CarePlan'",
    "CarePlan_Activity'",
    "CarePlan_Detail'",
    "CareTeam'",
    "CareTeam_Participant'",
    "CatalogEntry'",
    "CatalogEntry_RelatedEntry'",
    "ChargeItem'",
    "ChargeItem_Performer'",
    "ChargeItemDefinition'",
    "ChargeItemDefinition_Applicability'",
    "ChargeItemDefinition_PropertyGroup'",
    "ChargeItemDefinition_PriceComponent'",
    "Claim'",
    "Claim_Related'",
    "Claim_Payee'",
    "Claim_CareTeam'",
    "Claim_SupportingInfo'",
    "Claim_Diagnosis'",
    "Claim_Procedure'",
    "Claim_Insurance'",
    "Claim_Accident'",
    "Claim_Item'",
    "Claim_Detail'",
    "Claim_SubDetail'",
    "ClaimResponse'",
    "ClaimResponse_Item'",
    "ClaimResponse_Adjudication'",
    "ClaimResponse_Detail'",
    "ClaimResponse_SubDetail'",
    "ClaimResponse_AddItem'",
    "ClaimResponse_Detail1'",
    "ClaimResponse_SubDetail1'",
    "ClaimResponse_Total'",
    "ClaimResponse_Payment'",
    "ClaimResponse_ProcessNote'",
    "ClaimResponse_Insurance'",
    "ClaimResponse_Error'",
    "ClinicalImpression'",
    "ClinicalImpression_Investigation'",
    "ClinicalImpression_Finding'",
    "CodeSystem'",
    "CodeSystem_Filter'",
    "CodeSystem_Property'",
    "CodeSystem_Concept'",
    "CodeSystem_Designation'",
    "CodeSystem_Property1'",
    "Communication'",
    "Communication_Payload'",
    "CommunicationRequest'",
    "CommunicationRequest_Payload'",
    "CompartmentDefinition'",
    "CompartmentDefinition_Resource'",
    "Composition'",
    "Composition_Attester'",
    "Composition_RelatesTo'",
    "Composition_Event'",
    "Composition_Section'",
    "ConceptMap'",
    "ConceptMap_Group'",
    "ConceptMap_Element'",
    "ConceptMap_Target'",
    "ConceptMap_DependsOn'",
    "ConceptMap_Unmapped'",
    "Condition'",
    "Condition_Stage'",
    "Condition_Evidence'",
    "Consent'",
    "Consent_Policy'",
    "Consent_Verification'",
    "Consent_Provision'",
    "Consent_Actor'",
    "Consent_Data'",
    "Contract'",
    "Contract_ContentDefinition'",
    "Contract_Term'",
    "Contract_SecurityLabel'",
    "Contract_Offer'",
    "Contract_Party'",
    "Contract_Answer'",
    "Contract_Asset'",
    "Contract_Context'",
    "Contract_ValuedItem'",
    "Contract_Action'",
    "Contract_Subject'",
    "Contract_Signer'",
    "Contract_Friendly'",
    "Contract_Legal'",
    "Contract_Rule'",
    "Coverage'",
    "Coverage_Class'",
    "Coverage_CostToBeneficiary'",
    "Coverage_Exception'",
    "CoverageEligibilityRequest'",
    "CoverageEligibilityRequest_SupportingInfo'",
    "CoverageEligibilityRequest_Insurance'",
    "CoverageEligibilityRequest_Item'",
    "CoverageEligibilityRequest_Diagnosis'",
    "CoverageEligibilityResponse'",
    "CoverageEligibilityResponse_Insurance'",
    "CoverageEligibilityResponse_Item'",
    "CoverageEligibilityResponse_Benefit'",
    "CoverageEligibilityResponse_Error'",
    "DetectedIssue'",
    "DetectedIssue_Evidence'",
   "DetectedIssue_Mitigation'",
   "Device'",
   "Device_UdiCarrier'",
   "Device_DeviceName'",
   "Device_Specialization'",
   "Device_Version'",
   "Device_Property'",
   "DeviceDefinition'",
   "DeviceDefinition_UdiDeviceIdentifier'",
   "DeviceDefinition_DeviceName'",
   "DeviceDefinition_Specialization'",
   "DeviceDefinition_Capability'",
   "DeviceDefinition_Property'",
   "DeviceDefinition_Material'",
   "DeviceMetric'",
   "DeviceMetric_Calibration'",
   "DeviceRequest'",
   "DeviceRequest_Parameter'",
   "DeviceUseStatement'",
   "DiagnosticReport'",
   "DiagnosticReport_Media'",
   "DocumentManifest'",
   "DocumentManifest_Related'",
   "DocumentReference'",
   "DocumentReference_RelatesTo'",
   "DocumentReference_Content'",
   "DocumentReference_Context'",
   "EffectEvidenceSynthesis'",
   "EffectEvidenceSynthesis_SampleSize'",
   "EffectEvidenceSynthesis_ResultsByExposure'",
   "EffectEvidenceSynthesis_EffectEstimate'",
   "EffectEvidenceSynthesis_PrecisionEstimate'",
   "EffectEvidenceSynthesis_Certainty'",
   "EffectEvidenceSynthesis_CertaintySubcomponent'",
   "Encounter'",
   "Encounter_StatusHistory'",
   "Encounter_ClassHistory'",
   "Encounter_Participant'",
   "Encounter_Diagnosis'",
   "Encounter_Hospitalization'",
   "Encounter_Location'",
   "Endpoint'",
   "EnrollmentRequest'",
   "EnrollmentResponse'",
   "EpisodeOfCare'",
   "EpisodeOfCare_StatusHistory'",
   "EpisodeOfCare_Diagnosis'",
   "EventDefinition'",
   "Evidence'",
   "EvidenceVariable'",
   "EvidenceVariable_Characteristic'",
   "ExampleScenario'",
   "ExampleScenario_Actor'",
   "ExampleScenario_Instance'",
   "ExampleScenario_Version'",
   "ExampleScenario_ContainedInstance'",
   "ExampleScenario_Process'",
   "ExampleScenario_Step'",
   "ExampleScenario_Operation'",
   "ExampleScenario_Alternative'",
   "ExplanationOfBenefit'",
   "ExplanationOfBenefit_Related'",
   "ExplanationOfBenefit_Payee'",
   "ExplanationOfBenefit_CareTeam'",
   "ExplanationOfBenefit_SupportingInfo'",
   "ExplanationOfBenefit_Diagnosis'",
   "ExplanationOfBenefit_Procedure'",
   "ExplanationOfBenefit_Insurance'",
   "ExplanationOfBenefit_Accident'",
   "ExplanationOfBenefit_Item'",
   "ExplanationOfBenefit_Adjudication'",
   "ExplanationOfBenefit_Detail'",
   "ExplanationOfBenefit_SubDetail'",
   "ExplanationOfBenefit_AddItem'",
   "ExplanationOfBenefit_Detail1'",
   "ExplanationOfBenefit_SubDetail1'",
   "ExplanationOfBenefit_Total'",
   "ExplanationOfBenefit_Payment'",
   "ExplanationOfBenefit_ProcessNote'",
   "ExplanationOfBenefit_BenefitBalance'",
   "ExplanationOfBenefit_Financial'",
   "FamilyMemberHistory'",
   "FamilyMemberHistory_Condition'",
   "Flag'",
   "Goal'",
   "Goal_Target'",
   "GraphDefinition'",
   "GraphDefinition_Link'",
   "GraphDefinition_Target'",
   "GraphDefinition_Compartment'",
   "Group'",
   "Group_Characteristic'",
   "Group_Member'",
   "GuidanceResponse'",
   "HealthcareService'",
   "HealthcareService_Eligibility'",
   "HealthcareService_AvailableTime'",
   "HealthcareService_NotAvailable'",
   "ImagingStudy'",
   "ImagingStudy_Series'",
   "ImagingStudy_Performer'",
   "ImagingStudy_Instance'",
   "Immunization'",
   "Immunization_Performer'",
   "Immunization_Education'",
   "Immunization_Reaction'",
   "Immunization_ProtocolApplied'",
   "ImmunizationEvaluation'",
   "ImmunizationRecommendation'",
   "ImmunizationRecommendation_Recommendation'",
   "ImmunizationRecommendation_DateCriterion'",
   "ImplementationGuide'",
   "ImplementationGuide_DependsOn'",
   "ImplementationGuide_Global'",
   "ImplementationGuide_Definition'",
   "ImplementationGuide_Grouping'",
   "ImplementationGuide_Resource'",
   "ImplementationGuide_Page'",
   "ImplementationGuide_Parameter'",
   "ImplementationGuide_Template'",
   "ImplementationGuide_Manifest'",
   "ImplementationGuide_Resource1'",
   "ImplementationGuide_Page1'",
   "InsurancePlan'",
   "InsurancePlan_Contact'",
   "InsurancePlan_Coverage'",
   "InsurancePlan_Benefit'",
   "InsurancePlan_Limit'",
   "InsurancePlan_Plan'",
   "InsurancePlan_GeneralCost'",
   "InsurancePlan_SpecificCost'",
   "InsurancePlan_Benefit1'",
   "InsurancePlan_Cost'",
   "Invoice'",
   "Invoice_Participant'",
   "Invoice_LineItem'",
   "Invoice_PriceComponent'",
   "Library'",
   "Linkage'",
   "Linkage_Item'",
   "Lists'",
   "List_Entry'",
   "Location'",
   "Location_Position'",
   "Location_HoursOfOperation'",
   "Measure'",
   "Measure_Group'",
   "Measure_Population'",
   "Measure_Stratifier'",
   "Measure_Component'",
   "Measure_SupplementalData'",
   "MeasureReport'",
   "MeasureReport_Group'",
   "MeasureReport_Population'",
   "MeasureReport_Stratifier'",
   "MeasureReport_Stratum'",
   "MeasureReport_Component'",
   "MeasureReport_Population1'",
   "Media'",
   "Medication'",
   "Medication_Ingredient'",
   "Medication_Batch'",
   "MedicationAdministration'",
   "MedicationAdministration_Performer'",
   "MedicationAdministration_Dosage'",
   "MedicationDispense'",
   "MedicationDispense_Performer'",
   "MedicationDispense_Substitution'",
   "MedicationKnowledge'",
   "MedicationKnowledge_RelatedMedicationKnowledge'",
   "MedicationKnowledge_Monograph'",
   "MedicationKnowledge_Ingredient'",
   "MedicationKnowledge_Cost'",
   "MedicationKnowledge_MonitoringProgram'",
   "MedicationKnowledge_AdministrationGuidelines'",
   "MedicationKnowledge_Dosage'",
   "MedicationKnowledge_PatientCharacteristics'",
   "MedicationKnowledge_MedicineClassification'",
   "MedicationKnowledge_Packaging'",
   "MedicationKnowledge_DrugCharacteristic'",
   "MedicationKnowledge_Regulatory'",
   "MedicationKnowledge_Substitution'",
   "MedicationKnowledge_Schedule'",
   "MedicationKnowledge_MaxDispense'",
   "MedicationKnowledge_Kinetics'",
   "MedicationRequest'",
   "MedicationRequest_DispenseRequest'",
   "MedicationRequest_InitialFill'",
   "MedicationRequest_Substitution'",
   "MedicationStatement'",
   "MedicinalProduct'",
   "MedicinalProduct_Name'",
   "MedicinalProduct_NamePart'",
   "MedicinalProduct_CountryLanguage'",
   "MedicinalProduct_ManufacturingBusinessOperation'",
   "MedicinalProduct_SpecialDesignation'",
   "MedicinalProductAuthorization'",
   "MedicinalProductAuthorization_JurisdictionalAuthorization'",
   "MedicinalProductAuthorization_Procedure'",
   "MedicinalProductContraindication'",
   "MedicinalProductContraindication_OtherTherapy'",
   "MedicinalProductIndication'",
   "MedicinalProductIndication_OtherTherapy'",
   "MedicinalProductIngredient'",
   "MedicinalProductIngredient_SpecifiedSubstance'",
   "MedicinalProductIngredient_Strength'",
   "MedicinalProductIngredient_ReferenceStrength'",
   "MedicinalProductIngredient_Substance'",
   "MedicinalProductInteraction'",
   "MedicinalProductInteraction_Interactant'",
   "MedicinalProductManufactured'",
   "MedicinalProductPackaged'",
   "MedicinalProductPackaged_BatchIdentifier'",
   "MedicinalProductPackaged_PackageItem'",
   "MedicinalProductPharmaceutical'",
   "MedicinalProductPharmaceutical_Characteristics'",
   "MedicinalProductPharmaceutical_RouteOfAdministration'",
   "MedicinalProductPharmaceutical_TargetSpecies'",
   "MedicinalProductPharmaceutical_WithdrawalPeriod'",
   "MedicinalProductUndesirableEffect'",
   "MessageDefinition'",
   "MessageDefinition_Focus'",
   "MessageDefinition_AllowedResponse'",
   "MessageHeader'",
   "MessageHeader_Destination'",
   "MessageHeader_Source'",
   "MessageHeader_Response'",
   "MolecularSequence'",
   "MolecularSequence_ReferenceSeq'",
   "MolecularSequence_Variant'",
   "MolecularSequence_Quality'",
   "MolecularSequence_Roc'",
   "MolecularSequence_Repository'",
   "MolecularSequence_StructureVariant'",
   "MolecularSequence_Outer'",
   "MolecularSequence_Inner'",
   "NamingSystem'",
   "NamingSystem_UniqueId'",
   "NutritionOrder'",
   "NutritionOrder_OralDiet'",
   "NutritionOrder_Nutrient'",
   "NutritionOrder_Texture'",
   "NutritionOrder_Supplement'",
   "NutritionOrder_EnteralFormula'",
   "NutritionOrder_Administration'",
   "Observation'",
   "Observation_ReferenceRange'",
   "Observation_Component'",
   "ObservationDefinition'",
   "ObservationDefinition_QuantitativeDetails'",
   "ObservationDefinition_QualifiedInterval'",
   "OperationDefinition'",
   "OperationDefinition_Parameter'",
   "OperationDefinition_Binding'",
   "OperationDefinition_ReferencedFrom'",
   "OperationDefinition_Overload'",
   "OperationOutcome'",
   "OperationOutcome_Issue'",
   "Organization'",
   "Organization_Contact'",
   "OrganizationAffiliation'",
   "Parameters'",
   "Parameters_Parameter'",
   "Patient'",
   "Patient_Contact'",
   "Patient_Communication'",
   "Patient_Link'",
   "PaymentNotice'",
   "PaymentReconciliation'",
   "PaymentReconciliation_Detail'",
   "PaymentReconciliation_ProcessNote'",
   "Person'",
   "Person_Link'",
   "PlanDefinition'",
   "PlanDefinition_Goal'",
   "PlanDefinition_Target'",
   "PlanDefinition_Action'",
   "PlanDefinition_Condition'",
   "PlanDefinition_RelatedAction'",
   "PlanDefinition_Participant'",
   "PlanDefinition_DynamicValue'",
   "Practitioner'",
   "Practitioner_Qualification'",
   "PractitionerRole'",
   "PractitionerRole_AvailableTime'",
   "PractitionerRole_NotAvailable'",
   "Procedure'",
   "Procedure_Performer'",
   "Procedure_FocalDevice'",
   "Provenance'",
   "Provenance_Agent'",
   "Provenance_Entity'",
   "Questionnaire'",
   "Questionnaire_Item'",
   "Questionnaire_EnableWhen'",
   "Questionnaire_AnswerOption'",
   "Questionnaire_Initial'",
   "QuestionnaireResponse'",
   "QuestionnaireResponse_Item'",
   "QuestionnaireResponse_Answer'",
   "RelatedPerson'",
   "RelatedPerson_Communication'",
   "RequestGroup'",
   "RequestGroup_Action'",
   "RequestGroup_Condition'",
   "RequestGroup_RelatedAction'",
   "ResearchDefinition'",
   "ResearchElementDefinition'",
   "ResearchElementDefinition_Characteristic'",
   "ResearchStudy'",
   "ResearchStudy_Arm'",
   "ResearchStudy_Objective'",
   "ResearchSubject'",
   "RiskAssessment'",
   "RiskAssessment_Prediction'",
   "RiskEvidenceSynthesis'",
   "RiskEvidenceSynthesis_SampleSize'",
   "RiskEvidenceSynthesis_RiskEstimate'",
   "RiskEvidenceSynthesis_PrecisionEstimate'",
   "RiskEvidenceSynthesis_Certainty'",
   "RiskEvidenceSynthesis_CertaintySubcomponent'",
   "Schedule'",
   "SearchParameter'",
   "SearchParameter_Component'",
   "ServiceRequest'",
   "Slot'",
   "Specimen'",
    "Specimen_Collection'",
    "Specimen_Processing'",
    "Specimen_Container'",
    "SpecimenDefinition'",
    "SpecimenDefinition_TypeTested'",
    "SpecimenDefinition_Container'",
    "SpecimenDefinition_Additive'",
    "SpecimenDefinition_Handling'",
    "StructureDefinition'",
    "StructureDefinition_Mapping'",
    "StructureDefinition_Context'",
    "StructureDefinition_Snapshot'",
    "StructureDefinition_Differential'",
    "StructureMap'",
    "StructureMap_Structure'",
    "StructureMap_Group'",
    "StructureMap_Input'",
    "StructureMap_Rule'",
    "StructureMap_Source'",
    "StructureMap_Target'",
    "StructureMap_Parameter'",
    "StructureMap_Dependent'",
    "Subscription'",
    "Subscription_Channel'",
    "Substance'",
    "Substance_Instance'",
    "Substance_Ingredient'",
    "SubstanceNucleicAcid'",
    "SubstanceNucleicAcid_Subunit'",
    "SubstanceNucleicAcid_Linkage'",
    "SubstanceNucleicAcid_Sugar'",
    "SubstancePolymer'",
    "SubstancePolymer_MonomerSet'",
    "SubstancePolymer_StartingMaterial'",
    "SubstancePolymer_Repeat'",
    "SubstancePolymer_RepeatUnit'",
    "SubstancePolymer_DegreeOfPolymerisation'",
    "SubstancePolymer_StructuralRepresentation'",
    "SubstanceProtein'",
    "SubstanceProtein_Subunit'",
    "SubstanceReferenceInformation'",
    "SubstanceReferenceInformation_Gene'",
    "SubstanceReferenceInformation_GeneElement'",
    "SubstanceReferenceInformation_Classification'",
    "SubstanceReferenceInformation_Target'",
    "SubstanceSourceMaterial'",
    "SubstanceSourceMaterial_FractionDescription'",
    "SubstanceSourceMaterial_Organism'",
    "SubstanceSourceMaterial_Author'",
    "SubstanceSourceMaterial_Hybrid'",
    "SubstanceSourceMaterial_OrganismGeneral'",
    "SubstanceSourceMaterial_PartDescription'",
    "SubstanceSpecification'",
    "SubstanceSpecification_Moiety'",
    "SubstanceSpecification_Property'",
    "SubstanceSpecification_Structure'",
    "SubstanceSpecification_Isotope'",
    "SubstanceSpecification_MolecularWeight'",
    "SubstanceSpecification_Representation'",
    "SubstanceSpecification_Code'",
    "SubstanceSpecification_Name'",
    "SubstanceSpecification_Official'",
    "SubstanceSpecification_Relationship'",
    "SupplyDelivery'",
    "SupplyDelivery_SuppliedItem'",
    "SupplyRequest'",
    "SupplyRequest_Parameter'",
    "Task'",
    "Task_Restriction'",
    "Task_Input'",
    "Task_Output'",
    "TerminologyCapabilities'",
    "TerminologyCapabilities_Software'",
    "TerminologyCapabilities_Implementation'",
    "TerminologyCapabilities_CodeSystem'",
    "TerminologyCapabilities_Version'",
    "TerminologyCapabilities_Filter'",
    "TerminologyCapabilities_Expansion'",
    "TerminologyCapabilities_Parameter'",
    "TerminologyCapabilities_ValidateCode'",
    "TerminologyCapabilities_Translation'",
    "TerminologyCapabilities_Closure'",
    "TestReport'",
    "TestReport_Participant'",
    "TestReport_Setup'",
    "TestReport_Action'",
    "TestReport_Operation'",
    "TestReport_Assert'",
    "TestReport_Test'",
    "TestReport_Action1'",
    "TestReport_Teardown'",
    "TestReport_Action2'",
    "TestScript'",
    "TestScript_Origin'",
    "TestScript_Destination'",
    "TestScript_Metadata'",
    "TestScript_Link'",
    "TestScript_Capability'",
    "TestScript_Fixture'",
    "TestScript_Variable'",
    "TestScript_Setup'",
    "TestScript_Action'",
    "TestScript_Operation'",
    "TestScript_RequestHeader'",
    "TestScript_Assert'",
    "TestScript_Test'",
    "TestScript_Action1'",
    "TestScript_Teardown'",
    "TestScript_Action2'",
    "ValueSet'",
    "ValueSet_Compose'",
    "ValueSet_Include'",
    "ValueSet_Concept'",
    "ValueSet_Designation'",
    "ValueSet_Filter'",
    "ValueSet_Expansion'",
    "ValueSet_Parameter'",
    "ValueSet_Contains'",
    "VerificationResult'",
    "VerificationResult_PrimarySource'",
    "VerificationResult_Attestation'",
    "VerificationResult_Validator'",
    "VisionPrescription'",
    "VisionPrescription_LensSpecification'",
   "VisionPrescription_Prism'"]

classes1 = ''.join(["""import 'dart:core';

import 'package:device_info/device_info.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:path_provider/path_provider.dart';"""])

classes2 = ''.join([classes1, 
                    "\nimport 'package:flutter_fhir/fhirClasses/",
                    ".dart';\nimport 'package:flutter_fhir/fhirClasses/".join(lowccList(resources)),
                    ".dart';\n"])
classes2 = classes2.replace("'.dart", ".dart")
classes3 = ''.join([classes2,
"""
classesSetup() async {
  List<String> types = [\n\t'""", ",\n\t'".join(lister), '];'])
                        
    
classes4 = ''.join([classes3, 
                   '());\n\n']) 
classes5 = classes4.replace("'Adapter());", "Adapter());")

classes6 = classes5.replace("];());", "];")

classes = ''.join([classes6,
'''
}

Future<String> newId(String resource) async {
  return '001';
}

class Classes {

  final String resourceType;


  final String id;


  final String deviceId;


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
'''])